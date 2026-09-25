Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_bonesEv:bb.a
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #24
  br label %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cc, %i.bl
  br i1 %.not.i.i.i.i54, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i
  store ptr %i.bu, ptr %i.bk, align 8
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
  %i.ez = call noundef float @cosf(float noundef %i.ex) #23 ; 2 uses
  %i.fa = fmul float %i.et, %i.ez
  %i.fb = fmul float %i.es, %i.ey
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ek, i64 68
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 1028 ; 3 uses
  %i.fg = load float, ptr %i.fc, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1044 ; 2 uses
  %i.fh = load float, ptr %i.fd, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1060 ; 2 uses
  %i.fi = load float, ptr %i.fe, align 1
  %i.fj = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fk = insertelement <2 x float> %i.fj, float %i.et, i64 1 ; 2 uses
  %i.fl = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.ey, i64 1 ; 2 uses
  %i.fn = fmul <2 x float> %i.fk, %i.fm           ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fp = extractelement <2 x float> %i.fn, i64 0
  %i.fq = insertelement <2 x float> poison, float %i.ez, i64 0 ; 2 uses
  %i.fr = insertelement <2 x float> %i.fq, float %i.ew, i64 1 ; 2 uses
  %i.fs = fmul <2 x float> %i.fk, %i.fr           ; 2 uses
  %i.ft = fmul <2 x float> %i.fo, %i.fm
  %i.fu = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fs, <2 x float> %i.ft) ; 9 uses
  %i.fw = extractelement <2 x float> %i.fv, i64 0 ; 2 uses
  %3 = extractelement <2 x float> %i.fv, i64 1    ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.fv, %i.fv
  %4 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %5 = insertelement <2 x float> %i.fv, float -2.000000e+00, i64 1
  %6 = fneg float %i.ew
  %7 = fneg float %i.fp
  %8 = insertelement <2 x float> %i.fq, float %i.fb, i64 1
  %9 = insertelement <2 x float> poison, float %7, i64 0
  %10 = insertelement <2 x float> %9, float %6, i64 1
  %11 = fmul <2 x float> %8, %10
  %12 = insertelement <2 x float> poison, float %i.ey, i64 0
  %13 = insertelement <2 x float> %12, float %i.fa, i64 1
  %14 = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.ev, i64 1
  %16 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %15, <2 x float> %11) ; 7 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %18 = extractelement <2 x float> %16, i64 1     ; 3 uses
  %19 = fmul float %18, %18                       ; 2 uses
  %20 = fneg float %3
  %21 = extractelement <2 x float> %16, i64 0     ; 5 uses
  %22 = fmul float %3, %21
  %23 = fmul float %3, %18
  %24 = call float @llvm.fmuladd.f32(float %21, float %21, float %19)
  %25 = shufflevector <2 x float> %i.fv, <2 x float> %16, <4 x i32> <i32 3, i32 1, i32 0, i32 2>
  %26 = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %27 = insertelement <4 x float> poison, float %20, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0>
  %29 = shufflevector <4 x float> %28, <4 x float> %26, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %30 = fmul <4 x float> %25, %29
  %31 = call float @llvm.fmuladd.f32(float %21, float %21, float %4)
  %32 = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %19)
  %33 = call float @llvm.fmuladd.f32(float %32, float -2.000000e+00, float 1.000000e+00)
  %34 = insertelement <4 x float> poison, float %33, i64 0
  %35 = shufflevector <2 x float> %i.fv, <2 x float> %16, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %36 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %35, <4 x float> %30) ; 3 uses
  %37 = shufflevector <4 x float> %34, <4 x float> %36, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.fx = insertelement <4 x float> %37, float %i.fg, i64 3
  %38 = fmul <4 x float> %i.fx, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %i.fy = insertelement <2 x float> %16, float %24, i64 1
  %i.fz = insertelement <2 x float> <float poison, float 1.000000e+00>, float %23, i64 0
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %5, <2 x float> %i.fz)
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %39 = shufflevector <4 x float> %i.gb, <4 x float> %36, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.gc = insertelement <4 x float> %39, float %i.fh, i64 3
  %i.gd = fmul <4 x float> %i.gc, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 1.000000e+00>
  %40 = insertelement <2 x float> %i.fv, float %31, i64 1
  %41 = shufflevector <2 x float> <float poison, float -2.000000e+00>, <2 x float> %16, <2 x i32> <i32 3, i32 1>
  %i.ge = insertelement <2 x float> <float poison, float 1.000000e+00>, float %22, i64 0
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %40, <2 x float> %41, <2 x float> %i.ge)
  %42 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %42, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gi = insertelement <4 x float> %i.gh, float %i.fi, i64 3
  %i.gj = fmul <4 x float> %i.gi, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %38, ptr %i.ff, align 4
  store <4 x float> %i.gd, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %i.gj, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 1076 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.gk = load ptr, ptr %i.bf, align 8
  %i.gl = getelementptr inbounds nuw [160 x i8], ptr %i.gk, i64 %indvars.iv241
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gm, ptr noundef nonnull align 4 dereferenceable(64) %i.ff, i64 64, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 1            ; 2 uses
  %i.gp = icmp eq i32 %i.go, -1
  br i1 %i.gp, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.cd, ptr %i.gq, align 8
  %.not.i62 = icmp eq ptr %.sroa.11163.0210, %.sroa.17167.0211
  br i1 %.not.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gr = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.gr, ptr %.sroa.11163.0210, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.11163.0210, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.gt = ptrtoint ptr %.sroa.17167.0211 to i64
  %i.gu = ptrtoint ptr %.sroa.0157.0209 to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 6 uses
  %i.gw = icmp eq i64 %i.gv, 9223372036854775804
  br i1 %i.gw, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.v, %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gx = ashr exact i64 %i.gv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.gx, i64 1)
  %i.gy = add nsw i64 %.sroa.speculated.i.i.i63, %i.gx ; 2 uses
  %i.gz = icmp ult i64 %i.gy, %i.gx
  %i.ha = call i64 @llvm.umin.i64(i64 %i.gy, i64 2305843009213693951)
  %i.hb = select i1 %i.gz, i64 2305843009213693951, i64 %i.ha ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.hb, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.hc = shl nuw nsw i64 %i.hb, 2
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #26
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 %i.gv ; 2 uses
  %i.hf = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.hf, ptr %i.he, align 4
  %i.hg = icmp sgt i64 %i.gv, 0
  br i1 %i.hg, label %bb.w, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %.sroa.0157.0209, i64 %i.gv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc67
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.not.i17.i.i65 = icmp eq ptr %.sroa.0157.0209, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0209, i64 noundef %i.gv) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hb
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.y:                                             ; preds = %.lr.ph214
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %bb.r
  %i.hk = landingpad { ptr, i32 }
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
  %i.hl = sext i32 %i.go to i64
  %i.hm = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw [160 x i8], ptr %i.hm, i64 %i.hl
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ef, i64 1096
  store ptr %i.ho, ptr %i.hp, align 8
  %i.hq = load i32, ptr %i.gn, align 1
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [160 x i8], ptr %i.hm, i64 %i.hr ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 136 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 144 ; 4 uses
  %i.hv = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 152 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %.not.i68 = icmp eq ptr %i.hv, %i.hx
  br i1 %.not.i68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hy = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.hy, ptr %i.hv, align 4
  %i.hz = load ptr, ptr %i.hu, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  store ptr %i.ia, ptr %i.hu, align 8
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.ib = load ptr, ptr %i.ht, align 8            ; 4 uses
  %i.ic = ptrtoint ptr %i.hv to i64
  %i.id = ptrtoint ptr %i.ib to i64               ; 2 uses
  %i.ie = sub i64 %i.ic, %i.id                    ; 5 uses
  %i.if = icmp eq i64 %i.ie, 9223372036854775804
  br i1 %i.if, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.ac
  %i.ig = ashr exact i64 %i.ie, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = call i64 @llvm.umax.i64(i64 %i.ig, i64 1)
  %i.ih = add nsw i64 %.sroa.speculated.i.i.i70, %i.ig ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.ig
  %i.ij = call i64 @llvm.umin.i64(i64 %i.ih, i64 2305843009213693951)
  %i.ik = select i1 %i.ii, i64 2305843009213693951, i64 %i.ij ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.ik, 0
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.il = shl nuw nsw i64 %i.ik, 2
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #26
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.in = getelementptr inbounds i8, ptr %i.im, i64 %i.ie ; 2 uses
  %i.io = trunc nuw nsw i64 %indvars.iv241 to i32
  store i32 %i.io, ptr %i.in, align 4
  %i.ip = icmp sgt i64 %i.ie, 0
  br i1 %i.ip, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.ad:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.im, ptr align 4 %i.ib, i64 %i.ie, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.ad, %.noexc76
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %.not.i17.i.i73 = icmp eq ptr %i.ib, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  %i.ir = load ptr, ptr %i.hw, align 8
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.id
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.it) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  store ptr %i.im, ptr %i.ht, align 8
  store ptr %i.iq, ptr %i.hu, align 8
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ik
  store ptr %i.iu, ptr %i.hw, align 8
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, %bb.ab
  %i.iv = load i32, ptr %i.gn, align 1
  %i.iw = sext i32 %i.iv to i64
  %i.ix = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.iy = getelementptr inbounds nuw [160 x i8], ptr %i.ix, i64 %i.iw ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %.sroa.13.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %.sroa.21.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  %.sroa.29.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.iy, i64 56
  %i.ja = getelementptr inbounds nuw [160 x i8], ptr %i.ix, i64 %indvars.iv241 ; 4 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load <4 x float>, ptr %i.iz, align 4    ; 4 uses
  %i.jd = load <4 x float>, ptr %i.ff, align 4    ; 4 uses
  %i.je = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.jf = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jg = fmul <4 x float> %i.jf, %i.je
  %i.jh = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jd, <4 x float> %i.jh, <4 x float> %i.jg)
  %i.jj = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %i.jk = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jj, <4 x float> %i.jk, <4 x float> %i.ji)
  %i.jm = load <4 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 4 uses
  %i.jn = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.jo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jm, <4 x float> %i.jn, <4 x float> %i.jl)
