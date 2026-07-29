inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_bonesEv:bb.a
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = sdiv exact i64 %i.bp, 160               ; 3 uses
  %i.br = icmp ult i64 %i.bq, %i.bj
  br i1 %i.br, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bs = sub nuw nsw i64 %i.bj, %i.bq
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 noundef %i.bs)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit unwind label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.bt = icmp ugt i64 %i.bq, %i.bj
  br i1 %i.bt, label %bb.g, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw [160 x i8], ptr %i.bm, i64 %i.bj ; 3 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.bu
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cc, %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i ], [ %i.bu, %bb.g ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #24
  br label %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cc, %i.bl
  br i1 %.not.i.i.i.i54, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

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
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
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
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 6 uses
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
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cv) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dd, ptr %i.cl, align 8
  store ptr %i.dg, ptr %i.cm, align 8
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  store ptr %i.dh, ptr %i.co, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.j
  %i.di = load ptr, ptr %i.a, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 140
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph212, label %._crit_edge213

._crit_edge213:                                   ; preds = %bb.ai, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.sroa.17167.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17167.2, %bb.ai ] ; 3 uses
  %.sroa.11163.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.11163.1, %bb.ai ] ; 2 uses
  %.sroa.0157.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0157.2, %bb.ai ] ; 7 uses
  %i.dm = ptrtoint ptr %.sroa.11163.0.lcssa to i64
  %i.dn = ptrtoint ptr %.sroa.0157.0.lcssa to i64 ; 3 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 2 uses
  %i.dp = ashr exact i64 %i.do, 2                 ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cd, i64 1104
  store i32 %i.dq, ptr %i.dr, align 8
  %i.ds = shl i64 %i.do, 1
  %i.dt = and i64 %i.ds, 34359738360
  %i.du = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dt) #26
          to label %bb.aj unwind label %bb.al

bb.o:                                             ; preds = %bb.e, %._crit_edge, %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

bb.p:                                             ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.l, %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %2, align 8               ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.ce
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.q
  %i.ea = load i64, ptr %i.ce, align 8
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 1144) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

