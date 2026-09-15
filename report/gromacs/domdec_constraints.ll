Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_constraints?download=true
inline.NumInlined: 1057
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL20atoms_to_constraintsP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKNS4_11ListOfListsIiEEEEiP15InteractionListPSt6vectorIiSaIiEE:bb.a
bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.gi, align 4, !tbaa !44
  %i.gw = getelementptr i8, ptr %i.gi, i64 4
  store i64 0, ptr %i.gw, align 4
  %i.gx = getelementptr i8, ptr %i.gi, i64 12
  store ptr %i.gx, ptr %i.aa, align 8, !tbaa !21
  %.pre.i92.pre = load ptr, ptr %5, align 8, !tbaa !20
  br label %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit

bb.ab:                                            ; preds = %bb.z
  %i.gy = icmp samesign ult i64 %i.gu, 3
  br i1 %i.gy, label %bb.ac, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.ac:                                            ; preds = %bb.ab
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ab
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.go, i64 3)
  %i.gz = add nuw nsw i64 %.sroa.speculated.i.i, %i.go
  %i.ha = tail call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951) ; 2 uses
  %i.hb = shl nuw nsw i64 %i.ha, 2
  %i.hc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #22 ; 5 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.gm ; 3 uses
  store i32 0, ptr %i.hd, align 4, !tbaa !44
  %i.he = getelementptr i8, ptr %i.hd, i64 4
  store i64 0, ptr %i.he, align 4
  %i.hf = icmp sgt i64 %i.gm, 0
  br i1 %i.hf, label %bb.ad, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.ad:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hc, ptr align 4 %i.gj, i64 %i.gm, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.ad, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.gj, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.hg = load ptr, ptr %i.ab, align 8, !tbaa !228
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gj, i64 noundef %i.hi) #23
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.ae, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  store ptr %i.hc, ptr %5, align 8, !tbaa !20
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 12
  store ptr %i.hj, ptr %i.aa, align 8, !tbaa !21
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hk, ptr %i.ab, align 8, !tbaa !228
  br label %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit91
  %i.hl = getelementptr i8, ptr %i.gj, i64 %i.gm
  %i.hm = getelementptr i8, ptr %i.hl, i64 12     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gi, %i.hm
  br i1 %.not.i.i.i, label %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.af
  store ptr %i.hm, ptr %i.aa, align 8, !tbaa !21
  br label %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit

_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit: ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.aa, %bb.af, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.hn = phi ptr [ %i.gj, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.gj, %bb.af ], [ %.pre.i92.pre, %bb.aa ], [ %i.hc, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.gm  ; 3 uses
  store i32 %i.gd, ptr %i.ho, align 4, !tbaa !44
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  store i32 %i.gg, ptr %i.hp, align 4, !tbaa !44
  %i.hq = getelementptr i8, ptr %i.ho, i64 8
  store i32 %i.gh, ptr %i.hq, align 4, !tbaa !44
  %i.hr = load i32, ptr %i.ac, align 8, !tbaa !99
  %i.hs = add nsw i32 %i.hr, 1
  store i32 %i.hs, ptr %i.ac, align 8, !tbaa !99
  %i.ht = add nsw i32 %.1142, 1
  br label %bb.ag

.loopexit:                                        ; preds = %bb.n, %_ZNK11gmx_ga2la_t4findEi.exit.i, %bb.j
  store ptr %i.bp, ptr %7, align 8, !tbaa !230
  store ptr %i.bv, ptr %i.ad, align 8, !tbaa !230
  store ptr %i.bx, ptr %8, align 8, !tbaa !230
  store ptr %i.cd, ptr %i.ae, align 8, !tbaa !230
  tail call fastcc void @_ZL8walk_outiiiiiN3gmx8ArrayRefIKiEES2_RKNS_11ListOfListsIiEERK11gmx_ga2la_tbP24gmx_domdec_constraints_tP24gmx_domdec_specat_comm_tP15InteractionListPSt6vectorIiSaIiEE(i32 noundef %i.dd, i32 noundef %i.cl, i32 noundef %.0, i32 noundef %i.cm, i32 noundef %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef.96") align 8 %7, ptr noundef nonnull byval(%"class.gmx::ArrayRef.96") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noundef %5, ptr noundef %6)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK11gmx_ga2la_t8findHomeEi.exit, %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit, %.loopexit
  %.2 = phi i32 [ %i.ht, %_ZN15InteractionList9push_backILm2EEEviRKSt5arrayIiXT_EE.exit ], [ %.1142, %_ZNK11gmx_ga2la_t8findHomeEi.exit ], [ %.1142, %.loopexit ] ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.099.0141, i64 4 ; 2 uses
  %.not129 = icmp eq ptr %i.hu, %i.cx
  br i1 %.not129, label %.loopexit130.loopexit, label %bb.g

.loopexit130.loopexit:                            ; preds = %bb.ag
  %.pre = load i32, ptr %i.n, align 8, !tbaa !188
  br label %.loopexit130

.loopexit130:                                     ; preds = %.loopexit130.loopexit, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit, %bb.b
  %i.hv = phi i32 [ %i.ag, %bb.b ], [ %i.ag, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit ], [ %.pre, %.loopexit130.loopexit ] ; 2 uses
  %.1125 = phi i32 [ %.0124143, %bb.b ], [ %.2126, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit ], [ %.2126, %.loopexit130.loopexit ]
  %.3 = phi i32 [ %.069146, %bb.b ], [ %.069146, %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit ], [ %.2, %.loopexit130.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = icmp slt i64 %indvars.iv.next, %i.hw
  br i1 %i.hx, label %bb.b, label %._crit_edge, !llvm.loop !340

bb.ah:                                            ; preds = %._crit_edge
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !99
  %i.ia = sub nsw i32 %i.hz, %.069.lcssa
  %i.ib = load ptr, ptr %i.c, align 8, !tbaa !15
  %.not128 = icmp eq ptr %i.ib, null
  br i1 %.not128, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !21
  %i.ie = load ptr, ptr %6, align 8, !tbaa !20
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = ashr exact i64 %i.ih, 2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.ij = phi i64 [ %i.ii, %bb.ai ], [ 0, %bb.ah ]
  %i.ik = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.14, i32 noundef %.069.lcssa, i32 noundef %i.ia, i64 noundef %i.ij) #8 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_Z25dd_make_local_constraintsP12gmx_domdec_tiRK10gmx_mtop_tN3gmx8ArrayRefIKiEEPNS4_11ConstraintsEiRNS4_16EnumerationArrayI19InteractionFunction15InteractionListLSB_95EEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %12) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 7 uses
  %13 = alloca %"struct.std::array.147", align 8  ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 %i.j, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 1, ptr %i.d, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i32 0, ptr %i.e, align 4, !tbaa !44
  %i.k = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.l = load i32, ptr %i.c, align 4, !tbaa !44
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !44
  %i.n = load i32, ptr %i.b, align 4, !tbaa !44   ; 2 uses
  %.not4466 = icmp sgt i32 %i.n, %i.m
  br i1 %.not4466, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 736
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = sext i32 %i.n to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZL16atoms_to_settlesP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKSt6vectorIiSaIiEEEEiiP15InteractionListPSA_.exit
  %indvars.iv = phi i64 [ %i.u, %.lr.ph ], [ %indvars.iv.next, %_ZL16atoms_to_settlesP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKSt6vectorIiSaIiEEEEiiP15InteractionListPSA_.exit ] ; 8 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8
  %i.v = icmp eq ptr %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %i.w = icmp ne i64 %indvars.iv, 0
  %or.cond.not = or i1 %i.w, %i.v
  br i1 %or.cond.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %4, align 8, !tbaa !52
  %i.y = load ptr, ptr %6, align 8, !tbaa !230
  %i.z = load i32, ptr %7, align 4, !tbaa !44
  %i.aa = load ptr, ptr %8, align 8, !tbaa !77
  %i.ab = load ptr, ptr %9, align 8, !tbaa !101
  invoke fastcc void @_ZL20atoms_to_constraintsP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKNS4_11ListOfListsIiEEEEiP15InteractionListPSt6vectorIiSaIiEE(ptr noundef %i.x, ptr noundef nonnull align 8 dereferenceable(768) %5, ptr %i.y, ptr %.sroa.01.0.copyload.i, i32 noundef %i.z, ptr noundef %i.aa, ptr noundef %i.ab)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.ad = load i32, ptr %10, align 4, !tbaa !44   ; 4 uses
  %i.ae = sext i32 %i.ad to i64
  %.not = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not, label %_ZL16atoms_to_settlesP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKSt6vectorIiSaIiEEEEiiP15InteractionListPSA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %4, align 8, !tbaa !52    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 888
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !188
  %i.ai = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.aj = load ptr, ptr %2, align 8, !tbaa !17    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 152
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !102
  %14 = sub nsw i32 %i.al, %i.ad
  %15 = sub nsw i32 %i.ai, %i.ad
  %i.am = insertelement <2 x i32> poison, i32 %15, i64 0
  %i.an = shufflevector <2 x i32> %i.am, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ao = add nuw nsw <2 x i32> %i.an, <i32 0, i32 1>
  %i.ap = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ar = mul nsw <2 x i32> %i.aq, %i.ao
  %16 = insertelement <2 x i32> poison, i32 %14, i64 0
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.as = sdiv <2 x i32> %i.ar, %17               ; 2 uses
  %i.at = icmp eq i32 %i.ad, %i.ai
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %11, align 8, !tbaa !77
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !105
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %indvars.iv
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = phi ptr [ %i.au, %bb.h ], [ %i.ax, %bb.i ] ; 5 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 6 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %.not.i.i.i = icmp eq ptr %i.bb, %i.az
  br i1 %.not.i.i.i, label %_ZN15InteractionList5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.j
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !21
  br label %_ZN15InteractionList5clearEv.exit

_ZN15InteractionList5clearEv.exit:                ; preds = %bb.j, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !100
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv ; 6 uses
  %i.bf = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN15InteractionList5clearEv.exit
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !20 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bi, %i.bg
  br i1 %.not.i.i, label %bb.l, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.k
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %_ZN15InteractionList5clearEv.exit, %bb.k, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.bj = load ptr, ptr %6, align 8, !tbaa !230
  %i.bk = load ptr, ptr %12, align 8, !tbaa !345
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 920
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !111 ; 6 uses
  %i.bn = extractelement <2 x i32> %i.as, i64 0   ; 2 uses
  %i.bo = extractelement <2 x i32> %i.as, i64 1   ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph95.i, label %_ZL16atoms_to_settlesP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefIKiEENS5_IKSt6vectorIiSaIiEEEEiiP15InteractionListPSA_.exit

.lr.ph95.i:                                       ; preds = %bb.l
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2064), align 8, !tbaa !109 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 896
  %i.bs = icmp sgt i32 %i.bq, 0
  %i.bt = add nuw nsw i32 %i.bq, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  %i.bz = sext i32 %i.bn to i64
  %wide.trip.count.i = zext i32 %i.bq to i64      ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ca = icmp eq i32 %i.bq, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod118 = trunc i32 %i.bq to i1
  br label %bb.m

bb.m:                                             ; preds = %bb.ak, %.lr.ph95.i
  %indvars.iv107.i = phi i64 [ %i.bz, %.lr.ph95.i ], [ %indvars.iv.next108.i, %bb.ak ] ; 3 uses
  %.07492.i = phi i32 [ 0, %.lr.ph95.i ], [ %.175.i, %bb.ak ] ; 2 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %indvars.iv107.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %i.cd = and i32 %i.cc, 4096
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.br, align 8, !tbaa !189
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv107.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44 ; 8 uses
  %i.ch = load ptr, ptr %i.q, align 8, !tbaa !192
  %i.ci = load ptr, ptr %i.p, align 8, !tbaa !193 ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = sdiv exact i64 %i.cl, 56
  %i.cn = trunc i64 %i.cm to i32
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !196
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.276.i = phi i32 [ %.07492.i, %bb.n ], [ %i.cy, %bb.q ] ; 5 uses
  %.026.i.i = phi i32 [ -1, %bb.n ], [ %.127.i.i, %bb.q ]
  %.0.i.i = phi i32 [ %i.cn, %bb.n ], [ %.1.i.i, %bb.q ]
  %i.cp = sext i32 %.276.i to i64                 ; 2 uses
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !198 ; 2 uses
  %i.ct = icmp slt i32 %i.cg, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !199
  %.not.i.i47 = icmp slt i32 %i.cg, %i.cv
  br i1 %.not.i.i47, label %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.127.i.i = phi i32 [ %.026.i.i, %bb.o ], [ %.276.i, %bb.p ] ; 2 uses
  %.1.i.i = phi i32 [ %.276.i, %bb.o ], [ %.0.i.i, %bb.p ] ; 2 uses
  %i.cw = add nsw i32 %.127.i.i, 1
  %i.cx = add i32 %i.cw, %.1.i.i
  %i.cy = ashr i32 %i.cx, 1
  br label %bb.o, !llvm.loop !0

_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i: ; preds = %bb.p
  %i.cz = sub nsw i32 %i.cg, %i.cs
  %.fr.i = freeze i32 %i.cz
  %i.da = load i32, ptr %i.cq, align 4, !tbaa !200
  %i.db = srem i32 %.fr.i, %i.da                  ; 2 uses
  %i.dc = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %i.cp
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !206
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.de
  %i.dg = sext i32 %i.db to i64
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !44 ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %_ZL20mtopGetMolblockIndexRK10gmx_mtop_tiPiS2_S2_.exit.i
  %i.dl = sub nsw i32 %i.cg, %i.db                ; 4 uses
  %i.dm = load ptr, ptr %i.s, align 8, !tbaa !209
  %i.dn = getelementptr inbounds nuw [2408 x i8], ptr %i.dm, i64 %i.de
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1616
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  br i1 %i.bs, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.dq = mul nuw nsw i32 %i.dj, %i.bt
  %i.dr = load i8, ptr %i.bu, align 8, !tbaa !211
  %i.ds = icmp eq i8 %i.dr, 0
  %i.dt = zext nneg i32 %i.dq to i64
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dt ; 4 uses
  br i1 %i.ds, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i
  %i.du = load ptr, ptr %i.bm, align 8, !tbaa !214 ; 3 uses
  br i1 %i.ca, label %.epil.preheader, label %.lr.ph.i.split.us.new

.lr.ph.i.split.us.new:                            ; preds = %.lr.ph.i.split.us, %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us.1, %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1 ], [ 0, %.lr.ph.i.split.us ] ; 4 uses
  %.04986.i.us = phi i32 [ %.1.i.us.1, %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1 ], [ 0, %.lr.ph.i.split.us ] ; 3 uses
  %.05085.i.us = phi i1 [ %.2.i.us.1, %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1 ], [ false, %.lr.ph.i.split.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1 ], [ 0, %.lr.ph.i.split.us ]
  %gep.i.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.us
  %i.dv = getelementptr inbounds nuw i8, ptr %gep.i.us, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.dx = add nsw i32 %i.dw, %i.dl                ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !44
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !216
  %cond = icmp eq i32 %i.ec, 0
  br i1 %cond, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us