end_hunk_0
begin_hunk_1_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader11read_meshesEv:bb.a
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.zq ; 2 uses
  %i.aah = mul nuw nsw i64 %i.zt, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aag, i8 0, i64 %i.aah, i1 false)
  %.not10.i.i.i.i635 = icmp eq ptr %.sroa.0772.12387, %.sroa.12779.12386
  br i1 %.not10.i.i.i.i635, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636

.lr.ph.i.i.i.i636:                                ; preds = %.noexc640, %.lr.ph.i.i.i.i636
  %.012.i.i.i.i637 = phi ptr [ %i.aaj, %.lr.ph.i.i.i.i636 ], [ %i.aaf, %.noexc640 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aai, %.lr.ph.i.i.i.i636 ], [ %.sroa.0772.12387, %.noexc640 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i637, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !alias.scope !228
  %i.aai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i637, i64 12
  %.not.i.i.i.i638 = icmp eq ptr %i.aai, %.sroa.12779.12386
  br i1 %.not.i.i.i.i638, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i636, !llvm.loop !197

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i636, %.noexc640
  %.not.i36.i = icmp eq ptr %.sroa.0772.12387, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aak = sub i64 %i.zu, %i.zp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0772.12387, i64 noundef %i.aak) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i: ; preds = %bb.cl, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.aal = getelementptr inbounds nuw [12 x i8], ptr %i.aag, i64 %i.zt
  %i.aam = getelementptr inbounds nuw [12 x i8], ptr %i.aaf, i64 %i.aad
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cm:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit451
  %i.aan = icmp ugt i64 %i.zr, %i.zn
  br i1 %i.aan, label %bb.cn, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

