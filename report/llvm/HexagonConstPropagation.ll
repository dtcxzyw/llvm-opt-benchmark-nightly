Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonConstPropagation?download=true
inline.NumInlined: 2642
inline.NumDeleted: 1204
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E:bb.a
.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335
  tail call void @_ZNSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !680

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKN4llvm12MachineInstrES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !335
  tail call void @_ZNSt8_Rb_treeIPKN4llvm12MachineInstrES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !681

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator8visitPHIERKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 9 uses
  %3 = alloca %"struct.llvm::TargetInstrInfo::RegSubRegPair", align 8 ; 6 uses
  %4 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !309  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !310  ; 10 uses
  %i.i = load i32, ptr %i.f, align 8
  %i.j = and i32 %i.i, 1048320
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.s, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = icmp slt i32 %i.h, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !195 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not2.i.i.i.i, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.04.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.i.i.i, %bb.d ] ; 3 uses
  %.083.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !325
  %i.r = icmp ult i32 %i.q, %i.h                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.r, ptr %.083.i.i.i.i, ptr %.04.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !5

_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i.i, %i.o
  br i1 %i.s, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i

_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i: ; preds = %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !325
  %i.v = icmp ult i32 %i.h, %i.u
  br i1 %i.v, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit

_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i: ; preds = %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit

_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit: ; preds = %bb.c, %bb.e, %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i
  %.1.i = phi ptr [ %i.m, %bb.c ], [ %i.w, %bb.e ], [ %i.x, %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i ]
  %.val34 = load i8, ptr %.1.i, align 8
  %i.y = and i8 %.val34, 3
  %i.z = icmp eq i8 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  call fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator7CellMap6updateEN4llvm8RegisterERKNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(128) %i.k, i32 %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.aa)
  br i1 %i.z, label %bb.t, label %bb.f

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit
  call fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator11visitUsesOfEj(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %i.h)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = icmp slt i32 %i.h, 0
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i36 = load ptr, ptr %i.ae, align 8, !tbaa !195 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not2.i.i.i.i37 = icmp eq ptr %.val.i.i.i36, null
  br i1 %.not2.i.i.i.i37, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48, label %.lr.ph.i.i.i.i38

