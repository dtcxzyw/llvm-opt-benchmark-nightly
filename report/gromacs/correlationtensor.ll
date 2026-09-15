Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/correlationtensor?download=true
inline.NumInlined: 368
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17CorrelationTensor18updateBlockLengthsEd:bb.a
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = load ptr, ptr %i.bo, align 8, !tbaa !29 ; 9 uses
  %i.bs = ptrtoint ptr %i.bq to i64               ; 3 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 12 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !44
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 5 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ugt i64 %i.bu, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.cc = icmp ugt i64 %i.bu, 9223372036854775800
  br i1 %i.cc, label %bb.o, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, !prof !41

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %bb.n
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #20 ; 4 uses
  %i.ce = icmp samesign ugt i64 %i.bu, 8
  br i1 %i.ce, label %bb.p, label %bb.q, !prof !42

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.cf = icmp eq i64 %i.bu, 8
  br i1 %i.cf, label %bb.r, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cg = load double, ptr %i.br, align 8, !tbaa !12
  store double %i.cg, ptr %i.cd, align 8, !tbaa !12
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !29 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  %i.ci = load ptr, ptr %i.bv, align 8, !tbaa !44
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.ch to i64
  %i.cl = sub i64 %i.cj, %i.ck
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cl) #21
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  store ptr %i.cd, ptr %i.bn, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bu
  store ptr %i.cm, ptr %i.bv, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !30 ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %i.bz                    ; 5 uses
  %.not24.i = icmp ult i64 %i.cq, %i.bu
  br i1 %.not24.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = icmp sgt i64 %i.bu, 8
  br i1 %i.cr, label %bb.v, label %bb.w, !prof !42

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bx, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.cs = icmp eq i64 %i.bu, 8
  br i1 %i.cs, label %bb.x, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.ct = load double, ptr %i.br, align 8, !tbaa !12
  store double %i.ct, ptr %i.bx, align 8, !tbaa !12
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.y:                                             ; preds = %bb.t
  %i.cu = icmp sgt i64 %i.cq, 8
  br i1 %i.cu, label %bb.z, label %bb.aa, !prof !42

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bx, ptr align 8 %i.br, i64 %i.cq, i1 false)
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !29
  %.pre25.i = load ptr, ptr %i.cn, align 8, !tbaa !30 ; 2 uses
  %.pre26.i = load ptr, ptr %i.bn, align 8, !tbaa !29
  %.pre27.i = load ptr, ptr %i.bp, align 8, !tbaa !30
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.cv = icmp eq i64 %i.cq, 8
  br i1 %i.cv, label %bb.ab, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cw = load double, ptr %i.br, align 8, !tbaa !12
  store double %i.cw, ptr %i.bx, align 8, !tbaa !12
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.z ], [ %i.bs, %bb.aa ], [ %i.bs, %bb.ab ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.z ], [ %i.cq, %bb.aa ], [ 8, %bb.ab ]
  %i.cx = phi ptr [ %.pre25.i, %bb.z ], [ %i.co, %bb.aa ], [ %i.co, %bb.ab ] ; 2 uses
  %i.cy = phi ptr [ %.pre.i, %bb.z ], [ %i.br, %bb.aa ], [ %i.br, %bb.ab ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.pre-phi32.i ; 3 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %.pre-phi34.i, %i.da            ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 8
  br i1 %i.dc, label %bb.ac, label %bb.ad, !prof !42

bb.ac:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cx, ptr align 8 %i.cz, i64 %i.db, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.ad:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  %i.dd = icmp eq i64 %i.db, 8
  br i1 %i.dd, label %bb.ae, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.de = load double, ptr %i.cz, align 8, !tbaa !12
  store double %i.de, ptr %i.cx, align 8, !tbaa !12
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.x, %bb.w, %bb.v, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.df = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.bu
  %i.dh = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !30
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !16    ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 96
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = icmp ult i64 %i.o, %i.do
  br i1 %i.dp, label %.lr.ph.i, label %_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit, !llvm.loop !0

_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i, %.lr.ph14
  %i.dq = phi ptr [ %i.i, %.lr.ph14 ], [ %i.dj, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i ]
  %i.dr = phi ptr [ %i.j, %.lr.ph14 ], [ %i.di, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i ] ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -64 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !37
  %i.du = fmul double %i.dt, 2.000000e+00
  store double %i.du, ptr %i.ds, align 8, !tbaa !37
  %i.dv = add nsw i32 %.113, -1
  %i.dw = icmp sgt i32 %.113, 1
  br i1 %i.dw, label %.lr.ph14, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx20CorrelationBlockData29addBlockToCorrelationIntegralEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !72 ; 3 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.c, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !73
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !73
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39 ; 12 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4                   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29   ; 6 uses
  %wide.trip.count54 = and i64 %i.j, 2147483647   ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count54, 4
  %scevgep64 = getelementptr i8, ptr %i.f, i64 %i.o
  %scevgep66 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit102
  %indvars.iv49 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next50, %.loopexit102 ] ; 3 uses
  %indvars.iv47 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next48, %.loopexit102 ] ; 8 uses
  %.036 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.lcssa, %.loopexit102 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv49 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %min.iters.check = icmp ult i64 %indvars.iv47, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = shl i64 %indvars.iv47, 4
  %scevgep65 = getelementptr i8, ptr %i.f, i64 %i.r
  %i.s = shl i64 %indvars.iv47, 3
  %scevgep62 = getelementptr i8, ptr %i.n, i64 %i.s
  %i.t = shl i64 %.036, 3                         ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.n, i64 %i.t ; 3 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.t ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep64
  %bound1 = icmp ult ptr %i.f, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %scevgep, %scevgep65
  %bound168 = icmp ult ptr %i.f, %scevgep63
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %bound070 = icmp ult ptr %scevgep, %scevgep66
  %bound171 = icmp ult ptr %0, %scevgep63
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  br i1 %conflict.rdx73, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv47, -4              ; 4 uses
  %i.u = add i64 %.036, %n.vec                    ; 2 uses
  %i.v = load double, ptr %i.q, align 8, !tbaa !74, !alias.scope !75
  %i.w = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %broadcast.splatinsert74 = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = load <2 x double>, ptr %0, align 8       ; 3 uses
  %broadcast.splatinsert = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %broadcast.splat = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.y = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> zeroinitializer
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <4 x double> %i.z, %i.z
  %i.ab = fadd <4 x double> %i.y, %i.aa
  %i.ac = load double, ptr %i.p, align 8, !tbaa !47, !alias.scope !75
  %broadcast.splatinsert78 = insertelement <4 x double> poison, double %i.ac, i64 0
  %.scalar = fneg double %i.v
  %i.ad = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.ae = fdiv <4 x double> %i.ad, %broadcast.splatinsert74
  %i.af = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ae, <4 x double> %broadcast.splatinsert, <4 x double> %broadcast.splatinsert78)
  %i.ag = shufflevector <4 x double> %i.af, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ah = getelementptr [8 x i8], ptr %i.n, i64 %.036
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %index
  %wide.vec = load <8 x double>, ptr %i.ai, align 8, !tbaa !12, !alias.scope !76 ; 2 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec80 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %strided.vec, <4 x double> %strided.vec80)
  %i.ak = fneg <4 x double> %i.aj
  %i.al = fdiv <4 x double> %i.ak, %i.ab
  %i.am = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.al, <4 x double> %broadcast.splat, <4 x double> %strided.vec)
  %i.an = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %wide.load = load <4 x double>, ptr %i.an, align 8, !tbaa !12, !alias.scope !77, !noalias !78
  %i.ao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ag, <4 x double> %i.am, <4 x double> %wide.load)
  store <4 x double> %i.ao, ptr %i.an, align 8, !tbaa !12, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv47, %n.vec
  br i1 %cmp.n, label %.loopexit102, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %n.vec, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.036, %vector.memcheck ], [ %.036, %bb.c ], [ %i.u, %middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40.ph ; 2 uses
  %i.ar = load double, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load double, ptr %0, align 8, !tbaa !48 ; 5 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %i.ar, %i.au
  %i.aw = load double, ptr %i.p, align 8, !tbaa !47
  %i.ax = load double, ptr %i.q, align 8, !tbaa !74
  %i.ay = load double, ptr %i.as, align 8, !tbaa !74
  %i.az = load double, ptr %i.aq, align 8, !tbaa !47 ; 2 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.at, double %i.az, double %i.ay)
  %i.bb = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fneg <2 x double> %i.bc
  %i.be = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.av, i64 1
  %i.bg = fdiv <2 x double> %i.bd, %i.bf          ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 0
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.at, double %i.aw)
  %i.bj = extractelement <2 x double> %i.bg, i64 1
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.at, double %i.az)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %i.bm)
  store double %i.bn, ptr %i.bl, align 8, !tbaa !12
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next41.prol = or disjoint i64 %indvars.iv40.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa104.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %scalar.ph.preheader ], [ %indvars.iv.next41.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bo = icmp eq i64 %indvars.iv49, %indvars.iv40.ph
  br i1 %i.bo, label %.loopexit102, label %scalar.ph

.loopexit102:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.u, %middle.block ], [ %indvars.iv.next.lcssa104.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %indvars.iv.next48 = add nuw i64 %indvars.iv47, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !68

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.1, %scalar.ph ], [ %indvars.iv40.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40 ; 2 uses
  %i.bq = load double, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load double, ptr %0, align 8, !tbaa !48 ; 5 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = load double, ptr %i.p, align 8, !tbaa !47
  %i.bw = load double, ptr %i.q, align 8, !tbaa !74
  %i.bx = load double, ptr %i.br, align 8, !tbaa !74
  %i.by = load double, ptr %i.bp, align 8, !tbaa !47 ; 2 uses
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bs, double %i.by, double %i.bx)
  %i.ca = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fneg <2 x double> %i.cb
  %i.cd = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.bu, i64 1
  %i.cf = fdiv <2 x double> %i.cc, %i.ce          ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.bs, double %i.bv)
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.bs, double %i.by)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !12
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cj, double %i.cl)
  store double %i.cm, ptr %i.ck, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load double, ptr %i.a, align 8, !tbaa !72 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cr = load double, ptr %0, align 8, !tbaa !48 ; 5 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fadd double %i.cp, %i.cs
  %i.cu = load double, ptr %i.p, align 8, !tbaa !47
  %i.cv = load double, ptr %i.q, align 8, !tbaa !74
  %i.cw = load double, ptr %i.cq, align 8, !tbaa !74
  %i.cx = load double, ptr %i.co, align 8, !tbaa !47 ; 2 uses
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cx, double %i.cw)
  %i.cz = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.da = insertelement <2 x double> %i.cz, double %i.cy, i64 1
  %i.db = fneg <2 x double> %i.da
  %i.dc = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.dd = insertelement <2 x double> %i.dc, double %i.ct, i64 1
  %i.de = fdiv <2 x double> %i.db, %i.dd          ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.cr, double %i.cu)
  %i.dh = extractelement <2 x double> %i.de, i64 1
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cr, double %i.cx)
  %i.dj = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.dk = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !12
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.di, double %i.dl)
  store double %i.dm, ptr %i.dk, align 8, !tbaa !12
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next41.1, %indvars.iv47
  br i1 %exitcond.not.1, label %.loopexit102, label %scalar.ph, !llvm.loop !69

