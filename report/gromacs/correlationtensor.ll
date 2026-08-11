inline.NumInlined: 368
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17CorrelationTensor18updateBlockLengthsEd:bb.a
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 72 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 72 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 80 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !28
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !27 ; 9 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 12 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 88 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !51
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !27 ; 7 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp ugt i64 %i.bp, %i.bv
  br i1 %i.bw, label %bb.n, label %bb.t

bb.n:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.bx = icmp ugt i64 %i.bp, 9223372036854775800
  br i1 %i.bx, label %bb.o, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i, !prof !47

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %bb.n
  %i.by = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #20 ; 4 uses
  %i.bz = icmp samesign ugt i64 %i.bp, 8
  br i1 %i.bz, label %bb.p, label %bb.q, !prof !48

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.ca = icmp eq i64 %i.bp, 8
  br i1 %i.ca, label %bb.r, label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.cb = load double, ptr %i.bm, align 8, !tbaa !9
  store double %i.cb, ptr %i.by, align 8, !tbaa !9
  br label %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i

_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  %.not.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bv) #21
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i: ; preds = %bb.s, %_ZNSt6vectorIdSaIdEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKdS1_EEEEPdmT_S9_.exit.i
  store ptr %i.by, ptr %i.bi, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store ptr %i.cc, ptr %i.bq, align 8, !tbaa !51
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN3gmx20CorrelationBlockData9CoordDataESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !28 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bu                    ; 5 uses
  %.not24.i = icmp ult i64 %i.cg, %i.bp
  br i1 %.not24.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = icmp sgt i64 %i.bp, 8
  br i1 %i.ch, label %bb.v, label %bb.w, !prof !48

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %i.bm, i64 %i.bp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.w:                                             ; preds = %bb.u
  %i.ci = icmp eq i64 %i.bp, 8
  br i1 %i.ci, label %bb.x, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cj = load double, ptr %i.bm, align 8, !tbaa !9
  store double %i.cj, ptr %i.bs, align 8, !tbaa !9
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.y:                                             ; preds = %bb.t
  %i.ck = icmp sgt i64 %i.cg, 8
  br i1 %i.ck, label %bb.z, label %bb.aa, !prof !48

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bs, ptr align 8 %i.bm, i64 %i.cg, i1 false)
  %.pre.i = load ptr, ptr %i.bj, align 8, !tbaa !27
  %.pre25.i = load ptr, ptr %i.cd, align 8, !tbaa !28 ; 2 uses
  %.pre26.i = load ptr, ptr %i.bi, align 8, !tbaa !27
  %.pre27.i = load ptr, ptr %i.bk, align 8, !tbaa !28
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.ab, label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cm = load double, ptr %i.bm, align 8, !tbaa !9
  store double %i.cm, ptr %i.bs, align 8, !tbaa !9
  br label %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.ab, %bb.aa, %bb.z
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.z ], [ %i.bn, %bb.aa ], [ %i.bn, %bb.ab ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.z ], [ %i.cg, %bb.aa ], [ 8, %bb.ab ]
  %i.cn = phi ptr [ %.pre25.i, %bb.z ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.ab ] ; 2 uses
  %i.co = phi ptr [ %.pre.i, %bb.z ], [ %i.bm, %bb.aa ], [ %i.bm, %bb.ab ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %.pre-phi32.i ; 3 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %.pre-phi34.i, %i.cq            ; 3 uses
  %i.cs = icmp sgt i64 %i.cr, 8
  br i1 %i.cs, label %bb.ac, label %bb.ad, !prof !48

bb.ac:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cn, ptr align 8 %i.cp, i64 %i.cr, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.ad:                                            ; preds = %_ZSt4copyIPdS0_ET0_T_S2_S1_.exit.i
  %i.ct = icmp eq i64 %i.cr, 8
  br i1 %i.ct, label %bb.ae, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.cu = load double, ptr %i.cp, align 8, !tbaa !9
  store double %i.cu, ptr %i.cn, align 8, !tbaa !9
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.x, %bb.w, %bb.v, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.bp
  %i.cx = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !28
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = sdiv exact i64 %i.dc, 96
  %i.de = add nsw i64 %i.dd, -1
  %i.df = icmp ult i64 %i.o, %i.de
  br i1 %i.df, label %.lr.ph.i, label %_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit, !llvm.loop !43

_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i, %.lr.ph14
  %i.dg = phi ptr [ %i.i, %.lr.ph14 ], [ %i.cz, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i ]
  %i.dh = phi ptr [ %i.j, %.lr.ph14 ], [ %i.cy, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKdSt6vectorIdSaIdEEEENS1_IPdS6_EEET0_T_SB_SA_.exit.i ] ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -64 ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !42
  %i.dk = fmul double %i.dj, 2.000000e+00
  store double %i.dk, ptr %i.di, align 8, !tbaa !42
  %i.dl = add nsw i32 %.113, -1
  %i.dm = icmp sgt i32 %.113, 1
  br i1 %i.dm, label %.lr.ph14, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %_ZN3gmx17CorrelationTensor18doubleBlockLengthsEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx20CorrelationBlockData29addBlockToCorrelationIntegralEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !55 ; 3 uses
  %i.c = fcmp oeq double %i.b, 0.000000e+00
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.c, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre56 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !56
  %.phi.trans.insert57 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre58 = load ptr, ptr %.phi.trans.insert57, align 8, !tbaa !56
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.f = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !45 ; 12 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 4                   ; 2 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27   ; 6 uses
  %wide.trip.count54 = and i64 %i.j, 2147483647   ; 2 uses
  %i.o = shl nuw nsw i64 %wide.trip.count54, 4
  %scevgep64.a = getelementptr i8, ptr %i.f, i64 %i.o
  %scevgep66 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit102
  %indvars.iv49.a = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next50.a, %.loopexit102 ] ; 5 uses
  %indvars.iv47 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next48, %.loopexit102 ] ; 6 uses
  %.036 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.lcssa, %.loopexit102 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv49.a ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %min.iters.check = icmp ult i64 %indvars.iv47, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = shl i64 %indvars.iv49.a, 4
  %i.s = getelementptr i8, ptr %i.f, i64 %i.r
  %scevgep65.a = getelementptr i8, ptr %i.s, i64 16
  %i.t = shl i64 %indvars.iv49.a, 3
  %i.u = getelementptr i8, ptr %i.n, i64 %i.t
  %scevgep62 = getelementptr i8, ptr %i.u, i64 8
  %i.v = shl i64 %.036, 3                         ; 2 uses
  %scevgep.a = getelementptr nuw i8, ptr %i.n, i64 %i.v ; 3 uses
  %scevgep63 = getelementptr i8, ptr %scevgep62, i64 %i.v ; 3 uses
  %bound0 = icmp ult ptr %scevgep.a, %scevgep64.a
  %bound1 = icmp ult ptr %i.f, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  %bound067 = icmp ult ptr %scevgep.a, %scevgep65.a
  %bound168 = icmp ult ptr %i.f, %scevgep63
  %found.conflict69 = and i1 %bound067, %bound168
  %conflict.rdx = or i1 %found.conflict, %found.conflict69
  %bound070 = icmp ult ptr %scevgep.a, %scevgep66
  %bound171 = icmp ult ptr %0, %scevgep63
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  br i1 %conflict.rdx73, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv47, -4              ; 4 uses
  %i.w = add i64 %.036, %n.vec                    ; 2 uses
  %i.x = load double, ptr %i.q, align 8, !tbaa !57, !alias.scope !59
  %i.y = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %broadcast.splatinsert74 = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = load <2 x double>, ptr %0, align 8       ; 3 uses
  %broadcast.splatinsert = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %broadcast.splat = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aa = shufflevector <2 x double> %i.y, <2 x double> poison, <4 x i32> zeroinitializer
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul <4 x double> %i.ab, %i.ab
  %i.ad = fadd <4 x double> %i.aa, %i.ac
  %i.ae = load double, ptr %i.p, align 8, !tbaa !62, !alias.scope !59
  %broadcast.splatinsert78 = insertelement <4 x double> poison, double %i.ae, i64 0
  %.scalar = fneg double %i.x
  %i.af = insertelement <4 x double> poison, double %.scalar, i64 0
  %i.ag = fdiv <4 x double> %i.af, %broadcast.splatinsert74
  %i.ah = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ag, <4 x double> %broadcast.splatinsert, <4 x double> %broadcast.splatinsert78)
  %i.ai = shufflevector <4 x double> %i.ah, <4 x double> poison, <4 x i32> zeroinitializer
  %i.aj = getelementptr [8 x i8], ptr %i.n, i64 %.036
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %index
  %wide.vec = load <8 x double>, ptr %i.ak, align 8, !tbaa !9, !alias.scope !63 ; 2 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec80 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.al = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %strided.vec, <4 x double> %strided.vec80)
  %i.am = fneg <4 x double> %i.al
  %i.an = fdiv <4 x double> %i.am, %i.ad
  %i.ao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.an, <4 x double> %broadcast.splat, <4 x double> %strided.vec)
  %i.ap = getelementptr [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ap, align 8, !tbaa !9, !alias.scope !65, !noalias !67
  %i.aq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ai, <4 x double> %i.ao, <4 x double> %wide.load)
  store <4 x double> %i.aq, ptr %i.ap, align 8, !tbaa !9, !alias.scope !65, !noalias !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv47, %n.vec
  br i1 %cmp.n, label %.loopexit102, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.c, %middle.block
  %indvars.iv40.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.c ], [ %n.vec, %middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ %.036, %vector.memcheck ], [ %.036, %bb.c ], [ %i.w, %middle.block ] ; 3 uses
  %xtraiter = and i64 %indvars.iv47, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40.ph ; 2 uses
  %i.at = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.aw = fmul double %i.av, %i.av
  %i.ax = fadd double %i.at, %i.aw
  %i.ay = load double, ptr %i.p, align 8, !tbaa !62
  %i.az = load double, ptr %i.q, align 8, !tbaa !57
  %i.ba = load double, ptr %i.au, align 8, !tbaa !57
  %i.bb = load double, ptr %i.as, align 8, !tbaa !62 ; 2 uses
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.av, double %i.bb, double %i.ba)
  %i.bd = insertelement <2 x double> poison, double %i.az, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = fneg <2 x double> %i.be
  %i.bg = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ax, i64 1
  %i.bi = fdiv <2 x double> %i.bf, %i.bh          ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bj, double %i.av, double %i.ay)
  %i.bl = extractelement <2 x double> %i.bi, i64 1
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.av, double %i.bb)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.ph ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !9
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bm, double %i.bo)
  store double %i.bp, ptr %i.bn, align 8, !tbaa !9
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next41.prol = or disjoint i64 %indvars.iv40.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa104.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv40.unr = phi i64 [ %indvars.iv40.ph, %scalar.ph.preheader ], [ %indvars.iv.next41.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %indvars.iv49.a, %indvars.iv40.ph
  br i1 %i.bq, label %.loopexit102, label %scalar.ph

.loopexit102:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.w, %middle.block ], [ %indvars.iv.next.lcssa104.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %indvars.iv.next50.a = add nuw nsw i64 %indvars.iv49.a, 1 ; 2 uses
  %indvars.iv.next48 = add nuw i64 %indvars.iv47, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next50.a, %wide.trip.count54
  br i1 %exitcond55.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !71

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv40.a = phi i64 [ %indvars.iv.next41.1, %scalar.ph ], [ %indvars.iv40.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40.a ; 2 uses
  %i.bs = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fadd double %i.bs, %i.bv
  %i.bx = load double, ptr %i.p, align 8, !tbaa !62
  %i.by = load double, ptr %i.q, align 8, !tbaa !57
  %i.bz = load double, ptr %i.bt, align 8, !tbaa !57
  %i.ca = load double, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.ca, double %i.bz)
  %i.cc = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.cb, i64 1
  %i.ce = fneg <2 x double> %i.cd
  %i.cf = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.bw, i64 1
  %i.ch = fdiv <2 x double> %i.ce, %i.cg          ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.bu, double %i.bx)
  %i.ck = extractelement <2 x double> %i.ch, i64 1
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.bu, double %i.ca)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !9
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cj, double %i.cl, double %i.cn)
  store double %i.co, ptr %i.cm, align 8, !tbaa !9
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40.a ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.ct = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = fadd double %i.cr, %i.cu
  %i.cw = load double, ptr %i.p, align 8, !tbaa !62
  %i.cx = load double, ptr %i.q, align 8, !tbaa !57
  %i.cy = load double, ptr %i.cs, align 8, !tbaa !57
  %i.cz = load double, ptr %i.cq, align 8, !tbaa !62 ; 2 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cz, double %i.cy)
  %i.db = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = fneg <2 x double> %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.df = insertelement <2 x double> %i.de, double %i.cv, i64 1
  %i.dg = fdiv <2 x double> %i.dd, %i.df          ; 2 uses
  %i.dh = extractelement <2 x double> %i.dg, i64 0
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.ct, double %i.cw)
  %i.dj = extractelement <2 x double> %i.dg, i64 1
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.ct, double %i.cz)
  %i.dl = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.dm = getelementptr i8, ptr %i.dl, i64 8      ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !9
  %i.do = tail call double @llvm.fmuladd.f64(double %i.di, double %i.dk, double %i.dn)
  store double %i.do, ptr %i.dm, align 8, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40.a, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next41.1, %indvars.iv47
  br i1 %exitcond.not.1, label %.loopexit102, label %scalar.ph, !llvm.loop !72

