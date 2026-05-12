inline.NumInlined: 1716
inline.NumDeleted: 657
begin_hunk_0_@_ZN6google8protobuf4util13FieldMaskUtil19GetFieldDescriptorsEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EE:bb.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf4util13FieldMaskUtil19GetFieldDescriptorsEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EE:bb.a
bb.k:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49    ; 4 uses
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak                    ; 5 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775800
  br i1 %i.am, label %bb.l, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf4util13FieldMaskUtil19GetFieldDescriptorsEPKNS0_10DescriptorESt17basic_string_viewIcSt11char_traitsIcEEPSt6vectorIPKNS0_15FieldDescriptorESaISD_EE:bb.a
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %7 = load ptr, ptr %i.j, align 8, !tbaa !72
  %8 = ptrtoint ptr %7 to i64
  %9 = sub i64 %8, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %9) #20
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 8 uses
  %5 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %6 = alloca %"class.std::vector", align 8       ; 14 uses
  %7 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.19", align 8 ; 5 uses
  %9 = alloca %"class.google::protobuf::util::(anonymous namespace)::FieldMaskTree", align 8 ; 11 uses
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !94
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
.noexc22:                                         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.ba = load ptr, ptr %6, align 8, !tbaa !19    ; 3 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit.i, label %bb.f
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
  store ptr null, ptr %i.bj, align 8, !tbaa !107
  %i.bk = add nsw i64 %i.bg, -1                   ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i, label %_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc103.i
  %i.bm = getelementptr i8, ptr %i.bj, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.bk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bm, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !107
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i

_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i: ; preds = %_ZSt6fill_nIPPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeEmS6_ET_S8_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc103.i
  %10 = load ptr, ptr %i.ag, align 8, !tbaa !116
  %11 = load ptr, ptr %6, align 8, !tbaa !21      ; 2 uses
  %.not77222.not.i = icmp eq ptr %10, %11
  br i1 %.not77222.not.i, label %.critedge.i.preheader, label %.lr.ph227.i

.loopexit:                                        ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EE17_S_check_init_lenEmRKS7_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a
          cleanup
  br label %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EED2Ev.exit136.i

.lr.ph227.i:                                      ; preds = %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i, %bb.bb
  %indvars.iv269.i = phi i64 [ %indvars.iv.next270.i, %bb.bb ], [ 0, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ] ; 5 uses
  %i.bn = phi ptr [ %i.jq, %bb.bb ], [ %11, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ]
  %.055226.i = phi ptr [ %.val84.i, %bb.bb ], [ %9, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ] ; 10 uses
  %.059225.i = phi ptr [ %.261.ph.i, %bb.bb ], [ %0, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ] ; 4 uses
  %.063224.i = phi ptr [ %.265.i, %bb.bb ], [ null, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ] ; 7 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv269.i
  store ptr %.055226.i, ptr %i.bo, align 8, !tbaa !107
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %indvars.iv269.i ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf4util13FieldMaskUtil8SubtractEPKNS0_10DescriptorERKNS0_9FieldMaskES8_PS6_:bb.a

.critedge.i.a:                                    ; preds = %bb.bb
  %i.jw = lshr i64 %i.ju, 4
  br label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %.critedge.i.a, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i
  %indvars.iv272.i.ph = phi i64 [ 0, %_ZNSt6vectorIPN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESaIS6_EEC2EmRKS7_.exit.i ], [ %i.jw, %.critedge.i.a ]
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge.i.preheader, %.loopexit170.i
  %indvars.iv272.i = phi i64 [ %indvars.iv.next273.i, %.loopexit170.i ], [ %indvars.iv272.i.ph, %.critedge.i.preheader ]
  %indvars.iv.next273.i = add i64 %indvars.iv272.i, -1 ; 3 uses
  %i.jx = and i64 %indvars.iv.next273.i, 2147483648
  %i.jy = icmp eq i64 %i.jx, 0
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
bb.a:
  %2 = alloca %"class.absl::lts_20250512::container_internal::btree_iterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 7 uses
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !103 ; 6 uses
  %.val117 = load ptr, ptr %0, align 8, !tbaa !87
  %.not = icmp eq ptr %i.b, %.val117
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  %i.bc = tail call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #22 ; 6 uses
  store ptr %.val98, ptr %i.bc, align 8, !tbaa !103
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 0, ptr %i.bd, align 8
  %3 = load ptr, ptr %1, align 8, !tbaa !103      ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bc, i64 256
  store ptr %3, ptr %4, align 8, !tbaa !103
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.be, align 1, !tbaa !15
  store ptr %i.bc, ptr %3, align 8, !tbaa !103
  store ptr %i.bc, ptr %0, align 8, !tbaa !103
  %.pre = load ptr, ptr %1, align 8, !tbaa !103
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.bf = phi ptr [ %i.bb, %bb.m ], [ %i.b, %bb.l ], [ %.pre, %bb.n ] ; 2 uses
  %.082 = phi ptr [ %.val97, %bb.m ], [ %.val98, %bb.l ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 11
  %.val96 = load i8, ptr %i.bg, align 1, !tbaa !15
end_hunk_10
begin_hunk_11_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  store i8 0, ptr %i.bm, align 2, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  store i8 6, ptr %i.bn, align 1, !tbaa !15
  %5 = load ptr, ptr %1, align 8, !tbaa !103
  %i.bo = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %5, i32 noundef %i.bo, ptr noundef nonnull %i.bj)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val118 = load ptr, ptr %i.bp, align 8, !tbaa !103
  %i.bq = load ptr, ptr %1, align 8, !tbaa !103
end_hunk_11
begin_hunk_12_@_ZN4absl12lts_2025051218container_internal5btreeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE18rebalance_or_splitEPNS1_14btree_iteratorINS1_10btree_nodeISQ_EERSO_PSO_EE:bb.a
  store i8 0, ptr %i.bv, align 2, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 11
  store i8 0, ptr %i.bw, align 1, !tbaa !15
  %6 = load ptr, ptr %1, align 8, !tbaa !103
  %i.bx = load i32, ptr %i.a, align 8, !tbaa !3
  tail call fastcc void @_ZN4absl12lts_2025051218container_internal10btree_nodeINS1_10map_paramsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN6google8protobuf4util12_GLOBAL__N_113FieldMaskTree4NodeESt14default_deleteISG_EESt4lessIS9_ESaISt4pairIKS9_SJ_EELi256ELb0EEEE5splitEiPSR_PSP_(ptr noundef nonnull align 1 dereferenceable(1) %6, i32 noundef %i.bx, ptr noundef nonnull %i.bs)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
end_hunk_12
