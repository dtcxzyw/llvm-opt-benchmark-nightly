Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/textures?download=true
inline.NumInlined: 4773
inline.NumDeleted: 1122
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK4pbrt21SpectrumBilerpTexture8ToStringB5cxx11Ev
define dso_local void @_ZNK4pbrt21SpectrumBilerpTexture8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !24, !alias.scope !437
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !27, !alias.scope !437
  store i8 0, ptr %i.e, align 8, !tbaa !28, !alias.scope !437
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_16TextureMapping2DEJRKNS_8SpectrumES7_S7_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN4pbrt12StringPrintfIJRKNS_16TextureMapping2DERKNS_8SpectrumES6_S6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !437 ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !28, !alias.scope !437
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.g

_ZN4pbrt12StringPrintfIJRKNS_16TextureMapping2DERKNS_8SpectrumES6_S6_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DE(ptr nofree noundef readonly byval(%"struct.pbrt::TextureEvalContext") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %class.anon.61, align 8             ; 4 uses
  %4 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::TexCoord2D", align 4 ; 7 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871         ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = load i64, ptr %2, align 8, !tbaa !43
  %i.d = and i64 %i.c, 144115188075855871         ; 2 uses
  %.not49 = icmp eq i64 %i.d, 0                   ; 2 uses
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not49, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA7_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 199, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(7) @.str.33) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 8 dereferenceable(76) %0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !450
  store ptr %4, ptr %3, align 8, !tbaa !65, !noalias !450
  %i.e = inttoptr i64 %i.b to ptr
  %i.f = lshr i64 %i.a, 57
  %i.g = trunc nuw nsw i64 %i.f to i32
  %i.h = add nsw i32 %i.g, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::TexCoord2D") align 4 %5, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.e, i32 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !450
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load <2 x float>, ptr %i.i, align 4, !tbaa !41
  %i.k = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.j) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load <2 x float>, ptr %i.l, align 4, !tbaa !41
  %i.n = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.m) ; 2 uses
  %i.o = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.p = shufflevector <2 x float> %i.k, <2 x float> %i.n, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fcmp olt <2 x float> %i.o, %i.p
  %i.r = select <2 x i1> %i.q, <2 x float> %i.p, <2 x float> %i.o ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = fmul float %i.s, 1.500000e+00            ; 4 uses
  %i.u = extractelement <2 x float> %i.r, i64 1
  %i.v = fmul float %i.u, 1.500000e+00            ; 4 uses
  %i.w = load float, ptr %5, align 4, !tbaa !41   ; 4 uses
  %i.x = fsub float %i.w, %i.t                    ; 2 uses
  %i.y = call noundef float @llvm.floor.f32(float %i.x)
  %i.z = fadd float %i.w, %i.t                    ; 2 uses
  %i.aa = call noundef float @llvm.floor.f32(float %i.z)
  %i.ab = fcmp oeq float %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef float @llvm.floor.f32(float %i.w)
  %i.ad = fptosi float %i.ac to i32
  %i.ae = shl i32 %i.ad, 1
  %i.af = and i32 %i.ae, 2
  %i.ag = sub nsw i32 1, %i.af
  %i.ah = sitofp i32 %i.ag to float
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit"

bb.f:                                             ; preds = %bb.d
  %i.ai = insertelement <2 x float> poison, float %i.x, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.z, i64 1
  %i.ak = fmul <2 x float> %i.aj, splat (float 5.000000e-01) ; 3 uses
  %i.al = fmul float %i.w, 5.000000e-01           ; 3 uses
  %i.am = call noundef float @llvm.floor.f32(float %i.al)
  %i.an = fsub float %i.al, %i.am
  %i.ao = fadd float %i.an, -5.000000e-01         ; 2 uses
  %i.ap = call noundef float @llvm.fabs.f32(float %i.ao)
  %i.aq = fmul float %i.ap, 2.000000e+00
  %i.ar = fsub float 1.000000e+00, %i.aq
  %i.as = fmul float %i.ao, %i.ar
  %i.at = fadd float %i.al, %i.as
  %i.au = fmul float %i.at, 2.000000e+00
  %i.av = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ak)
  %i.aw = fsub <2 x float> %i.ak, %i.av
  %i.ax = fadd <2 x float> %i.aw, splat (float -5.000000e-01) ; 2 uses
  %i.ay = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ax)
  %i.az = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.ba = fsub <2 x float> splat (float 1.000000e+00), %i.az
  %i.bb = fmul <2 x float> %i.ax, %i.ba
  %i.bc = fadd <2 x float> %i.ak, %i.bb           ; 2 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 1
  %i.be = fsub float %i.bd, %i.au
  %i.bf = extractelement <2 x float> %i.bc, i64 0
  %i.bg = fadd float %i.bf, %i.be
  %i.bh = fmul float %i.t, %i.t
  %i.bi = fdiv float %i.bg, %i.bh
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit"