.loopexit.loopexit:                               ; preds = %.loopexit102
  %.pre = load double, ptr %i.a, align 8, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit, %bb.b
  %i.dp = phi ptr [ %i.e, %.loopexit.loopexit ], [ %i.e, %bb.b ], [ %.pre58, %..loopexit_crit_edge ] ; 3 uses
  %i.dq = phi ptr [ %i.f, %.loopexit.loopexit ], [ %i.f, %bb.b ], [ %.pre56, %..loopexit_crit_edge ] ; 6 uses
  %i.dr = phi double [ %.pre, %.loopexit.loopexit ], [ %i.b, %bb.b ], [ %i.b, %..loopexit_crit_edge ]
  %i.ds = load double, ptr %0, align 8, !tbaa !70 ; 4 uses
  %i.dt = fmul double %i.ds, %i.ds
  %i.du = fadd double %i.dr, %i.dt
  store double %i.du, ptr %i.a, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !73
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !15
  %i.dz = fadd double %i.dw, %i.dy
  store double %i.dz, ptr %i.dx, align 8, !tbaa !15
  %.not3237 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not3237, label %._crit_edge, label %.lr.ph39.preheader

.lr.ph39.preheader:                               ; preds = %.loopexit
  %i.ea = ptrtoaddr ptr %i.dp to i64
  %i.eb = ptrtoaddr ptr %i.dq to i64
  %i.ec = add i64 %i.ea, -16
  %i.ed = sub i64 %i.ec, %i.eb                    ; 2 uses
  %i.ee = lshr i64 %i.ed, 4
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %min.iters.check83 = icmp ult i64 %i.ed, 112
  br i1 %min.iters.check83, label %.lr.ph39.preheader103, label %vector.ph84

