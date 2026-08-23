Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/makebondedlinks?download=true
inline.NumInlined: 492
inline.NumDeleted: 249
begin_hunk_0_@_Z15makeBondedLinksP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefINS4_27AtomInfoWithinMoleculeBlockEEE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 556
  %i.d = load i8, ptr %i.c, align 4, !tbaa !12, !range !117, !noundef !118
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.cu

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #11, !noalias !119 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, i8 0, i64 48, i1 false), !noalias !119
  %i.g = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #11
          to label %_ZSt11make_uniqueIN3gmx11ListOfListsIiEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.c, !noalias !119 ; 3 uses

common.resume:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i231.i, %bb.cq, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn149.pn.pn.pn.pn.i, %bb.cq ], [ %.pn149.pn.pn.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit.i231.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 48) #12, !noalias !119
  br label %common.resume

_ZSt11make_uniqueIN3gmx11ListOfListsIiEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.b
  store ptr %i.g, ptr %i.f, align 8, !tbaa !122, !noalias !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !123, !noalias !119
  store i32 0, ptr %i.g, align 4, !tbaa !124, !noalias !119
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !125, !noalias !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !119
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 6 uses
  store ptr %i.f, ptr %i.m, align 8, !tbaa !126
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx11ListOfListsIiEESt14default_deleteIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt11make_uniqueIN3gmx11ListOfListsIiEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i:        ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !122  ; 3 uses
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx11ListOfListsIiEEEclEPS2_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !123
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #12
  br label %_ZNKSt14default_deleteIN3gmx11ListOfListsIiEEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx11ListOfListsIiEEEclEPS2_.exit.i.i.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #12
  br label %_ZNSt10unique_ptrIN3gmx11ListOfListsIiEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx11ListOfListsIiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx11ListOfListsIiEEEclEPS2_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx11ListOfListsIiEEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ab = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #11, !noalias !127 ; 3 uses
  store ptr %i.ab, ptr %9, align 16, !tbaa !122, !alias.scope !127
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.ac, ptr %i.ad, align 16, !tbaa !123, !alias.scope !127
  store i32 0, ptr %i.ab, align 4, !tbaa !124, !noalias !127
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false), !alias.scope !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %4, i8 0, i64 48, i1 false), !noalias !127
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !130, !range !117, !noalias !127, !noundef !118
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.n

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN3gmx11ListOfListsIiEESt14default_deleteIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !127
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !182, !noalias !127
  store i32 %i.ak, ptr %5, align 8, !tbaa !183, !noalias !127
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.al, align 8, !tbaa !188, !noalias !127
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !189, !noalias !127 ; 2 uses
  %.not269.i = icmp eq ptr %i.an, null
  br i1 %.not269.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL14genBondedLinksRK10gmx_mtop_tN3gmx8ArrayRefINS2_27AtomInfoWithinMoleculeBlockEEEENK3$_1clEv", ptr noundef nonnull @.str.5, i32 noundef 102) #14
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !127
  store i8 0, ptr %6, align 1, !tbaa !190, !noalias !127
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 0, ptr %i.ao, align 1, !tbaa !193, !noalias !127
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 0, ptr %i.ap, align 1, !tbaa !194, !noalias !127
  invoke void @_Z18make_reverse_ilistRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEPK7t_atomsRK17ReverseTopOptions12AtomLinkRuleP15reverse_ilist_t(ptr noundef nonnull align 8 dereferenceable(2280) %i.an, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(3) %6, i32 noundef 1, ptr noundef nonnull %4)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !127
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !127
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.l ], [ %i.aq, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !127
  br label %bb.cm

bb.n:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN3gmx11ListOfListsIiEESt14default_deleteIS2_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !195, !noalias !127 ; 2 uses
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !196, !noalias !127 ; 2 uses
  %.not526.i = icmp eq ptr %i.au, %i.av
  br i1 %.not526.i, label %._crit_edge524.i, label %.lr.ph523.i

.lr.ph523.i:                                      ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 2
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  br label %bb.o

._crit_edge524.i:                                 ; preds = %bb.ce, %bb.n
  %.0115.lcssa.i = phi i32 [ 0, %bb.n ], [ %.8123.i, %bb.ce ]
  %i.bf = load ptr, ptr @debug, align 8, !tbaa !197, !noalias !127 ; 2 uses
  %.not.i4 = icmp eq ptr %i.bf, null
  br i1 %.not.i4, label %bb.cj, label %bb.ci

bb.o:                                             ; preds = %bb.ce, %.lr.ph523.i
  %i.bg = phi ptr [ %i.av, %.lr.ph523.i ], [ %i.re, %bb.ce ] ; 2 uses
  %i.bh = phi ptr [ %i.au, %.lr.ph523.i ], [ %i.rf, %bb.ce ]
  %.0110521.i = phi i32 [ 0, %.lr.ph523.i ], [ %.4114.i, %bb.ce ] ; 2 uses
  %.0115520.i = phi i32 [ 0, %.lr.ph523.i ], [ %.8123.i, %bb.ce ] ; 2 uses
  %.0132519.i = phi i64 [ 0, %.lr.ph523.i ], [ %i.rg, %bb.ce ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %.0132519.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 4 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !199
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.ce, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load i32, ptr %i.bi, align 8, !tbaa !205
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !206, !noalias !127 ; 2 uses
  %i.bp = getelementptr inbounds nuw [2408 x i8], ptr %i.bo, i64 %i.bn ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !127
  store i8 0, ptr %7, align 1, !tbaa !190, !noalias !127
  store i8 0, ptr %i.ax, align 1, !tbaa !193, !noalias !127
  store i8 0, ptr %i.ay, align 1, !tbaa !194, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %8, i8 0, i64 48, i1 false), !noalias !127
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 11 uses
  invoke void @_Z18make_reverse_ilistRKN3gmx16EnumerationArrayI19InteractionFunction15InteractionListLS1_95EEEPK7t_atomsRK17ReverseTopOptions12AtomLinkRuleP15reverse_ilist_t(ptr noundef nonnull align 8 dereferenceable(2280) %i.bq, ptr noundef nonnull %i.br, ptr noundef nonnull align 1 dereferenceable(3) %7, i32 noundef 1, ptr noundef nonnull %8)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds [32 x i8], ptr %2, i64 %.0132519.i ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge501.i, %bb.q
  %indvars.iv635.i = phi i32 [ %indvars.iv.next636.i, %._crit_edge501.i ], [ 0, %bb.q ] ; 2 uses
  %indvars.iv625.i = phi i32 [ %indvars.iv.next626.i, %._crit_edge501.i ], [ 1, %bb.q ] ; 2 uses
  %.sroa.23.0.i = phi ptr [ %.sroa.23.1.lcssa.i, %._crit_edge501.i ], [ null, %bb.q ] ; 5 uses
  %.sroa.13.0.i = phi ptr [ %.sroa.13.1.lcssa.i, %._crit_edge501.i ], [ null, %bb.q ] ; 2 uses
  %.sroa.0244.0.i = phi ptr [ %.sroa.0244.1.lcssa.i, %._crit_edge501.i ], [ null, %bb.q ] ; 7 uses
  %.0130.i = phi i32 [ %i.cd, %._crit_edge501.i ], [ 0, %bb.q ] ; 4 uses
  %.1116.i = phi i32 [ %.2117.lcssa.i, %._crit_edge501.i ], [ %.0115520.i, %bb.q ] ; 5 uses
  %.1111.i = phi i32 [ %i.cc, %._crit_edge501.i ], [ %.0110521.i, %bb.q ] ; 8 uses
  %i.bu = load i8, ptr %i.ag, align 8, !tbaa !130, !range !117, !noalias !127, !noundef !118
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = load i32, ptr %i.bj, align 4, !tbaa !199
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bx = phi i32 [ %i.bw, %bb.s ], [ 1, %bb.r ]
  %i.by = icmp slt i32 %.0130.i, %i.bx
  br i1 %i.by, label %.preheader282.i, label %bb.bi

.preheader282.i:                                  ; preds = %bb.t
  %i.bz = load i32, ptr %i.br, align 8, !tbaa !207 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i, label %._crit_edge501.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i:    ; preds = %.preheader282.i
  %i.cb = sext i32 %.1111.i to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i

._crit_edge501.i:                                 ; preds = %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i, %.preheader282.i
  %.sroa.23.1.lcssa.i = phi ptr [ %.sroa.23.0.i, %.preheader282.i ], [ %.sroa.23.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ]
  %.sroa.13.1.lcssa.i = phi ptr [ %.sroa.13.0.i, %.preheader282.i ], [ %.sroa.13.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ]
  %.sroa.0244.1.lcssa.i = phi ptr [ %.sroa.0244.0.i, %.preheader282.i ], [ %.sroa.0244.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ]
  %.2117.lcssa.i = phi i32 [ %.1116.i, %.preheader282.i ], [ %.3118.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ]
  %.lcssa327.i = phi i32 [ %i.bz, %.preheader282.i ], [ %i.jt, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ]
  %i.cc = add nsw i32 %.lcssa327.i, %.1111.i
  %i.cd = add nuw nsw i32 %.0130.i, 1
  %indvars.iv.next626.i = add nuw i32 %indvars.iv625.i, 1
  %indvars.iv.next636.i = add nsw i32 %indvars.iv635.i, -1
  br label %bb.r, !llvm.loop !211

bb.u:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit217.i

_ZNSt6vectorIiSaIiEE5clearEv.exit.i:              ; preds = %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i
  %indvars.iv613.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %indvars.iv.next614.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ] ; 5 uses
  %.2117500.i = phi i32 [ %.1116.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.3118.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ] ; 2 uses
  %.sroa.0244.1498.i = phi ptr [ %.sroa.0244.0.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.0244.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ] ; 4 uses
  %.sroa.13.1497.i = phi ptr [ %.sroa.13.0.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.13.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ] ; 2 uses
  %.sroa.23.1496.i = phi ptr [ %.sroa.23.0.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.preheader.i ], [ %.sroa.23.7.i, %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i ] ; 2 uses
  %i.cf = add nsw i64 %indvars.iv613.i, %i.cb     ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.13.1497.i, %.sroa.0244.1498.i
  %spec.select.i = select i1 %.not.i.i.i, ptr %.sroa.13.1497.i, ptr %.sroa.0244.1498.i ; 2 uses
  %i.cg = load ptr, ptr %8, align 8, !tbaa !122, !noalias !127 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv613.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !124 ; 2 uses
  %indvars.iv.next614.i = add nuw nsw i64 %indvars.iv613.i, 1 ; 4 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.next614.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !124
  %i.cl = icmp slt i32 %i.ci, %i.ck
  br i1 %i.cl, label %.lr.ph463.i, label %._crit_edge464.i

