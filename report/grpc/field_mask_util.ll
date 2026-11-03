Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/field_mask_util?download=true
inline.NumInlined: 2143
inline.NumDeleted: 855
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  br i1 %i.uu, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i12.i.i.i.i
  %i.uv = load i64, ptr %i.ut, align 8, !tbaa !30, !noalias !264
  %i.uw = add i64 %i.uv, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uw) #22, !noalias !264, !inline_history !5
  br label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i12.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i14.i.i.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.0122.i.i.i.i.i, i64 40 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 40
  %.not.i15.i.i.i.i = icmp eq ptr %i.ux, %i.ua
  br i1 %.not.i15.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i, label %.lr.ph.i.i46.i.i.i, !llvm.loop !6

_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i, %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi i32 [ %i.st, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.st, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.091.i.i.i, %bb.co ], [ %.sroa.13.091.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.117.lcssa.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteIS5_EED2Ev.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.063.090.i.i.i, %bb.co ], [ %.sroa.063.090.i.i.i, %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEPNS1_13map_slot_typeIS9_SJ_EESU_PSP_.exit.i.i.i.i.i ] ; 2 uses
  %i.uz = getelementptr i8, ptr %.sroa.0.0.i.i.i.i, i64 10 ; 2 uses
  %.val.i47.i.i.i = load i8, ptr %i.uz, align 1, !tbaa !30, !noalias !264
  %i.va = add i8 %.val.i47.i.i.i, -1
  store i8 %i.va, ptr %i.uz, align 1, !tbaa !30, !noalias !264
  %i.vb = load i64, ptr %i.ow, align 8, !tbaa !87, !noalias !264
  %i.vc = add i64 %i.vb, -1
  store i64 %i.vc, ptr %i.ow, align 8, !tbaa !87, !noalias !264
  %i.vd = invoke fastcc { ptr, i32 } @_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE22rebalance_after_deleteENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr nonnull %.sroa.0.0.i.i.i.i, i32 %.sroa.10.0.i.i.i.i)
          to label %.noexc134.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc134.i:                                      ; preds = %_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE8transferEmmPSR_PSP_.exit.i.i.i.i
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i32 } %i.vd, 0 ; 7 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i32 } %i.vd, 1 ; 3 uses
  br i1 %.not.i.i45.i.i.i, label %bb.cr, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.cr:                                            ; preds = %.noexc134.i
  %i.ve = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 11
  %.val1.i.i.i.i.i.i = load i8, ptr %i.ve, align 1, !tbaa !30, !noalias !264
  %.not.i.i18.i.i.i.i = icmp eq i8 %.val1.i.i.i.i.i.i, 0
  br i1 %.not.i.i18.i.i.i.i, label %.thread.i.i26.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vf = add nsw i32 %.fca.1.extract.i.i.i.i, 1  ; 3 uses
  %i.vg = getelementptr i8, ptr %.fca.0.extract.i.i.i.i, i64 10
  %.val.i.i19.i.i.i.i = load i8, ptr %i.vg, align 1, !tbaa !30, !noalias !264
  %i.vh = zext i8 %.val.i.i19.i.i.i.i to i32
  %i.vi = icmp eq i32 %i.vf, %i.vh
  br i1 %i.vi, label %.lr.ph.i.i.i24.i.i.i.i, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

.lr.ph.i.i.i24.i.i.i.i:                           ; preds = %bb.cs, %bb.ct
  %.01527.i.i.i.i.i.i.i = phi ptr [ %.015.val19.i.i.i.i.i.i.i, %bb.ct ], [ %.fca.0.extract.i.i.i.i, %bb.cs ] ; 2 uses
  %.015.val19.i.i.i.i.i.i.i = load ptr, ptr %.01527.i.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !264 ; 4 uses
  %i.vj = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 11
  %.015.val19.val.i.i.i.i.i.i.i = load i8, ptr %i.vj, align 1, !tbaa !30, !noalias !264
  %.not22.i.i.i25.i.i.i.i = icmp eq i8 %.015.val19.val.i.i.i.i.i.i.i, 0
  br i1 %.not22.i.i.i25.i.i.i.i, label %bb.ct, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