.lr.ph212:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.ai
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %bb.ai ], [ 0, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 12 uses
  %.sroa.0157.0210 = phi ptr [ %.sroa.0157.2, %bb.ai ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 11 uses
  %.sroa.11163.0209 = phi ptr [ %.sroa.11163.1, %bb.ai ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %.sroa.17167.0208 = phi ptr [ %.sroa.17167.2, %bb.ai ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %i.ec = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.r unwind label %bb.z       ; 14 uses

bb.r:                                             ; preds = %.lr.ph212
  %i.ed = load ptr, ptr %1, align 8
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv239
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %bb.s unwind label %bb.aa

bb.s:                                             ; preds = %bb.r
  %i.ef = load ptr, ptr %i.bf, align 8
  %i.eg = getelementptr inbounds nuw [160 x i8], ptr %i.ef, i64 %indvars.iv239
  store ptr %i.ec, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %indvars.iv239 ; 7 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 76
  %i.ej = load float, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.el = load float, ptr %i.ek, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 84
  %i.en = load float, ptr %i.em, align 1
  %i.eo = fmul float %i.el, 5.000000e-01          ; 2 uses
  %i.ep = call noundef float @sinf(float noundef %i.eo) #23 ; 3 uses
  %i.eq = call noundef float @cosf(float noundef %i.eo) #23 ; 3 uses
  %i.er = fmul float %i.en, 5.000000e-01          ; 2 uses
  %i.es = call noundef float @sinf(float noundef %i.er) #23 ; 3 uses
  %i.et = call noundef float @cosf(float noundef %i.er) #23 ; 3 uses
  %i.eu = fmul float %i.ej, 5.000000e-01          ; 2 uses
  %i.ev = call noundef float @sinf(float noundef %i.eu) #23 ; 4 uses
  %i.ew = call noundef float @cosf(float noundef %i.eu) #23 ; 4 uses
  %3 = fneg float %i.et
  %4 = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eh, i64 68
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %5 = load float, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ec, i64 1028 ; 3 uses
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1032
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1044
  %6 = fmul float %i.ep, %i.es                    ; 2 uses
  %7 = fneg float %6
  %8 = fmul float %i.ew, %7
  %i.fa = fmul float %i.eq, %i.et                 ; 2 uses
  %i.fb = call float @llvm.fmuladd.f32(float %i.ev, float %i.fa, float %8) ; 9 uses
  %i.fc = fmul float %i.eq, %i.ew
  %9 = fmul float %i.ep, %i.ew
  %10 = fmul float %i.ep, %i.ev
  %11 = fmul float %i.eq, %i.ev
  %12 = fmul float %i.es, %11
  %13 = fmul float %6, %i.ev
  %14 = fmul float %10, %3
  %15 = insertelement <2 x float> poison, float %9, i64 0
  %i.fd = insertelement <2 x float> %15, float %i.fc, i64 1
  %i.fe = insertelement <2 x float> poison, float %i.et, i64 0
  %16 = insertelement <2 x float> %i.fe, float %i.es, i64 1
  %17 = insertelement <2 x float> poison, float %12, i64 0
  %18 = insertelement <2 x float> %17, float %14, i64 1
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fd, <2 x float> %16, <2 x float> %18) ; 8 uses
  %19 = call float @llvm.fmuladd.f32(float %i.ew, float %i.fa, float %13) ; 4 uses
  %20 = load float, ptr %4, align 1
  %21 = extractelement <2 x float> %i.ff, i64 1   ; 4 uses
  %i.fg = fmul float %21, %21                     ; 2 uses
  %22 = extractelement <2 x float> %i.ff, i64 0   ; 4 uses
  %23 = call float @llvm.fmuladd.f32(float %22, float %22, float %i.fg)
  %i.fh = call float @llvm.fmuladd.f32(float %23, float -2.000000e+00, float 1.000000e+00)
  %24 = fneg float %19                            ; 3 uses
  %25 = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %26 = insertelement <2 x float> %25, float %19, i64 1
  %27 = insertelement <2 x float> %25, float %24, i64 0
  %28 = fmul <2 x float> %26, %27
  %29 = insertelement <2 x float> poison, float %i.fb, i64 0
  %30 = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %31 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %i.ff, <2 x float> %28)
  %32 = fmul float %19, %21
  %i.fi = call float @llvm.fmuladd.f32(float %i.fb, float %22, float %32)
  %i.fj = insertelement <4 x float> poison, float %20, i64 2
  %i.fk = insertelement <4 x float> %i.fj, float %i.fi, i64 3
  %33 = shufflevector <2 x float> %31, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %33, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fl = fmul <4 x float> %34, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00>
  %i.fm = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fg)
  %i.fn = call float @llvm.fmuladd.f32(float %i.fm, float -2.000000e+00, float 1.000000e+00)
  %35 = fmul float %i.fb, %24
  %36 = call float @llvm.fmuladd.f32(float %22, float %21, float %35)
  %foldExtExtBinop = fmul <2 x float> %i.ff, %i.ff
  %37 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %38 = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %37)
  %39 = call float @llvm.fmuladd.f32(float %38, float -2.000000e+00, float 1.000000e+00)
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1048
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1052
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1060
  %40 = load float, ptr %i.ex, align 1
  %41 = insertelement <2 x float> %i.ff, float %19, i64 1
  %i.fo = insertelement <2 x float> poison, float %24, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.fb, i64 1
  %42 = fmul <2 x float> %41, %i.fp
  %i.fq = insertelement <2 x float> %25, float %i.fb, i64 0
  %43 = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %43, <2 x float> %42)
  %44 = insertelement <4 x float> poison, float %36, i64 0
  %i.fs = insertelement <4 x float> %44, float %40, i64 1
  %i.ft = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %45 = shufflevector <4 x float> %i.fs, <4 x float> %i.ft, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %46 = fmul <4 x float> %45, <float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 2.000000e+00>
  store float %i.fh, ptr %i.ez, align 4
  store <4 x float> %i.fl, ptr %.sroa.5130.0..sroa_idx, align 4
  store float %i.fn, ptr %.sroa.9132.0..sroa_idx, align 4
  store <4 x float> %46, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1068
  store float %39, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1072
  store float %5, ptr %.sroa.15135.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1076 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.fu = load ptr, ptr %i.bf, align 8
  %i.fv = getelementptr inbounds nuw [160 x i8], ptr %i.fu, i64 %indvars.iv239
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fw, ptr noundef nonnull align 4 dereferenceable(64) %i.ez, i64 64, i1 false)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 1            ; 2 uses
  %i.fz = icmp eq i32 %i.fy, -1
  br i1 %i.fz, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ec, i64 1096
  store ptr %i.cd, ptr %i.ga, align 8
  %.not.i62 = icmp eq ptr %.sroa.11163.0209, %.sroa.17167.0208
  br i1 %.not.i62, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %i.gb, ptr %.sroa.11163.0209, align 4
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.11163.0209, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.t
  %i.gd = ptrtoint ptr %.sroa.11163.0209 to i64
  %i.ge = ptrtoint ptr %.sroa.0157.0210 to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 6 uses
  %i.gg = icmp eq i64 %i.gf, 9223372036854775804
  br i1 %i.gg, label %bb.w, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc66 unwind label %.loopexit.split-lp