.lr.ph463.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, %bb.ak
  %.0128462.i = phi i32 [ %i.ez, %bb.ak ], [ %i.ci, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 2 uses
  %.sroa.0244.2461.i = phi ptr [ %.sroa.0244.3.lcssa.i, %bb.ak ], [ %.sroa.0244.1498.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 2 uses
  %.sroa.13.2460.i = phi ptr [ %.sroa.13.3.lcssa.i, %bb.ak ], [ %spec.select.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 2 uses
  %.sroa.23.2459.i = phi ptr [ %.sroa.23.3.lcssa.i, %bb.ak ], [ %.sroa.23.1496.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit.i ] ; 2 uses
  %i.cm = sext i32 %.0128462.i to i64
  %i.cn = load ptr, ptr %i.az, align 8, !tbaa !122, !noalias !127
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !124 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !213, !noalias !127 ; 2 uses
  %i.cu = add nsw i32 %.0128462.i, 2              ; 2 uses
  %i.cv = icmp sgt i32 %i.ct, 0
  br i1 %i.cv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph463.i
  %i.cw = sext i32 %i.cu to i64
  %wide.trip.count.i = zext nneg i32 %i.ct to i64
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i, %.lr.ph463.i
  %.sroa.23.3.lcssa.i = phi ptr [ %.sroa.23.2459.i, %.lr.ph463.i ], [ %.sroa.23.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 3 uses
  %.sroa.13.3.lcssa.i = phi ptr [ %.sroa.13.2460.i, %.lr.ph463.i ], [ %.sroa.13.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 2 uses
  %.sroa.0244.3.lcssa.i = phi ptr [ %.sroa.0244.2461.i, %.lr.ph463.i ], [ %.sroa.0244.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 3 uses
  %i.cx = invoke noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.cp)
          to label %bb.ak unwind label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.lr.ph.i:                                         ; preds = %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 2 uses
  %.sroa.0244.3455.i = phi ptr [ %.sroa.0244.2461.i, %.lr.ph.preheader.i ], [ %.sroa.0244.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 12 uses
  %.sroa.13.3454.i = phi ptr [ %.sroa.13.2460.i, %.lr.ph.preheader.i ], [ %.sroa.13.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 10 uses
  %.sroa.23.3453.i = phi ptr [ %.sroa.23.2459.i, %.lr.ph.preheader.i ], [ %.sroa.23.4.i, %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i ] ; 4 uses
  %i.cz = load ptr, ptr %i.az, align 8, !tbaa !122, !noalias !127
  %i.da = getelementptr [4 x i8], ptr %i.cz, i64 %indvars.iv.i
  %i.db = getelementptr [4 x i8], ptr %i.da, i64 %i.cw
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !124 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %.not148.i = icmp eq i64 %indvars.iv613.i, %i.dd
  br i1 %.not148.i, label %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %i.de = add nsw i32 %i.dc, %.1111.i             ; 9 uses
  %i.df = ptrtoint ptr %.sroa.13.3454.i to i64    ; 2 uses
  %i.dg = ptrtoint ptr %.sroa.0244.3455.i to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 9 uses
  %i.di = ashr i64 %i.dh, 4                       ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.w
  %i.dk = and i64 %i.dh, -16
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.0244.3455.i, i64 %i.dk ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ab, %.lr.ph.i.i.i.i.i
  %.052.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i ], [ %i.dx, %bb.ab ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i = phi ptr [ %.sroa.0244.3455.i, %.lr.ph.i.i.i.i.i ], [ %i.dw, %bb.ab ] ; 9 uses
  %i.dl = load i32, ptr %.sroa.032.051.i.i.i.i.i, align 4, !tbaa !124
  %i.dm = icmp eq i32 %i.dl, %i.de
  br i1 %i.dm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !124
  %i.dp = icmp eq i32 %i.do, %i.de
  br i1 %i.dp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !124
  %i.ds = icmp eq i32 %i.dr, %i.de
  br i1 %i.ds, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit365, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !124
  %i.dv = icmp eq i32 %i.du, %i.de
  br i1 %i.dv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit367, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 16
  %i.dx = add nsw i64 %.052.i.i.i.i.i, -1
  %i.dy = icmp sgt i64 %.052.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.x, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !216

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.ab
  %.pre59.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre60.i.i.i.i.i = sub i64 %i.df, %.pre59.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.w
  %.pre-phi61.i.i.i.i.i = phi i64 [ %.pre60.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.dh, %bb.w ]
  %.sroa.032.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.0244.3455.i, %bb.w ] ; 5 uses
  %i.dz = ashr exact i64 %.pre-phi61.i.i.i.i.i, 2
  switch i64 %i.dz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread.i.i [
    i64 3, label %bb.ac
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i.i
  ]

bb.ac:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ea = load i32, ptr %.sroa.032.0.lcssa.i.i.i.i.i, align 4, !tbaa !124
  %i.eb = icmp eq i32 %i.ea, %i.de
  br i1 %i.eb, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i = phi ptr [ %i.ec, %bb.ad ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ed = load i32, ptr %.sroa.032.1.i.i.i.i.i, align 4, !tbaa !124
  %i.ee = icmp eq i32 %i.ed, %i.de
  br i1 %i.ee, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i.i:               ; preds = %bb.ae, %._crit_edge.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i = phi ptr [ %i.ef, %bb.ae ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.eg = load i32, ptr %.sroa.032.2.i.i.i.i.i, align 4, !tbaa !124
  %i.eh = icmp eq i32 %i.eg, %i.de
  %spec.select.i.i.i.i.i = select i1 %i.eh, ptr %.sroa.032.2.i.i.i.i.i, ptr %.sroa.13.3454.i
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.y
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit365: ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit367: ; preds = %bb.aa
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i: ; preds = %bb.x, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit365, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit367, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.ac
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i, %bb.ac ], [ %i.ek, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit367 ], [ %i.ej, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit365 ], [ %i.ei, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i, %bb.x ]
  %i.el = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %.sroa.13.3454.i
  br i1 %i.el, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread.i.i, label %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread.i.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i.i, %._crit_edge.i.i.i.i.i
  %.not.i.i155.i = icmp eq ptr %.sroa.13.3454.i, %.sroa.23.3453.i
  br i1 %.not.i.i155.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread.i.i
  store i32 %i.de, ptr %.sroa.13.3454.i, align 4, !tbaa !124
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.13.3454.i, i64 4
  br label %_ZL10check_linkPSt6vectorIiSaIiEEi.exit.i

bb.ag:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread.i.i
  %i.en = icmp eq i64 %i.dh, 9223372036854775804
  br i1 %i.en, label %bb.ah, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
          to label %.noexc156.i unwind label %.loopexit.split-lp272.i

.noexc156.i:                                      ; preds = %bb.ah
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ag
  %i.eo = ashr exact i64 %i.dh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.eo, i64 1)
  %i.ep = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.eo ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.eo
end_hunk_0
begin_hunk_1_@_Z15makeBondedLinksP12gmx_domdec_tRK10gmx_mtop_tN3gmx8ArrayRefINS4_27AtomInfoWithinMoleculeBlockEEE:bb.a
_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171.i: ; preds = %bb.ay, %.noexc187.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %.not.i17.i.i.i172.i = icmp eq ptr %.sroa.0244.6479.i, null
  br i1 %.not.i17.i.i.i172.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0244.6479.i, i64 noundef %i.gf) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i: ; preds = %bb.az, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i171.i
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hq
  br label %_ZL10check_linkPSt6vectorIiSaIiEEi.exit188.i

_ZL10check_linkPSt6vectorIiSaIiEEi.exit188.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i, %bb.av, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i164.i
  %.sroa.23.10.i = phi ptr [ %i.hw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i ], [ %.sroa.23.6477.i, %bb.av ], [ %.sroa.23.6477.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i164.i ] ; 2 uses
  %.sroa.13.10.i = phi ptr [ %i.hv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i ], [ %i.hk, %bb.av ], [ %.sroa.13.6478.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i164.i ] ; 2 uses
  %.sroa.0244.10.i = phi ptr [ %i.hs, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i173.i ], [ %.sroa.0244.6479.i, %bb.av ], [ %.sroa.0244.6479.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.i164.i ] ; 2 uses
  %indvars.iv.next609.i = add nuw nsw i64 %indvars.iv608.i, 1 ; 2 uses
  %exitcond612.not.i = icmp eq i64 %indvars.iv.next609.i, %wide.trip.count611.i
  br i1 %exitcond612.not.i, label %._crit_edge483.i, label %.lr.ph482.i, !llvm.loop !219

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp.i:                             ; preds = %bb.ax
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ba:                                            ; preds = %._crit_edge483.i
  %i.hx = add nsw i32 %i.fx, %i.fu                ; 2 uses
  %i.hy = load ptr, ptr %4, align 8, !tbaa !122, !noalias !127
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %i.cf
  %i.ia = getelementptr i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !124
  %i.ic = icmp slt i32 %i.hx, %i.ib
  br i1 %i.ic, label %.lr.ph492.i, label %.loopexit276.i, !llvm.loop !220

.loopexit276.i:                                   ; preds = %bb.ba, %bb.al, %._crit_edge464.i
  %.sroa.23.7.i = phi ptr [ %.sroa.23.2.lcssa.i, %._crit_edge464.i ], [ %.sroa.23.2.lcssa.i, %bb.al ], [ %.sroa.23.6.lcssa.i, %bb.ba ] ; 4 uses
  %.sroa.13.7.i = phi ptr [ %.sroa.13.2.lcssa.i, %._crit_edge464.i ], [ %.sroa.13.2.lcssa.i, %bb.al ], [ %.sroa.13.6.lcssa.i, %bb.ba ] ; 4 uses
  %.sroa.0244.7.i = phi ptr [ %.sroa.0244.2.lcssa.i, %._crit_edge464.i ], [ %.sroa.0244.2.lcssa.i, %bb.al ], [ %.sroa.0244.6.lcssa.i, %bb.ba ] ; 8 uses
  %i.id = icmp eq ptr %.sroa.0244.7.i, %.sroa.13.7.i
  br i1 %i.id, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.loopexit276.i
  %i.ie = load ptr, ptr %i.bt, align 8, !tbaa !122, !noalias !127
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv613.i ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !124
  %i.ih = or i32 %i.ig, 8192
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !124
  %i.ii = add nsw i32 %.2117500.i, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.loopexit276.i
  %.3118.i = phi i32 [ %.2117500.i, %.loopexit276.i ], [ %i.ii, %bb.bb ] ; 2 uses
  %i.ij = ptrtoint ptr %.sroa.13.7.i to i64
  %i.ik = ptrtoint ptr %.sroa.0244.7.i to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0244.7.i, i64 %i.il
  %i.in = load ptr, ptr %i.bb, align 16, !tbaa !221, !alias.scope !127
  %i.io = load ptr, ptr %i.af, align 8, !tbaa !221, !alias.scope !127 ; 2 uses
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = ptrtoint ptr %i.io to i64
  %i.ir = sub i64 %i.ip, %i.iq
  %i.is = getelementptr inbounds i8, ptr %i.io, i64 %i.ir
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN3gmx12ArrayRefIterIKiEEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr %i.is, ptr %.sroa.0244.7.i, ptr %i.im)
          to label %.noexc189.i unwind label %.loopexit283.i

.noexc189.i:                                      ; preds = %bb.bc
  %i.it = load ptr, ptr %i.af, align 8, !tbaa !221, !alias.scope !127
  %i.iu = load ptr, ptr %i.bb, align 16, !tbaa !125, !alias.scope !127
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.it to i64
  %i.ix = sub i64 %i.iv, %i.iw
  %i.iy = lshr exact i64 %i.ix, 2
  %i.iz = trunc i64 %i.iy to i32                  ; 2 uses
  %i.ja = load ptr, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127 ; 4 uses
  %i.jb = load ptr, ptr %i.ad, align 16, !tbaa !123, !alias.scope !127
  %.not.i.i.i.i5 = icmp eq ptr %i.ja, %i.jb
  br i1 %.not.i.i.i.i5, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc189.i
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !124
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  store ptr %i.jc, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127
  br label %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i

bb.be:                                            ; preds = %.noexc189.i
  %i.jd = load ptr, ptr %9, align 16, !tbaa !122, !alias.scope !127 ; 4 uses
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf                    ; 6 uses
  %i.jh = icmp eq i64 %i.jg, 9223372036854775804
  br i1 %i.jh, label %bb.bf, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
          to label %.noexc190.i unwind label %.loopexit.split-lp284.i

.noexc190.i:                                      ; preds = %bb.bf
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.be
  %i.ji = ashr exact i64 %i.jg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ji, i64 1)
  %i.jj = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ji ; 2 uses
  %i.jk = icmp ult i64 %i.jj, %i.ji
  %i.jl = call i64 @llvm.umin.i64(i64 %i.jj, i64 2305843009213693951)
  %i.jm = select i1 %i.jk, i64 2305843009213693951, i64 %i.jl ; 3 uses
  %.not.i.i.i.i.i.i6 = icmp ne i64 %i.jm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i6)
  %i.jn = shl nuw nsw i64 %i.jm, 2
  %i.jo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #11
          to label %.noexc191.i unwind label %.loopexit283.i ; 4 uses

.noexc191.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.jp = getelementptr inbounds i8, ptr %i.jo, i64 %i.jg ; 2 uses
  store i32 %i.iz, ptr %i.jp, align 4, !tbaa !124
  %i.jq = icmp sgt i64 %i.jg, 0
  br i1 %i.jq, label %bb.bg, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

bb.bg:                                            ; preds = %.noexc191.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jo, ptr align 4 %i.jd, i64 %i.jg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.bg, %.noexc191.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jd, i64 noundef %i.jg) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.bh, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.jo, ptr %9, align 16, !tbaa !122, !alias.scope !127
  store ptr %i.jr, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.jm
  store ptr %i.js, ptr %i.ad, align 16, !tbaa !123, !alias.scope !127
  br label %_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i

_ZN3gmx11ListOfListsIiE8pushBackENS_8ArrayRefIKiEE.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i, %bb.bd
  %i.jt = load i32, ptr %i.br, align 8, !tbaa !207 ; 2 uses
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next614.i, %i.ju
  br i1 %i.jv, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.i, label %._crit_edge501.i

.loopexit283.i:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i, %bb.bc
  %lpad.loopexit285.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

.loopexit.split-lp284.i:                          ; preds = %bb.bf
  %lpad.loopexit.split-lp286.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bi:                                            ; preds = %bb.t
  %i.jw = load ptr, ptr @debug, align 8, !tbaa !197, !noalias !127 ; 2 uses
  %.not141.i = icmp eq ptr %i.jw, null
  br i1 %.not141.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = load ptr, ptr %9, align 16, !tbaa !122, !alias.scope !127 ; 2 uses
  %i.jy = load i32, ptr %i.br, align 8, !tbaa !207 ; 2 uses
  %i.jz = sub nsw i32 %.1111.i, %i.jy
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !124
  %i.kd = sext i32 %.1111.i to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.kd
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !124
  %i.kg = sub nsw i32 %i.kf, %i.kc
  %i.kh = load ptr, ptr %i.bp, align 8, !tbaa !222
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !223
  %i.kj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.jw, ptr noundef nonnull @.str.1, ptr noundef %i.ki, i32 noundef %i.jy, i32 noundef %i.kg) #13 ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.kk = load i32, ptr %i.bj, align 4, !tbaa !199 ; 3 uses
  %i.kl = icmp sgt i32 %i.kk, %.0130.i
  br i1 %i.kl, label %.preheader.lr.ph.i, label %.loopexit289.i