bb.ct:                                            ; preds = %.lr.ph.i.i.i24.i.i.i.i
  %i.vk = getelementptr i8, ptr %.01527.i.i.i.i.i.i.i, i64 8
  %.015.val20.i.i.i.i.i.i.i = load i8, ptr %i.vk, align 8, !tbaa !30, !noalias !264 ; 2 uses
  %i.vl = getelementptr i8, ptr %.015.val19.i.i.i.i.i.i.i, i64 10
  %.015.val17.i.i.i.i.i.i.i = load i8, ptr %i.vl, align 1, !tbaa !30, !noalias !264
  %i.vm = icmp eq i8 %.015.val20.i.i.i.i.i.i.i, %.015.val17.i.i.i.i.i.i.i
  br i1 %i.vm, label %.lr.ph.i.i.i24.i.i.i.i, label %.critedge.loopexit29.i.i.i.i.i.i.i, !llvm.loop !11

.thread.i.i26.i.i.i.i:                            ; preds = %bb.cr
  %i.vn = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 256
  %i.vo = add i32 %.fca.1.extract.i.i.i.i, 1
  %i.vp = and i32 %i.vo, 255
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.vn, i64 %i.vq
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.thread.i.i26.i.i.i.i
  %.116.in.i.i.i.i.i.i.i = phi ptr [ %i.vr, %.thread.i.i26.i.i.i.i ], [ %i.vt, %bb.cu ]
  %.116.i.i.i.i.i.i.i = load ptr, ptr %.116.in.i.i.i.i.i.i.i, align 8, !tbaa !94, !noalias !264 ; 3 uses
  %i.vs = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 11
  %.116.val.i.i.i.i.i.i.i = load i8, ptr %i.vs, align 1, !tbaa !30, !noalias !264
  %.not.i.i.i.i27.i.i.i.i = icmp eq i8 %.116.val.i.i.i.i.i.i.i, 0
  %i.vt = getelementptr i8, ptr %.116.i.i.i.i.i.i.i, i64 256
  br i1 %.not.i.i.i.i27.i.i.i.i, label %bb.cu, label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, !llvm.loop !12

.critedge.loopexit29.i.i.i.i.i.i.i:               ; preds = %bb.ct
  %i.vu = zext i8 %.015.val20.i.i.i.i.i.i.i to i32
  br label %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i

_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i: ; preds = %.lr.ph.i.i.i24.i.i.i.i, %bb.cu, %.critedge.loopexit29.i.i.i.i.i.i.i, %bb.cs, %.noexc134.i, %.noexc131.i
  %.sroa.063.1.i.i.i = phi ptr [ %.fca.0.extract4.i.i.i, %.noexc131.i ], [ %.fca.0.extract.i.i.i.i, %.noexc134.i ], [ %.116.i.i.i.i.i.i.i, %bb.cu ], [ %.fca.0.extract.i.i.i.i, %bb.cs ], [ %.015.val19.i.i.i.i.i.i.i, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %.fca.0.extract.i.i.i.i, %.lr.ph.i.i.i24.i.i.i.i ]
  %.sroa.13.1.i.i.i = phi i32 [ %.fca.1.extract5.i.i.i, %.noexc131.i ], [ %.fca.1.extract.i.i.i.i, %.noexc134.i ], [ 0, %bb.cu ], [ %i.vf, %bb.cs ], [ %i.vu, %.critedge.loopexit29.i.i.i.i.i.i.i ], [ %i.vf, %.lr.ph.i.i.i24.i.i.i.i ]
  %i.vv = load i64, ptr %i.ow, align 8, !tbaa !87, !noalias !264 ; 2 uses
  %i.vw = icmp ugt i64 %i.vv, %i.pf
  br i1 %i.vw, label %.lr.ph.i.i.i, label %.loopexit159.i, !llvm.loop !251