.noexc66:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.gh = ashr exact i64 %i.gf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.gh, i64 1)
  %i.gi = add nsw i64 %.sroa.speculated.i.i.i63, %i.gh ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.gh
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gi, i64 2305843009213693951)
  %i.gl = select i1 %i.gj, i64 2305843009213693951, i64 %i.gk ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.gl, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.gm = shl nuw nsw i64 %i.gl, 2
  %i.gn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gm) #26
          to label %.noexc67 unwind label %.loopexit ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %i.gf ; 2 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %i.gp, ptr %i.go, align 4
  %i.gq = icmp sgt i64 %i.gf, 0
  br i1 %i.gq, label %bb.x, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.x:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gn, ptr align 4 %.sroa.0157.0210, i64 %i.gf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.x, %.noexc67
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %.not.i17.i.i65 = icmp eq ptr %.sroa.0157.0210, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0210, i64 noundef %i.gf) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gl
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.z:                                             ; preds = %.lr.ph212
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aa:                                            ; preds = %bb.r
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 1144) #24
  br label %bb.ao

.loopexit:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %.sroa.17167.1.ph = phi ptr [ %.sroa.17167.0208, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.11163.0209, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.17167.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.0157.1.ph = phi ptr [ %.sroa.0157.0210, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.0157.0210, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0157.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.w, %bb.ae
  %.sroa.17167.0208230 = phi ptr [ %.sroa.11163.0209, %bb.w ], [ %.sroa.17167.0208, %bb.ae ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ab:                                            ; preds = %bb.s
  %i.gv = sext i32 %i.fy to i64
  %i.gw = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.gx = getelementptr inbounds nuw [160 x i8], ptr %i.gw, i64 %i.gv
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ec, i64 1096
  store ptr %i.gy, ptr %i.gz, align 8
  %i.ha = load i32, ptr %i.fx, align 1
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [160 x i8], ptr %i.gw, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 136 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 144 ; 4 uses
  %i.hf = load ptr, ptr %i.he, align 8            ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 152 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8
  %.not.i68 = icmp eq ptr %i.hf, %i.hh
  br i1 %.not.i68, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hi = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %i.hi, ptr %i.hf, align 4
  %i.hj = load ptr, ptr %i.he, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  store ptr %i.hk, ptr %i.he, align 8
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.hl = load ptr, ptr %i.hd, align 8            ; 4 uses
  %i.hm = ptrtoint ptr %i.hf to i64
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = sub i64 %i.hm, %i.hn                    ; 6 uses
  %i.hp = icmp eq i64 %i.ho, 9223372036854775804
  br i1 %i.hp, label %bb.ae, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc75 unwind label %.loopexit.split-lp

.noexc75:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.ad
  %i.hq = ashr exact i64 %i.ho, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = call i64 @llvm.umax.i64(i64 %i.hq, i64 1)
  %i.hr = add nsw i64 %.sroa.speculated.i.i.i70, %i.hq ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %i.ht = call i64 @llvm.umin.i64(i64 %i.hr, i64 2305843009213693951)
  %i.hu = select i1 %i.hs, i64 2305843009213693951, i64 %i.ht ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.hu, 0
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.hv = shl nuw nsw i64 %i.hu, 2
  %i.hw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hv) #26
          to label %.noexc76 unwind label %.loopexit ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 %i.ho ; 2 uses
  %i.hy = trunc nuw nsw i64 %indvars.iv239 to i32
  store i32 %i.hy, ptr %i.hx, align 4
  %i.hz = icmp sgt i64 %i.ho, 0
  br i1 %i.hz, label %bb.af, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.af:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hw, ptr align 4 %i.hl, i64 %i.ho, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.af, %.noexc76
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %.not.i17.i.i73 = icmp eq ptr %i.hl, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.ho) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  store ptr %i.hw, ptr %i.hd, align 8
  store ptr %i.ia, ptr %i.he, align 8
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hu
  store ptr %i.ib, ptr %i.hg, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, %bb.ac
  %i.ic = load i32, ptr %i.fx, align 1
  %i.id = sext i32 %i.ic to i64
  %i.ie = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.if = getelementptr inbounds nuw [160 x i8], ptr %i.ie, i64 %i.id ; 16 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %.sroa.0.0.copyload83 = load float, ptr %i.ig, align 4
  %.sroa.7.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %i.if, i64 12
  %.sroa.7.0.copyload85 = load float, ptr %.sroa.7.0..sroa_idx84, align 4
  %.sroa.9.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %.sroa.9.0.copyload87 = load float, ptr %.sroa.9.0..sroa_idx86, align 4
  %.sroa.11.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.if, i64 20
  %.sroa.11.0.copyload89 = load float, ptr %.sroa.11.0..sroa_idx88, align 4
  %.sroa.13.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %.sroa.13.0.copyload91 = load float, ptr %.sroa.13.0..sroa_idx90, align 4
  %.sroa.15.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.if, i64 28
  %.sroa.15.0.copyload93 = load float, ptr %.sroa.15.0..sroa_idx92, align 4
  %.sroa.17.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %.sroa.17.0.copyload95 = load float, ptr %.sroa.17.0..sroa_idx94, align 4
  %.sroa.19.0..sroa_idx96 = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %.sroa.19.0.copyload97 = load float, ptr %.sroa.19.0..sroa_idx96, align 4
end_hunk_0