.preheader.lr.ph.i:                               ; preds = %bb.bk
  %i.km = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.kn = load i32, ptr %i.br, align 8, !tbaa !207 ; 3 uses
  %i.ko = icmp sgt i32 %i.kn, 0
  br i1 %i.ko, label %.preheader.i.preheader, label %.preheader.lr.ph.split.us.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.i
  %scevgep475 = getelementptr i8, ptr %i.bo, i64 12
  %i.kp = mul nuw nsw i64 %i.bn, 2408
  %scevgep476 = getelementptr i8, ptr %scevgep475, i64 %i.kp
  br label %.preheader.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %smax.i = call i32 @llvm.smax.i32(i32 %i.kk, i32 %indvars.iv625.i)
  %i.kq = add i32 %smax.i, %indvars.iv635.i
  %i.kr = mul i32 %i.kn, %i.kq
  %i.ks = add i32 %i.kr, %.1111.i
  br label %.loopexit289.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge510.i
  %i.kt = phi i32 [ %i.kw, %._crit_edge510.i ], [ %i.kk, %.preheader.i.preheader ]
  %i.ku = phi i32 [ %i.kx, %._crit_edge510.i ], [ %i.kn, %.preheader.i.preheader ] ; 3 uses
  %.2112515.i = phi i32 [ %i.ky, %._crit_edge510.i ], [ %.1111.i, %.preheader.i.preheader ] ; 2 uses
  %.4119514.i = phi i32 [ %.5120.lcssa.i, %._crit_edge510.i ], [ %.1116.i, %.preheader.i.preheader ] ; 2 uses
  %.1131513.i = phi i32 [ %i.kz, %._crit_edge510.i ], [ %.0130.i, %.preheader.i.preheader ]
  %i.kv = icmp sgt i32 %i.ku, 0
  br i1 %i.kv, label %.lr.ph509.preheader.i, label %._crit_edge510.i