.loopexit159.i:                                   ; preds = %_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5eraseENS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE.exit.i.i.i, %bb.cb, %.noexc128.i, %.noexc127.i, %_ZNK4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISH_EESt4lessISA_ESaISt4pairIKSA_SK_EELi256ELb0EEEEERSP_PSP_EmiENS2_IKSS_RKSP_PSX_EE.exit.i.i.i, %bb.bq
  %i.vx = load ptr, ptr %i.le, align 8, !tbaa !95
  %i.vy = getelementptr i8, ptr %i.vx, i64 16
  %.val.i = load i64, ptr %i.vy, align 8, !tbaa !87
  %i.vz = icmp eq i64 %.val.i, 0
  br i1 %i.vz, label %.critedge80.i, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, !llvm.loop !252

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i: ; preds = %bb.ax, %.loopexit159.i, %.critedge80.i, %bb.k, %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #22
  %.pr.i = load ptr, ptr %6, align 8, !tbaa !34
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i, %.noexc19
  %i.wa = phi ptr [ %.pr.i, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exitthread-pre-split.i ], [ %i.ba, %.noexc19 ] ; 3 uses
  %.not.i.i.i136.i = icmp eq ptr %i.wa, null
  br i1 %.not.i.i.i136.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  %i.wb = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = ptrtoint ptr %i.wa to i64
  %i.we = sub i64 %i.wc, %i.wd
  call void @_ZdlPvm(ptr noundef nonnull %i.wa, i64 noundef %i.we) #22
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i: ; preds = %bb.cv, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %.pre = load i32, ptr %i.ac, align 8, !tbaa !49
  br label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ap
  %.pn77.i = phi { ptr, i32 } [ %.pn71.i, %bb.ap ], [ %lpad.loopexit.split-lp435, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bi) #22
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit138.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit138.i: ; preds = %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.i
  %.pn77.pn.i = phi { ptr, i32 } [ %.pn77.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp441, %.loopexit.split-lp58.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.wf = load ptr, ptr %6, align 8, !tbaa !34    ; 3 uses
  %.not.i.i.i139.i = icmp eq ptr %i.wf, null
  br i1 %.not.i.i.i139.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit140.i, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit138.i
  %i.wg = load ptr, ptr %i.aj, align 8, !tbaa !35
  %i.wh = ptrtoint ptr %i.wg to i64
  %i.wi = ptrtoint ptr %i.wf to i64
  %i.wj = sub i64 %i.wh, %i.wi
  call void @_ZdlPvm(ptr noundef nonnull %i.wf, i64 noundef %i.wj) #22
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit140.i

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit140.i: ; preds = %bb.cw, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit138.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree10RemovePathESt17basic_string_viewIcSt11char_traitsIcEEPKNS0_10DescriptorE.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i, %.lr.ph.split
  %i.wk = phi i32 [ %.pre, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit.i ], [ %i.am, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.wl = sext i32 %i.wk to i64
  %i.wm = icmp slt i64 %indvars.iv.next, %i.wl
  br i1 %i.wm, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !253

bb.cx:                                            ; preds = %._crit_edge
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree16MergeToFieldMaskEPNS0_9FieldMaskE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %3)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.cz unwind label %bb.dc, !inline_history !1

bb.cz:                                            ; preds = %bb.cy
  %.val.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !87
  %i.wn = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.wn, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.val1.i.i.i.i = load ptr, ptr %9, align 8, !tbaa !85
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i.i)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit unwind label %bb.db, !inline_history !2

bb.db:                                            ; preds = %bb.da
  %i.wo = landingpad { ptr, i32 }
          catch ptr null
  %i.wp = extractvalue { ptr, i32 } %i.wo, 0
  call void @__clang_call_terminate(ptr %i.wp) #25, !inline_history !2
  unreachable

