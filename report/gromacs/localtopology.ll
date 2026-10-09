Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/localtopology?download=true
inline.NumInlined: 1033
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL24make_local_bondeds_exclsRK12gmx_domdec_tRKN3gmx11DomdecZonesERK10gmx_mtop_tNS2_8ArrayRefIKiEEbPSA_bfPK5t_pbcNS9_IKNS2_11BasicVectorIfEEEEP22InteractionDefinitionsPNS2_11ListOfListsIiEE.omp_outlined:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr %19, align 8, !tbaa !39
  br label %_ZN3gmx11ListOfListsIiE5clearEv.exit

.loopexit:                                        ; preds = %_ZN3gmx5RangeIiEC2Eii.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #5
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %i.cf = load i64, ptr %6, align 8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds [2824 x i8], ptr %i.cg, i64 %indvars.iv ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 2776 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2784 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !29 ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !28 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2                 ; 2 uses
  %i.cq = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cr = sub nuw nsw i64 1, %i.cp
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i64 noundef %i.cr)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i unwind label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.cs = icmp ugt i64 %i.cp, 1
  br i1 %i.cs, label %bb.p, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cl, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ck, %i.ct
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.p
  store ptr %i.ct, ptr %i.cj, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.n, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, %bb.p, %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 2800
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !28 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 2808 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !29
  %.not.i.i1.i = icmp eq ptr %i.cx, %i.cv
  br i1 %.not.i.i1.i, label %_ZN3gmx11ListOfListsIiE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2.i:     ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !29
  br label %_ZN3gmx11ListOfListsIiE5clearEv.exit

bb.q:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.u

_ZN3gmx11ListOfListsIiE5clearEv.exit:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2.i, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %bb.k
  %.062 = phi ptr [ %i.ce, %bb.k ], [ %i.ci, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i ], [ %i.ci, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i2.i ]
  %i.cz = load i32, ptr %7, align 4, !tbaa !46
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !372 ; 3 uses
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !374
  %i.dd = invoke { ptr, ptr } @_ZNK17gmx_reverse_top_t15molblockIndicesEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.s       ; 2 uses

bb.r:                                             ; preds = %_ZN3gmx11ListOfListsIiE5clearEv.exit
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.da to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dg
  %i.di = icmp eq i32 %i.cz, 1
  %i.dj = select i1 %i.di, ptr @_ZL20make_exclusions_zoneILb1EEvN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS0_11DomdecZonesENS1_IK15MolblockIndicesEERKSt6vectorI13gmx_moltype_tSaISE_EES3_PNS0_11ListOfListsIiEEiiiS3_, ptr @_ZL20make_exclusions_zoneILb0EEvN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS0_11DomdecZonesENS1_IK15MolblockIndicesEERKSt6vectorI13gmx_moltype_tSaISE_EES3_PNS0_11ListOfListsIiEEiiiS3_
  %i.dk = extractvalue { ptr, ptr } %i.dd, 0
  %i.dl = extractvalue { ptr, ptr } %i.dd, 1
  %i.dm = load ptr, ptr %20, align 8, !tbaa !83   ; 3 uses
  store ptr %i.dm, ptr %23, align 8, !tbaa !83
  %i.dn = load ptr, ptr %i.t, align 8, !tbaa !83
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dq
  store ptr %i.dr, ptr %i.s, align 8, !tbaa !83
  %i.ds = load i32, ptr %17, align 4, !tbaa !15
  %i.dt = load ptr, ptr %i.u, align 8, !tbaa !28  ; 3 uses
  store ptr %i.dt, ptr %24, align 8, !tbaa !83
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dx
  store ptr %i.dy, ptr %i.v, align 8, !tbaa !83
  %i.dz = extractelement <2 x i32> %i.an, i64 0
  %i.ea = extractelement <2 x i32> %i.an, i64 1
  invoke void %i.dj(ptr %i.da, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(48) %i.dc, ptr noundef nonnull align 4 dereferenceable(592) %7, ptr %i.dk, ptr %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %23, ptr noundef %.062, i32 noundef %i.ds, i32 noundef %i.dz, i32 noundef %i.ea, ptr noundef nonnull byval(%"class.gmx::ArrayRef.0") align 8 %24)
          to label %bb.t unwind label %bb.s, !callees !378