bb.cn:                                            ; preds = %bb.cm
  %i.aao = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0772.12387, i64 %i.zn ; 2 uses
  %.not.i.i452 = icmp eq ptr %.sroa.12779.12386, %i.aao
  %spec.select801 = select i1 %.not.i.i452, ptr %.sroa.12779.12386, ptr %i.aao
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit: ; preds = %bb.cn, %bb.cm, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i
  %.sroa.18782.4 = phi ptr [ %.sroa.18782.12385, %bb.cm ], [ %.sroa.18782.12385, %bb.cn ], [ %.sroa.18782.12385, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aam, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 28 uses
  %.sroa.12779.2 = phi ptr [ %.sroa.12779.12386, %bb.cm ], [ %spec.select801, %bb.cn ], [ %scevgep.i.i.i.i, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aal, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 4 uses
  %.sroa.0772.4 = phi ptr [ %.sroa.0772.12387, %bb.cm ], [ %.sroa.0772.12387, %bb.cn ], [ %.sroa.0772.12387, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i ], [ %i.aaf, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i ] ; 32 uses
  %i.aap = load i32, ptr %i.zb, align 1           ; 2 uses
  %i.aaq = sext i32 %i.aap to i64                 ; 4 uses
  %i.aar = ptrtoint ptr %.sroa.12766.12383 to i64 ; 2 uses
  %i.aas = ptrtoint ptr %.sroa.0759.12384 to i64  ; 2 uses
  %i.aat = sub i64 %i.aar, %i.aas                 ; 2 uses
  %i.aau = sdiv exact i64 %i.aat, 12              ; 7 uses
  %i.aav = icmp ult i64 %i.aau, %i.aaq
  br i1 %i.aav, label %bb.co, label %bb.cs

bb.co:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.aaw = sub nuw nsw i64 %i.aaq, %i.aau         ; 5 uses
  %i.aax = ptrtoint ptr %.sroa.18.12382 to i64    ; 2 uses
  %i.aay = sub i64 %i.aax, %i.aar
  %i.aaz = sdiv exact i64 %i.aay, 12              ; 2 uses
  %i.aba = icmp ult i64 %i.aau, 768614336404564651
  call void @llvm.assume(i1 %i.aba)
  %i.abb = sub nuw nsw i64 768614336404564650, %i.aau
  %i.abc = icmp ule i64 %i.aaz, %i.abb
  call void @llvm.assume(i1 %i.abc)
  %.not28.i642 = icmp ult i64 %i.aaz, %i.aaw
  br i1 %.not28.i642, label %bb.cp, label %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643

_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643: ; preds = %bb.co
  %i.abd = mul nuw nsw i64 %i.aaw, 12             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.12766.12383, i8 0, i64 %i.abd, i1 false)
  %scevgep.i.i.i.i644 = getelementptr i8, ptr %.sroa.12766.12383, i64 %i.abd
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cp:                                            ; preds = %bb.co
  %i.abe = icmp slt i32 %i.aap, 0
  br i1 %i.abe, label %bb.cq, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.97) #25
          to label %.noexc655 unwind label %.loopexit.split-lp852

.noexc655:                                        ; preds = %bb.cq
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645: ; preds = %bb.cp
  %.sroa.speculated.i.i646 = call i64 @llvm.umax.i64(i64 %i.aau, i64 %i.aaw)
  %i.abf = add nuw nsw i64 %.sroa.speculated.i.i646, %i.aau
  %i.abg = call i64 @llvm.umin.i64(i64 %i.abf, i64 768614336404564650) ; 2 uses
  %i.abh = mul nuw nsw i64 %i.abg, 12
  %i.abi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.abh) #26
          to label %.noexc656 unwind label %.loopexit851 ; 4 uses