"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit": ; preds = %bb.e, %bb.f
  %.0.i = phi float [ %i.ah, %bb.e ], [ %i.bi, %bb.f ]
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !41 ; 4 uses
  %i.bl = fsub float %i.bk, %i.v                  ; 2 uses
  %i.bm = call noundef float @llvm.floor.f32(float %i.bl)
  %i.bn = fadd float %i.v, %i.bk                  ; 2 uses
  %i.bo = call noundef float @llvm.floor.f32(float %i.bn)
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit"
  %i.bq = call noundef float @llvm.floor.f32(float %i.bk)
  %i.br = fptosi float %i.bq to i32
  %i.bs = shl i32 %i.br, 1
  %i.bt = and i32 %i.bs, 2
  %i.bu = sub nsw i32 1, %i.bt
  %i.bv = sitofp i32 %i.bu to float
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit10"

bb.h:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit"
  %i.bw = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %i.bn, i64 1
  %i.by = fmul <2 x float> %i.bx, splat (float 5.000000e-01) ; 3 uses
  %i.bz = fmul float %i.bk, 5.000000e-01          ; 3 uses
  %i.ca = call noundef float @llvm.floor.f32(float %i.bz)
  %i.cb = fsub float %i.bz, %i.ca
  %i.cc = fadd float %i.cb, -5.000000e-01         ; 2 uses
  %i.cd = call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = fmul float %i.cd, 2.000000e+00
  %i.cf = fsub float 1.000000e+00, %i.ce
  %i.cg = fmul float %i.cc, %i.cf
  %i.ch = fadd float %i.bz, %i.cg
  %i.ci = fmul float %i.ch, 2.000000e+00
  %i.cj = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.by)
  %i.ck = fsub <2 x float> %i.by, %i.cj
  %i.cl = fadd <2 x float> %i.ck, splat (float -5.000000e-01) ; 2 uses
  %i.cm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cl)
  %i.cn = fmul <2 x float> %i.cm, splat (float 2.000000e+00)
  %i.co = fsub <2 x float> splat (float 1.000000e+00), %i.cn
  %i.cp = fmul <2 x float> %i.cl, %i.co
  %i.cq = fadd <2 x float> %i.by, %i.cp           ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 1
  %i.cs = fsub float %i.cr, %i.ci
  %i.ct = extractelement <2 x float> %i.cq, i64 0
  %i.cu = fadd float %i.ct, %i.cs
  %i.cv = fmul float %i.v, %i.v
  %i.cw = fdiv float %i.cu, %i.cv
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit10"

"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit10": ; preds = %bb.g, %bb.h
  %.0.i9 = phi float [ %i.bv, %bb.g ], [ %i.cw, %bb.h ]
  %i.cx = fmul float %.0.i, %.0.i9
  %i.cy = fmul float %i.cx, 5.000000e-01
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.r

