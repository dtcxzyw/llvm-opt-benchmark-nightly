Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_bonesEv:bb.a
  store i8 0, ptr %i.cg, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ch = load ptr, ptr %2, align 8               ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ce
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.cj = load i64, ptr %i.ce, align 8
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.cn = load ptr, ptr %i.cm, align 8            ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %.not.i = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.cd, ptr %i.cn, align 8
  %i.cq = load ptr, ptr %i.cm, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cr, ptr %i.cm, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cs = load ptr, ptr %i.cl, align 8            ; 4 uses
  %i.ct = ptrtoint ptr %i.cn to i64
  %i.cu = ptrtoint ptr %i.cs to i64               ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.l, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc57 unwind label %bb.p

.noexc57:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.db, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #26
          to label %.noexc58 unwind label %bb.p   ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store ptr %i.cd, ptr %i.de, align 8
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.m, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.m:                                             ; preds = %.noexc58
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %i.cs, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.m, %.noexc58
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.dh = load ptr, ptr %i.co, align 8
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.dj) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dd, ptr %i.cl, align 8
  store ptr %i.dg, ptr %i.cm, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dk, ptr %i.co, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j
  %i.dl = load ptr, ptr %i.a, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 140
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph214, label %._crit_edge215

._crit_edge215:                                   ; preds = %bb.ag, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.sroa.0157.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0157.2, %bb.ag ] ; 7 uses
  %.sroa.11163.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.11163.1, %bb.ag ] ; 2 uses
  %.sroa.17167.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17167.2, %bb.ag ] ; 3 uses
  %i.dp = ptrtoint ptr %.sroa.11163.0.lcssa to i64
  %i.dq = ptrtoint ptr %.sroa.0157.0.lcssa to i64 ; 3 uses
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 2                 ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  store i32 %i.dt, ptr %i.du, align 8
  %i.dv = shl i64 %i.dr, 1
  %i.dw = and i64 %i.dv, 34359738360
  %i.dx = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dw) #26
          to label %bb.ah unwind label %bb.aj

bb.o:                                             ; preds = %bb.e, %._crit_edge, %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

bb.p:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  %i.eb = load ptr, ptr %2, align 8               ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ce
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.q
  %i.ed = load i64, ptr %i.ce, align 8
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ee) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 1144) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

