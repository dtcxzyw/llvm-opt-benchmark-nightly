inline.NumInlined: 2170
inline.NumDeleted: 1074
begin_hunk_0_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a
.lr.ph85:                                         ; preds = %._crit_edge68, %._crit_edge81
  %i.bo = phi ptr [ %i.dg, %._crit_edge81 ], [ %i.t, %._crit_edge68 ]
  %i.bp = phi i64 [ %i.db, %._crit_edge81 ], [ 0, %._crit_edge68 ] ; 3 uses
  %.05883 = phi i32 [ %.2.lcssa, %._crit_edge81 ], [ 0, %._crit_edge68 ] ; 4 uses
  %.05982 = phi i32 [ %i.da, %._crit_edge81 ], [ 0, %._crit_edge68 ]
  %i.bq = getelementptr inbounds nuw [736 x i8], ptr %i.bo, i64 %i.bp ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 728
  %i.bs = load i8, ptr %i.br, align 8, !range !4, !noundef !5
end_hunk_0
begin_hunk_1_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a
  %i.bw = load ptr, ptr %i.h, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = zext i32 %.05883 to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  store ptr %i.bv, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %i.h, align 8             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a
  br i1 %.not89, label %._crit_edge72, label %.lr.ph71

._crit_edge72:                                    ; preds = %bb.j, %bb.g
  %i.ce = add i32 %.05883, 1
  br label %bb.k

.lr.ph71:                                         ; preds = %bb.g, %bb.j
end_hunk_2
begin_hunk_3_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a
  br i1 %i.cq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %.05883, ptr %i.ck, align 8
  store ptr null, ptr %i.cn, align 8
  %.pre97 = load ptr, ptr %i.h, align 8
  br label %bb.j
end_hunk_3
begin_hunk_4_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a
  br i1 %i.cv, label %.lr.ph71, label %._crit_edge72, !llvm.loop !83

