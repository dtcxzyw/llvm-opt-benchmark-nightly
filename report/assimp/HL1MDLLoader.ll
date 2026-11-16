Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/HL1MDLLoader?download=true
inline.NumInlined: 2805
inline.NumDeleted: 972
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN6Assimp3MDL8HalfLife12HL1MDLLoader10read_bonesEv:bb.a
  %i.bl = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 160               ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bi
  br i1 %i.bq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = sub nuw nsw i64 %i.bi, %i.bp
  invoke void @_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.br)
          to label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.c
  %i.bs = icmp ugt i64 %i.bp, %i.bi
  br i1 %i.bs, label %bb.f, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw [160 x i8], ptr %i.bl, i64 %i.bi ; 3 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.bt
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cb, %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i ], [ %i.bt, %bb.f ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #24
  br label %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i54 = icmp eq ptr %i.cb, %i.bk
  br i1 %.not.i.i.i.i54, label %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneEEvPT_.exit.i.i.i.i
  store ptr %i.bt, ptr %i.bj, align 8
  br label %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.f, %bb.e, %bb.d
  %i.cc = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %._crit_edge.i.i unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

._crit_edge.i.i:                                  ; preds = %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.cd, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.cd, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.cf, align 1
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.cc, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.cd
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ci = load i64, ptr %i.cd, align 8
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8
  %.not.i = icmp eq ptr %i.cm, %i.co
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.cc, ptr %i.cm, align 8
  %i.cp = load ptr, ptr %i.cl, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.cl, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cr = load ptr, ptr %i.ck, align 8            ; 4 uses
  %i.cs = ptrtoint ptr %i.cm to i64
  %i.ct = ptrtoint ptr %i.cr to i64               ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 5 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.k, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.noexc57 unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #26
          to label %.noexc58 unwind label %.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 %i.cu ; 2 uses
  store ptr %i.cc, ptr %i.dd, align 8
  %i.de = icmp sgt i64 %i.cu, 0
  br i1 %i.de, label %bb.l, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %.noexc58
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %i.cr, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %.noexc58
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.dg = load ptr, ptr %i.cn, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.di) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dc, ptr %i.ck, align 8
  store ptr %i.df, ptr %i.cl, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  store ptr %i.dj, ptr %i.cn, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i
  %i.dk = load ptr, ptr %i.a, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 140
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph222, label %._crit_edge223

._crit_edge223:                                   ; preds = %bb.ac, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %.sroa.0157.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.0157.2, %bb.ac ] ; 7 uses
  %.sroa.11163.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.11163.1, %bb.ac ] ; 2 uses
  %.sroa.17167.0.lcssa = phi ptr [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.17167.2, %bb.ac ] ; 3 uses
  %i.do = ptrtoint ptr %.sroa.11163.0.lcssa to i64
  %i.dp = ptrtoint ptr %.sroa.0157.0.lcssa to i64 ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 2                 ; 2 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cc, i64 1104
  store i32 %i.ds, ptr %i.dt, align 8
  %i.du = shl i64 %i.dq, 1
  %i.dv = and i64 %i.du, 34359738360
  %i.dw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dv) #26
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp186.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZN6Assimp3MDL8HalfLife19UniqueNameGenerator17set_template_nameEPKc.exit, %._crit_edge, %bb.d, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.k, %_ZNSt6vectorIN6Assimp3MDL8HalfLife12HL1MDLLoader8TempBoneESaIS4_EE6resizeEm.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

bb.n:                                             ; preds = %._crit_edge.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = load ptr, ptr %2, align 8               ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.cd
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.n
  %i.ea = load i64, ptr %i.cd, align 8
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 1144) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit82