.noexc656:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.aat ; 2 uses
  %i.abk = mul nuw nsw i64 %i.aaw, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.abj, i8 0, i64 %i.abk, i1 false)
  %.not10.i.i.i.i647 = icmp eq ptr %.sroa.0759.12384, %.sroa.12766.12383
  br i1 %.not10.i.i.i.i647, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648

.lr.ph.i.i.i.i648:                                ; preds = %.noexc656, %.lr.ph.i.i.i.i648
  %.012.i.i.i.i649 = phi ptr [ %i.abm, %.lr.ph.i.i.i.i648 ], [ %i.abi, %.noexc656 ] ; 2 uses
  %.0911.i.i.i.i650 = phi ptr [ %i.abl, %.lr.ph.i.i.i.i648 ], [ %.sroa.0759.12384, %.noexc656 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i649, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i650, i64 12, i1 false), !alias.scope !229
  %i.abl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i650, i64 12 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i649, i64 12
  %.not.i.i.i.i651 = icmp eq ptr %i.abl, %.sroa.12766.12383
  br i1 %.not.i.i.i.i651, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652, label %.lr.ph.i.i.i.i648, !llvm.loop !197

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652: ; preds = %.lr.ph.i.i.i.i648, %.noexc656
  %.not.i36.i653 = icmp eq ptr %.sroa.0759.12384, null
  br i1 %.not.i36.i653, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.abn = sub i64 %i.aax, %i.aas
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0759.12384, i64 noundef %i.abn) #24
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654: ; preds = %bb.cr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i652
  %i.abo = getelementptr inbounds nuw [12 x i8], ptr %i.abj, i64 %i.aaw
  %i.abp = getelementptr inbounds nuw [12 x i8], ptr %i.abi, i64 %i.abg
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.cs:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit
  %i.abq = icmp ugt i64 %i.aau, %i.aaq
  br i1 %i.abq, label %bb.ct, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

bb.ct:                                            ; preds = %bb.cs
  %i.abr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0759.12384, i64 %i.aaq ; 2 uses
  %.not.i.i454 = icmp eq ptr %.sroa.12766.12383, %i.abr
  %spec.select802 = select i1 %.not.i.i454, ptr %.sroa.12766.12383, ptr %i.abr
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457