.lr.ph.i.i.i.i38:                                 ; preds = %bb.i, %.lr.ph.i.i.i.i38
  %.04.i.i.i.i39 = phi ptr [ %.1.i.i.i.i44, %.lr.ph.i.i.i.i38 ], [ %.val.i.i.i36, %bb.i ] ; 3 uses
  %.083.i.i.i.i40 = phi ptr [ %.19.i.i.i.i41, %.lr.ph.i.i.i.i38 ], [ %i.af, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i39, i64 32
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !325
  %i.ai = icmp ult i32 %i.ah, %i.h                ; 2 uses
  %.19.i.i.i.i41 = select i1 %i.ai, ptr %.083.i.i.i.i40, ptr %.04.i.i.i.i39 ; 4 uses
  %.1.in.v.i.i.i.i42 = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i.i43 = getelementptr i8, ptr %.04.i.i.i.i39, i64 %.1.in.v.i.i.i.i42
  %.1.i.i.i.i44 = load ptr, ptr %.1.in.i.i.i.i43, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i.i45 = icmp eq ptr %.1.i.i.i.i44, null
  br i1 %.not.i.i.i.i45, label %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i46, label %.lr.ph.i.i.i.i38, !llvm.loop !5

_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i46: ; preds = %.lr.ph.i.i.i.i38
  %i.aj = icmp eq ptr %.19.i.i.i.i41, %i.af
  br i1 %i.aj, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i47

_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i47: ; preds = %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i46
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i41, i64 32
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !325
  %i.am = icmp ult i32 %i.h, %i.al
  br i1 %i.am, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48, label %bb.j

bb.j:                                             ; preds = %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i47
  %i.an = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i41, i64 40
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49

_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48: ; preds = %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i47, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i46, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49

_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49: ; preds = %bb.h, %bb.j, %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48
  %.1.i35 = phi ptr [ %i.ad, %bb.h ], [ %i.an, %bb.j ], [ %i.ao, %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.thread.i48 ] ; 2 uses
  %i.ap = load i8, ptr %.1.i35, align 8           ; 3 uses
  %i.aq = and i8 %i.ap, 32
  %.not.i = icmp eq i8 %i.aq, 0
  %i.ar = shl i8 %i.ap, 1
  %i.as = and i8 %i.ar, 56
  %narrow.i = select i1 %.not.i, i8 %i.as, i8 4
  %i.at = zext nneg i8 %narrow.i to i64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i35, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull readonly align 8 %i.av, i64 %i.at, i1 false)
  %i.aw = and i8 %i.ap, 63                        ; 2 uses
  store i8 %i.aw, ptr %2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load i24, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp ugt i24 %i.ay, 1
  br i1 %i.az, label %.lr.ph, label %.thread103

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !195
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.thread103, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bj = zext i24 %i.ay to i64
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.thread
  %i.bk = phi i8 [ %i.aw, %.lr.ph.split.preheader ], [ %i.dr, %.thread ] ; 9 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.preheader ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %.0110 = phi i1 [ false, %.lr.ph.split.preheader ], [ %.289, %.thread ] ; 8 uses
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !309 ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !310
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !256 ; 4 uses
  %i.br = load ptr, ptr %i.ba, align 8, !tbaa !195 ; 2 uses
  %.not11.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not11.i.i.i, label %.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.split, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.br, %.lr.ph.split ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i ], [ %i.bb, %.lr.ph.split ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !258 ; 2 uses
  %i.bu = icmp ult i32 %i.bt, %i.bq
  br i1 %i.bu, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = icmp ult i32 %i.bq, %i.bt
  br i1 %i.bv, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i:   ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !259
  %i.by = icmp ult i32 %i.bx, %i.d
  br i1 %i.by, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i, %bb.k
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i ], [ 16, %bb.k ], [ 16, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.k ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread10.i.i.i
  %i.ca = icmp eq ptr %.19.i.i.i, %i.bb
  br i1 %i.ca, label %.thread, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !258 ; 2 uses
  %i.cd = icmp ult i32 %i.bq, %i.cc
  br i1 %i.cd, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp ult i32 %i.cc, %i.bq
  br i1 %i.ce, label %_ZNKSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE5countERKS1_.exit, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i:     ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !259
  %i.ch = icmp ult i32 %i.d, %i.cg
  br i1 %i.ch, label %.thread, label %_ZNKSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE5countERKS1_.exit

_ZNKSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE5countERKS1_.exit: ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i, %bb.m
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !310 ; 6 uses
  %i.ck = load i32, ptr %5, align 8
  %i.cl = lshr i32 %i.ck, 8
  %i.cm = and i32 %i.cl, 4095
  %.sroa.2.0.insert.ext.i50 = zext nneg i32 %i.cm to i64
  %.sroa.2.0.insert.shift.i51 = shl nuw nsw i64 %.sroa.2.0.insert.ext.i50, 32
  %.sroa.0.0.insert.ext.i52 = zext i32 %i.cj to i64
  %.sroa.0.0.insert.insert.i53 = or disjoint i64 %.sroa.2.0.insert.shift.i51, %.sroa.0.0.insert.ext.i52
  store i64 %.sroa.0.0.insert.insert.i53, ptr %3, align 8
  %i.cn = icmp slt i32 %i.cj, 0
  br i1 %i.cn, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZNKSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  %.val.i.i.i55 = load ptr, ptr %i.bc, align 8, !tbaa !195 ; 3 uses
  %.not2.i.i.i.i56 = icmp eq ptr %.val.i.i.i55, null
  br i1 %.not2.i.i.i.i56, label %.thread90, label %.lr.ph.i.i.i.i57

.lr.ph.i.i.i.i57:                                 ; preds = %bb.n, %.lr.ph.i.i.i.i57
  %.04.i.i.i.i58 = phi ptr [ %.1.i.i.i.i63, %.lr.ph.i.i.i.i57 ], [ %.val.i.i.i55, %bb.n ] ; 3 uses
  %.083.i.i.i.i59 = phi ptr [ %.19.i.i.i.i60, %.lr.ph.i.i.i.i57 ], [ %i.bd, %bb.n ]
  %i.co = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i58, i64 32
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !325
  %i.cq = icmp ult i32 %i.cp, %i.cj               ; 2 uses
  %.19.i.i.i.i60 = select i1 %i.cq, ptr %.083.i.i.i.i59, ptr %.04.i.i.i.i58 ; 3 uses
  %.1.in.v.i.i.i.i61 = select i1 %i.cq, i64 24, i64 16
  %.1.in.i.i.i.i62 = getelementptr i8, ptr %.04.i.i.i.i58, i64 %.1.in.v.i.i.i.i61
  %.1.i.i.i.i63 = load ptr, ptr %.1.in.i.i.i.i62, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %.1.i.i.i.i63, null
  br i1 %.not.i.i.i.i64, label %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65, label %.lr.ph.i.i.i.i57, !llvm.loop !5

_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65: ; preds = %.lr.ph.i.i.i.i57
  %i.cr = icmp eq ptr %.19.i.i.i.i60, %i.bd
  br i1 %i.cr, label %.thread90, label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit

_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit: ; preds = %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i60, i64 32
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !325
  %.not106 = icmp ult i32 %i.cj, %i.ct
  br i1 %.not106, label %.thread90, label %.lr.ph.i.i.i.i69.preheader

.lr.ph.i.i.i.i69.preheader:                       ; preds = %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 1, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, i8 0, i64 32, i1 false), !tbaa !193
  %i.cu = load ptr, ptr %i.bf, align 8, !tbaa !295, !nonnull !149, !align !150 ; 2 uses
  br label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %.lr.ph.i.i.i.i69.preheader, %.lr.ph.i.i.i.i69
  %.04.i.i.i.i70 = phi ptr [ %.1.i.i.i.i75, %.lr.ph.i.i.i.i69 ], [ %.val.i.i.i55, %.lr.ph.i.i.i.i69.preheader ] ; 3 uses
  %.083.i.i.i.i71 = phi ptr [ %.19.i.i.i.i72, %.lr.ph.i.i.i.i69 ], [ %i.bd, %.lr.ph.i.i.i.i69.preheader ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i70, i64 32
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !325
  %i.cx = icmp ult i32 %i.cw, %i.cj               ; 2 uses
  %.19.i.i.i.i72 = select i1 %i.cx, ptr %.083.i.i.i.i71, ptr %.04.i.i.i.i70 ; 4 uses
  %.1.in.v.i.i.i.i73 = select i1 %i.cx, i64 24, i64 16
  %.1.in.i.i.i.i74 = getelementptr i8, ptr %.04.i.i.i.i70, i64 %.1.in.v.i.i.i.i73
  %.1.i.i.i.i75 = load ptr, ptr %.1.in.i.i.i.i74, align 8, !tbaa !263 ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %.1.i.i.i.i75, null
  br i1 %.not.i.i.i.i76, label %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77, label %.lr.ph.i.i.i.i69, !llvm.loop !5

_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77: ; preds = %.lr.ph.i.i.i.i69
  %i.cy = icmp eq ptr %.19.i.i.i.i72, %i.bd
  br i1 %i.cy, label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit80, label %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i78

_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i78: ; preds = %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77
  %i.cz = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !325
  %i.db = icmp ult i32 %i.cj, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i72, i64 40
  %spec.select = select i1 %i.db, ptr %i.bg, ptr %i.dc
  br label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit80

_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit80: ; preds = %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i78, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77
  %.1.i66 = phi ptr [ %i.bg, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i77 ], [ %spec.select, %_ZNKSt3mapIN4llvm8RegisterEN12_GLOBAL__N_111LatticeCellESt4lessIS1_ESaISt4pairIKS1_S3_EEE4findERS7_.exit.i78 ]
  %i.dd = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.cu, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(40) %.1.i66, ptr noundef nonnull align 8 dereferenceable(40) %4) #24
  br i1 %i.dg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit80
  %i.dh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_111LatticeCell4meetERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %.val.pre = load i8, ptr %2, align 8
  br label %bb.q

