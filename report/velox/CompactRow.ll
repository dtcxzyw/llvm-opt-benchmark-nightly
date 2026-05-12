inline.NumInlined: 3028
inline.NumDeleted: 1097
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.ack = load ptr, ptr %18, align 8, !tbaa !83, !noalias !620 ; 6 uses
  store ptr %i.ack, ptr %19, align 8, !tbaa !562, !alias.scope !621, !noalias !610
  %i.acl = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.acm = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !139, !noalias !620 ; 2 uses
  store ptr %i.acn, ptr %i.acl, align 8, !tbaa !139, !alias.scope !621, !noalias !610
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %.8..8..8..8..8..sroa_idx350 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.co, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.co ] ; 9 uses
  %i.act = lshr i64 %indvars.iv.i, 6
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
bb.co:                                            ; preds = %bb.cn, %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aci
  br i1 %exitcond.not.i, label %_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit, label %.lr.ph.i, !llvm.loop !628

_ZN8facebook5velox3row12_GLOBAL__N_118deserializeStringsERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit: ; preds = %bb.co, %bb.cc
  store ptr %i.ack, ptr %0, align 8, !tbaa !83, !alias.scope !610
  %i.aeq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.acn, ptr %i.aeq, align 8, !tbaa !139, !alias.scope !610
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26, !noalias !610
  br label %"_ZZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolEENK3$_0clEv.exit"

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.265", align 16 ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"struct.facebook::velox::StringView", align 8 ; 9 uses
  %14 = alloca %"class.std::shared_ptr.27", align 8 ; 5 uses
  %15 = alloca %"class.std::shared_ptr.236", align 8 ; 6 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.358", align 16 ; 5 uses
  %17 = alloca %"class.std::shared_ptr.27", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.251", align 8 ; 6 uses
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a

.noexc114:                                        ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit.i111
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %50 = load ptr, ptr %14, align 8, !tbaa !83, !noalias !1035 ; 6 uses
  store ptr %50, ptr %15, align 8, !tbaa !562, !alias.scope !1036, !noalias !1022
  %51 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %52 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %53 = load ptr, ptr %52, align 8, !tbaa !139, !noalias !1035 ; 2 uses
  store ptr %53, ptr %51, align 8, !tbaa !139, !alias.scope !1036, !noalias !1022
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26, !noalias !1031
  br i1 %.not.i.i105, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i.a, label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.noexc114
  %54 = getelementptr inbounds nuw i8, ptr %50, i64 56
  %55 = getelementptr inbounds nuw i8, ptr %50, i64 32
  %.4..4..4..4..4..4..4..4..4..sroa_idx1153 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %.4..4..4..4..4..4..4..4..4..sroa_idx1154 = getelementptr inbounds nuw i8, ptr %13, i64 4
  %.8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 8
end_hunk_4
begin_hunk_5_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %.8..8..8..8..8..8..8..8..8..sroa_idx1155 = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.i, %.lr.ph.i.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.a ], [ %indvars.iv.next.i, %.loopexit.i ] ; 7 uses
  %.03611.i = phi i32 [ 0, %.lr.ph.i.a ], [ %.3.i, %.loopexit.i ] ; 2 uses
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %.val64.val, i64 %indvars.iv.i
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !3, !noalias !1022 ; 3 uses
  %i.awj = icmp sgt i32 %i.awi, 0
end_hunk_5
begin_hunk_6_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  br i1 %.not.i113, label %bb.em, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.axd = load i32, ptr %54, align 8, !tbaa !350, !noalias !1022
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(272) %50, i32 noundef %i.axd, i1 noundef zeroext true)
          to label %.noexc.i unwind label %.loopexit4.i, !noalias !1022

.noexc.i:                                         ; preds = %bb.ek
  %i.axe = load ptr, ptr %55, align 8, !tbaa !244, !noalias !1022 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 44
  %i.axg = load i8, ptr %i.axf, align 4, !tbaa !283, !noalias !1022
  %i.axh = and i8 %i.axg, 2
end_hunk_6
begin_hunk_7_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %i.axx = getelementptr inbounds nuw [8 x i8], ptr %i.axw, i64 %indvars.iv.i
  %i.axy = load i64, ptr %i.axx, align 8, !tbaa !88, !noalias !1022
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axv, i64 %i.axy ; 2 uses
  %.val.i.i = load i32, ptr %i.axz, align 1, !noalias !1022 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axz, i64 4 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
_ZN8facebook5velox10StringViewC2EPKci.exit.i.i:   ; preds = %bb.et, %bb.es, %bb.er
  %.8..8..sroa.2.0.copyload.i.i = phi ptr [ undef, %bb.er ], [ %.8..8..8..8..8..8..8..8..8..sroa.2.0.copyload.pre.i.i, %bb.es ], [ %i.aya, %bb.et ]
  %.0..0..0..0..0..0..0..0..0..sroa.0.0.copyload.i.i = load i64, ptr %13, align 8, !noalias !1022
  invoke void @_ZN8facebook5velox10FlatVectorINS0_10StringViewEE3setEiS2_(ptr noundef nonnull align 8 dereferenceable(272) %50, i32 noundef %.18.i, i64 %.0..0..0..0..0..0..0..0..0..sroa.0.0.copyload.i.i, ptr %.8..8..sroa.2.0.copyload.i.i)
          to label %bb.eu unwind label %.loopexit4.i, !noalias !1022

bb.eu:                                            ; preds = %_ZN8facebook5velox10StringViewC2EPKci.exit.i.i
end_hunk_8
begin_hunk_9_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %.3.i = phi i32 [ %.03611.i, %bb.eh ], [ %.2.i, %bb.ev ]
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next.i, %i.avn
  br i1 %exitcond14.not.i, label %_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i.a, label %bb.eh, !llvm.loop !1041

_ZNSt12__shared_ptrIN8facebook5velox10FlatVectorINS1_10StringViewEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit.i.a: ; preds = %.loopexit.i, %.noexc114
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26, !noalias !1022
  store ptr %50, ptr %45, align 16, !tbaa !1021
  %i.ayv = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.ayw = load ptr, ptr %i.ayv, align 8, !tbaa !139 ; 8 uses
  store ptr %53, ptr %i.ayv, align 8, !tbaa !139
  %.not.i.i.i.i117 = icmp eq ptr %i.ayw, null
  br i1 %.not.i.i.i.i117, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit104, label %bb.ew

end_hunk_9