_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457: ; preds = %bb.ct, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654, %bb.cs
  %.sroa.18.3 = phi ptr [ %.sroa.18.12382, %bb.cs ], [ %.sroa.18.12382, %bb.ct ], [ %.sroa.18.12382, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abp, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 26 uses
  %.sroa.12766.2 = phi ptr [ %.sroa.12766.12383, %bb.cs ], [ %spec.select802, %bb.ct ], [ %scevgep.i.i.i.i644, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abo, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 4 uses
  %.sroa.0759.3 = phi ptr [ %.sroa.0759.12384, %bb.cs ], [ %.sroa.0759.12384, %bb.ct ], [ %.sroa.0759.12384, %_ZSt27__uninitialized_default_n_aIP10aiVector3tIfEmS1_ET_S3_T0_RSaIT1_E.exit.i643 ], [ %i.abi, %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EE13_M_deallocateEPS1_m.exit37.i654 ] ; 30 uses
  %.not2434 = icmp eq ptr %.sroa.12779.2, %.sroa.0772.4
  br i1 %.not2434, label %.preheader850, label %.lr.ph2308.preheader

.lr.ph2308.preheader:                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %i.abs = ptrtoint ptr %.sroa.12779.2 to i64
  %i.abt = ptrtoint ptr %.sroa.0772.4 to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %i.abv = sdiv exact i64 %i.abu, 12
  br label %.lr.ph2308

.preheader850:                                    ; preds = %.lr.ph2308, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE6resizeEm.exit457
  %.not2435 = icmp eq ptr %.sroa.12766.2, %.sroa.0759.3
  br i1 %.not2435, label %._crit_edge2311, label %.lr.ph2310.preheader

.lr.ph2310.preheader:                             ; preds = %.preheader850
  %i.abw = ptrtoint ptr %.sroa.12766.2 to i64
  %i.abx = ptrtoint ptr %.sroa.0759.3 to i64
  %i.aby = sub i64 %i.abw, %i.abx
  %i.abz = sdiv exact i64 %i.aby, 12
  br label %.lr.ph2310

bb.cu:                                            ; preds = %.lr.ph2395
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cv:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataINS1_8Mesh_HL1EEEPKT_ii.exit
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cw:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.cx:                                            ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIhEEPKT_ii.exit448
  %i.acd = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit851:                                     ; preds = %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645
  %.sroa.18782.2.ph = phi ptr [ %.sroa.18782.12385, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.18782.12385, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.18782.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %.sroa.0772.2.ph = phi ptr [ %.sroa.0772.12387, %_ZN6Assimp3MDL8HalfLife12HL1MDLLoader15get_buffer_dataIA3_fEEPKT_ii.exit ], [ %.sroa.0772.12387, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %.sroa.0772.4, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i645 ]
  %lpad.loopexit855 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.loopexit.split-lp852:                            ; preds = %bb.ck, %bb.cq
  %.sroa.18782.2.ph853 = phi ptr [ %.sroa.18782.12385, %bb.ck ], [ %.sroa.18782.4, %bb.cq ]
  %.sroa.0772.2.ph854 = phi ptr [ %.sroa.0772.12387, %bb.ck ], [ %.sroa.0772.4, %bb.cq ]
  %lpad.loopexit.split-lp856 = landingpad { ptr, i32 }
          cleanup
  br label %.body661

.lr.ph2308:                                       ; preds = %.lr.ph2308.preheader, %.lr.ph2308
  %.02942307 = phi i64 [ %i.ads, %.lr.ph2308 ], [ 0, %.lr.ph2308.preheader ] ; 4 uses
  %i.ace = getelementptr inbounds nuw [12 x i8], ptr %i.zh, i64 %.02942307 ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.02942307
  %i.acg = load i8, ptr %i.acf, align 1
  %i.ach = zext i8 %i.acg to i64
  %i.aci = load ptr, ptr %i.vg, align 8
  %i.acj = getelementptr inbounds nuw [160 x i8], ptr %i.aci, i64 %i.ach ; 5 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acn = load float, ptr %i.ace, align 4        ; 2 uses
  %i.aco = load float, ptr %i.acl, align 4        ; 2 uses
  %i.acp = load float, ptr %i.acm, align 4        ; 2 uses
  %i.acq = load <8 x float>, ptr %i.ack, align 4  ; 4 uses
  %i.acr = insertelement <2 x float> poison, float %i.aco, i64 0
  %i.acs = shufflevector <2 x float> %i.acr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.act = shufflevector <8 x float> %i.acq, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.acu = fmul <2 x float> %i.acs, %i.act
  %i.acv = shufflevector <8 x float> %i.acq, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.acw = insertelement <2 x float> poison, float %i.acn, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acv, <2 x float> %i.acx, <2 x float> %i.acu)
  %i.acz = shufflevector <8 x float> %i.acq, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ada = insertelement <2 x float> poison, float %i.acp, i64 0
  %i.adb = shufflevector <2 x float> %i.ada, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acz, <2 x float> %i.adb, <2 x float> %i.acy)
  %i.add = shufflevector <8 x float> %i.acq, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.ade = fadd <2 x float> %i.add, %i.adc
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acj, i64 40
  %i.adg = load float, ptr %i.adf, align 4
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acj, i64 44
  %i.adi = load float, ptr %i.adh, align 4
  %i.adj = fmul float %i.aco, %i.adi
  %i.adk = call float @llvm.fmuladd.f32(float %i.adg, float %i.acn, float %i.adj)
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acj, i64 48
  %i.adm = load float, ptr %i.adl, align 4
  %i.adn = call float @llvm.fmuladd.f32(float %i.adm, float %i.acp, float %i.adk)
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acj, i64 52
  %i.adp = load float, ptr %i.ado, align 4
  %i.adq = fadd float %i.adp, %i.adn
  %i.adr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0772.4, i64 %.02942307 ; 2 uses
  store <2 x float> %i.ade, ptr %i.adr, align 4
  %.sroa.4128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  store float %i.adq, ptr %.sroa.4128.0..sroa_idx, align 4
  %i.ads = add nuw i64 %.02942307, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ads, %i.abv
  br i1 %exitcond.not, label %.preheader850, label %.lr.ph2308, !llvm.loop !201

._crit_edge2311:                                  ; preds = %bb.cy, %.preheader850
  %i.adt = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.da unwind label %bb.dd     ; 6 uses

.lr.ph2310:                                       ; preds = %.lr.ph2310.preheader, %bb.cy
  %.02562309 = phi i64 [ %i.afy, %bb.cy ], [ 0, %.lr.ph2310.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  %i.adu = getelementptr inbounds nuw i8, ptr %i.zd, i64 %.02562309
  %i.adv = load i8, ptr %i.adu, align 1
  %i.adw = zext i8 %i.adv to i64
  %i.adx = load ptr, ptr %i.vg, align 8
  %i.ady = getelementptr inbounds nuw [160 x i8], ptr %i.adx, i64 %i.adw
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %28, ptr noundef nonnull align 8 dereferenceable(64) %i.adz, i64 64, i1 false)
  %i.aea = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %28)
          to label %bb.cy unwind label %bb.cz     ; 14 uses