_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us:           ; preds = %.lr.ph.i.split.us.new
  %i.ed = icmp eq i32 %.04986.i.us, 0
  %i.ee = icmp eq i32 %i.cg, %i.dx
  %or.cond.i.us = and i1 %i.ed, %i.ee
  %.151.i.us = select i1 %or.cond.i.us, i1 true, i1 %.05085.i.us
  %i.ef = add nsw i32 %.04986.i.us, 1
  br label %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us

_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us:    ; preds = %.lr.ph.i.split.us.new, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us
  %.2.i.us = phi i1 [ %.151.i.us, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us ], [ %.05085.i.us, %.lr.ph.i.split.us.new ] ; 2 uses
  %.1.i.us = phi i32 [ %i.ef, %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us ], [ %.04986.i.us, %.lr.ph.i.split.us.new ] ; 3 uses
  %indvars.iv.next.i.us = or disjoint i64 %indvars.iv.i.us, 1 ; 2 uses
  %gep.i.us.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.us
  %i.eg = getelementptr inbounds nuw i8, ptr %gep.i.us.1, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !44
  %i.ei = add nsw i32 %i.eh, %i.dl                ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.us
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !44
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !216
  %cond.1 = icmp eq i32 %i.en, 0
  br i1 %cond.1, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.i.us.1, label %_ZNK11gmx_ga2la_t8findHomeEi.exit.thread.i.us.1

end_hunk_0