.lr.ph509.preheader.i:                            ; preds = %.preheader.i
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !122, !alias.scope !127 ; 2 uses
  %.pre645.i = load ptr, ptr %9, align 16, !tbaa !122, !alias.scope !127
  br label %.lr.ph509.i

._crit_edge510.loopexit.i:                        ; preds = %bb.ca
  %.pre650.i = load i32, ptr %i.bj, align 4, !tbaa !199
  br label %._crit_edge510.i

._crit_edge510.i:                                 ; preds = %._crit_edge510.loopexit.i, %.preheader.i
  %i.kw = phi i32 [ %i.kt, %.preheader.i ], [ %.pre650.i, %._crit_edge510.loopexit.i ] ; 2 uses
  %i.kx = phi i32 [ %i.ku, %.preheader.i ], [ %i.qp, %._crit_edge510.loopexit.i ] ; 2 uses
  %.5120.lcssa.i = phi i32 [ %.4119514.i, %.preheader.i ], [ %.6121.i, %._crit_edge510.loopexit.i ] ; 2 uses
  %i.ky = add nsw i32 %i.kx, %.2112515.i          ; 2 uses
  %i.kz = add nuw nsw i32 %.1131513.i, 1          ; 2 uses
  %i.la = icmp slt i32 %i.kz, %i.kw
  br i1 %i.la, label %.preheader.i, label %.loopexit289.i, !llvm.loop !224