bb.cy:                                            ; preds = %.lr.ph2310
  %i.aeb = getelementptr inbounds nuw [12 x i8], ptr %i.zl, i64 %.02562309 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aea, i64 4 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 32 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4        ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aea, i64 36
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aea, i64 24 ; 2 uses
  %i.aej = load float, ptr %i.aei, align 4        ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aea, i64 48 ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aea, i64 12 ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aea, i64 52
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aea, i64 28 ; 2 uses
  %i.aep = load float, ptr %i.aeo, align 4
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 56 ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aea, i64 44 ; 2 uses
  %i.aes = load float, ptr %i.aeq, align 4        ; 2 uses
  %i.aet = load float, ptr %i.aer, align 4
  store float %i.aet, ptr %i.aeq, align 4
  store float %i.aes, ptr %i.aer, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aea, i64 40
  %.sroa.14.0.copyload = load float, ptr %.sroa.14.0..sroa_idx, align 4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aeb, i64 4
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aew = load float, ptr %i.aed, align 4
  %i.aex = load <2 x float>, ptr %i.aea, align 4
  %i.aey = load <2 x float>, ptr %i.aec, align 4  ; 2 uses
  store float %i.aew, ptr %i.aec, align 4
  %i.aez = extractelement <2 x float> %i.aey, i64 0
  store float %i.aez, ptr %i.aed, align 4
  %i.afa = load <2 x float>, ptr %i.aee, align 4  ; 3 uses
  store float %i.aeg, ptr %i.aee, align 4
  %i.afb = extractelement <2 x float> %i.afa, i64 0
  store float %i.afb, ptr %i.aef, align 4
  store float %i.aej, ptr %i.aeh, align 4
  %i.afc = extractelement <2 x float> %i.afa, i64 1
  store float %i.afc, ptr %i.aei, align 4
  %i.afd = load <2 x float>, ptr %i.aek, align 4  ; 3 uses
  store float %i.aem, ptr %i.aek, align 4
  %i.afe = extractelement <2 x float> %i.afd, i64 0
  store float %i.afe, ptr %i.ael, align 4
  store float %i.aep, ptr %i.aen, align 4
  %i.aff = extractelement <2 x float> %i.afd, i64 1
  store float %i.aff, ptr %i.aeo, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  %i.afg = load float, ptr %i.aeb, align 4        ; 2 uses
  %i.afh = load float, ptr %i.aeu, align 4        ; 2 uses
  %i.afi = load float, ptr %i.aev, align 4        ; 2 uses
  %i.afj = insertelement <2 x float> poison, float %i.afh, i64 0
  %i.afk = shufflevector <2 x float> %i.afj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afl = fmul <2 x float> %i.aey, %i.afk
  %i.afm = insertelement <2 x float> poison, float %i.afg, i64 0
  %i.afn = shufflevector <2 x float> %i.afm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aex, <2 x float> %i.afn, <2 x float> %i.afl)
  %i.afp = insertelement <2 x float> poison, float %i.afi, i64 0
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afa, <2 x float> %i.afq, <2 x float> %i.afo)
  %i.afs = fadd <2 x float> %i.afd, %i.afr
  %i.aft = fmul float %i.aej, %i.afh
  %i.afu = call float @llvm.fmuladd.f32(float %i.aeg, float %i.afg, float %i.aft)
  %i.afv = call float @llvm.fmuladd.f32(float %.sroa.14.0.copyload, float %i.afi, float %i.afu)
  %i.afw = fadd float %i.aes, %i.afv
  %i.afx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0759.3, i64 %.02562309 ; 2 uses
  store <2 x float> %i.afs, ptr %i.afx, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store float %i.afw, ptr %.sroa.4.0..sroa_idx, align 4
  %i.afy = add nuw i64 %.02562309, 1              ; 2 uses
  %exitcond3399.not = icmp eq i64 %i.afy, %i.abz
  br i1 %exitcond3399.not, label %._crit_edge2311, label %.lr.ph2310, !llvm.loop !202

bb.cz:                                            ; preds = %.lr.ph2310
  %i.afz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body661

bb.da:                                            ; preds = %._crit_edge2311
  %i.aga = zext i32 %.33072388 to i64
  %i.agb = load ptr, ptr %18, align 8
  %i.agc = getelementptr inbounds nuw [32 x i8], ptr %i.agb, i64 %i.aga
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.adt, ptr noundef nonnull align 8 dereferenceable(32) %i.agc)
          to label %bb.db unwind label %bb.de

bb.db:                                            ; preds = %bb.da
  store ptr %i.adt, ptr %.02962390, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.adt, i64 1096
  store ptr %i.wn, ptr %i.agd, align 8
  %i.age = load i32, ptr %i.yr, align 1           ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.adt, i64 1120
  store i32 %i.age, ptr %i.agf, align 8
  %i.agg = zext i32 %i.age to i64
  %i.agh = shl nuw nsw i64 %i.agg, 2
  %i.agi = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agh) #26
          to label %bb.dc unwind label %bb.dd     ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.agj = getelementptr inbounds nuw i8, ptr %i.adt, i64 1128
  store ptr %i.agi, ptr %i.agj, align 8
  %i.agk = load i32, ptr %i.yr, align 1
  %i.agl = icmp sgt i32 %i.agk, 0
  br i1 %i.agl, label %.lr.ph2372, label %._crit_edge2373