bb.p:                                             ; preds = %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit80
  %i.di = and i8 %i.bk, 3
  %i.dj = icmp ne i8 %i.di, 2
  %i.dk = and i8 %i.bk, -64
  %i.dl = or disjoint i8 %i.dk, 2                 ; 2 uses
  store i8 %i.dl, ptr %2, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val = phi i8 [ %.val.pre, %bb.o ], [ %i.dl, %bb.p ] ; 2 uses
  %i.dm = phi i1 [ %i.dh, %bb.o ], [ %i.dj, %bb.p ]
  %i.dn = or i1 %.0110, %i.dm                     ; 2 uses
  call fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator7CellMap6updateEN4llvm8RegisterERKNS_11LatticeCellE(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, i32 %i.h, ptr noundef nonnull align 8 dereferenceable(40) %2)
  %i.do = and i8 %.val, 3
  %i.dp = icmp eq i8 %i.do, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %i.dp, label %.thread98, label %.thread90

.thread98:                                        ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.dn, label %bb.r, label %.thread103

.thread90:                                        ; preds = %bb.q, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit, %bb.n, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65
  %i.dq = phi i8 [ %.val, %bb.q ], [ %i.bk, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit ], [ %i.bk, %bb.n ], [ %i.bk, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65 ]
  %.1.ph = phi i1 [ %i.dn, %bb.q ], [ %.0110, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit ], [ %.0110, %bb.n ], [ %.0110, %_ZNKSt8_Rb_treeIN4llvm8RegisterESt4pairIKS1_N12_GLOBAL__N_111LatticeCellEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %.thread

.thread:                                          ; preds = %.lr.ph.split, %_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i, %bb.l, %.thread90
  %i.dr = phi i8 [ %i.dq, %.thread90 ], [ %i.bk, %bb.l ], [ %i.bk, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i ], [ %i.bk, %_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %i.bk, %.lr.ph.split ]
  %.289 = phi i1 [ %.1.ph, %.thread90 ], [ %.0110, %bb.l ], [ %.0110, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i.i ], [ %.0110, %_ZNKSt8_Rb_treeISt4pairIjjES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS1_EPKSt18_Rb_tree_node_baseRKS1_.exit.i.i ], [ %.0110, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ds = icmp samesign ult i64 %indvars.iv.next, %i.bj
  br i1 %i.ds, label %.lr.ph.split, label %.thread93, !llvm.loop !682

.thread93:                                        ; preds = %.thread
  br i1 %.289, label %bb.r, label %.thread103

bb.r:                                             ; preds = %.thread98, %.thread93
  call fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator11visitUsesOfEj(ptr noundef nonnull align 8 dereferenceable(360) %0, i32 noundef %i.h)
  br label %.thread103

.thread103:                                       ; preds = %.thread98, %.lr.ph, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit49, %bb.r, %.thread93
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt3setISt4pairIjjESt4lessIS1_ESaIS1_EE5countERKS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.b

bb.t:                                             ; preds = %.thread103, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3getEN4llvm8RegisterE.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_122MachineConstPropagator14visitNonBranchERKN4llvm12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.(anonymous namespace)::MachineConstPropagator::CellMap", align 8 ; 12 uses
  %3 = alloca %"class.(anonymous namespace)::LatticeCell", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !194
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !195
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !196
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !197
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !198
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -64
  %i.i = or disjoint i8 %i.h, 1
  store i8 %i.i, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !tbaa !193
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8
  %i.m = and i8 %i.l, -64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false), !tbaa !193
  %i.o = or disjoint i8 %i.m, 2
  store i8 %i.o, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !295, !nonnull !149, !align !150 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(128) %i.r, ptr noundef nonnull align 8 dereferenceable(128) %2) #24
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !309  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i24, ptr %i.y, align 8              ; 2 uses
  %i.aa = zext i24 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx ; 2 uses
  %.not78 = icmp eq i24 %i.z, 0
  br i1 %.not78, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %i.v, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit.thread.us
  %.079.us = phi ptr [ %i.bn, %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit.thread.us ], [ %i.x, %.lr.ph ] ; 3 uses
  %i.ah = load i32, ptr %.079.us, align 8
  %i.ai = and i32 %i.ah, 16777471
  %or.cond.us = icmp eq i32 %i.ai, 16777216
  br i1 %or.cond.us, label %bb.b, label %_ZNK12_GLOBAL__N_122MachineConstPropagator7CellMap3hasEN4llvm8RegisterE.exit.thread.us

end_hunk_0
