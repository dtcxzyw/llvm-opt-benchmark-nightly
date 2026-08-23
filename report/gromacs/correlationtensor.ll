Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/correlationtensor?download=true
inline.NumInlined: 368
inline.NumDeleted: 229
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17CorrelationTensor18updateBlockLengthsEd:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 56
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
  %scevgep64 = getelementptr i8, ptr %i.f, i64 %i.o
  %scevgep66 = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit102
  %indvars.iv49 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next50, %.loopexit102 ] ; 5 uses
  %indvars.iv47 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next48, %.loopexit102 ] ; 6 uses
  %.036 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.lcssa, %.loopexit102 ] ; 5 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv49 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %min.iters.check = icmp ult i64 %indvars.iv47, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = shl i64 %indvars.iv49, 4
  %1 = getelementptr i8, ptr %i.f, i64 %i.r
  %scevgep65 = getelementptr i8, ptr %1, i64 16
  %i.s = shl i64 %indvars.iv49, 3
  %2 = getelementptr i8, ptr %i.n, i64 %i.s
  %scevgep62 = getelementptr i8, ptr %2, i64 8
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
  %i.v = load double, ptr %i.q, align 8, !tbaa !57, !alias.scope !59
  %i.w = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %broadcast.splatinsert74 = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.x = load <2 x double>, ptr %0, align 8       ; 3 uses
  %broadcast.splatinsert = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %broadcast.splat = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.y = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> zeroinitializer
  %i.z = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aa = fmul <4 x double> %i.z, %i.z
  %i.ab = fadd <4 x double> %i.y, %i.aa
  %i.ac = load double, ptr %i.p, align 8, !tbaa !62, !alias.scope !59
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
  %wide.vec = load <8 x double>, ptr %i.ai, align 8, !tbaa !9, !alias.scope !63 ; 2 uses
  %strided.vec = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec80 = shufflevector <8 x double> %wide.vec, <8 x double> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aj = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %strided.vec, <4 x double> %strided.vec80)
  %i.ak = fneg <4 x double> %i.aj
  %i.al = fdiv <4 x double> %i.ak, %i.ab
  %i.am = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.al, <4 x double> %broadcast.splat, <4 x double> %strided.vec)
  %i.an = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %wide.load = load <4 x double>, ptr %i.an, align 8, !tbaa !9, !alias.scope !65, !noalias !67
  %i.ao = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ag, <4 x double> %i.am, <4 x double> %wide.load)
  store <4 x double> %i.ao, ptr %i.an, align 8, !tbaa !9, !alias.scope !65, !noalias !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !69

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
  %i.ar = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %i.ar, %i.au
  %i.aw = load double, ptr %i.p, align 8, !tbaa !62
  %i.ax = load double, ptr %i.q, align 8, !tbaa !57
  %i.ay = load double, ptr %i.as, align 8, !tbaa !57
  %i.az = load double, ptr %i.aq, align 8, !tbaa !62 ; 2 uses
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
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !9
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %i.bm)
  store double %i.bn, ptr %i.bl, align 8, !tbaa !9
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
  br i1 %exitcond55.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !71

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41.1, %scalar.ph ], [ %indvars.iv40.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40 ; 2 uses
  %i.bq = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fadd double %i.bq, %i.bt
  %i.bv = load double, ptr %i.p, align 8, !tbaa !62
  %i.bw = load double, ptr %i.q, align 8, !tbaa !57
  %i.bx = load double, ptr %i.br, align 8, !tbaa !57
  %i.by = load double, ptr %i.bp, align 8, !tbaa !62 ; 2 uses
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
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !9
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ch, double %i.cj, double %i.cl)
  store double %i.cm, ptr %i.ck, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv40 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load double, ptr %i.a, align 8, !tbaa !55 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cr = load double, ptr %0, align 8, !tbaa !70 ; 5 uses
  %i.cs = fmul double %i.cr, %i.cr
  %i.ct = fadd double %i.cp, %i.cs
  %i.cu = load double, ptr %i.p, align 8, !tbaa !62
  %i.cv = load double, ptr %i.q, align 8, !tbaa !57
  %i.cw = load double, ptr %i.cq, align 8, !tbaa !57
  %i.cx = load double, ptr %i.co, align 8, !tbaa !62 ; 2 uses
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
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !9
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.di, double %i.dl)
  store double %i.dm, ptr %i.dk, align 8, !tbaa !9
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next41.1 = add nuw nsw i64 %indvars.iv40, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next41.1, %indvars.iv47
  br i1 %exitcond.not.1, label %.loopexit102, label %scalar.ph, !llvm.loop !72

.loopexit.loopexit:                               ; preds = %.loopexit102
  %.pre = load double, ptr %i.a, align 8, !tbaa !55
  br label %.loopexit

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.loopexit.loopexit, %bb.b
  %i.dn = phi ptr [ %i.e, %.loopexit.loopexit ], [ %i.e, %bb.b ], [ %.pre58, %..loopexit_crit_edge ] ; 3 uses
  %i.do = phi ptr [ %i.f, %.loopexit.loopexit ], [ %i.f, %bb.b ], [ %.pre56, %..loopexit_crit_edge ] ; 6 uses
  %i.dp = phi double [ %.pre, %.loopexit.loopexit ], [ %i.b, %bb.b ], [ %i.b, %..loopexit_crit_edge ]
  %i.dq = load double, ptr %0, align 8, !tbaa !70 ; 4 uses
  %i.dr = fmul double %i.dq, %i.dq
  %i.ds = fadd double %i.dp, %i.dr
  store double %i.ds, ptr %i.a, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load double, ptr %i.dt, align 8, !tbaa !73
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !15
  %i.dx = fadd double %i.du, %i.dw
  store double %i.dx, ptr %i.dv, align 8, !tbaa !15
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
