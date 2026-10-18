Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZNK4pbrt10GridMedium11SamplePointENS_6Point3IfEERKNS_18SampledWavelengthsE:bb.a
  %.sroa.493.0.i = select i1 %i.as, float %i.aj, float %i.at
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %1, align 8 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 8 ; 3 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i, i64 1 ; 2 uses
  %i.au = fadd <2 x float> %i.al, %i.an
  %i.av = shufflevector <8 x float> %i.h, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.aw = fadd <2 x float> %i.ar, %i.av
  %i.ax = fadd <2 x float> %i.au, %i.aw           ; 2 uses
  %i.ay = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fdiv <2 x float> %i.ax, %i.az
  %i.bb = insertelement <2 x i1> poison, i1 %i.as, i64 0
  %i.bc = shufflevector <2 x i1> %i.bb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bd = select <2 x i1> %i.bc, <2 x float> %i.ax, <2 x float> %i.ba
  %i.be = fsub <2 x float> %i.bd, %.sroa.05.0.copyload.i ; 3 uses
  %i.bf = fsub float %.sroa.493.0.i, %.sroa.26.0.copyload.i ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !305 ; 2 uses
  %i.bi = fcmp ogt float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bj = fsub float %i.bh, %.sroa.03.0.vec.extract.i.i
  %i.bk = extractelement <2 x float> %i.be, i64 0
  %i.bl = fdiv float %i.bk, %i.bj
  %.sroa.09.0.vec.insert.i = insertelement <2 x float> %i.be, float %i.bl, i64 0
  %.sroa.09.0.i = select i1 %i.bi, <2 x float> %.sroa.09.0.vec.insert.i, <2 x float> %i.be ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !306 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %.sroa.03.4.vec.extract.i.i
  %i.bp = fsub float %i.bn, %.sroa.03.4.vec.extract.i.i
  %.sroa.09.4.vec.extract.i = extractelement <2 x float> %.sroa.09.0.i, i64 1
  %i.bq = fdiv float %.sroa.09.4.vec.extract.i, %i.bp
  %.sroa.09.4.vec.insert.i = insertelement <2 x float> %.sroa.09.0.i, float %i.bq, i64 1
  %.sroa.09.1.i = select i1 %i.bo, <2 x float> %.sroa.09.4.vec.insert.i, <2 x float> %.sroa.09.0.i ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bs = load float, ptr %i.br, align 4, !tbaa !307 ; 2 uses
  %i.bt = fcmp ogt float %i.bs, %.sroa.26.0.copyload.i
  %i.bu = fsub float %i.bs, %.sroa.26.0.copyload.i
  %i.bv = fdiv float %i.bf, %i.bu
  %.sroa.6.0.i = select i1 %i.bt, float %i.bv, float %i.bf ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bx = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.bw, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !2827, !range !136, !noundef !137
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.cc = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.cb, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i) ; 3 uses
  %i.cd = fcmp ogt float %i.cc, 0.000000e+00
  br i1 %i.cd, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !2828, !range !136, !noundef !137
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit, label %bb.i

_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit: ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ci = tail call noundef float @_ZNK4pbrt11SampledGridIfE6LookupENS_6Point3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.ch, <2 x float> %.sroa.09.1.i, float %.sroa.6.0.i)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !2829
  %i.cl = fsub float %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !2830
  %i.co = fmul float %i.cl, %i.cn                 ; 4 uses
  %i.cp = fcmp ogt float %i.co, 1.000000e+02
  br i1 %i.cp, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  store float %i.co, ptr %5, align 4, !tbaa !717
  %i.cq = fdiv nnan float f0x3B3DE88C, %i.co
  %i.cr = fmul nnan float %i.cq, 1.000000e+09
  %i.cs = fmul nnan float %i.cr, f0x3089705F      ; 4 uses
  %i.ct = fmul float %i.cs, %i.cs                 ; 2 uses
  %i.cu = fmul float %i.ct, %i.ct
  %i.cv = fmul float %i.cs, %i.cu
  %i.cw = fmul nnan float %i.cs, f0x19858735
  %i.cx = fmul float %i.co, %i.cw
  %i.cy = fdiv float f0x1675E8FA, %i.cx
  %i.cz = fmul float %i.cy, f0x3FB8AA3B           ; 2 uses
  %i.da = tail call noundef float @llvm.floor.f32(float %i.cz) ; 2 uses
  %i.db = fsub float %i.cz, %i.da                 ; 3 uses
  %i.dc = fptosi float %i.da to i32
  %i.dd = tail call noundef float @llvm.fma.f32(float %i.db, float f0x3DA00AC9, float f0x3E679A0B)
  %i.de = tail call noundef float @llvm.fma.f32(float %i.db, float %i.dd, float f0x3F321004)
  %i.df = tail call noundef float @llvm.fma.f32(float %i.db, float %i.de, float 1.000000e+00)
  %i.dg = bitcast float %i.df to i32              ; 2 uses
  %i.dh = lshr i32 %i.dg, 23
  %i.di = add i32 %i.dc, -127
  %i.dj = add i32 %i.di, %i.dh                    ; 3 uses
  %i.dk = icmp slt i32 %i.dj, -126
  br i1 %i.dk, label %_ZN4pbrt7FastExpEf.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dl = icmp sgt i32 %i.dj, 127
  br i1 %i.dl, label %_ZN4pbrt7FastExpEf.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = and i32 %i.dg, -2139095041
  %i.dn = shl nsw i32 %i.dj, 23
  %i.do = add nsw i32 %i.dn, 1065353216
  %i.dp = or i32 %i.do, %i.dm
  %i.dq = bitcast i32 %i.dp to float
  %i.dr = fadd float %i.dq, -1.000000e+00
  br label %_ZN4pbrt7FastExpEf.exit.i.i