.lr.ph509.i:                                      ; preds = %bb.ca, %.lr.ph509.preheader.i
  %.pre648.i211 = phi ptr [ %.pre648.i212, %bb.ca ], [ %.pre.i, %.lr.ph509.preheader.i ] ; 5 uses
  %i.lb = phi ptr [ %i.nw, %bb.ca ], [ %.pre.i, %.lr.ph509.preheader.i ] ; 10 uses
  %i.lc = phi ptr [ %i.nv, %bb.ca ], [ %.pre645.i, %.lr.ph509.preheader.i ]
  %i.ld = phi i32 [ %i.qp, %bb.ca ], [ %i.ku, %.lr.ph509.preheader.i ]
  %.5120508.i = phi i32 [ %.6121.i, %bb.ca ], [ %.4119514.i, %.lr.ph509.preheader.i ] ; 3 uses
  %.0124507.i = phi i32 [ %i.qo, %bb.ca ], [ 0, %.lr.ph509.preheader.i ] ; 2 uses
  %i.le = add nsw i32 %.0124507.i, %.2112515.i    ; 3 uses
  %i.lf = sub nsw i32 %i.le, %i.ld
  %i.lg = sext i32 %i.lf to i64
  %i.lh = getelementptr [4 x i8], ptr %i.lc, i64 %i.lg ; 2 uses
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !124 ; 2 uses
  %i.lj = getelementptr i8, ptr %i.lh, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !124 ; 2 uses
  %i.ll = sub i32 %i.lk, %i.li
  %i.lm = load ptr, ptr %i.bb, align 16, !tbaa !125, !alias.scope !127 ; 7 uses
  %i.ln = ptrtoint ptr %i.lm to i64               ; 2 uses
  %i.lo = ptrtoint ptr %i.lb to i64               ; 7 uses
  %i.lp = sub i64 %i.ln, %i.lo                    ; 4 uses
  %i.lq = ashr exact i64 %i.lp, 2                 ; 7 uses
  %i.lr = sext i32 %i.ll to i64                   ; 7 uses
  %i.ls = add nsw i64 %i.lq, %i.lr                ; 3 uses
  %i.lt = icmp ugt i64 %i.ls, %i.lq
  br i1 %i.lt, label %bb.bl, label %bb.br