bb.i:                                             ; preds = %bb.a
  br i1 %.not49, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN4pbrt8LogFatalIJRA6_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef 210, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(6) @.str.34) #27
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sroa.044.0.copyload = load <2 x float>, ptr %0, align 8 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load float, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.3.0.copyload = load <2 x float>, ptr %.sroa.3.0..sroa_idx, align 4 ; 2 uses
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  %6 = load <4 x float>, ptr %.sroa.445.0..sroa_idx, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.546.0.copyload = load <2 x float>, ptr %.sroa.546.0..sroa_idx, align 8 ; 2 uses
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.647.0.copyload = load float, ptr %.sroa.647.0..sroa_idx, align 8
  %i.cz = inttoptr i64 %i.d to ptr                ; 12 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !41, !noalias !451 ; 2 uses
  %i.dc = fmul float %.sroa.2.0.copyload, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.de = load float, ptr %i.dd, align 4, !tbaa !41, !noalias !451
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !41, !noalias !451 ; 2 uses
  %i.di = fmul float %.sroa.2.0.copyload, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 28
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !41, !noalias !451
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !41, !noalias !451 ; 2 uses
  %i.do = fmul float %.sroa.2.0.copyload, %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cz, i64 44
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !41, !noalias !451
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.ds = load <2 x float>, ptr %i.dr, align 4, !tbaa !41, !noalias !451
  %i.dt = fmul <2 x float> %.sroa.044.0.copyload, %i.ds ; 2 uses
  %shift = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dt, %shift
  %i.du = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !41, !noalias !451
  %i.dx = fmul float %.sroa.2.0.copyload, %i.dw
  %i.dy = fadd float %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cz, i64 60
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !41, !noalias !451
  %i.eb = fadd float %i.ea, %i.dy                 ; 4 uses
  %i.ec = fcmp oeq float %i.eb, 1.000000e+00      ; 3 uses
  %i.ed = load <2 x float>, ptr %i.cz, align 4, !tbaa !41, !noalias !451 ; 4 uses
  %foldExtExtBinop54 = fmul <2 x float> %.sroa.044.0.copyload, %i.ed
  %foldExtExtBinop56 = fmul <2 x float> %.sroa.044.0.copyload, %i.ed
  %shift58 = shufflevector <2 x float> %foldExtExtBinop56, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop59 = fadd <2 x float> %foldExtExtBinop54, %shift58
  %i.ee = extractelement <2 x float> %foldExtExtBinop59, i64 0
  %i.ef = fadd float %i.ee, %i.dc
  %i.eg = fadd float %i.de, %i.ef                 ; 2 uses
  %i.eh = fdiv float %i.eg, %i.eb
  %.sink96.i.i.i.i.i.i = select i1 %i.ec, float %i.eg, float %i.eh ; 4 uses
  %i.ei = shufflevector <2 x float> %.sroa.546.0.copyload, <2 x float> %.sroa.3.0.copyload, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ej = fmul <2 x float> %i.ei, %i.ed
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.el = shufflevector <2 x float> %.sroa.3.0.copyload, <2 x float> %.sroa.546.0.copyload, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.em = fmul <2 x float> %i.el, %i.ed
  %i.en = fadd <2 x float> %i.ek, %i.em
  %i.eo = insertelement <2 x float> %7, float %.sroa.647.0.copyload, i64 1 ; 3 uses
  %i.ep = insertelement <2 x float> poison, float %i.db, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fmul <2 x float> %i.eo, %i.eq
  %i.es = fadd <2 x float> %i.er, %i.en
  %i.et = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.es) ; 2 uses
  %i.eu = extractelement <2 x float> %i.et, i64 0 ; 2 uses
  %i.ev = extractelement <2 x float> %i.et, i64 1 ; 2 uses
  %i.ew = fcmp olt float %i.eu, %i.ev
  %.sroa.speculated26 = select i1 %i.ew, float %i.ev, float %i.eu
  %i.ex = fmul float %.sroa.speculated26, 1.500000e+00 ; 4 uses
  %i.ey = load <2 x float>, ptr %i.df, align 4, !tbaa !41, !noalias !451 ; 4 uses
  %foldExtExtBinop61 = fmul <2 x float> %.sroa.044.0.copyload, %i.ey
  %foldExtExtBinop63 = fmul <2 x float> %.sroa.044.0.copyload, %i.ey
  %shift65 = shufflevector <2 x float> %foldExtExtBinop63, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop66 = fadd <2 x float> %foldExtExtBinop61, %shift65
  %i.ez = extractelement <2 x float> %foldExtExtBinop66, i64 0
  %i.fa = fadd float %i.ez, %i.di
  %i.fb = fadd float %i.dk, %i.fa                 ; 2 uses
  %i.fc = fdiv float %i.fb, %i.eb
  %.sink.i.i.i.i.i.i = select i1 %i.ec, float %i.fb, float %i.fc ; 4 uses
  %i.fd = fmul <2 x float> %i.ei, %i.ey
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ff = fmul <2 x float> %i.el, %i.ey
  %i.fg = fadd <2 x float> %i.fe, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = fmul <2 x float> %i.eo, %i.fi
  %i.fk = fadd <2 x float> %i.fj, %i.fg
  %i.fl = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fk) ; 2 uses
  %i.fm = load <2 x float>, ptr %i.dl, align 4, !tbaa !41, !noalias !451 ; 3 uses
  %i.fn = fmul <2 x float> %.sroa.044.0.copyload, %i.fm ; 2 uses
  %shift68 = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fadd <2 x float> %i.fn, %shift68
  %i.fo = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.fp = fadd float %i.fo, %i.do
  %i.fq = fadd float %i.dq, %i.fp                 ; 2 uses
  %i.fr = fdiv float %i.fq, %i.eb
  %.sroa.495.0.i.i.i.i.i.i = select i1 %i.ec, float %i.fq, float %i.fr ; 4 uses
  %i.fs = fmul <2 x float> %i.ei, %i.fm
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = fmul <2 x float> %i.el, %i.fm
  %i.fv = fadd <2 x float> %i.ft, %i.fu
  %i.fw = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.eo, %i.fx
  %i.fz = fadd <2 x float> %i.fy, %i.fv
  %i.ga = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fz) ; 2 uses
  %i.gb = shufflevector <2 x float> %i.fl, <2 x float> %i.ga, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gc = shufflevector <2 x float> %i.fl, <2 x float> %i.ga, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gd = fcmp olt <2 x float> %i.gb, %i.gc
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.gc, <2 x float> %i.gb ; 2 uses
  %i.gf = extractelement <2 x float> %i.ge, i64 0
  %i.gg = fmul float %i.gf, 1.500000e+00          ; 4 uses
  %i.gh = extractelement <2 x float> %i.ge, i64 1
  %i.gi = fmul float %i.gh, 1.500000e+00          ; 4 uses
  %i.gj = fsub float %.sink96.i.i.i.i.i.i, %i.ex  ; 2 uses
  %i.gk = tail call noundef float @llvm.floor.f32(float %i.gj)
  %i.gl = fadd float %i.ex, %.sink96.i.i.i.i.i.i  ; 2 uses
  %i.gm = tail call noundef float @llvm.floor.f32(float %i.gl)
  %i.gn = fcmp oeq float %i.gk, %i.gm
  br i1 %i.gn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.go = tail call noundef float @llvm.floor.f32(float %.sink96.i.i.i.i.i.i)
  %i.gp = fptosi float %i.go to i32
  %i.gq = shl i32 %i.gp, 1
  %i.gr = and i32 %i.gq, 2
  %i.gs = sub nsw i32 1, %i.gr
  %i.gt = sitofp i32 %i.gs to float
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit15"

