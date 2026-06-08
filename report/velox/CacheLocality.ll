inline.NumInlined: 1643
inline.NumDeleted: 798
begin_hunk_0_@_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE17_M_realloc_insertIJRmS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %found.conflict47 = and i1 %bound045, %bound146
  br i1 %found.conflict47, label %.lr.ph.i.i.i19.preheader68, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck42
  %n.vec52 = and i64 %i.av, 2305843009213693948   ; 3 uses
  %i.bc = mul i64 %n.vec52, 24                    ; 2 uses
  %i.bd = getelementptr i8, ptr %i.ar, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %1, i64 %i.bc
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph50
  %index54 = phi i64 [ 0, %vector.ph50 ], [ %index.next62, %vector.body53 ] ; 2 uses
  %i.bf = mul i64 %index54, 24                    ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ar, i64 %i.bf
  %next.gep56 = getelementptr i8, ptr %1, i64 %i.bf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %wide.vec57 = load <12 x i64>, ptr %next.gep56, align 8, !tbaa !59, !alias.scope !200, !noalias !197
  store <12 x i64> %wide.vec57, ptr %next.gep55, align 8, !tbaa !59, !alias.scope !197, !noalias !200
  %index.next62 = add nuw i64 %index54, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next62, %n.vec52
  br i1 %i.bg, label %middle.block63, label %vector.body53, !llvm.loop !202

middle.block63:                                   ; preds = %vector.body53
  %cmp.n64 = icmp eq i64 %i.av, %n.vec52
  br i1 %cmp.n64, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, label %.lr.ph.i.i.i19.preheader68

.lr.ph.i.i.i19.preheader68:                       ; preds = %vector.memcheck42, %.lr.ph.i.i.i19.preheader, %middle.block63
  %.012.i.i.i20.ph = phi ptr [ %i.ar, %vector.memcheck42 ], [ %i.ar, %.lr.ph.i.i.i19.preheader ], [ %i.bd, %middle.block63 ]
  %.0911.i.i.i21.ph = phi ptr [ %1, %vector.memcheck42 ], [ %1, %.lr.ph.i.i.i19.preheader ], [ %i.be, %middle.block63 ]
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19.preheader68, %.lr.ph.i.i.i19
  %.012.i.i.i20 = phi ptr [ %i.bm, %.lr.ph.i.i.i19 ], [ %.012.i.i.i20.ph, %.lr.ph.i.i.i19.preheader68 ] ; 3 uses
  %.0911.i.i.i21 = phi ptr [ %i.bl, %.lr.ph.i.i.i19 ], [ %.0911.i.i.i21.ph, %.lr.ph.i.i.i19.preheader68 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.bh = load <2 x i64>, ptr %.0911.i.i.i21, align 8, !tbaa !59, !alias.scope !200, !noalias !197
  store <2 x i64> %i.bh, ptr %.012.i.i.i20, align 8, !tbaa !59, !alias.scope !197, !noalias !200
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59, !alias.scope !200, !noalias !197
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !59, !alias.scope !197, !noalias !200
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.bl, %i.c
  br i1 %.not.i.i.i22, label %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, label %.lr.ph.i.i.i19, !llvm.loop !203

_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24: ; preds = %.lr.ph.i.i.i19, %middle.block63, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i23 = phi ptr [ %i.ar, %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bd, %middle.block63 ], [ %i.bm, %.lr.ph.i.i.i19 ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.d, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !177
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = sub i64 %i.bp, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bq) #38
  br label %_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseISt5tupleIJmmmEESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorISt5tupleIJmmmEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit24, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !185
  store ptr %.0.lcssa.i.i.i23, ptr %i.b, align 8, !tbaa !175
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.m
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !177
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true)
  %i.g = shl nuw nsw i64 %i.f, 1
  %i.h = xor i64 %i.g, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %i.h)
  %i.i = icmp sgt i64 %i.d, 384
  br i1 %i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.c ] ; 3 uses
  %.sroa.07.018.i.idx = phi i64 [ %.sroa.07.018.i.add, %bb.k ], [ 24, %bb.c ] ; 3 uses
  %.pn17.i = phi ptr [ %.sroa.07.018.i.ptr, %bb.k ], [ %0, %bb.c ] ; 7 uses
  %.sroa.07.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.07.018.i.idx ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 6 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge

._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge: ; preds = %bb.d
  %i.p = icmp ult i64 %i.m, %i.n
  %.phi.trans.insert22.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %.pre.i.pre = load i64, ptr %.phi.trans.insert22.i.phi.trans.insert, align 8, !tbaa !59 ; 2 uses
  %.pre20.i18 = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !59 ; 2 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59   ; 6 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !59   ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = load i64, ptr %.sroa.07.018.i.ptr, align 8, !tbaa !59 ; 5 uses
  br i1 %i.t, label %bb.f, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %0, align 8, !tbaa !59
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i: ; preds = %bb.e
  %i.x = icmp ult i64 %i.r, %i.s
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge
  %i.y = phi i64 [ %i.r, %bb.f ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre.i.pre, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.z = phi i64 [ %i.u, %bb.f ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre20.i18, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 48
  %i.ab = udiv exact i64 %.sroa.07.018.i.idx, 24  ; 2 uses
  %i.ac = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ac, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 40
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !59
  %i.ai = getelementptr inbounds i8, ptr %.sroa.07.018.i.ptr, i64 -16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !59
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 32
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !59
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !59
  store i64 %i.al, ptr %i.ae, align 8, !tbaa !59
  %i.am = add nsw i64 %i.ab, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.am, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.07.018.i.ptr, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.an = icmp eq i64 %indvar, 0
  br i1 %i.an, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !59
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !59
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !59
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !59
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !59
  store i64 %i.aw, ptr %i.ap, align 8, !tbaa !59
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !59
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.be = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !59
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !59
  store i64 %i.bf, ptr %i.ay, align 8, !tbaa !59
  %i.bg = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !204

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %i.m, ptr %i.j, align 8, !tbaa !59
  store i64 %i.y, ptr %i.k, align 8, !tbaa !59
  store i64 %i.z, ptr %0, align 8, !tbaa !59
  br label %bb.k

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i: ; preds = %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i, %bb.f
  %i.bi = phi i64 [ %i.r, %bb.f ], [ %i.r, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre.i.pre, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ] ; 4 uses
  %i.bj = phi i64 [ %i.u, %bb.f ], [ %i.u, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i ], [ %.pre20.i18, %._ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i_crit_edge ] ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i
  %.sroa.07.0.i.i = phi ptr [ %.sroa.07.018.i.ptr, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge.i ], [ %.sroa.0.0.i.i, %bb.j ] ; 8 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i, i64 -24 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.07.0.i.i, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !59 ; 3 uses
  %i.bm = icmp eq i64 %i.m, %i.bl
  %i.bn = icmp ult i64 %i.m, %i.bl
  br i1 %i.bm, label %bb.h, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds i8, ptr %.sroa.07.0.i.i, i64 -16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !59 ; 2 uses
  %i.bq = icmp eq i64 %i.bi, %i.bp
  %i.br = icmp ult i64 %i.bi, %i.bp
  br i1 %i.bq, label %bb.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !59 ; 2 uses
  %i.bt = icmp ult i64 %i.bj, %i.bs
  %2 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = insertelement <2 x i64> %2, i64 %i.bi, i64 1
  br i1 %i.bt, label %bb.j, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.06.0.i.i.i.i.i = phi i1 [ %i.bn, %bb.g ], [ %i.br, %bb.h ]
  br i1 %.sroa.06.0.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i
  %i.bv = load <2 x i64>, ptr %.sroa.0.0.i.i, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i, %bb.i
  %i.bw = phi <2 x i64> [ %i.bv, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i ], [ %i.bu, %bb.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  store i64 %i.bl, ptr %i.bx, align 8, !tbaa !59
  store <2 x i64> %i.bw, ptr %.sroa.07.0.i.i, align 8, !tbaa !59
  br label %bb.g, !llvm.loop !205

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i, %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 16
  store i64 %i.m, ptr %i.by, align 8, !tbaa !59
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i, i64 8
  store i64 %i.bi, ptr %i.bz, align 8, !tbaa !59
  store i64 %i.bj, ptr %.sroa.07.0.i.i, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.07.018.i.add = add nuw nsw i64 %.sroa.07.018.i.idx, 24 ; 2 uses
  %i.ca = icmp eq i64 %.sroa.07.018.i.add, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ca, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %bb.d, !llvm.loop !206

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %1
  br i1 %i.cc, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i
  %.sroa.0.04.i.i = phi ptr [ %i.cx, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i ], [ %i.cb, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit ] ; 4 uses
  %i.cd = load <2 x i64>, ptr %.sroa.0.04.i.i, align 8, !tbaa !59 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !59 ; 3 uses
  %i.cg = extractelement <2 x i64> %i.cd, i64 0
  %i.ch = extractelement <2 x i64> %i.cd, i64 1   ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.04.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.i.i.i, %bb.o ] ; 7 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i, i64 -24 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i, i64 -8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !59 ; 3 uses
  %i.ck = icmp eq i64 %i.cf, %i.cj
  %i.cl = icmp ult i64 %i.cf, %i.cj
  br i1 %i.ck, label %bb.m, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i, i64 -16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %i.co = icmp eq i64 %i.ch, %i.cn
  %i.cp = icmp ult i64 %i.ch, %i.cn
  br i1 %i.co, label %bb.n, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.cq = load i64, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !59 ; 2 uses
  %i.cr = icmp ult i64 %i.cg, %i.cq
  %i.cs = insertelement <2 x i64> %i.cd, i64 %i.cq, i64 0
  br i1 %i.cr, label %bb.o, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.sroa.06.0.i.i.i.i.i.i = phi i1 [ %i.cl, %bb.l ], [ %i.cp, %bb.m ]
  br i1 %.sroa.06.0.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i
  %i.ct = load <2 x i64>, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !59
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i.i, %bb.n
  %i.cu = phi <2 x i64> [ %i.ct, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i.i.i ], [ %i.cs, %bb.n ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 16
  store i64 %i.cj, ptr %i.cv, align 8, !tbaa !59
  store <2 x i64> %i.cu, ptr %.sroa.07.0.i.i.i, align 8, !tbaa !59
  br label %bb.l, !llvm.loop !205

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i.i.i, %bb.n
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i.i, i64 16
  store i64 %i.cf, ptr %i.cw, align 8, !tbaa !59
  store <2 x i64> %i.cd, ptr %.sroa.07.0.i.i.i, align 8, !tbaa !59
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i, i64 24 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %1
  br i1 %i.cy, label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i.i, !llvm.loop !207

bb.p:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1)
  br label %_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit

_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i, %bb.p, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.51", align 16    ; 5 uses
  %4 = alloca %"class.std::tuple.51", align 16    ; 5 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.i = icmp eq i64 %i.bs, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !208

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.bu, %bb.b ]
  %storemerge21.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa, 24               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.k = add nsw i64 %i.j, -2
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.07.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.r, %bb.c ] ; 4 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %0, i64 %.07.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = load <2 x i64>, ptr %i.n, align 8, !tbaa !59
  store <2 x i64> %i.q, ptr %3, align 16, !tbaa !59
  store i64 %i.p, ptr %i.m, align 16, !tbaa !59
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr %0, i64 noundef %.07.i.i, i64 noundef %i.j, ptr noundef nonnull dead_on_return %3)
  %.not.i.i10 = icmp eq i64 %.07.i.i, 0
  %i.r = add nsw i64 %.07.i.i, -1
  br i1 %.not.i.i10, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit.thread, label %bb.c, !llvm.loop !209

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit.thread
  %.sroa.0.05.i.i = phi ptr [ %storemerge21.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit.thread ], [ %i.t, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  %i.v = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !59
  %i.x = load i64, ptr %i.f, align 8, !tbaa !59
  store i64 %i.x, ptr %i.v, align 8, !tbaa !59
  %i.y = load i64, ptr %i.g, align 8, !tbaa !59
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = sub i64 %i.z, %i.a                      ; 2 uses
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = load <2 x i64>, ptr %i.t, align 8, !tbaa !59
  store i64 %i.y, ptr %i.u, align 8, !tbaa !59
  %i.ad = load i64, ptr %0, align 8, !tbaa !59
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !59
  store <2 x i64> %i.ac, ptr %4, align 16, !tbaa !59
  store i64 %i.w, ptr %i.s, align 16, !tbaa !59
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.ab, ptr noundef nonnull dead_on_return %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ae = icmp sgt i64 %i.aa, 24
  br i1 %i.ae, label %bb.d, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !210

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2139 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02238 = phi i64 [ %i.bs, %bb.b ], [ %2, %.lr.ph ]
  %i.af = phi i64 [ %i.bu, %bb.b ], [ %i.c, %.lr.ph ]
  %i.ag = udiv i64 %i.af, 48
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %storemerge2139, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr nonnull %i.e, ptr %i.ah, ptr nonnull %i.ai)
  br label %bb.e