bb.dc:                                            ; preds = %bb.cy
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #25, !inline_history !1
  unreachable

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil17IsPathInFieldMaskESt17basic_string_viewIcSt11char_traitsIcEERKNS0_9FieldMaskE(i64 %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.fr74 = freeze i64 %0                          ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !49   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %.fr = freeze ptr %i.e                          ; 4 uses
  %i.f = ptrtoint ptr %.fr to i64                 ; 2 uses
  %i.g = and i64 %i.f, 1
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  %i.i = add i64 %i.f, -1
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.l = icmp eq i64 %.fr74, 0
  br i1 %i.l, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count88 = zext nneg i32 %i.b to i64  ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader.a, label %.lr.ph.split.us

.lr.ph.split.us.preheader.a:                      ; preds = %.lr.ph.split.us.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %.pre90 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !44
  %3 = icmp eq i64 %.pre90, 0                     ; 2 uses
  br label %.lr.ph.split.us.us

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us, %.lr.ph.split.us.preheader.a
  %indvars.iv85.us = phi i64 [ 0, %.lr.ph.split.us.preheader.a ], [ %indvars.iv.next86.us, %.lr.ph.split.us.us ]
  %indvars.iv.next86.us = add nuw nsw i64 %indvars.iv85.us, 1 ; 2 uses
  %exitcond89.us.not = icmp eq i64 %indvars.iv.next86.us, %wide.trip.count88
  %or.cond = select i1 %3, i1 true, i1 %exitcond89.us.not
  br i1 %or.cond, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.us.us, !llvm.loop !266

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph.split.us ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv85
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  %i.q = icmp eq i64 %i.p, 0                      ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  %or.cond.a = select i1 %i.q, i1 true, i1 %exitcond89.not
  br i1 %or.cond.a, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.us, !llvm.loop !266

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.h, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.r = load ptr, ptr %.fr, align 8, !tbaa !46   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.fr, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !44
  %.fr76 = freeze i64 %i.t                        ; 5 uses
  %i.u = icmp ult i64 %.fr76, %.fr74
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.fr76 ; 2 uses
  br i1 %i.u, label %.lr.ph.split.split.us.split.us.split, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us.split:             ; preds = %.lr.ph.split.split.us
  %i.w = icmp eq i64 %.fr76, 0
  br i1 %i.w, label %.lr.ph.split.split.us.split.us.split.split.us, label %.lr.ph.split.split.us.split.us.split.split

.lr.ph.split.split.us.split.us.split.split.us:    ; preds = %.lr.ph.split.split.us.split.us.split
  %lhsc.us50.us.us66 = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %lhsc.us50.us.us66, 46
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.us.split.split:       ; preds = %.lr.ph.split.split.us.split.us.split
  %bcmp.i.i.i.us48.us = tail call i32 @bcmp(ptr %1, ptr %i.r, i64 %.fr76)
  %i.y = icmp eq i32 %bcmp.i.i.i.us48.us, 0
  br i1 %i.y, label %.lr.ph.split.split.us.split.us.split.split.split, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.us.split.split.split: ; preds = %.lr.ph.split.split.us.split.us.split.split
  %lhsc.us50.us = load i8, ptr %i.v, align 1
  %i.z = icmp eq i8 %lhsc.us50.us, 46
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %i.aa = icmp eq i64 %.fr74, %.fr76
  br i1 %i.aa, label %.lr.ph.split.split.us.split.split, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split.us.split.split:                ; preds = %.lr.ph.split.split.us.split
  %bcmp.i.us = tail call i32 @bcmp(ptr %1, ptr %i.r, i64 %.fr74)
  %i.ab = icmp eq i32 %bcmp.i.us, 0
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !46 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !44 ; 5 uses
  %i.ah = icmp eq i64 %.fr74, %i.ag
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %.lr.ph.split.split
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.ae, i64 %.fr74)
  %i.ai = icmp eq i32 %bcmp.i, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.aj = icmp ult i64 %i.ag, %.fr74
  br i1 %i.aj, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ak = icmp eq i64 %i.ag, 0
  br i1 %i.ak, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.c
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.ae, i64 %i.ag)
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.al, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, label %.critedge

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19: ; preds = %bb.c, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  %lhsc = load i8, ptr %i.am, align 1
  %i.an = icmp eq i8 %lhsc, 46
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.critedge