.lr.ph214:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.ag
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %bb.ag ], [ 0, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 12 uses
  %.sroa.17167.0211 = phi ptr [ %.sroa.17167.2, %bb.ag ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 9 uses
  %.sroa.11163.0210 = phi ptr [ %.sroa.11163.1, %bb.ag ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.0157.0209 = phi ptr [ %.sroa.0157.2, %bb.ag ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 11 uses
  %i.ef = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.r unwind label %bb.y       ; 9 uses

bb.r:                                             ; preds = %.lr.ph214
  %i.eg = load ptr, ptr %1, align 8
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %indvars.iv241
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ef, ptr noundef nonnull align 8 dereferenceable(32) %i.eh)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.ei = load ptr, ptr %i.bf, align 8
  %i.ej = getelementptr inbounds nuw [160 x i8], ptr %i.ei, i64 %indvars.iv241
  store ptr %i.ef, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %indvars.iv241 ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 76
  %i.em = load float, ptr %i.el, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.eo = load float, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 84
  %i.eq = load float, ptr %i.ep, align 1
  %i.er = fmul float %i.eo, 5.000000e-01          ; 2 uses
  %i.es = call noundef float @sinf(float noundef %i.er) #23 ; 2 uses
  %i.et = call noundef float @cosf(float noundef %i.er) #23 ; 2 uses
  %i.eu = fmul float %i.eq, 5.000000e-01          ; 2 uses
  %i.ev = call noundef float @sinf(float noundef %i.eu) #23 ; 2 uses
  %i.ew = call noundef float @cosf(float noundef %i.eu) #23 ; 2 uses
  %i.ex = fmul float %i.em, 5.000000e-01          ; 2 uses
  %i.ey = call noundef float @sinf(float noundef %i.ex) #23 ; 3 uses
  %i.ez = call noundef float @cosf(float noundef %i.ex) #23 ; 3 uses
  %i.fa = fmul float %i.et, %i.ez
  %i.fb = fmul float %i.es, %i.ey
  %i.fc = fneg float %i.ew
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 68
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1028 ; 3 uses
  %i.fh = load float, ptr %i.fd, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1044 ; 2 uses
  %i.fi = load float, ptr %i.fe, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1060 ; 2 uses
  %i.fj = load float, ptr %i.ff, align 1
  %i.fk = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.et, i64 1 ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ey, i64 1 ; 2 uses
  %i.fo = fmul <2 x float> %i.fl, %i.fn           ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = extractelement <2 x float> %i.fo, i64 0
  %i.fr = fneg float %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.ew, i64 1 ; 2 uses
  %i.fu = fmul <2 x float> %i.fl, %i.ft           ; 2 uses
  %i.fv = fmul <2 x float> %i.fp, %i.fn
  %i.fw = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fu, <2 x float> %i.fv) ; 6 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0 ; 3 uses
  %i.fz = extractelement <2 x float> %i.fx, i64 1 ; 3 uses
  %3 = extractelement <2 x float> %i.fu, i64 1
  %4 = insertelement <2 x float> %i.fx, float -2.000000e+00, i64 1
  %i.ga = fmul float %i.fb, %i.fc
  %5 = call float @llvm.fmuladd.f32(float %i.fa, float %i.ev, float %i.ga) ; 7 uses
  %i.gb = fmul float %5, %5                       ; 2 uses
  %6 = fmul float %i.ez, %i.fr
  %i.gc = fneg float %i.fz                        ; 2 uses
  %i.gd = call float @llvm.fmuladd.f32(float %i.ey, float %3, float %6) ; 8 uses
  %i.ge = fmul float %i.fz, %i.gd
  %i.gf = fmul float %5, %i.gc
  %i.gg = fmul float %i.fz, %5
  %i.gh = call float @llvm.fmuladd.f32(float %i.gd, float %i.gd, float %i.gb)
  %i.gi = call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %i.gb)
  %i.gj = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 2 uses
  %i.gk = insertelement <4 x float> %i.gj, float %i.gd, i64 1
  %i.gl = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gm = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison>
  %i.go = shufflevector <4 x float> %i.gl, <4 x float> %i.gn, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gp = fmul <4 x float> %i.gk, %i.go
  %i.gq = call float @llvm.fmuladd.f32(float %i.gi, float -2.000000e+00, float 1.000000e+00)
  %i.gr = call float @llvm.fmuladd.f32(float %i.gd, float %i.fy, float %i.gf)
  %i.gs = insertelement <4 x float> poison, float %i.gq, i64 0
  %i.gt = insertelement <4 x float> %i.gs, float %i.gr, i64 1
  %i.gu = insertelement <4 x float> %i.gj, float %5, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.gd, i64 3
  %i.gw = shufflevector <4 x float> %i.gv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gx = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gy = insertelement <4 x float> %i.gx, float %5, i64 1
  %i.gz = shufflevector <4 x float> %i.gy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ha = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> %i.gz, <4 x float> %i.gp) ; 4 uses
  %i.hb = shufflevector <4 x float> %i.gt, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float %i.fh, i64 3
  %i.hd = fmul <4 x float> %i.hc, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.he = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.hf = insertelement <2 x float> %i.he, float %i.gh, i64 1
  %i.hg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gg, i64 0
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %4, <2 x float> %i.hg)
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.hk = insertelement <4 x float> %i.hj, float %i.fi, i64 3
  %i.hl = fmul <4 x float> %i.hk, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.hm = shufflevector <4 x float> %i.ha, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.hn = shufflevector <2 x float> %i.fx, <2 x float> %i.hm, <2 x i32> <i32 0, i32 3>
  %i.ho = insertelement <2 x float> <float poison, float -2.000000e+00>, float %5, i64 0
  %i.hp = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ge, i64 0
  %i.hq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hn, <2 x float> %i.ho, <2 x float> %i.hp)
  %i.hr = shufflevector <4 x float> %i.ha, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.hu = insertelement <4 x float> %i.ht, float %i.fj, i64 3
  %i.hv = fmul <4 x float> %i.hu, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hd, ptr %i.fg, align 4
  store <4 x float> %i.hl, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.hv, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1076 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.hw = load ptr, ptr %i.bf, align 8
  %i.hx = getelementptr inbounds nuw [160 x i8], ptr %i.hw, i64 %indvars.iv241
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.hy, ptr noundef nonnull align 4 dereferenceable(64) %i.fg, i64 64, i1 false)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.ia = load i32, ptr %i.hz, align 1            ; 2 uses
  %i.ib = icmp eq i32 %i.ia, -1
  br i1 %i.ib, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.cd, ptr %i.ic, align 8
  %.not.i62 = icmp eq ptr %.sroa.11163.0210, %.sroa.17167.0211
  br i1 %.not.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.id = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.id, ptr %.sroa.11163.0210, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.11163.0210, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.if = ptrtoint ptr %.sroa.17167.0211 to i64
  %i.ig = ptrtoint ptr %.sroa.0157.0209 to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 6 uses
  %i.ii = icmp eq i64 %i.ih, 9223372036854775804
  br i1 %i.ii, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.v, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.ij = ashr exact i64 %i.ih, 2                 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.ij, i64 1)
  %i.ik = add nsw i64 %.sroa.speculated.i.i.i63, %i.ij ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ij
  %i.im = call i64 @llvm.umin.i64(i64 %i.ik, i64 2305843009213693951)
  %i.in = select i1 %i.il, i64 2305843009213693951, i64 %i.im ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.in, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.io = shl nuw nsw i64 %i.in, 2
  %i.ip = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.io) #26
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.iq = getelementptr inbounds i8, ptr %i.ip, i64 %i.ih ; 2 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ir, ptr %i.iq, align 4
  %i.is = icmp sgt i64 %i.ih, 0
  br i1 %i.is, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ip, ptr align 4 %.sroa.0157.0209, i64 %i.ih, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc67
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %.not.i17.i.i65 = icmp eq ptr %.sroa.0157.0209, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0209, i64 noundef %i.ih) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.in
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %.lr.ph214
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.r
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef 1144) #24
  br label %bb.am

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %.sroa.0157.1.ph = phi ptr [ %.sroa.0157.0209, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.0157.0209, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0157.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.17167.1.ph = phi ptr [ %.sroa.17167.0211, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.17167.0211, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.17167.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.aa:                                            ; preds = %bb.s
  %i.ix = sext i32 %i.ia to i64
  %i.iy = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.iz = getelementptr inbounds nuw [160 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.ja, ptr %i.jb, align 8
  %i.jc = load i32, ptr %i.hz, align 1
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [160 x i8], ptr %i.iy, i64 %i.jd ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 136 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 144 ; 4 uses
  %i.jh = load ptr, ptr %i.jg, align 8            ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 152 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8
  %.not.i68 = icmp eq ptr %i.jh, %i.jj
  br i1 %.not.i68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.jk = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.jk, ptr %i.jh, align 4
  %i.jl = load ptr, ptr %i.jg, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  store ptr %i.jm, ptr %i.jg, align 8
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.jn = load ptr, ptr %i.jf, align 8            ; 4 uses
  %i.jo = ptrtoint ptr %i.jh to i64
  %i.jp = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jq = sub i64 %i.jo, %i.jp                    ; 5 uses
  %i.jr = icmp eq i64 %i.jq, 9223372036854775804
  br i1 %i.jr, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.ac
  %i.js = ashr exact i64 %i.jq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %i.jt = add nsw i64 %.sroa.speculated.i.i.i70, %i.js ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.js
  %i.jv = call i64 @llvm.umin.i64(i64 %i.jt, i64 2305843009213693951)
  %i.jw = select i1 %i.ju, i64 2305843009213693951, i64 %i.jv ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.jw, 0
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.jx = shl nuw nsw i64 %i.jw, 2
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #26
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.jq ; 2 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ka, ptr %i.jz, align 4
  %i.kb = icmp sgt i64 %i.jq, 0
  br i1 %i.kb, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.ad:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jy, ptr align 4 %i.jn, i64 %i.jq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.ad, %.noexc76
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %.not.i17.i.i73 = icmp eq ptr %i.jn, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  %i.kd = load ptr, ptr %i.ji, align 8
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = sub i64 %i.ke, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.kf) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  store ptr %i.jy, ptr %i.jf, align 8
  store ptr %i.kc, ptr %i.jg, align 8
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.jw
  store ptr %i.kg, ptr %i.ji, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, %bb.ab
  %i.kh = load i32, ptr %i.hz, align 1
  %i.ki = sext i32 %i.kh to i64
  %i.kj = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.kk = getelementptr inbounds nuw [160 x i8], ptr %i.kj, i64 %i.ki ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  %.sroa.13.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %.sroa.21.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %.sroa.29.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.kk, i64 56
  %i.km = getelementptr inbounds nuw [160 x i8], ptr %i.kj, i64 %indvars.iv241 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load <4 x float>, ptr %i.kl, align 4    ; 4 uses
  %i.kp = load <4 x float>, ptr %i.fg, align 4    ; 4 uses
  %i.kq = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.kr = shufflevector <4 x float> %i.ko, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ks = fmul <4 x float> %i.kr, %i.kq
end_hunk_0