_ZN4pbrt7FastExpEf.exit.i.i:                      ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi float [ %i.dr, %bb.g ], [ -1.000000e+00, %bb.e ], [ +inf, %bb.f ]
  %i.ds = fmul float %i.cv, %.0.i.i.i
  %i.dt = fdiv float f0x25095161, %i.ds           ; 2 uses
  %i.du = fcmp uno float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.h, label %_ZN4pbrt17BlackbodySpectrumC2Ef.exit

bb.h:                                             ; preds = %_ZN4pbrt7FastExpEf.exit.i.i
  tail call void @_ZN4pbrt8LogFatalIJRA11_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.161, i32 noundef 78, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(11) @.str.162) #42
  unreachable

_ZN4pbrt17BlackbodySpectrumC2Ef.exit:             ; preds = %_ZN4pbrt7FastExpEf.exit.i.i
  %i.dv = fdiv float 1.000000e+00, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %i.dv, ptr %i.dw, align 4, !tbaa !743
  %i.dx = call { <2 x float>, <2 x float> } @_ZNK4pbrt17BlackbodySpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.dy = extractvalue { <2 x float>, <2 x float> } %i.dx, 0
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dx, 1
  %i.ea = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = fmul <2 x float> %i.eb, %i.dy
  %i.ed = fmul <2 x float> %i.eb, %i.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.ef = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ee, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.eg = extractvalue { <2 x float>, <2 x float> } %i.ef, 0
  %i.eh = extractvalue { <2 x float>, <2 x float> } %i.ef, 1
  %i.ei = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul <2 x float> %i.ej, %i.eg
  %i.el = fmul <2 x float> %i.ej, %i.eh
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i, %_ZN4pbrt17BlackbodySpectrumC2Ef.exit, %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit
  %.sroa.7.0 = phi <2 x float> [ %i.ed, %_ZN4pbrt17BlackbodySpectrumC2Ef.exit ], [ zeroinitializer, %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit ], [ %i.el, %bb.i ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit ]
  %.sroa.075.0 = phi <2 x float> [ %i.ec, %_ZN4pbrt17BlackbodySpectrumC2Ef.exit ], [ zeroinitializer, %_ZNK4pstd8optionalIN4pbrt11SampledGridIfEEEptEv.exit ], [ %i.ek, %bb.i ], [ zeroinitializer, %bb.c ], [ zeroinitializer, %_ZNK4pbrt9Transform12ApplyInverseIfEENS_6Point3IT_EES4_.exit ]
  %i.em = extractvalue { <2 x float>, <2 x float> } %i.f, 1
  %i.en = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ep = fmul <2 x float> %i.em, %i.eo
  %i.eq = extractvalue { <2 x float>, <2 x float> } %i.f, 0
  %i.er = fmul <2 x float> %i.eq, %i.eo
  %i.es = extractvalue { <2 x float>, <2 x float> } %i.d, 1
  %i.et = fmul <2 x float> %i.es, %i.eo
  %i.eu = extractvalue { <2 x float>, <2 x float> } %i.d, 0
  %i.ev = fmul <2 x float> %i.eu, %i.eo
  store <2 x float> %i.ev, ptr %0, align 8
  %.sroa.886.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.et, ptr %.sroa.886.0..sroa_idx, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.er, ptr %i.ew, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %i.ep, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = or i64 %i.ez, 144115188075855872
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !456
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.075.0, ptr %i.fb, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt19DDAMajorantIteratorC2ENS_3RayEffPKNS_12MajorantGridENS_15SampledSpectrumE(ptr noundef nonnull align 8 dereferenceable(92) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(40) %1, float noundef %2, float noundef %3, ptr noundef %4, <2 x float> %5, <2 x float> %6) unnamed_addr #11 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83:
  store <2 x float> %5, ptr %0, align 8
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %6, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %2, ptr %i.a, align 8, !tbaa !737
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %3, ptr %i.b, align 4, !tbaa !738
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.c, align 8, !tbaa !739
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.05.0.copyload.i = load <2 x float>, ptr %4, align 4 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.26.0.copyload.i = load float, ptr %.sroa.26.0..sroa_idx.i, align 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !307 ; 2 uses
  %i.g = fsub float %i.f, %.sroa.26.0.copyload.i  ; 2 uses
  %.sroa.040.0.copyload = load <2 x float>, ptr %1, align 8
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.241.0.copyload = load float, ptr %.sroa.241.0..sroa_idx, align 8
  %i.h = fsub <2 x float> %.sroa.040.0.copyload, %.sroa.05.0.copyload.i ; 3 uses
  %i.i = fsub float %.sroa.241.0.copyload, %.sroa.26.0.copyload.i ; 2 uses
  %i.j = fcmp ogt float %i.f, %.sroa.26.0.copyload.i
  %i.k = fdiv float %i.i, %i.g
  %.sroa.6.0.i = select i1 %i.j, float %i.k, float %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load <2 x float>, ptr %i.d, align 4, !tbaa !189 ; 2 uses
  %i.n = fsub <2 x float> %i.m, %.sroa.05.0.copyload.i ; 3 uses
  %foldExtExtBinop = fdiv <2 x float> %i.h, %i.n
  %i.o = fcmp ogt <2 x float> %i.m, %.sroa.05.0.copyload.i ; 2 uses
  %sel = select <2 x i1> %i.o, <2 x float> %foldExtExtBinop, <2 x float> %i.h ; 2 uses
  %.sroa.09.0.i = shufflevector <2 x float> %sel, <2 x float> %i.h, <2 x i32> <i32 0, i32 3> ; 2 uses
  %foldExtExtBinop228 = fdiv <2 x float> %.sroa.09.0.i, %i.n
  %sel230 = select <2 x i1> %i.o, <2 x float> %foldExtExtBinop228, <2 x float> %.sroa.09.0.i
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %sel, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %sel230, i64 1
  %i.p = load <2 x float>, ptr %i.l, align 4, !tbaa !189
  %i.q = fdiv <2 x float> %i.p, %i.n              ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !295
  %i.t = fdiv float %i.s, %i.g                    ; 6 uses
  %i.u = extractelement <2 x float> %i.q, i64 0   ; 2 uses
  %i.v = fmul float %2, %i.u
  %i.w = extractelement <2 x float> %i.q, i64 1
  %i.x = fmul float %2, %i.w
  %i.y = fmul float %2, %i.t
  %i.z = fadd float %i.v, %.sroa.01.0.vec.extract.i ; 3 uses
  %i.aa = fadd float %i.x, %.sroa.01.4.vec.extract.i ; 3 uses
  %i.ab = fadd float %.sroa.6.0.i, %i.y           ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.0.i73150 = load i32, ptr %i.ac, align 4, !tbaa !49 ; 2 uses
  %i.am = sitofp i32 %.0.i73150 to float
  %i.an = fmul float %i.z, %i.am                  ; 3 uses
  %i.ao = add nsw i32 %.0.i73150, -1
  %i.ap = fcmp olt float %i.an, 0.000000e+00
  %i.aq = sitofp i32 %i.ao to float               ; 2 uses
  %i.ar = fcmp ogt float %i.an, %i.aq
  %..i158 = select i1 %i.ar, float %i.aq, float %i.an
  %.0.i77159 = select i1 %i.ap, float 0.000000e+00, float %..i158
  %i.as = fptosi float %.0.i77159 to i32          ; 3 uses
  store i32 %i.as, ptr %i.al, align 8, !tbaa !49
  %i.at = tail call noundef float @llvm.fabs.f32(float %i.u)
  %.0.i80167 = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.au = sitofp i32 %.0.i80167 to float
  %i.av = fmul float %i.at, %i.au
  %i.aw = fdiv float 1.000000e+00, %i.av
  store float %i.aw, ptr %i.ak, align 4, !tbaa !189
  %.sroa.7.0.vec.extract232 = extractelement <2 x float> %i.q, i64 0 ; 2 uses
  %i.ax = fcmp oeq float %.sroa.7.0.vec.extract232, 0.000000e+00
  br i1 %i.ax, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.thread, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.thread: ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83
  %.sroa.7.0.vec.insert = insertelement <2 x float> %i.q, float 0.000000e+00, i64 0
  br label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87:        ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83
  %i.ay = fcmp ult float %.sroa.7.0.vec.extract232, 0.000000e+00
  br i1 %i.ay, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104, label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97