bb.s:                                             ; preds = %bb.r, %_ZN3gmx11ListOfListsIiE5clearEv.exit
  %i.eb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.i
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !15
  %i.ed = sext i32 %i.ec to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ed
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.u:                                             ; preds = %bb.l, %bb.s, %bb.q, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.f ], [ %i.cy, %bb.q ], [ %lpad.phi, %bb.l ], [ %i.eb, %bb.s ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn.pn.pn, 1
  %.266 = extractvalue { ptr, i32 } %.pn.pn.pn, 0 ; 2 uses
  %i.ee = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #5
  %i.ef = icmp eq i32 %.2, %i.ee
  br i1 %i.ef, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.eg = call ptr @__cxa_begin_catch(ptr %.266) #5
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.eg) #19
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

._crit_edge:                                      ; preds = %bb.t, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.y:                                             ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #20
  unreachable

bb.z:                                             ; preds = %bb.u
  call void @__clang_call_terminate(ptr %.266) #20
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL17make_bondeds_zoneILb1EEiRK17gmx_reverse_top_tN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS3_11DomdecZonesERKSt6vectorI14gmx_molblock_tSaISE_EEbPS5_bfPK5t_pbcNS4_IKNS3_11BasicVectorIfEEEEPK9t_iparamsP22InteractionDefinitionsiRKNS3_5RangeIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr nofree nonnull readnone align 4 captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i1 zeroext %6, ptr nofree readnone captures(none) %7, i1 zeroext %8, float %9, ptr nofree readnone captures(none) %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, i32 noundef %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %15) unnamed_addr #0 {
bb.a:
  %16 = alloca %struct.AtomIndexSet, align 4      ; 7 uses
  %17 = alloca %struct.AtomIndexSet, align 4      ; 6 uses
  %i.a = tail call noundef nonnull align 1 dereferenceable(3) ptr @_ZNK17gmx_reverse_top_t7optionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !86, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i32, ptr %15, align 4, !tbaa !88    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89   ; 2 uses
  %.not63 = icmp eq i32 %i.d, %i.f
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.i = icmp eq i32 %14, 0
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.l = sext i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.i ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.065 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.i ]  ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !15   ; 6 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.p = tail call { ptr, ptr } @_ZNK17gmx_reverse_top_t15molblockIndicesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 3 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 4                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit

_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.c, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.013.016.i.i = phi ptr [ %.sroa.013.1.i.i, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.x = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.sroa.013.016.i.i, i64 %i.x ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val9.i.i = load i32, ptr %i.z, align 4, !tbaa !91
  %.not.i.i = icmp sgt i32 %.val9.i.i, %i.n       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = xor i64 %i.x, -1
  %i.ac = add nsw i64 %.017.i.i, %i.ab
  %.sroa.013.1.i.i = select i1 %.not.i.i, ptr %.sroa.013.016.i.i, ptr %i.aa ; 3 uses
  %.1.i.i = select i1 %.not.i.i, i64 %i.x, i64 %i.ac ; 2 uses
  %i.ad = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ad, label %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i", !llvm.loop !0

"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i": ; preds = %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre.i = ptrtoint ptr %.sroa.013.1.i.i to i64
  br label %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit

_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit: ; preds = %bb.c, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i"
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i" ], [ %i.t, %bb.c ]
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.1.i.i, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i" ], [ %i.q, %bb.c ] ; 3 uses
  %i.ae = sub i64 %.pre-phi.i, %i.t
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !92 ; 2 uses
  %i.ah = load i32, ptr %.sroa.013.0.lcssa.i.i, align 4, !tbaa !93
  %i.ai = sub nsw i32 %i.n, %i.ah                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !94 ; 3 uses
  %i.al = sdiv i32 %i.ai, %i.ak                   ; 2 uses
  %i.am = mul nsw i32 %i.al, %i.ak                ; 0 uses
  %.recomposed = srem i32 %i.ai, %i.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.an = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.an, ptr %16, align 4, !tbaa !96
  store i32 %i.n, ptr %i.g, align 4, !tbaa !97
  store i32 %.recomposed, ptr %i.h, align 4, !tbaa !98
  %i.ao = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t30interactionListForMoleculeTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ag) ; 2 uses
  %i.ap = call fastcc noundef i32 @_ZL25assignInteractionsForAtomILb1EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE(ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(52) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %13, i32 noundef %14, i1 noundef zeroext %i.c)
  %i.aq = add nsw i32 %i.ap, %.065                ; 3 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit
  %i.ar = tail call noundef zeroext i1 @_ZNK17gmx_reverse_top_t21hasPositionRestraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.at = load i32, ptr %i.as, align 8, !tbaa !100
  %i.au = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t30interactionListForMoleculeTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ag)
  %i.av = shl i64 %i.ae, 28
  %i.aw = ashr exact i64 %i.av, 32
  %i.ax = load ptr, ptr %5, align 8, !tbaa !103
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %i.aw
  %i.az = call fastcc noundef i32 @_ZL31assignPositionRestraintsForAtomRK12AtomIndexSetiiRK15reverse_ilist_tRK14gmx_molblock_tPK9t_iparamsP22InteractionDefinitions(ptr noundef nonnull align 4 dereferenceable(12) %16, i32 noundef %i.al, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(52) %i.au, ptr noundef nonnull align 8 dereferenceable(56) %i.ay, ptr noundef %12, ptr noundef %13)
  %i.ba = add nsw i32 %i.az, %i.aq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit
  %.1 = phi i32 [ %i.ba, %bb.e ], [ %i.aq, %bb.d ], [ %i.aq, %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit ] ; 2 uses
  %i.bb = tail call noundef zeroext i1 @_ZNK17gmx_reverse_top_t29hasIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  store i32 %i.an, ptr %17, align 4, !tbaa !96
  store i32 %i.n, ptr %i.j, align 4, !tbaa !97
  store i32 %i.n, ptr %i.k, align 4, !tbaa !98
  %i.bc = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t44interactionListForIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.bd = call fastcc noundef i32 @_ZL25assignInteractionsForAtomILb1EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(52) %i.bc, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %13, i32 noundef %14, i1 noundef zeroext %i.c)
  %i.be = add nsw i32 %i.bd, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.be, %bb.g ], [ %.1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.3 = phi i32 [ %.2, %bb.h ], [ %.065, %bb.b ]  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bf = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.f, %i.bf
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL17make_bondeds_zoneILb0EEiRK17gmx_reverse_top_tN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS3_11DomdecZonesERKSt6vectorI14gmx_molblock_tSaISE_EEbPS5_bfPK5t_pbcNS4_IKNS3_11BasicVectorIfEEEEPK9t_iparamsP22InteractionDefinitionsiRKNS3_5RangeIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(592) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, i1 noundef zeroext %6, ptr nofree readnone captures(none) %7, i1 noundef zeroext %8, float noundef %9, ptr noundef %10, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, i32 noundef %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %15) unnamed_addr #0 {
bb.a:
  %16 = alloca %struct.AtomIndexSet, align 4      ; 7 uses
  %17 = alloca %struct.AtomIndexSet, align 4      ; 6 uses
  %i.a = tail call noundef nonnull align 1 dereferenceable(3) ptr @_ZNK17gmx_reverse_top_t7optionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = load i8, ptr %i.a, align 1, !tbaa !86, !range !26, !noundef !27
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i32, ptr %15, align 4, !tbaa !88    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89   ; 2 uses
  %.not67 = icmp eq i32 %i.d, %i.f
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.i = load ptr, ptr %11, align 8               ; 2 uses
  %i.j = icmp eq i32 %14, 0
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.m = sext i32 %i.d to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %bb.i ]
  ret i32 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.069 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.i ]  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !15   ; 6 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.q = tail call { ptr, ptr } @_ZNK17gmx_reverse_top_t15molblockIndicesEv(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 3 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit

_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.c, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.017.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %.sroa.013.016.i.i = phi ptr [ %.sroa.013.1.i.i, %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.r, %bb.c ] ; 2 uses
  %i.y = lshr i64 %.017.i.i, 1                    ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.013.016.i.i, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val9.i.i = load i32, ptr %i.aa, align 4, !tbaa !91
  %.not.i.i = icmp sgt i32 %.val9.i.i, %i.o       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = xor i64 %i.y, -1
  %i.ad = add nsw i64 %.017.i.i, %i.ac
  %.sroa.013.1.i.i = select i1 %.not.i.i, ptr %.sroa.013.016.i.i, ptr %i.ab ; 3 uses
  %.1.i.i = select i1 %.not.i.i, i64 %i.y, i64 %i.ad ; 2 uses
  %i.ae = icmp sgt i64 %.1.i.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i", !llvm.loop !0

"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i": ; preds = %_ZSt9__advanceIN3gmx12ArrayRefIterIK15MolblockIndicesEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.pre.i = ptrtoint ptr %.sroa.013.1.i.i to i64
  br label %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit

_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit: ; preds = %bb.c, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i"
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i" ], [ %i.u, %bb.c ]
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.1.i.i, %"_ZSt15partition_pointIN3gmx12ArrayRefIterIK15MolblockIndicesEEZL30atomInMolblockFromGlobalAtomnrNS0_8ArrayRefIS3_EEiE3$_0ET_S8_S8_T0_.exit.loopexit.i" ], [ %i.r, %bb.c ] ; 3 uses
  %i.af = sub i64 %.pre-phi.i, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !92 ; 2 uses
  %i.ai = load i32, ptr %.sroa.013.0.lcssa.i.i, align 4, !tbaa !93
  %i.aj = sub nsw i32 %i.o, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !94 ; 3 uses
  %i.am = sdiv i32 %i.aj, %i.al                   ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.al                ; 0 uses
  %.recomposed = srem i32 %i.aj, %i.al
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #5
  %i.ao = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.ao, ptr %16, align 4, !tbaa !96
  store i32 %i.o, ptr %i.g, align 4, !tbaa !97
  store i32 %.recomposed, ptr %i.h, align 4, !tbaa !98
  %i.ap = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t30interactionListForMoleculeTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ah) ; 2 uses
  %i.aq = call fastcc noundef i32 @_ZL25assignInteractionsForAtomILb0EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE(ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 8 dereferenceable(52) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(592) %4, i1 noundef zeroext %6, i1 noundef zeroext %8, float noundef %9, ptr noundef %10, ptr %i.i, ptr noundef %13, i32 noundef %14, i1 noundef zeroext %i.c)
  %i.ar = add nsw i32 %i.aq, %.069                ; 3 uses
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit
  %i.as = tail call noundef zeroext i1 @_ZNK17gmx_reverse_top_t21hasPositionRestraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !100
  %i.av = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t30interactionListForMoleculeTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ah)
  %i.aw = shl i64 %i.af, 28
  %i.ax = ashr exact i64 %i.aw, 32
  %i.ay = load ptr, ptr %5, align 8, !tbaa !103
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = call fastcc noundef i32 @_ZL31assignPositionRestraintsForAtomRK12AtomIndexSetiiRK15reverse_ilist_tRK14gmx_molblock_tPK9t_iparamsP22InteractionDefinitions(ptr noundef nonnull align 4 dereferenceable(12) %16, i32 noundef %i.am, i32 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(52) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.az, ptr noundef %12, ptr noundef %13)
  %i.bb = add nsw i32 %i.ba, %i.ar
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit
  %.1 = phi i32 [ %i.bb, %bb.e ], [ %i.ar, %bb.d ], [ %i.ar, %_ZL30atomInMolblockFromGlobalAtomnrN3gmx8ArrayRefIK15MolblockIndicesEEi.exit ] ; 2 uses
  %i.bc = tail call noundef zeroext i1 @_ZNK17gmx_reverse_top_t29hasIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #5
  store i32 %i.ao, ptr %17, align 4, !tbaa !96
  store i32 %i.o, ptr %i.k, align 4, !tbaa !97
  store i32 %i.o, ptr %i.l, align 4, !tbaa !98
  %i.bd = tail call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t44interactionListForIntermolecularInteractionsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.be = call fastcc noundef i32 @_ZL25assignInteractionsForAtomILb0EEiRK12AtomIndexSetRK15reverse_ilist_tRK11gmx_ga2la_tRKN3gmx11DomdecZonesEbPKibfPK5t_pbcNS9_8ArrayRefIKNS9_11BasicVectorIfEEEEP22InteractionDefinitionsiNS9_16DDBondedCheckingE(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(52) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(592) %4, i1 noundef zeroext %6, i1 noundef zeroext %8, float noundef %9, ptr noundef %10, ptr %i.i, ptr noundef %13, i32 noundef %14, i1 noundef zeroext %i.c)
  %i.bf = add nsw i32 %i.be, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #5
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2 = phi i32 [ %i.bf, %bb.g ], [ %.1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.h
  %.3 = phi i32 [ %.2, %bb.h ], [ %.069, %bb.b ]  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bg = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.f, %i.bg
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20make_exclusions_zoneILb1EEvN3gmx8ArrayRefIKiEERK11gmx_ga2la_tRKNS0_11DomdecZonesENS1_IK15MolblockIndicesEERKSt6vectorI13gmx_moltype_tSaISE_EES3_PNS0_11ListOfListsIiEEiiiS3_(ptr nofree readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(592) %3, ptr %4, ptr %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %7, ptr noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = sext i32 %9 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !88
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %.not.i.i = icmp sgt i32 %i.h, %i.m
  br i1 %.not.i.i, label %bb.b, label %_ZNK3gmx11DomdecZones10jAtomRangeEi.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.11, i32 noundef 111) #19
  unreachable

_ZNK3gmx11DomdecZones10jAtomRangeEi.exit:         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29
  %i.p = load ptr, ptr %8, align 8, !tbaa !28
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = icmp slt i32 %10, %11
  br i1 %i.u, label %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph, label %._crit_edge.thread

_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph:          ; preds = %_ZNK3gmx11DomdecZones10jAtomRangeEi.exit
  %i.v = ptrtoint ptr %5 to i64
  %i.w = ptrtoint ptr %4 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ac = sext i32 %10 to i64
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

._crit_edge:                                      ; preds = %bb.am
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !29
  %.pre224 = load ptr, ptr %8, align 8, !tbaa !28
  %.pre225 = ptrtoint ptr %.pre to i64
  %.pre226 = ptrtoint ptr %.pre224 to i64
  %.pre228 = sub i64 %.pre225, %.pre226
  %.pre230 = ashr exact i64 %.pre228, 2
  %i.ad = sub nsw i64 %.pre230, %i.t
  %i.ae = sub nsw i32 %11, %10
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.ao, label %bb.an

._crit_edge.thread:                               ; preds = %_ZNK3gmx11DomdecZones10jAtomRangeEi.exit
  %i.ah = icmp eq i32 %11, %10
  br i1 %i.ah, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.an

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph, %bb.am
  %indvars.iv = phi i64 [ %i.ac, %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph ], [ %indvars.iv.next, %bb.am ] ; 4 uses
  %.sroa.095.0190 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph ], [ %.sroa.095.5, %bb.am ] ; 6 uses
  %.sroa.12.0189 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph ], [ %.sroa.12.5, %bb.am ] ; 2 uses
  %.sroa.21.0188 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE5clearEv.exit.lr.ph ], [ %.sroa.21.5, %bb.am ] ; 4 uses
  %.not.i.i60 = icmp eq ptr %.sroa.12.0189, %.sroa.095.0190
  %spec.select = select i1 %.not.i.i60, ptr %.sroa.12.0189, ptr %.sroa.095.0190 ; 3 uses
  %i.ai = load i64, ptr %7, align 8
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !15
  %i.am = and i32 %i.al, 1024
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %.loopexit127, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.an = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !15 ; 2 uses
  %i.ap = invoke { i64, i64 } @_Z31globalAtomIndexToMoltypeIndicesN3gmx8ArrayRefIK15MolblockIndicesEEi(ptr %4, ptr %i.y, i32 noundef %i.ao)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  %i.ar = extractvalue { i64, i64 } %i.ap, 1      ; 2 uses
  %i.as = ashr i64 %i.aq, 32
  %i.at = load ptr, ptr %6, align 8, !tbaa !106
  %i.au = getelementptr inbounds nuw [2408 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2360
  %i.aw = ashr i64 %i.ar, 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 2384
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !28 ; 2 uses
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %i.aw ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.ba, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !15 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.be
  %.not124164 = icmp eq i32 %i.bb, %i.bd
  br i1 %.not124164, label %.loopexit127, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bg
  %.sroa.5.12.extract.shift = lshr i64 %i.ar, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.bi = sub i32 %i.ao, %.sroa.5.12.extract.trunc
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.095.1168 = phi ptr [ %.sroa.095.0190, %.lr.ph ], [ %.sroa.095.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 7 uses
  %.sroa.12.1167 = phi ptr [ %spec.select, %.lr.ph ], [ %.sroa.12.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %.sroa.21.1166 = phi ptr [ %.sroa.21.0188, %.lr.ph ], [ %.sroa.21.7, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.sroa.090.0165 = phi ptr [ %i.bh, %.lr.ph ], [ %i.cv, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.090.0165, align 4, !tbaa !15
  %i.bl = add i32 %i.bi, %i.bk                    ; 3 uses
  %i.bm = load i8, ptr %i.z, align 8, !tbaa !108
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bo = sext i32 %i.bl to i64
  %i.bp = load ptr, ptr %2, align 8, !tbaa !111
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !113
  %i.bt = icmp eq i32 %i.bs, -1
  %spec.select.i = select i1 %i.bt, ptr null, ptr %i.bq
  br label %_ZNK11gmx_ga2la_t4findEi.exit

bb.h:                                             ; preds = %bb.f
  %i.bu = load i32, ptr %i.aa, align 8, !tbaa !120
  %i.bv = and i32 %i.bu, %i.bl
  %i.bw = load ptr, ptr %2, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.0.i.i = phi i32 [ %i.bv, %bb.h ], [ %i.cd, %bb.k ]
  %i.bx = sext i32 %.0.i.i to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !123
  %i.ca = icmp eq i32 %i.bz, %i.bl
  br i1 %i.ca, label %bb.j, label %bb.k
end_hunk_0
