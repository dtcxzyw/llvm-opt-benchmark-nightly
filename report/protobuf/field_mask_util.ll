inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_right_to_leftEhPSR_PSP_:bb.a
  br label %._crit_edge.i.i.i.i.i.i.i.i61

._crit_edge.i.i.i.i.i.i.i.i61:                    ; preds = %.noexc.i.i.i.i.i.i.i67, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.bt = phi ptr [ %i.br, %.noexc.i.i.i.i.i.i.i67 ], [ %i.bm, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.bp, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !15
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bn, i64 %i.bp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i.i.i.i61
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !7   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !30
  %i.bx = load ptr, ptr %i.bk, align 8, !tbaa !33
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bv
  store i8 0, ptr %i.by, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i63 = load i64, ptr %i.ca, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i63, ptr %i.bz, align 8, !tbaa !107
  store ptr null, ptr %i.ca, align 8, !tbaa !107
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i64
  %i.cg = getelementptr i8, ptr %2, i64 10        ; 5 uses
  %.val54 = load i8, ptr %i.cg, align 1, !tbaa !15 ; 2 uses
  %i.ch = zext i8 %.val54 to i32
  %i.ci = sub nsw i32 %i.ch, %i.ag
  %i.cj = zext i8 %1 to i64                       ; 3 uses
  %i.ck = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.cj ; 2 uses
  %narrow = mul nsw i32 %i.ci, 40
  %.idx.i69 = sext i32 %narrow to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i69
  %.not1.i70 = icmp eq i8 %.val54, %1
  br i1 %.not1.i70, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79
  %.03.i73 = phi ptr [ %i.dh, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.aj, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 8 uses
  %.0122.i74 = phi ptr [ %i.dg, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79 ], [ %i.ck, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68 ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.03.i73, i64 16 ; 3 uses
  store ptr %i.cm, ptr %.03.i73, align 8, !tbaa !39
  %i.cn = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cp, ptr %i.a, align 8, !tbaa !7
  %i.cq = icmp ugt i64 %i.cp, 15
  br i1 %i.cq, label %.noexc.i.i.i.i.i.i.i82, label %._crit_edge.i.i.i.i.i.i.i.i75

.noexc.i.i.i.i.i.i.i82:                           ; preds = %.lr.ph.i72
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i73, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %.03.i73, align 8, !tbaa !33
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i75

._crit_edge.i.i.i.i.i.i.i.i75:                    ; preds = %.noexc.i.i.i.i.i.i.i82, %.lr.ph.i72
  %i.ct = phi ptr [ %i.cr, %.noexc.i.i.i.i.i.i.i82 ], [ %i.cm, %.lr.ph.i72 ] ; 2 uses
  switch i64 %i.cp, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !15
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i75
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cn, i64 %i.cp, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i75
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.03.i73, i64 8
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !30
  %i.cx = load ptr, ptr %.03.i73, align 8, !tbaa !33
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cv
  store i8 0, ptr %i.cy, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %.03.i73, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i77 = load i64, ptr %i.da, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i77, ptr %i.cz, align 8, !tbaa !107
  store ptr null, ptr %i.da, align 8, !tbaa !107
  %i.db = load ptr, ptr %.0122.i74, align 8, !tbaa !33 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !15
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i76, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i78
  %i.dg = getelementptr inbounds nuw i8, ptr %.0122.i74, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.03.i73, i64 40
  %.not.i80 = icmp eq ptr %i.dg, %i.cl
  br i1 %.not.i80, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83, label %.lr.ph.i72, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i79, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit68
  %i.di = getelementptr i8, ptr %0, i64 11
  %.val49 = load i8, ptr %i.di, align 1, !tbaa !15
  %.not.i84 = icmp eq i8 %.val49, 0
  br i1 %.not.i84, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.not7 = icmp eq i8 %1, 0
  br i1 %.not7, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader1
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %xtraiter = and i64 %i.cj, 1
  %i.dl = icmp eq i32 %i.ah, 0
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cj, 254
  br label %bb.j

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod19 = trunc i8 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod19)
  %.val46.epil = load i8, ptr %i.e, align 2, !tbaa !15
  %i.dm = trunc i64 %indvars.iv.epil.init to i8
  %i.dn = add i8 %i.dm, 1
  %i.do = add i8 %.val46.epil, %i.dn              ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.epil.init
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103 ; 3 uses
  %i.dr = zext i8 %i.do to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dr
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !103
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i8 %i.do, ptr %i.dt, align 1, !tbaa !15
  store ptr %0, ptr %i.dq, align 8, !tbaa !103
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %.preheader1
  %.val453 = load i8, ptr %i.cg, align 1, !tbaa !15
  %.not4 = icmp ult i8 %.val453, %1
  br i1 %.not4, label %.loopexit, label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %.val46 = load i8, ptr %i.e, align 2, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dv = trunc nuw i64 %indvars.iv.next to i8
  %i.dw = add i8 %.val46, %i.dv                   ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !103 ; 3 uses
  %i.dz = zext i8 %i.dw to i64
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dz
  store ptr %i.dy, ptr %i.ea, align 8, !tbaa !103
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i8 %i.dw, ptr %i.eb, align 1, !tbaa !15
  store ptr %0, ptr %i.dy, align 8, !tbaa !103
  %.val46.1 = load i8, ptr %i.e, align 2, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ec = trunc nuw i64 %indvars.iv.next.1 to i8
  %i.ed = add i8 %.val46.1, %i.ec                 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv.next
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !103 ; 3 uses
  %i.eg = zext i8 %i.ed to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.eg
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !103
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i8 %i.ed, ptr %i.ei, align 1, !tbaa !15
  store ptr %0, ptr %i.ef, align 8, !tbaa !103
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.j, !llvm.loop !215

bb.k:                                             ; preds = %.lr.ph6, %bb.k
  %.05 = phi i8 [ 0, %.lr.ph6 ], [ %i.eq, %bb.k ] ; 4 uses
  %i.ej = add i8 %.05, %1
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !103 ; 3 uses
  %i.en = zext i8 %.05 to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.en
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !103
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %.05, ptr %i.ep, align 1, !tbaa !15
  store ptr %2, ptr %i.em, align 8, !tbaa !103
  %i.eq = add i8 %.05, 1                          ; 2 uses
  %i.er = zext i8 %i.eq to i32
  %.val45 = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.es = zext i8 %.val45 to i32
  %i.et = sub nsw i32 %i.es, %i.ag
  %.not = icmp slt i32 %i.et, %i.er
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !216

.loopexit:                                        ; preds = %bb.k, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit83
  %.val44 = load i8, ptr %i.e, align 2, !tbaa !15
  %i.eu = add i8 %.val44, %1
  store i8 %i.eu, ptr %i.e, align 2, !tbaa !15
  %.val = load i8, ptr %i.cg, align 1, !tbaa !15
  %i.ev = sub i8 %.val, %1
  store i8 %i.ev, ptr %i.cg, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = getelementptr i8, ptr %2, i64 10         ; 4 uses
  %.val58 = load i8, ptr %i.e, align 1, !tbaa !15 ; 2 uses
  %i.f = zext i8 %1 to i32                        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.not1.i = icmp eq i8 %.val58, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.h = zext i8 %.val58 to i64                   ; 2 uses
  %i.i = zext i8 %1 to i64
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.j = getelementptr [40 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr [40 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.m, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 4 uses
  %.0142.i = phi ptr [ %i.n, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.l, %.lr.ph.preheader.i ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.03.i, i64 -40 ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %.0142.i, i64 -40 ; 4 uses
  %i.o = getelementptr inbounds i8, ptr %.03.i, i64 -24 ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !39
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !33   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.0142.i, i64 -32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i64 %i.r, ptr %i.d, align 8, !tbaa !7
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.t = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !33
  %i.u = load i64, ptr %i.d, align 8, !tbaa !7
  store i64 %i.u, ptr %i.o, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.v = phi ptr [ %i.t, %.noexc.i.i.i.i.i.i.i ], [ %i.o, %.lr.ph.i ] ; 2 uses
  switch i64 %i.r, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.w = load i8, ptr %i.p, align 1, !tbaa !15
  store i8 %i.w, ptr %i.v, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.p, i64 %i.r, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i64, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.03.i, i64 -32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !30
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ab = getelementptr inbounds i8, ptr %.03.i, i64 -8
  %i.ac = getelementptr inbounds i8, ptr %.0142.i, i64 -8 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !107
  store ptr null, ptr %i.ac, align 8, !tbaa !107
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !33  ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.0142.i, i64 -24 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !15
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %.not.i = icmp eq ptr %i.n, %i.g
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit, label %.lr.ph.i, !llvm.loop !136

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %bb.a
  %i.ai = add nsw i32 %i.f, -1                    ; 3 uses
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val57 = load i8, ptr %i.ak, align 1, !tbaa !15
  %i.al = zext i8 %.val57 to i64
  %.val55 = load ptr, ptr %0, align 8, !tbaa !103
  %i.am = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.aj ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val55, i64 16
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.al ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 3 uses
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !39
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.as, ptr %i.c, align 8, !tbaa !7
  %i.at = icmp ugt i64 %i.as, 15
  br i1 %i.at, label %.noexc.i.i.i.i.i.i.i65, label %._crit_edge.i.i.i.i.i.i.i.i59

.noexc.i.i.i.i.i.i.i65:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.au = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.au, ptr %i.am, align 8, !tbaa !33
  %i.av = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i59

._crit_edge.i.i.i.i.i.i.i.i59:                    ; preds = %.noexc.i.i.i.i.i.i.i65, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit
  %i.aw = phi ptr [ %i.au, %.noexc.i.i.i.i.i.i.i65 ], [ %i.ap, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.as, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ax = load i8, ptr %i.aq, align 1, !tbaa !15
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.aq, i64 %i.as, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i.i.i.i.i59
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !30
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i61 = load i64, ptr %i.bd, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i61, ptr %i.bc, align 8, !tbaa !107
  store ptr null, ptr %i.bd, align 8, !tbaa !107
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !33 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !15
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i62
  %i.bj = getelementptr i8, ptr %0, i64 10        ; 7 uses
  %.val52 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.bk = zext i8 %.val52 to i32                  ; 2 uses
  %i.bl = sub nsw i32 %i.bk, %i.ai
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %.idx.i66 = mul nuw nsw i64 %i.aj, 40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i66
  %.not1.i67 = icmp eq i32 %i.ai, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE23rebalance_left_to_rightEhPSR_PSP_:bb.a
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i72, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i74
  %i.ck = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.03.i70, i64 40
  %.not.i76 = icmp eq ptr %i.ck, %i.bp
  br i1 %.not.i76, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i69, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i75
  %.val51.pre = load i8, ptr %i.bj, align 2, !tbaa !15
  %.pre = zext i8 %.val51.pre to i32
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit
  %.pre-phi = phi i32 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.bk, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit ]
  %.val54 = load ptr, ptr %0, align 8, !tbaa !103
  %.val56 = load i8, ptr %i.ak, align 8, !tbaa !15
  %i.cm = zext i8 %.val56 to i64
  %i.cn = sub nsw i32 %.pre-phi, %i.f
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %.val54, i64 16
  %i.cq = getelementptr inbounds nuw [40 x i8], ptr %i.cp, i64 %i.cm ; 7 uses
  %i.cr = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.co ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !39
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !7
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i.i.i.i.i.i.i85, label %._crit_edge.i.i.i.i.i.i.i.i79

.noexc.i.i.i.i.i.i.i85:                           ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cx = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cx, ptr %i.cq, align 8, !tbaa !33
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !7
  store i64 %i.cy, ptr %i.cs, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i79

._crit_edge.i.i.i.i.i.i.i.i79:                    ; preds = %.noexc.i.i.i.i.i.i.i85, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.cz = phi ptr [ %i.cx, %.noexc.i.i.i.i.i.i.i85 ], [ %i.cs, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit ] ; 2 uses
  switch i64 %i.cv, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !15
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i79
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.ct, i64 %i.cv, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i79
  %i.db = load i64, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !30
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db
  store i8 0, ptr %i.de, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.df = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i81 = load i64, ptr %i.dg, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i81, ptr %i.df, align 8, !tbaa !107
  store ptr null, ptr %i.dg, align 8, !tbaa !107
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !15
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i82
  %i.dm = getelementptr i8, ptr %0, i64 11
  %.val53 = load i8, ptr %i.dm, align 1, !tbaa !15
  %.not.i87 = icmp eq i8 %.val53, 0
  br i1 %.not.i87, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val50 = load i8, ptr %i.e, align 1, !tbaa !15 ; 5 uses
  %i.dn = add i8 %.val50, 1                       ; 2 uses
  %.not1 = icmp eq i8 %i.dn, 0
  br i1 %.not1, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 6 uses
  %i.dp = zext i8 %i.dn to i64                    ; 2 uses
  %i.dq = and i8 %.val50, 1
  %lcmp.mod.not.not = icmp eq i8 %i.dq, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.dr = add i8 %.val50, %1                      ; 2 uses
  %i.ds = zext i8 %.val50 to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !103 ; 3 uses
  %i.dv = zext i8 %i.dr to i64
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.dv
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !103
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %i.dr, ptr %i.dx, align 1, !tbaa !15
  store ptr %2, ptr %i.du, align 8, !tbaa !103
  %indvars.iv.next.prol = add nsw i64 %i.dp, -1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.dp, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i8 %.val50, 0
  br i1 %i.dy, label %.preheader, label %.lr.ph.new

.preheader:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %bb.j
  %.not463 = icmp eq i8 %1, 0
  br i1 %.not463, label %.loopexit, label %.lr.ph5

.lr.ph5:                                          ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.eb = add i8 %1, 1                            ; 2 uses
  %umax = call i8 @llvm.umax.i8(i8 %i.eb, i8 2)
  %wide.trip.count = zext i8 %umax to i64
  %i.ec = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter23 = and i64 %i.ec, 1
  %i.ed = icmp ult i8 %i.eb, 3
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph5.new

.lr.ph5.new:                                      ; preds = %.lr.ph5
  %unroll_iter = and i64 %i.ec, -2
  %invariant.op = sub i8 1, %1
  br label %bb.k

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %i.ee = trunc nuw i64 %indvars.iv to i8
  %i.ef = add i8 %i.ee, -1                        ; 2 uses
  %i.eg = add i8 %i.ef, %1                        ; 2 uses
  %i.eh = zext i8 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !103 ; 3 uses
  %i.ek = zext i8 %i.eg to i64
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.ek
  store ptr %i.ej, ptr %i.el, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 %i.eg, ptr %i.em, align 1, !tbaa !15
  store ptr %2, ptr %i.ej, align 8, !tbaa !103
  %i.en = trunc i64 %indvars.iv to i8
  %i.eo = add i8 %i.en, -2                        ; 2 uses
  %i.ep = add i8 %i.eo, %1                        ; 2 uses
  %i.eq = zext i8 %i.eo to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !103 ; 3 uses
  %i.et = zext i8 %i.ep to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.et
  store ptr %i.es, ptr %i.eu, align 8, !tbaa !103
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i8 %i.ep, ptr %i.ev, align 1, !tbaa !15
  store ptr %2, ptr %i.es, align 8, !tbaa !103
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.ew = and i64 %indvars.iv.next.1, 255
  %.not.1 = icmp eq i64 %i.ew, 0
  br i1 %.not.1, label %.preheader, label %.lr.ph.new, !llvm.loop !217

bb.k:                                             ; preds = %bb.k, %.lr.ph5.new
  %indvars.iv7 = phi i64 [ 1, %.lr.ph5.new ], [ %indvars.iv.next8.1, %bb.k ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph5.new ], [ %niter.next.1, %bb.k ]
  %i.ex = add nsw i64 %indvars.iv7, -1            ; 2 uses
  %.val49 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.ey = trunc nuw i64 %indvars.iv7 to i8
  %i.ez = sub i8 %i.ey, %1
  %i.fa = add i8 %i.ez, %.val49
  %i.fb = zext i8 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fb
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !103 ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ex
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !103
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = trunc nuw i64 %i.ex to i8
  store i8 %i.fg, ptr %i.ff, align 1, !tbaa !15
  store ptr %2, ptr %i.fd, align 8, !tbaa !103
  %.val49.1 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fh = trunc i64 %indvars.iv7 to i8
  %.reass = add i8 %i.fh, %invariant.op
  %i.fi = add i8 %.reass, %.val49.1
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !103 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv7
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !103
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fo = trunc nuw i64 %indvars.iv7 to i8
  store i8 %i.fo, ptr %i.fn, align 1, !tbaa !15
  store ptr %2, ptr %i.fl, align 8, !tbaa !103
  %indvars.iv.next8.1 = add nuw nsw i64 %indvars.iv7, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !218

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.k
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph5
  %indvars.iv7.epil.init = phi i64 [ 1, %.lr.ph5 ], [ %indvars.iv.next8.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.ec to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.fp = add nsw i64 %indvars.iv7.epil.init, -1  ; 2 uses
  %.val49.epil = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fq = trunc nuw i64 %indvars.iv7.epil.init to i8
  %i.fr = sub i8 %i.fq, %1
  %i.fs = add i8 %i.fr, %.val49.epil
  %i.ft = zext i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !103 ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fp
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !103
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = trunc nuw i64 %i.fp to i8
  store i8 %i.fy, ptr %i.fx, align 1, !tbaa !15
  store ptr %2, ptr %i.fv, align 8, !tbaa !103
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit86
  %.val47 = load i8, ptr %i.bj, align 2, !tbaa !15
  %i.fz = sub i8 %.val47, %1
  store i8 %i.fz, ptr %i.bj, align 2, !tbaa !15
  %.val = load i8, ptr %i.e, align 1, !tbaa !15
  %i.ga = add i8 %.val, %1
  store i8 %i.ga, ptr %i.e, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr nofree noundef nonnull align 1 captures(address) dereferenceable(1) %0, i32 noundef %1, ptr noundef initializes((10, 11)) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  switch i32 %1, label %bb.c [
    i32 0, label %bb.b
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 10
  %.val31 = load i8, ptr %i.d, align 1, !tbaa !15
  %i.e = add i8 %.val31, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 10
  %.val39 = load i8, ptr %i.f, align 1, !tbaa !15
  %i.g = lshr i8 %.val39, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sink = phi i8 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i8 %.sink, ptr %i.h, align 1, !tbaa !15
  %i.i = getelementptr i8, ptr %0, i64 10         ; 6 uses
  %.val30 = load i8, ptr %i.i, align 1, !tbaa !15
  %i.j = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %i.k = sub i8 %.val30, %.sink                   ; 3 uses
  store i8 %i.k, ptr %i.i, align 1, !tbaa !15
  %.val37 = load i8, ptr %i.j, align 1, !tbaa !15 ; 2 uses
  %i.l = zext i8 %.val37 to i64
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.m ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.l, 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i
  %.not1.i = icmp eq i8 %.val37, 0
  br i1 %.not1.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, %.lr.ph.preheader.i
  %.03.i = phi ptr [ %i.am, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.q, %.lr.ph.preheader.i ] ; 8 uses
  %.0122.i = phi ptr [ %i.al, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i ], [ %i.o, %.lr.ph.preheader.i ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.03.i, align 8, !tbaa !39
  %i.s = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 %i.u, ptr %i.c, align 8, !tbaa !7
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.03.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %.03.i, align 8, !tbaa !33
  %i.x = load i64, ptr %i.c, align 8, !tbaa !7
  store i64 %i.x, ptr %i.r, align 8, !tbaa !15
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i, %.lr.ph.i
  %i.y = phi ptr [ %i.w, %.noexc.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  switch i64 %i.u, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !15
  store i8 %i.z, ptr %i.y, align 1, !tbaa !15
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !7   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.03.i, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !30
  %i.ac = load ptr, ptr %.03.i, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.03.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %.0122.i, i64 32 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !tbaa !107
  store i64 %.val.i.i.i.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !107
  store ptr null, ptr %i.af, align 8, !tbaa !107
  %i.ag = load ptr, ptr %.0122.i, align 8, !tbaa !33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20, !inline_history !131
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.i, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.03.i, i64 40
  %.not.i = icmp eq ptr %i.al, %i.p
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, label %.lr.ph.i, !llvm.loop !132

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i
  %.pre = load i8, ptr %i.i, align 1, !tbaa !15
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit, %bb.d
  %i.an = phi i8 [ %.pre, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit.loopexit ], [ %i.k, %bb.d ]
  %i.ao = add i8 %i.an, -1                        ; 2 uses
  store i8 %i.ao, ptr %i.i, align 1, !tbaa !15
  %.val34 = load ptr, ptr %0, align 8, !tbaa !103 ; 5 uses
  %i.ap = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %.val36 = load i8, ptr %i.ap, align 8, !tbaa !15 ; 4 uses
  %i.aq = zext i8 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %i.aq ; 3 uses
  %i.as = zext i8 %.val36 to i32
  %i.at = getelementptr i8, ptr %.val34, i64 10   ; 3 uses
  %.val21.i = load i8, ptr %i.at, align 1, !tbaa !15 ; 2 uses
  %i.au = icmp ult i8 %.val36, %.val21.i
  %i.av = zext i8 %.val36 to i64                  ; 2 uses
  br i1 %i.au, label %.lr.ph.preheader.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE19transfer_n_backwardEmmmPSR_PSP_.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE10transfer_nEmmmPSR_PSP_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.val34, i64 16
  %i.ax = getelementptr [40 x i8], ptr %i.aw, i64 %i.av ; 3 uses
  %narrow.i = sub nuw i8 %.val21.i, %.val36
  %i.ay = zext i8 %narrow.i to i64                ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ay, 40
  %i.az = getelementptr i8, ptr %i.ax, i64 40
  %i.ba = getelementptr [40 x i8], ptr %i.az, i64 %i.ay
  %i.bb = getelementptr i8, ptr %i.ax, i64 %.idx.i.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i, %.lr.ph.preheader.i.i
  %.03.i.i = phi ptr [ %i.bc, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.ba, %.lr.ph.preheader.i.i ] ; 4 uses
  %.0142.i.i = phi ptr [ %i.bd, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i ], [ %i.bb, %.lr.ph.preheader.i.i ] ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %.03.i.i, i64 -40 ; 5 uses
  %i.bd = getelementptr inbounds i8, ptr %.0142.i.i, i64 -40 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %.03.i.i, i64 -24 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !39
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.0142.i.i, i64 -32
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.bh, ptr %i.b, align 8, !tbaa !7
  %i.bi = icmp ugt i64 %i.bh, 15
  br i1 %i.bi, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !33
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !7
  store i64 %i.bk, ptr %i.be, align 8, !tbaa !15
end_hunk_1