.loopexit.loopexit:                               ; preds = %.loopexit102
  %.pre = load double, ptr %i.a, align 8, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit, %bb.b
  %i.dn = phi ptr [ %i.e, %.loopexit.loopexit ], [ %i.e, %bb.b ], [ %.pre58, %..loopexit_crit_edge ] ; 3 uses
  %i.do = phi ptr [ %i.f, %.loopexit.loopexit ], [ %i.f, %bb.b ], [ %.pre56, %..loopexit_crit_edge ] ; 6 uses
  %i.dp = phi double [ %.pre, %.loopexit.loopexit ], [ %i.b, %bb.b ], [ %i.b, %..loopexit_crit_edge ]
  %i.dq = load double, ptr %0, align 8, !tbaa !48 ; 4 uses
  %i.dr = fmul double %i.dq, %i.dq
  %i.ds = fadd double %i.dp, %i.dr
  store double %i.ds, ptr %i.a, align 8, !tbaa !72
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load double, ptr %i.dt, align 8, !tbaa !49
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !28
  %i.dx = fadd double %i.du, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !28
  %.not3237 = icmp eq ptr %i.do, %i.dn
  br i1 %.not3237, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.loopexit
  %i.dy = ptrtoaddr ptr %i.dn to i64
  %i.dz = ptrtoaddr ptr %i.do to i64
  %i.ea = add i64 %i.dy, -16
  %i.eb = sub i64 %i.ea, %i.dz                    ; 2 uses
  %i.ec = lshr i64 %i.eb, 4
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 2 uses
end_hunk_0