bb.m:                                             ; preds = %bb.k
  %i.gu = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gl, i64 1
  %i.gw = fmul <2 x float> %i.gv, splat (float 5.000000e-01) ; 3 uses
  %i.gx = fmul float %.sink96.i.i.i.i.i.i, 5.000000e-01 ; 3 uses
  %i.gy = tail call noundef float @llvm.floor.f32(float %i.gx)
  %i.gz = fsub float %i.gx, %i.gy
  %i.ha = fadd float %i.gz, -5.000000e-01         ; 2 uses
  %i.hb = tail call noundef float @llvm.fabs.f32(float %i.ha)
  %i.hc = fmul float %i.hb, 2.000000e+00
  %i.hd = fsub float 1.000000e+00, %i.hc
  %i.he = fmul float %i.ha, %i.hd
  %i.hf = fadd float %i.gx, %i.he
  %i.hg = fmul float %i.hf, 2.000000e+00
  %i.hh = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.gw)
  %i.hi = fsub <2 x float> %i.gw, %i.hh
  %i.hj = fadd <2 x float> %i.hi, splat (float -5.000000e-01) ; 2 uses
  %i.hk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hj)
  %i.hl = fmul <2 x float> %i.hk, splat (float 2.000000e+00)
  %i.hm = fsub <2 x float> splat (float 1.000000e+00), %i.hl
  %i.hn = fmul <2 x float> %i.hj, %i.hm
  %i.ho = fadd <2 x float> %i.gw, %i.hn           ; 2 uses
  %i.hp = extractelement <2 x float> %i.ho, i64 1
  %i.hq = fsub float %i.hp, %i.hg
  %i.hr = extractelement <2 x float> %i.ho, i64 0
  %i.hs = fadd float %i.hr, %i.hq
  %i.ht = fmul float %i.ex, %i.ex
  %i.hu = fdiv float %i.hs, %i.ht
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit15"

"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit15": ; preds = %bb.l, %bb.m
  %.0.i14 = phi float [ %i.gt, %bb.l ], [ %i.hu, %bb.m ]
  %i.hv = fmul float %.0.i14, 5.000000e-01
  %i.hw = fsub float %.sink.i.i.i.i.i.i, %i.gg    ; 2 uses
  %i.hx = tail call noundef float @llvm.floor.f32(float %i.hw)
  %i.hy = fadd float %i.gg, %.sink.i.i.i.i.i.i    ; 2 uses
  %i.hz = tail call noundef float @llvm.floor.f32(float %i.hy)
  %i.ia = fcmp oeq float %i.hx, %i.hz
  br i1 %i.ia, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit15"
  %i.ib = tail call noundef float @llvm.floor.f32(float %.sink.i.i.i.i.i.i)
  %i.ic = fptosi float %i.ib to i32
  %i.id = shl i32 %i.ic, 1
  %i.ie = and i32 %i.id, 2
  %i.if = sub nsw i32 1, %i.ie
  %i.ig = sitofp i32 %i.if to float
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit17"

bb.o:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit15"
  %i.ih = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ii = insertelement <2 x float> %i.ih, float %i.hy, i64 1
  %i.ij = fmul <2 x float> %i.ii, splat (float 5.000000e-01) ; 3 uses
  %i.ik = fmul float %.sink.i.i.i.i.i.i, 5.000000e-01 ; 3 uses
  %i.il = tail call noundef float @llvm.floor.f32(float %i.ik)
  %i.im = fsub float %i.ik, %i.il
  %i.in = fadd float %i.im, -5.000000e-01         ; 2 uses
  %i.io = tail call noundef float @llvm.fabs.f32(float %i.in)
  %i.ip = fmul float %i.io, 2.000000e+00
  %i.iq = fsub float 1.000000e+00, %i.ip
  %i.ir = fmul float %i.in, %i.iq
  %i.is = fadd float %i.ik, %i.ir
  %i.it = fmul float %i.is, 2.000000e+00
  %i.iu = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ij)
  %i.iv = fsub <2 x float> %i.ij, %i.iu
  %i.iw = fadd <2 x float> %i.iv, splat (float -5.000000e-01) ; 2 uses
  %i.ix = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.iw)
  %i.iy = fmul <2 x float> %i.ix, splat (float 2.000000e+00)
  %i.iz = fsub <2 x float> splat (float 1.000000e+00), %i.iy
  %i.ja = fmul <2 x float> %i.iw, %i.iz
  %i.jb = fadd <2 x float> %i.ij, %i.ja           ; 2 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 1
  %i.jd = fsub float %i.jc, %i.it
  %i.je = extractelement <2 x float> %i.jb, i64 0
  %i.jf = fadd float %i.je, %i.jd
  %i.jg = fmul float %i.gg, %i.gg
  %i.jh = fdiv float %i.jf, %i.jg
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit17"

"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit17": ; preds = %bb.n, %bb.o
  %.0.i16 = phi float [ %i.ig, %bb.n ], [ %i.jh, %bb.o ]
  %i.ji = fmul float %i.hv, %.0.i16
  %i.jj = fsub float %.sroa.495.0.i.i.i.i.i.i, %i.gi ; 2 uses
  %i.jk = tail call noundef float @llvm.floor.f32(float %i.jj)
  %i.jl = fadd float %i.gi, %.sroa.495.0.i.i.i.i.i.i ; 2 uses
  %i.jm = tail call noundef float @llvm.floor.f32(float %i.jl)
  %i.jn = fcmp oeq float %i.jk, %i.jm
  br i1 %i.jn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit17"
  %i.jo = tail call noundef float @llvm.floor.f32(float %.sroa.495.0.i.i.i.i.i.i)
  %i.jp = fptosi float %i.jo to i32
  %i.jq = shl i32 %i.jp, 1
  %i.jr = and i32 %i.jq, 2
  %i.js = sub nsw i32 1, %i.jr
  %i.jt = sitofp i32 %i.js to float
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit19"