_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97:        ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.thread, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87
  %.sroa.7.0 = phi <2 x float> [ %.sroa.7.0.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.thread ], [ %i.q, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87 ] ; 2 uses
  %i.az = add nsw i32 %i.as, 1
  %i.ba = sitofp i32 %i.az to float
  %.0.i89172 = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.bb = sitofp i32 %.0.i89172 to float
  %i.bc = fdiv float %i.ba, %i.bb
  %i.bd = fsub float %i.bc, %i.z
  %.sroa.7.0.vec.extract = extractelement <2 x float> %.sroa.7.0, i64 0
  %i.be = fdiv float %i.bd, %.sroa.7.0.vec.extract
  %i.bf = fadd float %2, %i.be
  store float %i.bf, ptr %i.ah, align 8, !tbaa !189
  store i32 1, ptr %i.ai, align 8, !tbaa !49
  %.0.i96 = load i32, ptr %i.ac, align 4, !tbaa !49
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104:       ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87
  %i.bg = sitofp i32 %i.as to float
  %.0.i99183 = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.bh = sitofp i32 %.0.i99183 to float
  %i.bi = fdiv float %i.bg, %i.bh
  %i.bj = fsub float %i.bi, %i.z
  %.sroa.7.0.vec.extract235 = extractelement <2 x float> %i.q, i64 0
  %i.bk = fdiv float %i.bj, %.sroa.7.0.vec.extract235
  %i.bl = fadd float %2, %i.bk
  store float %i.bl, ptr %i.ah, align 8, !tbaa !189
  store i32 -1, ptr %i.ai, align 8, !tbaa !49
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.1:      ; preds = %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104
  %.sroa.7.1 = phi <2 x float> [ %.sroa.7.0, %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97 ], [ %i.q, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104 ] ; 5 uses
  %storemerge = phi i32 [ %.0.i96, %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97 ], [ -1, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104 ]
  store i32 %storemerge, ptr %i.aj, align 4, !tbaa !49
  %.0.i73.1 = load i32, ptr %i.ad, align 4, !tbaa !49 ; 2 uses
  %i.bm = sitofp i32 %.0.i73.1 to float
  %i.bn = fmul float %i.aa, %i.bm                 ; 3 uses
  %i.bo = add nsw i32 %.0.i73.1, -1
  %i.bp = fcmp olt float %i.bn, 0.000000e+00
  %i.bq = sitofp i32 %i.bo to float               ; 2 uses
  %i.br = fcmp ogt float %i.bn, %i.bq
  %..i.1 = select i1 %i.br, float %i.bq, float %i.bn
  %.0.i77.1 = select i1 %i.bp, float 0.000000e+00, float %..i.1
  %i.bs = fptosi float %.0.i77.1 to i32           ; 3 uses
  store i32 %i.bs, ptr %i.ae, align 4, !tbaa !49
  %.sroa.7.4.vec.extract = extractelement <2 x float> %.sroa.7.1, i64 1 ; 2 uses
  %i.bt = tail call noundef float @llvm.fabs.f32(float %.sroa.7.4.vec.extract)
  %.0.i80.1 = load i32, ptr %i.ad, align 4, !tbaa !49
  %i.bu = sitofp i32 %.0.i80.1 to float
  %i.bv = fmul float %i.bt, %i.bu
  %i.bw = fdiv float 1.000000e+00, %i.bv
  store float %i.bw, ptr %i.af, align 8, !tbaa !189
  %i.bx = fcmp oeq float %.sroa.7.4.vec.extract, 0.000000e+00
  br i1 %i.bx, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1.thread, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1.thread: ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.1
  %.sroa.7.4.vec.insert = insertelement <2 x float> %.sroa.7.1, float 0.000000e+00, i64 1
  br label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.1

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.1
  %.sroa.7.4.vec.extract242 = extractelement <2 x float> %.sroa.7.1, i64 1
  %i.by = fcmp ult float %.sroa.7.4.vec.extract242, 0.000000e+00
  br i1 %i.by, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.1, label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.1