._crit_edge2373:                                  ; preds = %.loopexit836, %bb.dc
  %.sroa.20.2.lcssa = phi ptr [ %.sroa.20.12379, %bb.dc ], [ %.sroa.20.3.lcssa, %.loopexit836 ] ; 2 uses
  %.sroa.38.2.lcssa = phi ptr [ %.sroa.38.12380, %bb.dc ], [ %.sroa.38.3.lcssa, %.loopexit836 ] ; 2 uses
  %.sroa.0729.2.lcssa = phi ptr [ %.sroa.0729.12381, %bb.dc ], [ %.sroa.0729.3.lcssa, %.loopexit836 ] ; 2 uses
  %.2301.lcssa = phi i32 [ %.13002389, %bb.dc ], [ %i.bdi, %.loopexit836 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.12482393, %bb.dc ], [ %.3.lcssa, %.loopexit836 ] ; 2 uses
  %i.agm = add nuw nsw i32 %.02952391, 1          ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %.22542392, i64 112
  %i.ago = getelementptr inbounds nuw i8, ptr %.02962390, i64 8
  %i.agp = add i32 %.33072388, 1                  ; 2 uses
  %i.agq = load i32, ptr %i.wk, align 1
  %i.agr = icmp slt i32 %i.agm, %i.agq
  br i1 %i.agr, label %.lr.ph2395, label %._crit_edge2396, !llvm.loop !203

bb.dd:                                            ; preds = %bb.db, %._crit_edge2311
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %.body661

bb.de:                                            ; preds = %bb.da
  %i.agt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.adt, i64 noundef 1144) #24
  br label %.body661

.lr.ph2372:                                       ; preds = %bb.dc, %.loopexit836
  %.02452370 = phi i32 [ %i.bdg, %.loopexit836 ], [ 0, %bb.dc ]
  %.02462369 = phi ptr [ %i.bdj, %.loopexit836 ], [ %i.agi, %bb.dc ] ; 2 uses
  %.22368 = phi i32 [ %.3.lcssa, %.loopexit836 ], [ %.12482393, %bb.dc ] ; 2 uses
  %.02552367 = phi ptr [ %i.bdh, %.loopexit836 ], [ %i.yt, %bb.dc ] ; 3 uses
  %.23012366 = phi i32 [ %i.bdi, %.loopexit836 ], [ %.13002389, %bb.dc ] ; 3 uses
  %.sroa.0729.22365 = phi ptr [ %.sroa.0729.3.lcssa, %.loopexit836 ], [ %.sroa.0729.12381, %bb.dc ] ; 5 uses
  %.sroa.38.22364 = phi ptr [ %.sroa.38.3.lcssa, %.loopexit836 ], [ %.sroa.38.12380, %bb.dc ] ; 3 uses
  %.sroa.20.22363 = phi ptr [ %.sroa.20.3.lcssa, %.loopexit836 ], [ %.sroa.20.12379, %bb.dc ] ; 2 uses
  store i32 %.23012366, ptr %.02462369, align 4
  %i.agu = load ptr, ptr %i.a, align 8
  %i.agv = getelementptr inbounds nuw i8, ptr %.02552367, i64 4
  %i.agw = load i32, ptr %i.agv, align 1
  %i.agx = getelementptr inbounds nuw i8, ptr %.02552367, i64 8 ; 2 uses
  %i.agy = load i32, ptr %i.agx, align 1
  %i.agz = sext i32 %i.agy to i64
  %i.aha = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.agz
  %i.ahb = load i16, ptr %i.aha, align 2
  %i.ahc = sext i16 %i.ahb to i64
  %i.ahd = getelementptr inbounds [80 x i8], ptr %i.r, i64 %i.ahc
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 68
  %i.ahf = load <2 x i32>, ptr %i.ahe, align 1
  %i.ahg = sitofp <2 x i32> %i.ahf to <2 x float> ; 2 uses
  %i.ahh = extractelement <2 x float> %i.ahg, i64 0
  %i.ahi = fdiv nnan float 1.000000e+00, %i.ahh
  %i.ahj = load ptr, ptr %20, align 8             ; 2 uses
  %i.ahk = load ptr, ptr %i.vh, align 8
  %.not.i.i462 = icmp eq ptr %i.ahk, %i.ahj
  br i1 %.not.i.i462, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %.lr.ph2372
  store ptr %i.ahj, ptr %i.vh, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit: ; preds = %.lr.ph2372, %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife14HL1MeshTrivertES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.ahl = load i32, ptr %i.yw, align 1           ; 2 uses
  %.not3641 = icmp eq i32 %i.ahl, 0
  br i1 %.not3641, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, label %bb.df

bb.df:                                            ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit
  %i.ahm = sext i32 %i.ahl to i64
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %20, i64 noundef %i.ahm)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit unwind label %bb.di

_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit: ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE5clearEv.exit, %bb.df
  %i.ahn = sext i32 %i.agw to i64
  %i.aho = getelementptr inbounds i8, ptr %i.agu, i64 %i.ahn ; 2 uses
  %i.ahp = load ptr, ptr %22, align 8             ; 2 uses
  %i.ahq = load ptr, ptr %i.vi, align 8
  %.not.i.i466 = icmp eq ptr %i.ahq, %i.ahp
  br i1 %.not.i.i466, label %_ZNSt6vectorIsSaIsEE5clearEv.exit, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit
  store ptr %i.ahp, ptr %i.vi, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit

_ZNSt6vectorIsSaIsEE5clearEv.exit:                ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife14HL1MeshTrivertESaIS3_EE6resizeEm.exit, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i
  %.not.i.i467 = icmp eq ptr %.sroa.20.22363, %.sroa.0729.22365
  %spec.select803 = select i1 %.not.i.i467, ptr %.sroa.20.22363, ptr %.sroa.0729.22365 ; 2 uses
  %i.ahr = load ptr, ptr %i.un, align 8
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES4_SaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef %i.ahr)
          to label %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit unwind label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  %i.ahs = landingpad { ptr, i32 }
          catch ptr null
  %i.aht = extractvalue { ptr, i32 } %i.ahs, 0
  call void @__clang_call_terminate(ptr %i.aht) #27
  unreachable

_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit: ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit
  store ptr null, ptr %i.un, align 8
  store <2 x ptr> %i.vu, ptr %i.uo, align 8
  store i64 0, ptr %i.uq, align 8
  %i.ahu = load ptr, ptr %i.us, align 8
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt3setIsSt4lessIsESaIsEEESt10_Select1stIS7_ES3_IiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.ahu)
          to label %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit unwind label %bb.dh

bb.dh:                                            ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  %i.ahv = landingpad { ptr, i32 }
          catch ptr null
  %i.ahw = extractvalue { ptr, i32 } %i.ahv, 0
  call void @__clang_call_terminate(ptr %i.ahw) #27
  unreachable

_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit: ; preds = %_ZNSt3mapIsSt3setIsSt4lessIsESaIsEES2_SaISt4pairIKsS4_EEE5clearEv.exit
  store ptr null, ptr %i.us, align 8
  store <2 x ptr> %i.vw, ptr %i.ut, align 8
  store i64 0, ptr %i.uv, align 8
  %i.ahx = load i16, ptr %i.aho, align 2          ; 2 uses
  %.not3292332 = icmp eq i16 %i.ahx, 0
  br i1 %.not3292332, label %._crit_edge2338, label %.lr.ph2337

.lr.ph2337:                                       ; preds = %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit, %.loopexit812
  %i.ahy = phi i16 [ %i.avf, %.loopexit812 ], [ %i.ahx, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %.1244.lcssa.pn = phi ptr [ %i.aru, %.loopexit812 ], [ %i.aho, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.32336 = phi i32 [ %i.ave, %.loopexit812 ], [ %.22368, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ]
  %.sroa.0729.32335 = phi ptr [ %.sroa.0729.7, %.loopexit812 ], [ %.sroa.0729.22365, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 15 uses
  %.sroa.38.32334 = phi ptr [ %.sroa.38.7, %.loopexit812 ], [ %.sroa.38.22364, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 12 uses
  %.sroa.20.32333 = phi ptr [ %.sroa.20.7, %.loopexit812 ], [ %spec.select803, %_ZNSt3mapIiSt3setIsSt4lessIsESaIsEES1_IiESaISt4pairIKiS4_EEE5clearEv.exit ] ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %.1244.lcssa.pn, i64 2
  %i.aia = icmp slt i16 %i.ahy, 0
  %i.aib = call i16 @llvm.abs.i16(i16 %i.ahy, i1 false)
  %spec.select = zext i16 %i.aib to i32
  %i.aic = load ptr, ptr %21, align 8             ; 2 uses
  %i.aid = load ptr, ptr %i.vj, align 8
  %.not.i.i468 = icmp eq ptr %i.aid, %i.aic
  br i1 %.not.i.i468, label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, label %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469

_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469:     ; preds = %.lr.ph2337
  store ptr %i.aic, ptr %i.vj, align 8
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader

_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader:   ; preds = %.lr.ph2337, %_ZSt8_DestroyIPssEvT_S1_RSaIT0_E.exit.i.i469
  br label %_ZNSt6vectorIsSaIsEE5clearEv.exit470

bb.di:                                            ; preds = %bb.df
  %i.aie = landingpad { ptr, i32 }
          cleanup
  br label %.body661

_ZNSt6vectorIsSaIsEE5clearEv.exit470:             ; preds = %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496
  %.12422315 = phi i32 [ %i.art, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %spec.select, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 2 uses
  %.12442313 = phi ptr [ %i.aru, %_ZNSt6vectorIsSaIsEE9push_backERKs.exit496 ], [ %i.ahz, %_ZNSt6vectorIsSaIsEE5clearEv.exit470.preheader ] ; 19 uses
  %i.aif = load i16, ptr %.12442313, align 1      ; 7 uses
  %i.aig = sext i16 %i.aif to i64                 ; 2 uses
  %i.aih = getelementptr inbounds i8, ptr %i.yy, i64 %i.aig
  %i.aii = load i8, ptr %i.aih, align 1
  %i.aij = zext i8 %i.aii to i32                  ; 3 uses
  %i.aik = load ptr, ptr %20, align 8
  %i.ail = getelementptr inbounds nuw [10 x i8], ptr %i.aik, i64 %i.aig ; 9 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8 ; 6 uses
  %i.ain = load i16, ptr %i.aim, align 2          ; 2 uses
end_hunk_1