bb.e:                                             ; preds = %bb.o, %.lr.ph40
  %.sroa.014.0.i.i = phi ptr [ %i.e, %.lr.ph40 ], [ %i.br, %bb.o ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2139, %.lr.ph40 ], [ %.sroa.0.1.i.i, %bb.o ]
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !59  ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %bb.e ], [ %i.aw, %bb.i ] ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59 ; 3 uses
  %i.am = icmp eq i64 %i.al, %i.aj
  %i.an = icmp ult i64 %i.al, %i.aj
  br i1 %i.am, label %bb.g, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %i.aq = load i64, ptr %i.g, align 8, !tbaa !59  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
bb.o:                                             ; preds = %bb.n
  %i.bd = load i64, ptr %1, align 8, !tbaa !59
  %i.be = load i64, ptr %3, align 8, !tbaa !59
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.p, label %bb.q

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31: ; preds = %bb.m, %bb.n
  %.sroa.06.0.i.i.i30 = phi i1 [ %i.aw, %bb.m ], [ %i.bc, %bb.n ]
  br i1 %.sroa.06.0.i.i.i30, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.c, ptr %i.bg, align 8, !tbaa !59
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !59
  br label %bb.v

bb.q:                                             ; preds = %bb.o, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit31
  %i.bi = icmp eq i64 %i.d, %i.au
  %i.bj = icmp ult i64 %i.d, %i.au
  br i1 %i.bi, label %bb.r, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !59 ; 2 uses
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !59 ; 2 uses
  %i.bo = icmp eq i64 %i.bm, %i.bn
  %i.bp = icmp ult i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.s, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33