_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.1:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1.thread, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1
  %.sroa.7.2 = phi <2 x float> [ %.sroa.7.4.vec.insert, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1.thread ], [ %.sroa.7.1, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1 ]
  %i.bz = add nsw i32 %i.bs, 1
  %i.ca = sitofp i32 %i.bz to float
  %.0.i89.1 = load i32, ptr %i.ad, align 4, !tbaa !49
  %i.cb = sitofp i32 %.0.i89.1 to float
  %i.cc = fdiv float %i.ca, %i.cb
  %i.cd = fsub float %i.cc, %i.aa
  %.sroa.7.4.vec.extract237 = extractelement <2 x float> %.sroa.7.2, i64 1
  %i.ce = fdiv float %i.cd, %.sroa.7.4.vec.extract237
  %i.cf = fadd float %2, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cf, ptr %i.cg, align 4, !tbaa !189
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 1, ptr %i.ch, align 4, !tbaa !49
  %.0.i96.1 = load i32, ptr %i.ad, align 4, !tbaa !49
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.1:     ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.1
  %i.ci = sitofp i32 %i.bs to float
  %.0.i99.1 = load i32, ptr %i.ad, align 4, !tbaa !49
  %i.cj = sitofp i32 %.0.i99.1 to float
  %i.ck = fdiv float %i.ci, %i.cj
  %i.cl = fsub float %i.ck, %i.aa
  %.sroa.7.4.vec.extract239 = extractelement <2 x float> %.sroa.7.1, i64 1
  %i.cm = fdiv float %i.cl, %.sroa.7.4.vec.extract239
  %i.cn = fadd float %2, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.cn, ptr %i.co, align 4, !tbaa !189
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 -1, ptr %i.cp, align 4, !tbaa !49
  br label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.1, %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.1
  %.sink = phi i32 [ -1, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.1 ], [ %.0.i96.1, %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.1 ]
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sink, ptr %i.cq, align 8, !tbaa !49
  %.0.i73146.2 = load i32, ptr %i.ag, align 4, !tbaa !49 ; 2 uses
  %i.cr = sitofp i32 %.0.i73146.2 to float
  %i.cs = fmul float %i.ab, %i.cr                 ; 3 uses
  %i.ct = add nsw i32 %.0.i73146.2, -1
  %i.cu = fcmp olt float %i.cs, 0.000000e+00
  %i.cv = sitofp i32 %i.ct to float               ; 2 uses
  %i.cw = fcmp ogt float %i.cs, %i.cv
  %..i153.2 = select i1 %i.cw, float %i.cv, float %i.cs
  %.0.i77154.2 = select i1 %i.cu, float 0.000000e+00, float %..i153.2
  %i.cx = fptosi float %.0.i77154.2 to i32        ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !49
  %i.cz = tail call noundef float @llvm.fabs.f32(float %i.t)
  %.0.i80164.2 = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.da = sitofp i32 %.0.i80164.2 to float
  %i.db = fmul float %i.cz, %i.da
  %i.dc = fdiv float 1.000000e+00, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.dc, ptr %i.dd, align 4, !tbaa !189
  %i.de = fcmp oeq float %i.t, 0.000000e+00
  br i1 %i.de, label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.2, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.2

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.2:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2
  %i.df = fcmp ult float %i.t, 0.000000e+00
  br i1 %i.df, label %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.2, label %_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.2

_ZNK4pbrt6Tuple3INS_6Point3EiEixEi.exit97.2:      ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.2
  %.sroa.22.0 = phi float [ %i.t, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.2 ], [ 0.000000e+00, %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit83.2 ]
  %i.dg = add nsw i32 %i.cx, 1
  %i.dh = sitofp i32 %i.dg to float
  %.0.i89169.2 = load i32, ptr %i.ag, align 4, !tbaa !49
  %i.di = sitofp i32 %.0.i89169.2 to float
  %i.dj = fdiv float %i.dh, %i.di
  %i.dk = fsub float %i.dj, %i.ab
  %i.dl = fdiv float %i.dk, %.sroa.22.0
  %i.dm = fadd float %2, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.dm, ptr %i.dn, align 8, !tbaa !189
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.do, align 8, !tbaa !49
  %.0.i96.2 = load i32, ptr %i.ag, align 4, !tbaa !49
  br label %bb.a

_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit104.2:     ; preds = %_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit87.2
  %i.dp = sitofp i32 %i.cx to float
  %.0.i99180.2 = load i32, ptr %i.ag, align 4, !tbaa !49
end_hunk_0