bb.bl:                                            ; preds = %.lr.ph509.i
  %.not.i233.i = icmp eq i32 %i.lk, %i.li
  br i1 %.not.i233.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lu = load ptr, ptr %i.bc, align 8, !tbaa !123, !alias.scope !127
  %i.lv = ptrtoint ptr %i.lu to i64               ; 2 uses
  %i.lw = sub i64 %i.lv, %i.ln
  %i.lx = ashr exact i64 %i.lw, 2                 ; 2 uses
  %i.ly = icmp ult i64 %i.lq, 2305843009213693952
  call void @llvm.assume(i1 %i.ly)
  %i.lz = xor i64 %i.lq, 2305843009213693951      ; 2 uses
  %i.ma = icmp ule i64 %i.lx, %i.lz
  call void @llvm.assume(i1 %i.ma)
  %.not28.i.i = icmp ult i64 %i.lx, %i.lr
  br i1 %.not28.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.lm, align 4, !tbaa !124
  %i.mb = getelementptr i8, ptr %i.lm, i64 4      ; 3 uses
  %i.mc = add nsw i64 %i.lr, -1                   ; 2 uses
  %i.md = icmp eq i64 %i.mc, 0
  br i1 %i.md, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.bn
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.mc, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.mb, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !124
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %bb.bn
  %.0.i.i.i.i.i = phi ptr [ %i.me, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.mb, %bb.bn ] ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.bb, align 16, !tbaa !125, !alias.scope !127
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.mf = icmp ult i64 %i.lz, %i.lr
  br i1 %i.mf, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bo
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.lr)
  %i.mg = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.lq
  %i.mh = call i64 @llvm.umin.i64(i64 %i.mg, i64 2305843009213693951) ; 2 uses
  %i.mi = shl nuw nsw i64 %i.mh, 2
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mi) #11
          to label %.noexc235.i unwind label %.loopexit277.i ; 7 uses