bb.s:                                             ; preds = %bb.r
  %i.bq = load i64, ptr %2, align 8, !tbaa !59
  %i.br = load i64, ptr %3, align 8, !tbaa !59
  %i.bs = icmp ult i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.t, label %bb.u

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33: ; preds = %bb.q, %bb.r
  %.sroa.06.0.i.i.i32 = phi i1 [ %i.bj, %bb.q ], [ %i.bp, %bb.r ]
  br i1 %.sroa.06.0.i.i.i32, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !59
  store i64 %i.au, ptr %i.bt, align 8, !tbaa !59
  store i64 %i.bu, ptr %i.at, align 8, !tbaa !59
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit33
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.d, ptr %i.bv, align 8, !tbaa !59
  store i64 %i.bw, ptr %i.b, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.u, %bb.t, %bb.g, %bb.l, %bb.k
  %.sink = phi ptr [ %1, %bb.p ], [ %2, %bb.u ], [ %3, %bb.t ], [ %2, %bb.g ], [ %1, %bb.l ], [ %3, %bb.k ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sink, i64 8 ; 2 uses
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !59
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !59
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !59
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !59
  %i.cb = load i64, ptr %0, align 8, !tbaa !59
  %i.cc = load i64, ptr %.sink, align 8, !tbaa !59
  store i64 %i.cc, ptr %0, align 8, !tbaa !59
  store i64 %i.cb, ptr %.sink, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.07.016 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = icmp eq ptr %.sroa.07.016, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.i ] ; 3 uses
  %.sroa.07.018 = phi ptr [ %.sroa.07.016, %.lr.ph ], [ %.sroa.07.0, %bb.i ] ; 9 uses
  %.pn17 = phi ptr [ %0, %.lr.ph ], [ %.sroa.07.018, %bb.i ] ; 4 uses
  %i.f = mul nuw i64 %indvar, 24
  %i.g = add i64 %i.f, 24
  %i.h = udiv i64 %i.g, 24
  %i.i = add nuw nsw i64 %i.h, 1
  %i.j = icmp ult i64 %indvar, 768614336404564650
  %umin.neg = sext i1 %i.j to i64
  %i.k = add nsw i64 %i.i, %umin.neg              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.pn17, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !59   ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !59   ; 2 uses
  %i.o = icmp eq i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !59   ; 4 uses
  %i.s = load i64, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %bb.d, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %.sroa.07.018, align 8, !tbaa !59 ; 3 uses
  %i.w = load i64, ptr %0, align 8, !tbaa !59
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %bb.b, %bb.c
  %.sroa.06.0.i.i.i = phi i1 [ %i.p, %bb.b ], [ %i.u, %bb.c ]
  %.pre20 = load i64, ptr %.sroa.07.018, align 8, !tbaa !59 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %.pn17, i64 32
  %.pre = load i64, ptr %.phi.trans.insert22, align 8, !tbaa !59 ; 2 uses
  br i1 %.sroa.06.0.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.d
  %i.y = phi i64 [ %i.r, %bb.d ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.z = phi i64 [ %i.v, %bb.d ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ]
  %i.aa = ptrtoint ptr %.sroa.07.018 to i64
  %i.ab = sub i64 %i.aa, %i.e                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn17, i64 48 ; 3 uses
  %i.ae = udiv exact i64 %i.ab, 24                ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  %n.vec = and i64 %i.k, -4                       ; 4 uses
  %i.af = sub nsw i64 %i.ae, %n.vec
  %i.ag = mul i64 %n.vec, -24                     ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ad, i64 %i.ag
  %i.ai = getelementptr i8, ptr %.sroa.07.018, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = mul i64 %index, -24                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.aj
  %next.gep29 = getelementptr i8, ptr %.sroa.07.018, i64 %i.aj
  %i.ak = getelementptr inbounds i8, ptr %next.gep29, i64 -96
  %interleaved.vec = load <12 x i64>, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds i8, ptr %next.gep, i64 -96
  store <12 x i64> %interleaved.vec, ptr %i.al, align 8, !tbaa !59
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.010.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ], [ %i.af, %middle.block ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ah, %middle.block ]
  %.078.i.i.i.i.i.ph = phi ptr [ %.sroa.07.018, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.i ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !59
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !59
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !59
  %i.av = load i64, ptr %i.an, align 8, !tbaa !59
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !59
  %i.aw = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ax = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !217

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge21
  store i64 %i.m, ptr %i.c, align 8, !tbaa !59
  store i64 %i.y, ptr %i.d, align 8, !tbaa !59
  store i64 %i.z, ptr %0, align 8, !tbaa !59
  br label %bb.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %bb.d
  %i.ay = phi i64 [ %i.r, %bb.d ], [ %.pre, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 4 uses
  %i.az = phi i64 [ %i.v, %bb.d ], [ %.pre20, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge
  %.sroa.07.0.i = phi ptr [ %.sroa.07.018, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit._crit_edge ], [ %.sroa.0.0.i, %bb.h ] ; 8 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -24 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !59 ; 3 uses
  %i.bc = icmp eq i64 %i.m, %i.bb
  %i.bd = icmp ult i64 %i.m, %i.bb
  br i1 %i.bc, label %bb.f, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds i8, ptr %.sroa.07.0.i, i64 -16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !59 ; 2 uses
  %i.bg = icmp eq i64 %i.ay, %i.bf
  %i.bh = icmp ult i64 %i.ay, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !59 ; 2 uses
  %i.bj = icmp ult i64 %i.az, %i.bi
  %2 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %i.bk = insertelement <2 x i64> %2, i64 %i.ay, i64 1
  br i1 %i.bj, label %bb.h, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.06.0.i.i.i.i = phi i1 [ %i.bd, %bb.e ], [ %i.bh, %bb.f ]
  br i1 %.sroa.06.0.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit

_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.bl = load <2 x i64>, ptr %.sroa.0.0.i, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i, %bb.g
  %i.bm = phi <2 x i64> [ %i.bl, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit._crit_edge.i ], [ %i.bk, %bb.g ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.bb, ptr %i.bn, align 8, !tbaa !59
  store <2 x i64> %i.bm, ptr %.sroa.07.0.i, align 8, !tbaa !59
  br label %bb.e, !llvm.loop !205

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit: ; preds = %bb.g, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt5tupleIJmmmEENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 16
  store i64 %i.m, ptr %i.bo, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 8
  store i64 %i.ay, ptr %i.bp, align 8, !tbaa !59
  store i64 %i.az, ptr %.sroa.07.0.i, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt5tupleIJmmmEESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit
  %.sroa.07.0 = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.07.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bq, label %.loopexit, label %bb.b, !llvm.loop !206

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !42
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !54

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #38
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #36
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #37 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !44
  %i.s = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !50   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !48
  %i.z = load i64, ptr %i.t, align 8, !tbaa !42
  store i64 %i.z, ptr %i.r, align 8, !tbaa !42
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !50
  store ptr %i.t, ptr %2, align 8, !tbaa !48
  store i64 0, ptr %i.ab, align 8, !tbaa !50
  store i8 0, ptr %i.t, align 8, !tbaa !42
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !44, !alias.scope !218, !noalias !221
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !221, !noalias !218 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !50, !alias.scope !221, !noalias !218 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !223
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !48, !alias.scope !218, !noalias !221
  %i.al = load i64, ptr %i.af, align 8, !tbaa !42, !alias.scope !221, !noalias !218
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !42, !alias.scope !218, !noalias !221
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !50, !alias.scope !221, !noalias !218
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !50, !alias.scope !218, !noalias !221
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !48, !alias.scope !221, !noalias !218
end_hunk_1