bb.k:                                             ; preds = %._crit_edge72, %.lr.ph85
  %.1 = phi i32 [ %i.ce, %._crit_edge72 ], [ %.05883, %.lr.ph85 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 696 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 704 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6Assimp11ASEImporter20BuildMaterialIndicesEv:bb.a

._crit_edge81:                                    ; preds = %bb.p, %bb.k
  %.2.lcssa = phi i32 [ %.1, %bb.k ], [ %.3, %bb.p ]
  %i.da = add i32 %.05982, 1                      ; 2 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
end_hunk_5
begin_hunk_6_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br label %bb.b

._crit_edge282:                                   ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %.sroa.20.0.lcssa.a = phi ptr [ null, %bb.a ], [ %.sroa.20.1.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.12.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %.sroa.0152.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0152.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 6 uses
  %i.n = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.o = ptrtoint ptr %.sroa.0152.0.lcssa to i64  ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br i1 %.not, label %.loopexit, label %bb.aw

bb.b:                                             ; preds = %.lr.ph281, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.0152.0279 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.0152.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 12 uses
  %.sroa.12.0278 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.12.1, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 10 uses
  %.sroa.20.0277 = phi ptr [ null, %.lr.ph281 ], [ %.sroa.20.1.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 8 uses
  %.sroa.0148.0276 = phi ptr [ %i.e, %.lr.ph281 ], [ %i.ia, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.0148.0276, align 8  ; 17 uses
  %i.u = load i64, ptr %i.c, align 8              ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 48
end_hunk_7
begin_hunk_8_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
          to label %bb.h unwind label %bb.z

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq ptr %.sroa.12.0278, %.sroa.20.0277
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ae, ptr %.sroa.12.0278, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.af = ptrtoint ptr %.sroa.12.0278 to i64
  %i.ag = ptrtoint ptr %.sroa.0152.0279 to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.k, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_8
begin_hunk_9_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br i1 %i.ar, label %bb.l, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.l:                                             ; preds = %.noexc89
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.sroa.0152.0279, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.l, %.noexc89
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0152.0279, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0279, i64 noundef %i.ah) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
end_hunk_9
begin_hunk_10_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.i
  %i.at = phi ptr [ %.pre, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ae, %bb.i ] ; 18 uses
  %.sroa.20.4.a = phi ptr [ %i.as, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0277, %bb.i ] ; 3 uses
  %.pn = phi ptr [ %i.aq, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.12.0278, %bb.i ]
  %.sroa.0152.4 = phi ptr [ %i.ap, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0152.0279, %bb.i ] ; 3 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
end_hunk_10
begin_hunk_11_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br label %bb.ae

.loopexit181:                                     ; preds = %bb.f, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.sroa.20.0277.lcssa = phi ptr [ %.sroa.20.0277, %bb.f ], [ %.sroa.12.0278, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az
end_hunk_11
begin_hunk_12_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.d, %bb.e, %bb.c, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.au
  %.sroa.20.1.a = phi ptr [ %.sroa.20.4.a, %bb.au ], [ %.sroa.20.0277, %bb.e ], [ %.sroa.20.0277, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.20.0277, %bb.c ], [ %.sroa.20.0277, %bb.d ] ; 2 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.2, %bb.au ], [ %.sroa.12.0278, %bb.e ], [ %.sroa.12.0278, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.12.0278, %bb.c ], [ %.sroa.12.0278, %bb.d ] ; 2 uses
  %.sroa.0152.1 = phi ptr [ %.sroa.0152.4, %bb.au ], [ %.sroa.0152.0279, %bb.e ], [ %.sroa.0152.0279, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.sroa.0152.0279, %bb.c ], [ %.sroa.0152.0279, %bb.d ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0148.0276, i64 8 ; 2 uses
  %.not177 = icmp eq ptr %i.ia, %i.g
  br i1 %.not177, label %._crit_edge282, label %bb.b, !llvm.loop !121

end_hunk_12
begin_hunk_13_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 1112 ; 2 uses
  store ptr %i.if, ptr %i.ig, align 8
  %.not289 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.0152.0.lcssa
  br i1 %.not289, label %.loopexit, label %.lr.ph287

bb.ay:                                            ; preds = %bb.aw
end_hunk_13
begin_hunk_14_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
.lr.ph287:                                        ; preds = %bb.ax, %.lr.ph287
  %i.ii = phi i64 [ %i.io, %.lr.ph287 ], [ 0, %bb.ax ] ; 2 uses
  %.0285 = phi i32 [ %i.in, %.lr.ph287 ], [ 0, %bb.ax ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0152.0.lcssa, i64 %i.ii
  %i.ik = load ptr, ptr %i.ij, align 8
  %i.il = load ptr, ptr %i.ig, align 8
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ii
end_hunk_14
begin_hunk_15_@_ZN6Assimp11ASEImporter8AddNodesERKSt6vectorIPNS_3ASE8BaseNodeESaIS4_EEP6aiNodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK12aiMatrix4x4tIfE:bb.a
  br i1 %i.ip, label %.lr.ph287, label %.loopexit.thread, !llvm.loop !122

.loopexit:                                        ; preds = %bb.ax, %._crit_edge282
  %.not.i.i.i = icmp eq ptr %.sroa.0152.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.lr.ph287, %.loopexit
  %i.iq = ptrtoint ptr %.sroa.20.0.lcssa.a to i64
  %i.ir = sub i64 %i.iq, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.0.lcssa, i64 noundef %i.ir) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.az:                                            ; preds = %.loopexit181, %.loopexit.split-lp, %bb.av, %bb.aa, %bb.z, %bb.ay
  %.sroa.20.3.a = phi ptr [ %.sroa.20.0.lcssa.a, %bb.ay ], [ %.sroa.20.0277, %bb.z ], [ %.sroa.20.4.a, %bb.aa ], [ %.sroa.20.4.a, %bb.av ], [ %.sroa.20.0277.lcssa, %.loopexit181 ], [ %.sroa.12.0278, %.loopexit.split-lp ]
  %.sroa.0152.3 = phi ptr [ %.sroa.0152.0.lcssa, %bb.ay ], [ %.sroa.0152.0279, %bb.z ], [ %.sroa.0152.4, %bb.aa ], [ %.sroa.0152.4, %bb.av ], [ %.sroa.0152.0279, %.loopexit181 ], [ %.sroa.0152.0279, %.loopexit.split-lp ] ; 3 uses
  %.pn84.pn.pn.pn = phi { ptr, i32 } [ %i.ih, %bb.ay ], [ %i.ff, %bb.z ], [ %lpad.phi186, %bb.aa ], [ %.pn84, %bb.av ], [ %lpad.loopexit, %.loopexit181 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i111 = icmp eq ptr %.sroa.0152.3, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112, label %.thread168

.thread168:                                       ; preds = %bb.az
  %i.is = ptrtoint ptr %.sroa.20.3.a to i64
  %i.it = ptrtoint ptr %.sroa.0152.3 to i64
  %i.iu = sub i64 %i.is, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0152.3, i64 noundef %i.iu) #24
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit112:        ; preds = %bb.az, %.thread168
end_hunk_15
begin_hunk_16_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc115, %bb.l
  %.sroa.0157.0.a = phi ptr [ null, %bb.l ], [ %i.fp, %.noexc115 ] ; 10 uses
  %.sroa.15163.0 = phi ptr [ null, %bb.l ], [ %i.fr, %.noexc115 ] ; 4 uses
  %i.fs = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ft = load ptr, ptr %i.v, align 8
  %.not208249 = icmp eq ptr %i.fs, %i.ft
end_hunk_16
begin_hunk_17_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  %i.gb = zext i32 %i.ga to i64                   ; 2 uses
  %i.gc = lshr i32 %i.ga, 6
  %.zext = zext nneg i32 %i.gc to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext
  %i.ge = and i64 %i.gb, 63
  %i.gf = shl nuw i64 1, %i.ge
  %i.gg = load i64, ptr %i.gd, align 8
end_hunk_17
begin_hunk_18_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hy = lshr i32 %i.hv, 6
  %.zext207 = zext nneg i32 %i.hy to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext207 ; 2 uses
  %i.ia = and i64 %i.hw, 63
  %i.ib = shl nuw i64 1, %i.ia
  %i.ic = load i64, ptr %i.hz, align 8
end_hunk_18
begin_hunk_19_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  %i.ih = zext i32 %i.ig to i64                   ; 2 uses
  %i.ii = lshr i32 %i.ig, 6
  %.zext.1 = zext nneg i32 %i.ii to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext.1
  %i.ik = and i64 %i.ih, 63
  %i.il = shl nuw i64 1, %i.ik
  %i.im = load i64, ptr %i.ij, align 8
end_hunk_19
begin_hunk_20_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  store float %.sroa.14.1.1, ptr %.sroa.14.0..sroa_idx.1, align 4
  %i.jw = lshr i32 %i.jt, 6
  %.zext207.1 = zext nneg i32 %i.jw to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext207.1 ; 2 uses
  %i.jy = and i64 %i.ju, 63
  %i.jz = shl nuw i64 1, %i.jy
  %i.ka = load i64, ptr %i.jx, align 8
end_hunk_20
begin_hunk_21_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = lshr i32 %i.ke, 6
  %.zext.2 = zext nneg i32 %i.kg to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext.2
  %i.ki = and i64 %i.kf, 63
  %i.kj = shl nuw i64 1, %i.ki
  %i.kk = load i64, ptr %i.kh, align 8
end_hunk_21
begin_hunk_22_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  store float %.sroa.14.1.2, ptr %.sroa.14.0..sroa_idx.2, align 4
  %i.lt = lshr i32 %i.lq, 6
  %.zext207.2 = zext nneg i32 %i.lt to i64
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0157.0.a, i64 %.zext207.2 ; 2 uses
  %i.lv = and i64 %i.lr, 63
  %i.lw = shl nuw i64 1, %i.lv
  %i.lx = load i64, ptr %i.lu, align 8
end_hunk_22
begin_hunk_23_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
  br label %bb.ah

bb.ac:                                            ; preds = %._crit_edge252
  %.not.i.i124 = icmp eq ptr %.sroa.0157.0.a, null
  br i1 %.not.i.i124, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mf = ptrtoint ptr %.sroa.15163.0 to i64
  %i.mg = ptrtoint ptr %.sroa.0157.0.a to i64
  %i.mh = sub i64 %i.mf, %i.mg                    ; 2 uses
  %i.mi = ashr exact i64 %i.mh, 3
  %i.mj = sub nsw i64 0, %i.mi
  %i.mk = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.mj
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mh) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

end_hunk_23
begin_hunk_24_@_Z34ComputeNormalsWithSmoothingsGroupsIN6Assimp3ASE4FaceEEvR23MeshWithSmoothingGroupsIT_E:bb.a
bb.ag:                                            ; preds = %._crit_edge252
  %i.my = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i126 = icmp eq ptr %.sroa.0157.0.a, null
  br i1 %.not.i.i126, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127, label %bb.ah

bb.ah:                                            ; preds = %.thread, %bb.ag
  %.pn.pn.pn204 = phi { ptr, i32 } [ %i.hf, %.thread ], [ %i.my, %bb.ag ]
  %i.mz = ptrtoint ptr %.sroa.15163.0 to i64
  %i.na = ptrtoint ptr %.sroa.0157.0.a to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 2 uses
  %i.nc = ashr exact i64 %i.nb, 3
  %i.nd = sub nsw i64 0, %i.nc
  %i.ne = getelementptr inbounds [8 x i8], ptr %.sroa.15163.0, i64 %i.nd
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.nb) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit127

end_hunk_24