bb.q:                                             ; preds = %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit17"
  %i.ju = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %i.jl, i64 1
  %i.jw = fmul <2 x float> %i.jv, splat (float 5.000000e-01) ; 3 uses
  %i.jx = fmul float %.sroa.495.0.i.i.i.i.i.i, 5.000000e-01 ; 3 uses
  %i.jy = tail call noundef float @llvm.floor.f32(float %i.jx)
  %i.jz = fsub float %i.jx, %i.jy
  %i.ka = fadd float %i.jz, -5.000000e-01         ; 2 uses
  %i.kb = tail call noundef float @llvm.fabs.f32(float %i.ka)
  %i.kc = fmul float %i.kb, 2.000000e+00
  %i.kd = fsub float 1.000000e+00, %i.kc
  %i.ke = fmul float %i.ka, %i.kd
  %i.kf = fadd float %i.jx, %i.ke
  %i.kg = fmul float %i.kf, 2.000000e+00
  %i.kh = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.jw)
  %i.ki = fsub <2 x float> %i.jw, %i.kh
  %i.kj = fadd <2 x float> %i.ki, splat (float -5.000000e-01) ; 2 uses
  %i.kk = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kj)
  %i.kl = fmul <2 x float> %i.kk, splat (float 2.000000e+00)
  %i.km = fsub <2 x float> splat (float 1.000000e+00), %i.kl
  %i.kn = fmul <2 x float> %i.kj, %i.km
  %i.ko = fadd <2 x float> %i.jw, %i.kn           ; 2 uses
  %i.kp = extractelement <2 x float> %i.ko, i64 1
  %i.kq = fsub float %i.kp, %i.kg
  %i.kr = extractelement <2 x float> %i.ko, i64 0
  %i.ks = fadd float %i.kr, %i.kq
  %i.kt = fmul float %i.gi, %i.gi
  %i.ku = fdiv float %i.ks, %i.kt
  br label %"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit19"

"_ZZN4pbrt12CheckerboardENS_18TextureEvalContextENS_16TextureMapping2DENS_16TextureMapping3DEENK3$_1clEff.exit19": ; preds = %bb.p, %bb.q
end_hunk_0
begin_hunk_1_@_ZN4pbrt15SpectrumTexture6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9TransformERKNS_26TextureParameterDictionaryENS_12SpectrumTypeEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEEb:bb.a

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN4pbrt25UniversalTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr nofree noundef readonly byval(%"struct.pbrt::TextureEvalContext") align 8 captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %class.anon.75, align 8             ; 4 uses
  %4 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 8 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store ptr %4, ptr %3, align 8, !tbaa !65
  %i.a = load i64, ptr %1, align 8, !tbaa !45     ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = lshr i64 %i.a, 57
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = add nsw i32 %i.e, -1
  %i.g = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_12FloatTexture8EvaluateENS_18TextureEvalContextEEUlT_E_fNS_17FloatImageTextureENS_20GPUFloatImageTextureENS_15FloatMixTextureENS_24FloatDirectionMixTextureENS_18FloatScaledTextureENS_20FloatConstantTextureENS_18FloatBilerpTextureENS_24FloatCheckerboardTextureEJNS_16FloatDotsTextureENS_10FBmTextureENS_16FloatPtexTextureENS_19GPUFloatPtexTextureENS_12WindyTextureENS_15WrinkledTextureEEvEET0_OS4_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.c, i32 noundef %i.f), !inline_history !721
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret float %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %1, ptr nofree noundef readonly byval(%"struct.pbrt::TextureEvalContext") align 8 captures(none) %2, ptr nofree noundef readonly byval(%"class.pbrt::SampledWavelengths") align 8 captures(none) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %class.anon.76, align 8             ; 5 uses
  %5 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 8 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  store ptr %6, ptr %4, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %5, ptr %i.a, align 8, !tbaa !173
  %i.b = load i64, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.c = and i64 %i.b, 144115188075855871
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = lshr i64 %i.b, 57
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = add nsw i32 %i.f, -1
  %i.h = call { <2 x float>, <2 x float> } @_ZN4pbrt6detail8DispatchIRZNKS_15SpectrumTexture8EvaluateENS_18TextureEvalContextENS_18SampledWavelengthsEEUlT_E_NS_15SampledSpectrumENS_20SpectrumImageTextureENS_23GPUSpectrumImageTextureENS_18SpectrumMixTextureENS_27SpectrumDirectionMixTextureENS_21SpectrumScaledTextureENS_23SpectrumConstantTextureENS_21SpectrumBilerpTextureENS_27SpectrumCheckerboardTextureEJNS_13MarbleTextureENS_19SpectrumDotsTextureENS_19SpectrumPtexTextureENS_22GPUSpectrumPtexTextureEEvEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.d, i32 noundef %i.g), !inline_history !722
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret { <2 x float>, <2 x float> } %i.h
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZN4pbrt3$_2D0Ev"(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZN4pbrt3$_211reportErrorEPKc"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !24, !alias.scope !725
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27, !alias.scope !725
  store i8 0, ptr %i.b, align 8, !tbaa !28, !alias.scope !725
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRPKcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_OT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !725 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28, !alias.scope !725
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