vector.ph84:                                      ; preds = %.lr.ph39.preheader
  %n.vec85 = and i64 %i.ef, 2305843009213693944   ; 3 uses
  %i.eg = shl i64 %n.vec85, 4
  %i.eh = getelementptr i8, ptr %i.dq, i64 %i.eg
  %broadcast.splatinsert86 = insertelement <4 x double> poison, double %i.ds, i64 0
  %broadcast.splat87 = shufflevector <4 x double> %broadcast.splatinsert86, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph84
  %index89 = phi i64 [ 0, %vector.ph84 ], [ %index.next98, %vector.body88 ] ; 2 uses
  %i.ei = shl i64 %index89, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dq, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dq, i64 %i.ei
  %next.gep90 = getelementptr i8, ptr %i.ej, i64 64 ; 2 uses
  %wide.vec91 = load <8 x double>, ptr %next.gep, align 8, !tbaa !9 ; 2 uses
  %strided.vec92 = shufflevector <8 x double> %wide.vec91, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec93 = shufflevector <8 x double> %wide.vec91, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec94 = load <8 x double>, ptr %next.gep90, align 8, !tbaa !9 ; 2 uses
  %strided.vec95 = shufflevector <8 x double> %wide.vec94, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec96 = shufflevector <8 x double> %wide.vec94, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ek = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat87, <4 x double> %strided.vec92, <4 x double> %strided.vec93)
  %i.el = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat87, <4 x double> %strided.vec95, <4 x double> %strided.vec96)
  %interleaved.vec = shufflevector <4 x double> zeroinitializer, <4 x double> %i.ek, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec, ptr %next.gep, align 8, !tbaa !9
  %interleaved.vec97 = shufflevector <4 x double> zeroinitializer, <4 x double> %i.el, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x double> %interleaved.vec97, ptr %next.gep90, align 8, !tbaa !9
  %index.next98 = add nuw i64 %index89, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next98, %n.vec85
  br i1 %i.em, label %middle.block99, label %vector.body88, !llvm.loop !74