.critedge:                                        ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %.lr.ph.split.split, !llvm.loop !266

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %.critedge, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %.lr.ph.split.us, %.lr.ph.split.us.us, %.lr.ph.split.split.us.split.split, %.lr.ph.split.split.us.split.us.split.split.split, %.lr.ph.split.split.us.split.us.split.split.us, %.lr.ph.split.split.us.split.us.split.split, %.lr.ph.split.split.us.split, %bb.a
  %4 = phi i1 [ %i.ab, %.lr.ph.split.split.us.split.split ], [ %i.q, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %.lr.ph.split.split.us.split.us.split.split ], [ %3, %.lr.ph.split.us.us ], [ %i.x, %.lr.ph.split.split.us.split.us.split.split.us ], [ false, %.lr.ph.split.split.us.split ], [ %i.z, %.lr.ph.split.split.us.split.us.split.split.split ], [ false, %.critedge ], [ true, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i19 ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf4util13FieldMaskUtil14MergeMessageToERKNS0_7MessageERKNS0_9FieldMaskERKNS2_12MergeOptionsEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(2) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %5 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 11 uses
  %i.a = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = tail call { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %.not.not = icmp eq ptr %i.b, %i.d
  br i1 %.not.not, label %.critedge, label %bb.b, !prof !113

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.2, i32 noundef 720, ptr noundef nonnull @.str.3) #27
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #25
  unreachable

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %5, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i64 0, ptr %i.g, align 8, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !49
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit

.lr.ph.i:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  %i.p = add i64 %i.m, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.o, ptr %i.k, ptr %i.s
  %i.t = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !44
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 %i.w, ptr %i.u)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.x = load i32, ptr %i.h, align 8, !tbaa !49
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next.i, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !0

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc
  %.val.i.pr = load i64, ptr %i.g, align 8, !tbaa !87
  %i.aa = icmp eq i64 %.val.i.pr, 0
  br i1 %i.aa, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageEPKNS3_4NodeERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS7_(ptr noundef nonnull readonly align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 1 dereferenceable(2) %2, ptr noundef nonnull %3)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit: ; preds = %.critedge, %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, %bb.e
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.f unwind label %bb.i, !inline_history !1

bb.f:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !87
  %i.ab = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.ab, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !85
  invoke fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE16clear_and_deleteEPSR_PSP_(ptr noundef %.val1.i.i.i.i)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit unwind label %bb.h, !inline_history !2

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #25, !inline_history !2
  unreachable

bb.i:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree12MergeMessageERKNS0_7MessageERKNS1_13FieldMaskUtil12MergeOptionsEPS4_.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #25, !inline_history !1
  unreachable

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  resume { ptr, i32 } %lpad.loopexit.split-lp17
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf4util13FieldMaskUtil11TrimMessageERKNS0_9FieldMaskEPNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %2, align 8, !tbaa !85
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @_ZZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE9EmptyNodeEvE10empty_nodeB5cxx11, ptr %i.a, align 8, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.noexc ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = add i64 %i.h, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  %.0.i.i.i.i.i.i = select i1 %i.j, ptr %i.f, ptr %i.n
  %i.o = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !44
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree7AddPathESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.r, ptr %i.p)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.s = load i32, ptr %i.c, align 8, !tbaa !49
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.b, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit, !llvm.loop !0

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit: ; preds = %.noexc, %bb.a
  %i.v = icmp eq ptr %1, null
  br i1 %i.v, label %bb.c, label %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit, !prof !38

bb.c:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  invoke void @_ZN4absl12lts_2025051212log_internal14DieBecauseNullEPKciS3_(ptr noundef nonnull @.str.2, i32 noundef 733, ptr noundef nonnull @.str.4) #23
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2:                                          ; preds = %bb.c
  unreachable

_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit: ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree18MergeFromFieldMaskERKNS0_9FieldMaskE.exit
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !87
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPNS0_7MessageE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit
  %i.x = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPKNS3_4NodeEPNS0_7MessageE(ptr noundef nonnull readonly align 8 dereferenceable(24) %2, ptr noundef %1)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPNS0_7MessageE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPNS0_7MessageE.exit: ; preds = %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit, %bb.d
  %.0.i = phi i1 [ false, %_ZN4absl12lts_2025051212log_internal9DieIfNullIRPN6google8protobuf7MessageEEET_PKciSA_OS8_.exit ], [ %i.x, %bb.d ]
  invoke fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4Node13ClearChildrenEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.h, !inline_history !1

bb.e:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree11TrimMessageEPNS0_7MessageE.exit
  %.val.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !87
  %i.y = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.y, label %_ZN6google8protobuf4util12_GLOBAL__N_113FieldMaskTreeD2Ev.exit, label %bb.f

end_hunk_0