_ZN4pbrt12StringPrintfIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit.i: ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !29
  invoke void @_ZN4pbrt5ErrorEPKNS_7FileLocEPKc(ptr noundef null, ptr noundef %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit.i
  %i.j = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.b
  br i1 %i.k, label %_ZN4pbrt5ErrorIJRPKcEEEvS2_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZN4pbrt5ErrorIJRPKcEEEvS2_DpOT_.exit

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES2_DpOT_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.d
  %i.q = load i64, ptr %i.b, align 8, !tbaa !28
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume.i

_ZN4pbrt5ErrorIJRPKcEEEvS2_DpOT_.exit:            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_16TextureMapping2D3MapENS_18TextureEvalContextEEUlT_E_NS_10TexCoord2DENS_9UVMappingENS_16SphericalMappingENS_18CylindricalMappingENS_13PlanarMappingEEET0_OS4_PKvi(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %4 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %5 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 4 uses
  switch i32 %3, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.a = load ptr, ptr %1, align 8, !tbaa !738, !noalias !736, !nonnull !76, !align !174 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !noalias !736
  %i.e = load <2 x float>, ptr %.sroa.44.0..sroa_idx.i, align 4, !noalias !736
  %i.f = load float, ptr %i.b, align 4, !tbaa !34, !noalias !740
  %i.g = load <2 x float>, ptr %2, align 4, !tbaa !41, !noalias !740 ; 2 uses
  %i.h = fmul <2 x float> %i.d, %i.g
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !41, !noalias !740
  %i.j = shufflevector <2 x float> %i.h, <2 x float> %i.e, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.k = shufflevector <2 x float> %i.i, <2 x float> %i.g, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.l = fadd <4 x float> %i.j, %i.k
  %i.m = fmul <4 x float> %i.j, %i.k
  %i.n = shufflevector <4 x float> %i.l, <4 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.n, ptr %0, align 4, !alias.scope !740
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load <2 x float>, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !736
  %i.q = insertelement <2 x float> poison, float %i.f, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  store <2 x float> %i.s, ptr %i.o, align 4, !tbaa !41, !alias.scope !740
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.t = load ptr, ptr %1, align 8, !tbaa !738, !noalias !741, !nonnull !76, !align !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %i.t, i64 76, i1 false), !noalias !741
  tail call void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.u = load ptr, ptr %1, align 8, !tbaa !738, !noalias !742, !nonnull !76, !align !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %5, ptr noundef nonnull align 4 dereferenceable(76) %i.u, i64 76, i1 false), !noalias !742
  tail call void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.v = load ptr, ptr %1, align 8, !tbaa !738, !noalias !743, !nonnull !76, !align !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 4 dereferenceable(76) %i.v, i64 76, i1 false), !noalias !743
  tail call void @_ZNK4pbrt13PlanarMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt16SphericalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0108.0.copyload = load <2 x float>, ptr %2, align 8 ; 4 uses
  %.sroa.2109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load <4 x float>, ptr %.sroa.2109.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load float, ptr %i.b, align 4, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.073.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 4 uses
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %4 = load <4 x float>, ptr %.sroa.274.0..sroa_idx, align 4
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.062.0.copyload = load <2 x float>, ptr %i.l, align 8 ; 4 uses
  %.sroa.263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.263.0.copyload = load float, ptr %.sroa.263.0..sroa_idx, align 8
  %i.m = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 5 uses
  %i.n = load <2 x float>, ptr %i.d, align 4, !tbaa !41 ; 5 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !41
  %i.p = load <2 x float>, ptr %i.g, align 4, !tbaa !41 ; 4 uses
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !41 ; 3 uses
  %i.s = load <2 x float>, ptr %i.i, align 4, !tbaa !41 ; 2 uses
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !41 ; 2 uses
  %i.u = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.v = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.w = fmul <2 x float> %i.u, %i.v
  %i.x = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %i.y = fmul <2 x float> %.sroa.0108.0.copyload, %i.x
  %i.z = shufflevector <2 x float> %.sroa.0108.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> %i.s, <2 x i32> <i32 1, i32 2>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = fadd <2 x float> %i.ab, %i.y
  %i.ad = fadd <2 x float> %i.ac, %i.w
  %i.ae = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.af = fadd <2 x float> %i.ae, %i.ad           ; 3 uses
  %i.ag = extractelement <2 x float> %i.af, i64 1 ; 2 uses
  %i.ah = fcmp oeq float %i.ag, 1.000000e+00      ; 2 uses
  %i.ai = extractelement <2 x float> %i.af, i64 0 ; 2 uses
  %i.aj = fdiv float %i.ai, %i.ag
  %.sroa.495.0.i = select i1 %i.ah, float %i.ai, float %i.aj ; 4 uses
  %i.ak = fmul float %.sroa.495.0.i, %.sroa.495.0.i
  %i.al = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.an = fmul <2 x float> %i.al, %i.am
  %i.ao = shufflevector <2 x float> %i.n, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.ap = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.aq = fmul <2 x float> %i.ao, %i.ap
  %i.ar = fadd <2 x float> %i.an, %i.aq
  %i.as = insertelement <2 x float> %5, float %.sroa.263.0.copyload, i64 1 ; 3 uses
  %i.at = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 0, i32 2>
  %i.au = fmul <2 x float> %i.at, %i.am
  %i.av = shufflevector <2 x float> %i.m, <2 x float> %i.n, <2 x i32> <i32 1, i32 3>
  %i.aw = fmul <2 x float> %i.av, %i.ap
  %i.ax = fadd <2 x float> %i.au, %i.aw
  %i.ay = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.az = fmul <2 x float> %i.q, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.073.0.copyload, <2 x float> %.sroa.062.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bb = fmul <2 x float> %i.p, %i.ba
  %i.bc = fadd <2 x float> %i.az, %i.bb
  %i.bd = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %i.as
  %i.bf = fadd <2 x float> %i.be, %i.bc           ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bh = load <2 x float>, ptr %i.f, align 4, !tbaa !41 ; 4 uses
  %i.bi = load <2 x float>, ptr %i.a, align 4, !tbaa !41 ; 4 uses
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bk = fmul <2 x float> %i.u, %i.bj
  %i.bl = shufflevector <2 x float> %i.n, <2 x float> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.bm = fmul <2 x float> %.sroa.0108.0.copyload, %i.bl
  %i.bn = insertelement <2 x float> %i.m, float %i.o, i64 1
  %i.bo = fmul <2 x float> %.sroa.0108.0.copyload, %i.bn
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = fadd <2 x float> %i.bp, %i.bm
  %i.br = fadd <2 x float> %i.bq, %i.bk
  %i.bs = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bt = insertelement <2 x float> %i.bs, float %i.c, i64 1
  %i.bu = fadd <2 x float> %i.bt, %i.br           ; 2 uses
  %i.bv = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fdiv <2 x float> %i.bu, %i.bv
  %i.bx = insertelement <2 x i1> poison, i1 %i.ah, i64 0
  %i.by = shufflevector <2 x i1> %i.bx, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bz = select <2 x i1> %i.by, <2 x float> %i.bu, <2 x float> %i.bw ; 7 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1 ; 3 uses
  %i.cb = fmul float %i.ca, %i.ca
  %i.cc = extractelement <2 x float> %i.bz, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.bz, %i.bz
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ce = fadd float %i.cb, %i.cd                 ; 3 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ce) ; 2 uses
  %i.cf = fmul float %i.ce, f0x40C90FDB           ; 2 uses
  %i.cg = fneg <2 x float> %i.bz
  %i.ch = shufflevector <2 x float> %i.bz, <2 x float> %i.cg, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv <2 x float> %i.ch, %i.cj           ; 2 uses
  %i.cl = fdiv float 0.000000e+00, %i.cf
  %i.cm = fadd float %i.ak, %i.ce                 ; 2 uses
  %i.cn = fmul float %i.cm, f0x40490FDB
  %i.co = fdiv float 1.000000e+00, %i.cn          ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %.sroa.495.0.i, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fmul <2 x float> %i.bz, %i.cq
  %i.cs = insertelement <2 x float> poison, float %sqrt, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fdiv <2 x float> %i.cr, %i.ct
  %i.cv = fneg float %sqrt
  %i.cw = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cu, %i.cx           ; 2 uses
  %i.cz = fmul float %i.co, %i.cv
  %i.da = shufflevector <2 x float> %i.bh, <2 x float> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.db = fmul <2 x float> %i.da, %i.as
  %i.dc = fadd <2 x float> %i.db, %i.ar           ; 2 uses
  %i.dd = shufflevector <2 x float> %i.bi, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2>
  %i.de = fmul <2 x float> %i.dd, %i.as
  %i.df = fadd <2 x float> %i.de, %i.ax           ; 2 uses
  %i.dg = fmul <2 x float> %i.dc, %i.ck
  %i.dh = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = fmul <2 x float> %i.df, %i.dh
  %i.dj = fadd <2 x float> %i.dg, %i.di
  %i.dk = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dl = fmul <2 x float> %i.dc, %i.cy
  %i.dm = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = fmul <2 x float> %i.df, %i.dm
  %i.do = fadd <2 x float> %i.dl, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x float> %i.bf, %i.dq
  %i.ds = fadd <2 x float> %i.dr, %i.do
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cm) ; 3 uses
  %i.dt = fdiv float %i.ca, %sqrt.i.i
  %i.du = fdiv float %i.cc, %sqrt.i.i
  %i.dv = fdiv float %.sroa.495.0.i, %sqrt.i.i    ; 3 uses
  %i.dw = fcmp olt float %i.dv, -1.000000e+00
  %i.dx = fcmp ogt float %i.dv, 1.000000e+00
  %..i.i.i = select i1 %i.dx, float 1.000000e+00, float %i.dv
  %.0.i.i.i = select i1 %i.dw, float -1.000000e+00, float %..i.i.i
  %i.dy = tail call noundef float @acosf(float noundef %.0.i.i.i) #26
  %i.dz = tail call noundef float @atan2f(float noundef %i.du, float noundef %i.dt) #26 ; 3 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  %i.eb = fadd float %i.dz, f0x40C90FDB
  %i.ec = select i1 %i.ea, float %i.eb, float %i.dz
  %i.ed = insertelement <4 x float> poison, float %i.dy, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %i.ec, i64 1
  %i.ef = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.eg = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.eh = fmul <4 x float> %i.ef, %i.eg
  %i.ei = shufflevector <4 x float> %i.ee, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.ej = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ek = shufflevector <4 x float> <float f0x3EA2F983, float f0x3E22F983, float poison, float poison>, <4 x float> %i.ej, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.el = fmul <4 x float> %i.ei, %i.ek
  %i.em = fadd <4 x float> %i.ei, %i.ek
  %i.en = shufflevector <4 x float> %i.el, <4 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.en, ptr %0, align 4
  store <2 x float> %i.ds, ptr %i.bg, align 4, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18CylindricalMapping3MapENS_18TextureEvalContextE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::TexCoord2D") align 4 %0, ptr noundef nonnull align 4 dereferenceable(128) %1, ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.067.0.copyload = load <2 x float>, ptr %2, align 8 ; 5 uses
  %.sroa.268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.268.0.copyload = load float, ptr %.sroa.268.0..sroa_idx, align 8 ; 3 uses
  %i.a = shufflevector <2 x float> %.sroa.067.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !41 ; 3 uses
  %i.e = fmul float %.sroa.268.0.copyload, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load float, ptr %i.k, align 4, !tbaa !41 ; 2 uses
  %i.m = fmul float %.sroa.268.0.copyload, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load float, ptr %i.n, align 4, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.r = load float, ptr %i.q, align 4, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.048.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 4 uses
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.249.0.copyload = load float, ptr %.sroa.249.0..sroa_idx, align 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.038.0.copyload = load <2 x float>, ptr %i.t, align 8 ; 4 uses
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.239.0.copyload = load float, ptr %.sroa.239.0..sroa_idx, align 8 ; 2 uses
  %.sroa_idx101 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load <2 x float>, ptr %1, align 4, !tbaa !41 ; 5 uses
  %i.w = load float, ptr %i.b, align 4, !tbaa !41
  %foldExtExtBinop = fmul <2 x float> %.sroa.067.0.copyload, %i.v
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.y = extractelement <2 x float> %.sroa.067.0.copyload, i64 1 ; 2 uses
  %i.z = fmul float %i.y, %i.w
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fadd float %i.aa, %i.e
  %i.ac = fadd float %i.g, %i.ab                  ; 2 uses
  %i.ad = load <2 x float>, ptr %i.h, align 4, !tbaa !41 ; 5 uses
  %i.ae = load <2 x float>, ptr %i.p, align 4, !tbaa !41 ; 2 uses
  %i.af = load <8 x float>, ptr %i.i, align 4, !tbaa !41 ; 5 uses
  %i.ag = insertelement <2 x float> poison, float %.sroa.268.0.copyload, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = shufflevector <8 x float> %i.af, <8 x float> %i.ai, <2 x i32> <i32 1, i32 9>
  %i.ak = fmul <2 x float> %i.ah, %i.aj
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = fmul <2 x float> %.sroa.067.0.copyload, %i.al
  %i.an = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 0, i32 7>
  %i.ao = fmul <2 x float> %i.a, %i.an
  %i.ap = fadd <2 x float> %i.ao, %i.am
  %i.aq = fadd <2 x float> %i.ap, %i.ak
  %i.ar = shufflevector <8 x float> %i.af, <8 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.r, i64 1
  %i.at = fadd <2 x float> %i.as, %i.aq           ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 1 ; 4 uses
  %i.av = fcmp oeq float %i.au, 1.000000e+00      ; 3 uses
  %i.aw = load <2 x float>, ptr %i.j, align 4, !tbaa !41 ; 4 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %foldExtExtBinop109 = fmul <2 x float> %.sroa.067.0.copyload, %i.aw
  %i.ay = extractelement <2 x float> %foldExtExtBinop109, i64 0
  %i.az = extractelement <2 x float> %i.aw, i64 1
  %i.ba = fmul float %i.y, %i.az
  %i.bb = fadd float %i.ay, %i.ba
  %i.bc = fadd float %i.bb, %i.m
  %i.bd = fadd float %i.o, %i.bc                  ; 2 uses
  %i.be = fdiv float %i.ac, %i.au
  %i.bf = extractelement <2 x float> %i.at, i64 0 ; 2 uses
  %i.bg = fdiv float %i.bf, %i.au
  %i.bh = fdiv float %i.bd, %i.au
  %.sink96.i = select i1 %i.av, float %i.ac, float %i.be ; 4 uses
  %.sink.i = select i1 %i.av, float %i.bf, float %i.bg ; 4 uses
  %.sroa.495.0.i = select i1 %i.av, float %i.bd, float %i.bh
  %i.bi = fmul float %.sink96.i, %.sink96.i
  %i.bj = fmul float %.sink.i, %.sink.i
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = fneg float %.sink.i
  %i.bm = fmul float %i.bk, f0x40C90FDB           ; 2 uses
  %i.bn = insertelement <4 x float> poison, float %.sink96.i, i64 0
  %i.bo = insertelement <4 x float> %i.bn, float %i.bl, i64 1
end_hunk_1