.noexc235.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.lp ; 3 uses
  store i32 0, ptr %i.mk, align 4, !tbaa !124
  %i.ml = add nsw i64 %i.lr, -1                   ; 2 uses
  %i.mm = icmp eq i64 %i.ml, 0
  br i1 %i.mm, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i: ; preds = %.noexc235.i
  %i.mn = getelementptr i8, ptr %i.mk, i64 4
  %.idx.i.i.i.i.i31.i.i = shl nuw nsw i64 %i.ml, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.mn, i8 0, i64 %.idx.i.i.i.i.i31.i.i, i1 false), !tbaa !124
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i.i, %.noexc235.i
  %i.mo = icmp sgt i64 %i.lp, 0
  br i1 %i.mo, label %bb.bp, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.bp:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mj, ptr align 4 %i.lb, i64 %i.lp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.bp, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i35.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.mp = sub i64 %i.lv, %i.lo
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.mp) #12
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i: ; preds = %bb.bq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  store ptr %i.mj, ptr %i.af, align 8, !tbaa !122, !alias.scope !127
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.lr ; 2 uses
  store ptr %i.mq, ptr %i.bb, align 16, !tbaa !125, !alias.scope !127
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mh
  store ptr %i.mr, ptr %i.bc, align 8, !tbaa !123, !alias.scope !127
  %.pre653.i = ptrtoint ptr %i.mj to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