middle.block99:                                   ; preds = %vector.body88
  %cmp.n100 = icmp eq i64 %i.ef, %n.vec85
  br i1 %cmp.n100, label %._crit_edge, label %.lr.ph39.preheader103

.lr.ph39.preheader103:                            ; preds = %.lr.ph39.preheader, %middle.block99
  %.sroa.029.038.ph = phi ptr [ %i.dq, %.lr.ph39.preheader ], [ %i.eh, %middle.block99 ]
  br label %.lr.ph39

._crit_edge:                                      ; preds = %.lr.ph39, %middle.block99, %.loopexit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

.lr.ph39:                                         ; preds = %.lr.ph39.preheader103, %.lr.ph39
  %.sroa.029.038 = phi ptr [ %i.es, %.lr.ph39 ], [ %.sroa.029.038.ph, %.lr.ph39.preheader103 ] ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.029.038, i64 8
  %i.eo = load double, ptr %i.en, align 8, !tbaa !57
  %i.ep = load double, ptr %.sroa.029.038, align 8, !tbaa !62
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.ds, double %i.ep, double %i.eo)
  %i.er = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.eq, i64 1
  store <2 x double> %i.er, ptr %.sroa.029.038, align 8, !tbaa !9
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.029.038, i64 16 ; 2 uses
  %.not32 = icmp eq ptr %i.es, %i.dp
  br i1 %.not32, label %._crit_edge, label %.lr.ph39, !llvm.loop !75
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx17CorrelationTensor7addDataEdNS_8ArrayRefIKdEEbd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, double noundef %1, ptr nofree readonly captures(none) %2, ptr nofree readnone captures(none) %3, i1 noundef zeroext %4, double noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = fcmp olt double %1, f0x3EB0C6F7A0B5ED8D
  br i1 %i.a, label %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -96
  %i.e = load double, ptr %i.d, align 8, !tbaa !70
  %i.f = fadd double %1, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.g = phi double [ %i.f, %bb.c ], [ %5, %bb.b ] ; 2 uses
  tail call void @_ZN3gmx17CorrelationTensor18updateBlockLengthsEd(ptr noundef nonnull align 8 dereferenceable(24) %0, double noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !11     ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %.not32 = icmp eq i64 %i.m, 96
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %broadcast.splatinsert = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert57 = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat58 = shufflevector <4 x double> %broadcast.splatinsert57, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit25, %bb.d
  %.lcssa = phi ptr [ %i.i, %bb.d ], [ %i.fj, %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit25 ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.lcssa, i64 -96 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !70
  %i.p = fadd double %1, %i.o
  store double %i.p, ptr %i.n, align 8, !tbaa !70
  %i.q = getelementptr inbounds i8, ptr %.lcssa, i64 -88 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !73
  %i.s = tail call double @llvm.fmuladd.f64(double %1, double %1, double %i.r)
  store double %i.s, ptr %i.q, align 8, !tbaa !73
  %i.t = getelementptr inbounds i8, ptr %.lcssa, i64 -48
  %i.u = getelementptr inbounds i8, ptr %.lcssa, i64 -40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !45   ; 14 uses
  %.not.i = icmp eq ptr %i.v, %i.w
  br i1 %.not.i, label %_ZN3gmx20CorrelationBlockData7addDataEdNS_8ArrayRefIKdEE.exit, label %iter.check108

iter.check108:                                    ; preds = %._crit_edge
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 3 uses
  %i.aa = ashr exact i64 %i.z, 4                  ; 9 uses
  %min.iters.check75 = icmp ult i64 %i.aa, 5
  br i1 %min.iters.check75, label %.lr.ph.i.preheader, label %vector.memcheck69

vector.memcheck69:                                ; preds = %iter.check108
  %i.ab = getelementptr i8, ptr %i.w, i64 %i.z
  %scevgep70 = getelementptr i8, ptr %i.ab, i64 -8
  %i.ac = ashr exact i64 %i.z, 1
  %scevgep71 = getelementptr i8, ptr %2, i64 %i.ac
  %bound072 = icmp ult ptr %i.w, %scevgep71
  %bound173 = icmp ult ptr %2, %scevgep70
  %found.conflict74 = and i1 %bound072, %bound173
  br i1 %found.conflict74, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check76

vector.main.loop.iter.check76:                    ; preds = %vector.memcheck69
  %min.iters.check77 = icmp ult i64 %i.aa, 17
  br i1 %min.iters.check77, label %vec.epilog.ph112, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check76
  %i.ad = and i64 %i.aa, 15                       ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = select i1 %i.ae, i64 16, i64 %i.ad      ; 2 uses
  %n.vec79 = sub nsw i64 %i.aa, %i.af             ; 3 uses
  %broadcast.splatinsert80 = insertelement <4 x double> poison, double %1, i64 0
  %broadcast.splat81 = shufflevector <4 x double> %broadcast.splatinsert80, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph78
  %index83 = phi i64 [ 0, %vector.ph78 ], [ %index.next104, %vector.body82 ] ; 2 uses
  %vec.ind84 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph78 ], [ %vec.ind.next105, %vector.body82 ] ; 5 uses
  %step.add85 = add nuw <4 x i64> %vec.ind84, splat (i64 4)
  %step.add.286 = add nuw <4 x i64> %vec.ind84, splat (i64 8)
  %step.add.387 = add nuw <4 x i64> %vec.ind84, splat (i64 12)
  %i.ag = getelementptr inbounds [8 x i8], ptr %2, i64 %index83 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %wide.load88 = load <4 x double>, ptr %i.ag, align 8, !tbaa !9, !alias.scope !76
  %wide.load89 = load <4 x double>, ptr %i.ah, align 8, !tbaa !9, !alias.scope !76
  %wide.load90 = load <4 x double>, ptr %i.ai, align 8, !tbaa !9, !alias.scope !76
  %wide.load91 = load <4 x double>, ptr %i.aj, align 8, !tbaa !9, !alias.scope !76
  %wide.gep92 = getelementptr inbounds nuw [16 x i8], ptr %i.w, <4 x i64> %vec.ind84 ; 2 uses
  %i.ak = extractelement <4 x ptr> %wide.gep92, i64 0
  %wide.gep93 = getelementptr inbounds nuw [16 x i8], ptr %i.w, <4 x i64> %step.add85 ; 2 uses
  %i.al = extractelement <4 x ptr> %wide.gep93, i64 0
  %wide.gep94 = getelementptr inbounds nuw [16 x i8], ptr %i.w, <4 x i64> %step.add.286 ; 2 uses
  %i.am = extractelement <4 x ptr> %wide.gep94, i64 0
  %wide.gep95 = getelementptr inbounds nuw [16 x i8], ptr %i.w, <4 x i64> %step.add.387 ; 2 uses
  %i.an = extractelement <4 x ptr> %wide.gep95, i64 0
  %wide.vec96 = load <8 x double>, ptr %i.ak, align 8, !tbaa !62, !alias.scope !79, !noalias !76
  %strided.vec97 = shufflevector <8 x double> %wide.vec96, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec98 = load <8 x double>, ptr %i.al, align 8, !tbaa !62, !alias.scope !79, !noalias !76
  %strided.vec99 = shufflevector <8 x double> %wide.vec98, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
end_hunk_0