.lr.ph222:                                        ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit, %bb.ac
  %indvars.iv253 = phi i64 [ %indvars.iv.next254, %bb.ac ], [ 0, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 12 uses
  %.sroa.17167.0219 = phi ptr [ %.sroa.17167.2, %bb.ac ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 8 uses
  %.sroa.11163.0218 = phi ptr [ %.sroa.11163.1, %bb.ac ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 4 uses
  %.sroa.0157.0217 = phi ptr [ %.sroa.0157.2, %bb.ac ], [ null, %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit ] ; 10 uses
  %i.ec = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26
          to label %bb.o unwind label %.loopexit.split-lp182.loopexit.split-lp ; 13 uses

bb.o:                                             ; preds = %.lr.ph222
  %i.ed = load ptr, ptr %1, align 8
  %i.ee = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv253
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ef = load ptr, ptr %i.be, align 8
  %i.eg = getelementptr inbounds nuw [160 x i8], ptr %i.ef, i64 %indvars.iv253
  store ptr %i.ec, ptr %i.eg, align 8
  %i.eh = getelementptr inbounds nuw [112 x i8], ptr %i.h, i64 %indvars.iv253 ; 7 uses
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
  %i.es = call noundef float @sinf(float noundef %i.er) #23 ; 2 uses
  %i.et = call noundef float @cosf(float noundef %i.er) #23 ; 3 uses
  %i.eu = fmul float %i.ej, 5.000000e-01          ; 2 uses
  %i.ev = call noundef float @sinf(float noundef %i.eu) #23 ; 3 uses
  %i.ew = call noundef float @cosf(float noundef %i.eu) #23 ; 2 uses
  %i.ex = fmul float %i.ep, %i.es                 ; 2 uses
  %i.ey = fneg float %i.ex
  %i.ez = fmul float %i.eq, %i.ev
  %i.fa = fmul float %i.ep, %i.ev
  %i.fb = fneg float %i.et
  %i.fc = fmul float %i.eq, %i.et
  %i.fd = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.fe = insertelement <4 x float> %i.fd, float %i.eq, i64 2
  %i.ff = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fg = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fh = insertelement <4 x float> %i.fg, float %i.es, i64 1 ; 2 uses
  %i.fi = insertelement <4 x float> %i.fh, float %i.ex, i64 2
  %i.fj = insertelement <4 x float> %i.fi, float %i.fa, i64 3
  %i.fk = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.ez, i64 1
  %i.fm = insertelement <4 x float> %i.fl, float %i.ev, i64 2 ; 2 uses
  %i.fn = insertelement <4 x float> %i.fm, float %i.fb, i64 3
  %i.fo = fmul <4 x float> %i.fj, %i.fn
  %i.fp = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fq = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.fr = fmul <4 x float> %i.fe, %i.fq
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> %i.fr, <4 x i32> <i32 0, i32 4, i32 0, i32 6>
  %i.ft = shufflevector <4 x float> %i.fm, <4 x float> %i.fh, <4 x i32> <i32 2, i32 poison, i32 4, i32 5>
  %i.fu = insertelement <4 x float> %i.ft, float %i.et, i64 1
  %i.fv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.fu, <4 x float> %i.fo) ; 11 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eh, i64 68
  %i.fy = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.fz = load float, ptr %i.fy, align 1
  %i.ga = extractelement <4 x float> %i.fv, i64 3
  %i.gb = extractelement <4 x float> %i.fv, i64 1 ; 3 uses
  %i.gc = extractelement <4 x float> %i.fv, i64 2 ; 2 uses
  %i.gd = fneg float %i.gc                        ; 2 uses
  %i.ge = extractelement <4 x float> %i.fv, i64 0 ; 3 uses
  %i.gf = insertelement <4 x float> poison, float %i.gd, i64 0
  %i.gg = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 2>
  %i.gh = shufflevector <4 x float> %i.fv, <4 x float> %i.gf, <4 x i32> <i32 2, i32 3, i32 4, i32 1>
  %i.gi = fmul <4 x float> %i.gg, %i.gh           ; 2 uses
  %i.gj = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.gk = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.gk, <4 x float> %i.gi) ; 3 uses
  %3 = extractelement <4 x float> %i.gl, i64 0
  %4 = fmul float %3, 2.000000e+00
  %i.gm = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.fv, <4 x i32> <i32 1, i32 4, i32 5, i32 7>
  %i.go = shufflevector <4 x float> %i.fv, <4 x float> <float -2.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 3, i32 0>
  %i.gp = insertelement <4 x float> %i.gi, float 1.000000e+00, i64 0
  %i.gq = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.gr = fmul <4 x float> %i.fv, %i.gq
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.go, <4 x float> %i.gs) ; 3 uses
  %i.gu = fmul float %i.gc, %i.ge
  %i.gv = call float @llvm.fmuladd.f32(float %i.gb, float %i.ga, float %i.gu)
  %i.gw = fmul float %i.gv, 2.000000e+00
  %i.gx = fmul float %i.gb, %i.gb
  %i.gy = call float @llvm.fmuladd.f32(float %i.ge, float %i.ge, float %i.gx)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ec, i64 1028 ; 3 uses
  %i.ha = load float, ptr %i.fw, align 1
  %i.hb = shufflevector <4 x float> %i.gt, <4 x float> %i.gl, <4 x i32> <i32 0, i32 6, i32 7, i32 poison>
  %i.hc = insertelement <4 x float> %i.hb, float %i.ha, i64 3 ; 2 uses
  %i.hd = fmul <4 x float> %i.hc, <float poison, float 2.000000e+00, float 2.000000e+00, float poison>
  %5 = shufflevector <4 x float> %i.hc, <4 x float> %i.hd, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1044 ; 2 uses
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1048
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1060
  %i.he = load float, ptr %i.fx, align 1
  %i.hf = shufflevector <4 x float> %i.gt, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.hg = insertelement <2 x float> %i.hf, float %i.gy, i64 0
  %i.hh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %6 = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 3>
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %6, <4 x float> %i.hi, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %i.hj = insertelement <4 x float> %7, float %i.he, i64 2 ; 2 uses
  %i.hk = fmul <4 x float> %i.hj, <float poison, float 2.000000e+00, float poison, float 2.000000e+00>
  %8 = shufflevector <4 x float> %i.hj, <4 x float> %i.hk, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x float> %5, ptr %i.gz, align 4
  store float %4, ptr %.sroa.8.0..sroa_idx, align 4
  store <4 x float> %8, ptr %.sroa.9132.0..sroa_idx, align 4
  %.sroa.13134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1064
  store float %i.gw, ptr %.sroa.13134.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1068
  %i.hl = extractelement <2 x float> %i.hh, i64 0
  store float %i.hl, ptr %.sroa.14.0..sroa_idx, align 4
  %.sroa.15135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1072
  store float %i.fz, ptr %.sroa.15135.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 1076 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.16.0..sroa_idx, align 4
  %i.hm = load ptr, ptr %i.be, align 8
  %i.hn = getelementptr inbounds nuw [160 x i8], ptr %i.hm, i64 %indvars.iv253
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ho, ptr noundef nonnull align 4 dereferenceable(64) %i.gz, i64 64, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 1            ; 2 uses
  %i.hr = icmp eq i32 %i.hq, -1
  br i1 %i.hr, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ec, i64 1096
  store ptr %i.cc, ptr %i.hs, align 8
  %.not.i62 = icmp eq ptr %.sroa.11163.0218, %.sroa.17167.0219
  br i1 %.not.i62, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ht = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.ht, ptr %.sroa.11163.0218, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.11163.0218, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.s:                                             ; preds = %bb.q
  %i.hv = ptrtoint ptr %.sroa.17167.0219 to i64
  %i.hw = ptrtoint ptr %.sroa.0157.0217 to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 6 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775804
  br i1 %i.hy, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.s, %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #25
          to label %.cont unwind label %.loopexit.split-lp182.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.hz = ashr exact i64 %i.hx, 2                 ; 3 uses
  %.sroa.speculated.i.i.i63 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i63, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 2305843009213693951)
  %i.id = select i1 %i.ib, i64 2305843009213693951, i64 %i.ic ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.ie = shl nuw nsw i64 %i.id, 2
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #26
          to label %.noexc67 unwind label %.loopexit181 ; 4 uses