bb.br:                                            ; preds = %.lr.ph509.i
  %i.ms = icmp ult i64 %i.ls, %i.lq
  br i1 %i.ms, label %bb.bs, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.ls ; 3 uses
  %.not.i.i.i202.i = icmp eq ptr %i.lm, %i.mt
  br i1 %.not.i.i.i202.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.bs
  store ptr %i.mt, ptr %i.bb, align 16, !tbaa !125, !alias.scope !127
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i:           ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.bs, %bb.br, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i, %bb.bl
  %.pre648.i210 = phi ptr [ %.pre648.i211, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %.pre648.i211, %bb.br ], [ %.pre648.i211, %bb.bs ], [ %i.mj, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.pre648.i211, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ], [ %.pre648.i211, %bb.bl ] ; 2 uses
  %i.mu = phi ptr [ %i.lb, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.lb, %bb.br ], [ %i.lb, %bb.bs ], [ %i.mj, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %i.lb, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.lb, %bb.bl ]
  %.pre-phi.i.i = phi i64 [ %i.lo, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.lo, %bb.br ], [ %i.lo, %bb.bs ], [ %.pre653.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %i.lo, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.lo, %bb.bl ]
  %i.mv = phi ptr [ %i.mt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i.i ], [ %i.lm, %bb.br ], [ %i.lm, %bb.bs ], [ %i.mq, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.0.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ], [ %i.lm, %bb.bl ]
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = sub i64 %i.mw, %.pre-phi.i.i
  %i.my = lshr exact i64 %i.mx, 2
  %i.mz = trunc i64 %i.my to i32                  ; 2 uses
  %i.na = load ptr, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127 ; 4 uses
  %i.nb = load ptr, ptr %i.ad, align 16, !tbaa !123, !alias.scope !127
  %.not.i.i1.i.i = icmp eq ptr %i.na, %i.nb
  br i1 %.not.i.i1.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !124
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  store ptr %i.nc, ptr %i.ae, align 8, !tbaa !125, !alias.scope !127
  %.pre649.i = load ptr, ptr %9, align 16, !tbaa !122, !alias.scope !127
  br label %bb.bx

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i.i
  %i.nd = load ptr, ptr %9, align 16, !tbaa !122, !alias.scope !127 ; 4 uses
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf                    ; 6 uses
  %i.nh = icmp eq i64 %i.ng, 9223372036854775804
  br i1 %i.nh, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i196.i

.invoke:                                          ; preds = %bb.bu, %bb.bo
  %i.ni = phi ptr [ @.str.8, %bb.bo ], [ @.str.6, %bb.bu ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ni) #14
          to label %.cont unwind label %.loopexit.split-lp278.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i196.i: ; preds = %bb.bu
  %i.nj = ashr exact i64 %i.ng, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i197.i = call i64 @llvm.umax.i64(i64 %i.nj, i64 1)
  %i.nk = add nsw i64 %.sroa.speculated.i.i.i.i.i197.i, %i.nj ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.nj
  %i.nm = call i64 @llvm.umin.i64(i64 %i.nk, i64 2305843009213693951)
  %i.nn = select i1 %i.nl, i64 2305843009213693951, i64 %i.nm ; 3 uses
  %.not.i.i.i.i.i198.i = icmp ne i64 %i.nn, 0
end_hunk_1
