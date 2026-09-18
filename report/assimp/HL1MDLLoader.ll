Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_bonesEv:bb.a
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.g, %bb.f, %bb.e
  %i.cd = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %._crit_edge.i.i unwind label %bb.p ; 7 uses

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.ce, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ce, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 27
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
  %3 = fmul float %i.fb, %i.fc
  %4 = call float @llvm.fmuladd.f32(float %i.fa, float %i.ev, float %3) ; 8 uses
  %5 = fmul float %4, %4                          ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.et, i64 1 ; 2 uses
  %i.fm = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ey, i64 1 ; 2 uses
  %i.fo = fmul <2 x float> %i.fl, %i.fn           ; 2 uses
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = extractelement <2 x float> %i.fo, i64 0
  %i.fr = fneg float %i.fq
  %6 = fmul float %i.ez, %i.fr
  %i.fs = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.ew, i64 1 ; 2 uses
  %i.fu = fmul <2 x float> %i.fl, %i.ft           ; 2 uses
  %i.fv = fmul <2 x float> %i.fp, %i.fn
  %i.fw = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fu, <2 x float> %i.fv) ; 6 uses
  %7 = extractelement <2 x float> %i.fx, i64 0    ; 6 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 1 ; 4 uses
  %i.fz = fneg float %i.fy                        ; 3 uses
  %i.ga = extractelement <2 x float> %i.fu, i64 1
  %8 = call float @llvm.fmuladd.f32(float %i.ey, float %i.ga, float %6) ; 10 uses
  %9 = fmul float %8, %i.fz
  %10 = fmul float %i.fy, %8
  %i.gb = fmul float %4, %i.fz
  %i.gc = fmul float %i.fy, %4
  %i.gd = call float @llvm.fmuladd.f32(float %8, float %8, float %5)
  %foldExtExtBinop = fmul <2 x float> %i.fx, %i.fx
  %11 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %12 = call float @llvm.fmuladd.f32(float %8, float %8, float %11)
  %13 = call float @llvm.fmuladd.f32(float %7, float %7, float %5)
  %14 = fmul float %i.fy, %7
  %15 = fmul float %7, %i.fz
  %16 = call float @llvm.fmuladd.f32(float %8, float %4, float %14)
  %17 = call float @llvm.fmuladd.f32(float %8, float %7, float %i.gb)
  %18 = call float @llvm.fmuladd.f32(float %13, float -2.000000e+00, float 1.000000e+00)
  %i.ge = insertelement <4 x float> poison, float %18, i64 0
  %i.gf = insertelement <4 x float> %i.ge, float %17, i64 1
  %i.gg = insertelement <4 x float> %i.gf, float %16, i64 2
  %i.gh = insertelement <4 x float> %i.gg, float %i.fh, i64 3
  %19 = fmul <4 x float> %i.gh, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %20 = call float @llvm.fmuladd.f32(float %7, float %4, float %9)
  %21 = insertelement <2 x float> poison, float %8, i64 0
  %22 = insertelement <2 x float> %21, float %i.gd, i64 1
  %i.gi = insertelement <2 x float> %i.fx, float -2.000000e+00, i64 1
  %i.gj = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gc, i64 0
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %22, <2 x float> %i.gi, <2 x float> %i.gj)
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %23 = insertelement <4 x float> %i.gl, float %20, i64 2
  %i.gm = insertelement <4 x float> %23, float %i.fi, i64 3
  %i.gn = fmul <4 x float> %i.gm, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %24 = insertelement <2 x float> %i.fx, float %12, i64 1
  %25 = insertelement <2 x float> <float poison, float -2.000000e+00>, float %4, i64 0
  %i.go = insertelement <2 x float> <float poison, float 1.000000e+00>, float %10, i64 0
  %26 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %25, <2 x float> %i.go)
  %27 = call float @llvm.fmuladd.f32(float %8, float %4, float %15)
  %28 = insertelement <4 x float> poison, float %27, i64 0
  %i.gp = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x float> %28, <4 x float> %i.gp, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gr = insertelement <4 x float> %i.gq, float %i.fj, i64 3
  %i.gs = fmul <4 x float> %i.gr, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %19, ptr %i.fg, align 4
  store <4 x float> %i.gn, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.gs, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1076 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.gt = load ptr, ptr %i.bf, align 8
  %i.gu = getelementptr inbounds nuw [160 x i8], ptr %i.gt, i64 %indvars.iv241
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef nonnull align 4 dereferenceable(64) %i.fg, i64 64, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.gx = load i32, ptr %i.gw, align 1            ; 2 uses
  %i.gy = icmp eq i32 %i.gx, -1
  br i1 %i.gy, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.cd, ptr %i.gz, align 8
  %.not.i62 = icmp eq ptr %.sroa.11163.0210, %.sroa.17167.0211
  br i1 %.not.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ha = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ha, ptr %.sroa.11163.0210, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.11163.0210, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.hc = ptrtoint ptr %.sroa.17167.0211 to i64
  %i.hd = ptrtoint ptr %.sroa.0157.0209 to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 6 uses
  %i.hf = icmp eq i64 %i.he, 9223372036854775804
  br i1 %i.hf, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.v, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.hg = ashr exact i64 %i.he, 2                 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.hg, i64 1)
  %i.hh = add nsw i64 %.sroa.speculated.i.i.i63, %i.hg ; 2 uses
  %i.hi = icmp ult i64 %i.hh, %i.hg
  %i.hj = call i64 @llvm.umin.i64(i64 %i.hh, i64 2305843009213693951)
  %i.hk = select i1 %i.hi, i64 2305843009213693951, i64 %i.hj ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.hk, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.hl = shl nuw nsw i64 %i.hk, 2
  %i.hm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hl) #26
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.he ; 2 uses
  %i.ho = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ho, ptr %i.hn, align 4
  %i.hp = icmp sgt i64 %i.he, 0
  br i1 %i.hp, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hm, ptr align 4 %.sroa.0157.0209, i64 %i.he, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc67
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %.not.i17.i.i65 = icmp eq ptr %.sroa.0157.0209, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0209, i64 noundef %i.he) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %i.hk
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %.lr.ph214
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.r
  %i.ht = landingpad { ptr, i32 }
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
  %i.hu = sext i32 %i.gx to i64
  %i.hv = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw [160 x i8], ptr %i.hv, i64 %i.hu
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.hx, ptr %i.hy, align 8
  %i.hz = load i32, ptr %i.gw, align 1
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [160 x i8], ptr %i.hv, i64 %i.ia ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 136 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 144 ; 4 uses
  %i.ie = load ptr, ptr %i.id, align 8            ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 152 ; 3 uses
  %i.ig = load ptr, ptr %i.if, align 8
  %.not.i68 = icmp eq ptr %i.ie, %i.ig
  br i1 %.not.i68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ih = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ih, ptr %i.ie, align 4
  %i.ii = load ptr, ptr %i.id, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store ptr %i.ij, ptr %i.id, align 8
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ik = load ptr, ptr %i.ic, align 8            ; 4 uses
  %i.il = ptrtoint ptr %i.ie to i64
  %i.im = ptrtoint ptr %i.ik to i64               ; 2 uses
  %i.in = sub i64 %i.il, %i.im                    ; 5 uses
  %i.io = icmp eq i64 %i.in, 9223372036854775804
  br i1 %i.io, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.ac
  %i.ip = ashr exact i64 %i.in, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = call i64 @llvm.umax.i64(i64 %i.ip, i64 1)
  %i.iq = add nsw i64 %.sroa.speculated.i.i.i70, %i.ip ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.ip
  %i.is = call i64 @llvm.umin.i64(i64 %i.iq, i64 2305843009213693951)
  %i.it = select i1 %i.ir, i64 2305843009213693951, i64 %i.is ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.it, 0
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.iu = shl nuw nsw i64 %i.it, 2
  %i.iv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iu) #26
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 %i.in ; 2 uses
  %i.ix = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.ix, ptr %i.iw, align 4
  %i.iy = icmp sgt i64 %i.in, 0
  br i1 %i.iy, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.ad:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iv, ptr align 4 %i.ik, i64 %i.in, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.ad, %.noexc76
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %.not.i17.i.i73 = icmp eq ptr %i.ik, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  %i.ja = load ptr, ptr %i.if, align 8
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = sub i64 %i.jb, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.jc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  store ptr %i.iv, ptr %i.ic, align 8
  store ptr %i.iz, ptr %i.id, align 8
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.it
  store ptr %i.jd, ptr %i.if, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, %bb.ab
  %i.je = load i32, ptr %i.gw, align 1
  %i.jf = sext i32 %i.je to i64
  %i.jg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.jh = getelementptr inbounds nuw [160 x i8], ptr %i.jg, i64 %i.jf ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %.sroa.13.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %.sroa.21.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %.sroa.29.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jj = getelementptr inbounds nuw [160 x i8], ptr %i.jg, i64 %indvars.iv241 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jl = load <4 x float>, ptr %i.ji, align 4    ; 4 uses
  %i.jm = load <4 x float>, ptr %i.fg, align 4    ; 4 uses
  %i.jn = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.jo = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jp = fmul <4 x float> %i.jo, %i.jn
  %i.jq = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> %i.jq, <4 x float> %i.jp)
  %i.js = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %i.jt = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.js, <4 x float> %i.jt, <4 x float> %i.jr)
  %i.jv = load <4 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 4 uses
  %i.jw = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jv, <4 x float> %i.jw, <4 x float> %i.ju)
end_hunk_0