.noexc67:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 %i.hx ; 2 uses
  %i.ih = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.ih, ptr %i.ig, align 4
  %i.ii = icmp sgt i64 %i.hx, 0
  br i1 %i.ii, label %bb.t, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.t:                                             ; preds = %.noexc67
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.if, ptr align 4 %.sroa.0157.0217, i64 %i.hx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.t, %.noexc67
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %.not.i17.i.i65 = icmp eq ptr %.sroa.0157.0217, null
  br i1 %.not.i17.i.i65, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0157.0217, i64 noundef %i.hx) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.v:                                             ; preds = %bb.o
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 1144) #24
  br label %.loopexit.split-lp

.loopexit181:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %.sroa.0157.1.ph = phi ptr [ %.sroa.0157.0217, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.0157.0217, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0157.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %.sroa.17167.1.ph = phi ptr [ %.sroa.17167.0219, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69 ], [ %.sroa.17167.0219, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.17167.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp182.loopexit.split-lp:          ; preds = %.lr.ph222, %.invoke
  %lpad.loopexit.split-lp333 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.w:                                             ; preds = %bb.p
  %i.im = sext i32 %i.hq to i64
  %i.in = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.io = getelementptr inbounds nuw [160 x i8], ptr %i.in, i64 %i.im
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ec, i64 1096
  store ptr %i.ip, ptr %i.iq, align 8
  %i.ir = load i32, ptr %i.hp, align 1
  %i.is = sext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [160 x i8], ptr %i.in, i64 %i.is ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 136 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 144 ; 4 uses
  %i.iw = load ptr, ptr %i.iv, align 8            ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 152 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8
  %.not.i68 = icmp eq ptr %i.iw, %i.iy
  br i1 %.not.i68, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.iz = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.iz, ptr %i.iw, align 4
  %i.ja = load ptr, ptr %i.iv, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store ptr %i.jb, ptr %i.iv, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.jc = load ptr, ptr %i.iu, align 8            ; 4 uses
  %i.jd = ptrtoint ptr %i.iw to i64
  %i.je = ptrtoint ptr %i.jc to i64               ; 2 uses
  %i.jf = sub i64 %i.jd, %i.je                    ; 5 uses
  %i.jg = icmp eq i64 %i.jf, 9223372036854775804
  br i1 %i.jg, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69: ; preds = %bb.y
  %i.jh = ashr exact i64 %i.jf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i70 = call i64 @llvm.umax.i64(i64 %i.jh, i64 1)
  %i.ji = add nsw i64 %.sroa.speculated.i.i.i70, %i.jh ; 2 uses
  %i.jj = icmp ult i64 %i.ji, %i.jh
  %i.jk = call i64 @llvm.umin.i64(i64 %i.ji, i64 2305843009213693951)
  %i.jl = select i1 %i.jj, i64 2305843009213693951, i64 %i.jk ; 3 uses
  %.not.i.i.i71 = icmp ne i64 %i.jl, 0
  call void @llvm.assume(i1 %.not.i.i.i71)
  %i.jm = shl nuw nsw i64 %i.jl, 2
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jm) #26
          to label %.noexc76 unwind label %.loopexit181 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i69
  %i.jo = getelementptr inbounds i8, ptr %i.jn, i64 %i.jf ; 2 uses
  %i.jp = trunc nuw nsw i64 %indvars.iv253 to i32
  store i32 %i.jp, ptr %i.jo, align 4
  %i.jq = icmp sgt i64 %i.jf, 0
  br i1 %i.jq, label %bb.z, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

bb.z:                                             ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jn, ptr align 4 %i.jc, i64 %i.jf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72: ; preds = %bb.z, %.noexc76
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %.not.i17.i.i73 = icmp eq ptr %i.jc, null
  br i1 %.not.i17.i.i73, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  %i.js = load ptr, ptr %i.ix, align 8
  %i.jt = ptrtoint ptr %i.js to i64
  %i.ju = sub i64 %i.jt, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef %i.ju) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74: ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i72
  store ptr %i.jn, ptr %i.iu, align 8
  store ptr %i.jr, ptr %i.iv, align 8
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jl
  store ptr %i.jv, ptr %i.ix, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i74, %bb.x
  %i.jw = load i32, ptr %i.hp, align 1
  %i.jx = sext i32 %i.jw to i64
  %i.jy = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.jz = getelementptr inbounds nuw [160 x i8], ptr %i.jy, i64 %i.jx ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %.sroa.13.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %.sroa.21.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.jz, i64 40
  %.sroa.29.0..sroa_idx106 = getelementptr inbounds nuw i8, ptr %i.jz, i64 56
  %i.kb = getelementptr inbounds nuw [160 x i8], ptr %i.jy, i64 %indvars.iv253 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load <4 x float>, ptr %i.ka, align 4    ; 4 uses
  %i.ke = load <4 x float>, ptr %i.gz, align 4    ; 4 uses
  %i.kf = load <4 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 4 uses
  %i.kg = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kh = fmul <4 x float> %i.kg, %i.kf
  %i.ki = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ke, <4 x float> %i.ki, <4 x float> %i.kh)
  %i.kk = load <4 x float>, ptr %.sroa.12.0..sroa_idx, align 4 ; 4 uses
  %i.kl = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.km = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kk, <4 x float> %i.kl, <4 x float> %i.kj)
  %i.kn = load <4 x float>, ptr %.sroa.16.0..sroa_idx, align 4 ; 4 uses
  %i.ko = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.kp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kn, <4 x float> %i.ko, <4 x float> %i.km)
end_hunk_0
