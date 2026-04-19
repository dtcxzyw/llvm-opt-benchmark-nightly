inline.NumInlined: 4983
inline.NumDeleted: 1990
begin_hunk_0_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a
  br i1 %i.pt, label %.lr.ph.i53, label %._crit_edge.i50

.lr.ph.i53:                                       ; preds = %bb.dx, %.lr.ph.i53
  %.0115.i = phi i32 [ %i.pu, %.lr.ph.i53 ], [ %i.pr, %bb.dx ]
  %.0112114.i = phi i64 [ %i.pv, %.lr.ph.i53 ], [ 9, %bb.dx ]
  %i.pu = udiv i32 %.0115.i, 1000                 ; 3 uses
  %i.pv = add i64 %.0112114.i, -3                 ; 2 uses
  %i.pw = urem i32 %i.pu, 1000
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %.lr.ph.i53, label %._crit_edge.i50, !llvm.loop !171

._crit_edge.i50:                                  ; preds = %.lr.ph.i53, %bb.dx
  %.0112.lcssa.i = phi i64 [ 9, %bb.dx ], [ %i.pv, %.lr.ph.i53 ]
  %.0.lcssa.i = phi i32 [ %i.pr, %bb.dx ], [ %i.pu, %.lr.ph.i53 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29, !noalias !156
  %i.py = icmp slt i64 %i.ob, 0
  %i.pz = icmp slt i32 %i.on, 0
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_23UnparseProto2DescriptorEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a
  %i.qi = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.qi, align 8, !tbaa !88, !noalias !175
  %i.qj = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.qk = inttoptr i64 %.0112.lcssa.i to ptr
  store ptr %i.qk, ptr %i.qj, align 8, !tbaa !21, !noalias !175
  %i.ql = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.ql, align 8, !tbaa !88, !noalias !175
  %i.qm = getelementptr inbounds nuw i8, ptr %13, i64 48
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i32 %.0.lcssa.i to i64
  %i.qn = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.qn, ptr %i.qm, align 8, !tbaa !21, !noalias !175
  %i.qo = getelementptr inbounds nuw i8, ptr %13, i64 56
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a
  br i1 %i.rs, label %.lr.ph.i54, label %._crit_edge.i51

.lr.ph.i54:                                       ; preds = %bb.dn, %.lr.ph.i54
  %.0109.i = phi i32 [ %i.rt, %.lr.ph.i54 ], [ %i.rq, %bb.dn ]
  %.0106108.i = phi i64 [ %i.ru, %.lr.ph.i54 ], [ 9, %bb.dn ]
  %i.rt = udiv i32 %.0109.i, 1000                 ; 3 uses
  %i.ru = add i64 %.0106108.i, -3                 ; 2 uses
  %i.rv = urem i32 %i.rt, 1000
  %i.rw = icmp eq i32 %i.rv, 0
  br i1 %i.rw, label %.lr.ph.i54, label %._crit_edge.i51, !llvm.loop !384

._crit_edge.i51:                                  ; preds = %.lr.ph.i54, %bb.dn
  %.0106.lcssa.i = phi i64 [ 9, %bb.dn ], [ %i.ru, %.lr.ph.i54 ]
  %.0.lcssa.i = phi i32 [ %i.rq, %bb.dn ], [ %i.rt, %.lr.ph.i54 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !368
  %i.rx = icmp slt i64 %i.qa, 0
  %i.ry = icmp slt i32 %i.qq, 0
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf13json_internal12_GLOBAL__N_112WriteMessageINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescEb:bb.a
  %i.sh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sh, align 8, !tbaa !88, !noalias !385
  %i.si = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.sj = inttoptr i64 %.0106.lcssa.i to ptr
  store ptr %i.sj, ptr %i.si, align 8, !tbaa !21, !noalias !385
  %i.sk = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.sk, align 8, !tbaa !88, !noalias !385
  %i.sl = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.sroa.0.0.insert.ext.i.i.i.i.i = zext nneg i32 %.0.lcssa.i to i64
  %i.sm = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i.i to ptr
  store ptr %i.sm, ptr %i.sl, align 8, !tbaa !21, !noalias !385
  %i.sn = getelementptr inbounds nuw i8, ptr %11, i64 56
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.19.1.a, %.sroa.12.1
  br i1 %.not.i.i.i, label %.critedge37, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = ptrtoint ptr %.sroa.12.1 to i64
  %i.r = ptrtoint ptr %.sroa.19.1.a to i64        ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = xor i64 %i.v, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_T1_(ptr %.sroa.19.1.a, ptr %.sroa.12.1, i64 noundef %i.w)
  %i.x = icmp sgt i64 %i.s, 128
  %scevgep.i.i.i.i = getelementptr i8, ptr %.sroa.19.1.a, i64 8 ; 3 uses
  br i1 %i.x, label %.lr.ph.i.i.i.i.i, label %bb.h

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i
  %.sroa.0.021.i.idx.i.i.i.i = phi i64 [ %.sroa.0.021.i.add.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i ], [ 8, %bb.c ] ; 4 uses
  %.pn20.i.i.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i ], [ %.sroa.19.1.a, %bb.c ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.19.1.a, i64 %.sroa.0.021.i.idx.i.i.i.i ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.021.i.ptr.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %.sroa.19.1.a, align 8, !tbaa !413 ; 2 uses
  %i.y = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 8
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !243
  %i.z = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 8
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !50

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.19.1.a, i64 %.sroa.0.021.i.idx.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
end_hunk_5
begin_hunk_6_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i, !llvm.loop !810

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.19.1.a, %bb.f ], [ %.sroa.19.1.a, %bb.e ], [ %.sroa.0.021.i.ptr.i.i.i.i, %bb.g ], [ %.sroa.0.012.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.val.i.i.i.i.i.i, ptr %.sink.i.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.021.i.add.i.i.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.021.i.add.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !811

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEENS0_5__ops15_Iter_comp_iterIZNS4_12_GLOBAL__N_111WriteFieldsINS4_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS4_10JsonWriterERKNT_3MsgERKNSO_4DescERbEUlRKSO_RKT0_E_EEEvSO_SO_SY_.exit.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.19.1.a, i64 128 ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.al, %.sroa.12.1
  br i1 %.not6.i.i.i.i.i, label %.noexc45.lr.ph, label %.lr.ph.i12.i.i.i.i

end_hunk_6
begin_hunk_7_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a

.lr.ph.i30.i.i.i.i:                               ; preds = %bb.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i
  %.sroa.0.021.i31.i.i.i.i = phi ptr [ %.sroa.0.0.i44.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i ], [ %scevgep.i.i.i.i, %bb.h ] ; 6 uses
  %.pn20.i32.i.i.i.i = phi ptr [ %.sroa.0.021.i31.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i ], [ %.sroa.19.1.a, %bb.h ] ; 4 uses
  %.val.i.i33.i.i.i.i = load ptr, ptr %.sroa.0.021.i31.i.i.i.i, align 8, !tbaa !413 ; 2 uses
  %.val1.i.i34.i.i.i.i = load ptr, ptr %.sroa.19.1.a, align 8, !tbaa !413 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val.i.i33.i.i.i.i, i64 8
  %.val.val.i.i35.i.i.i.i = load ptr, ptr %i.aw, align 8, !tbaa !243
  %i.ax = getelementptr i8, ptr %.val1.i.i34.i.i.i.i, i64 8
end_hunk_7
begin_hunk_8_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i32.i.i.i.i, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.19.1.a, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i

bb.k:                                             ; preds = %bb.i
end_hunk_8
begin_hunk_9_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %i.bp, label %.lr.ph.i.i46.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i, !llvm.loop !810

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf13json_internal12ResolverPool5FieldESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i42.i.i.i.i: ; preds = %.lr.ph.i.i46.i.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i43.i.i.i.i = phi ptr [ %.sroa.19.1.a, %bb.l ], [ %.sroa.19.1.a, %bb.j ], [ %.sroa.19.1.a, %bb.k ], [ %.sroa.0.021.i31.i.i.i.i, %bb.m ], [ %.sroa.0.012.i.i48.i.i.i.i, %.lr.ph.i.i46.i.i.i.i ]
  store ptr %.val.i.i33.i.i.i.i, ptr %.sink.i43.i.i.i.i, align 8, !tbaa !413
  %.sroa.0.0.i44.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i31.i.i.i.i, i64 8 ; 2 uses
  %.not.i45.i.i.i.i = icmp eq ptr %.sroa.0.0.i44.i.i.i.i, %.sroa.12.1
end_hunk_9
begin_hunk_10_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a

bb.n:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit
  %.032201 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 2 uses
  %.sroa.0132.0200 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.0132.1, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 9 uses
  %.sroa.12.0199 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.12.1, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 6 uses
  %.sroa.19.0198 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.19.1.a, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit ] ; 11 uses
  %i.bq = invoke { ptr, i64 } @_ZNK6google8protobuf13json_internal12ResolverPool7Message13FieldsByIndexEv(ptr noundef nonnull align 8 dereferenceable(184) %3)
          to label %bb.o unwind label %bb.t

end_hunk_10
begin_hunk_11_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %.body

.loopexit181:                                     ; preds = %bb.o, %_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit183 = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_11
begin_hunk_12_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %i.by, label %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread: ; preds = %bb.s, %bb.p, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit, %bb.u
  %.not.i = icmp eq ptr %.sroa.12.0199, %.sroa.0132.0200
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread
end_hunk_12
begin_hunk_13_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

bb.w:                                             ; preds = %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit.thread
  %i.cs = ptrtoint ptr %.sroa.0132.0200 to i64
  %i.ct = ptrtoint ptr %.sroa.19.0198 to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 6 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.x, label %_ZNKSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_13
begin_hunk_14_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br i1 %i.de, label %bb.y, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

bb.y:                                             ; preds = %.noexc44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dc, ptr align 8 %.sroa.19.0198, i64 %i.cu, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i: ; preds = %bb.y, %.noexc44
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.19.0198, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.19.0198, i64 noundef %i.cu) #31
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i
end_hunk_14
begin_hunk_15_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE9push_backERKS6_.exit: ; preds = %bb.s, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, %bb.v, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit, %bb.u
  %.sroa.19.1.a = phi ptr [ %.sroa.19.0198, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.19.0198, %bb.u ], [ %i.dc, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.19.0198, %bb.v ], [ %.sroa.19.0198, %bb.s ] ; 26 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0199, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.12.0199, %bb.u ], [ %i.df, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %i.cr, %bb.v ], [ %.sroa.12.0199, %bb.s ] ; 9 uses
  %.sroa.0132.1 = phi ptr [ %.sroa.0132.0200, %_ZN6google8protobuf13json_internal10Proto3Type18IsImplicitPresenceEPKNS1_12ResolverPool5FieldE.exit ], [ %.sroa.0132.0200, %bb.u ], [ %i.dg, %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EE17_M_realloc_insertIJRKS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i ], [ %.sroa.0132.0200, %bb.v ], [ %.sroa.0132.0200, %bb.s ] ; 8 uses
  %i.dh = add nuw i64 %.032201, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.dh, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !814
end_hunk_15
begin_hunk_16_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4absl12lts_202505126StatusD2Ev.exit
  %.sroa.0125.0205 = phi ptr [ %.sroa.19.1.a, %.noexc45.lr.ph ], [ %i.ha, %_ZN4absl12lts_202505126StatusD2Ev.exit ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.0125.0205, align 8, !tbaa !413 ; 7 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 5 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !243
end_hunk_16
begin_hunk_17_@_ZN6google8protobuf13json_internal12_GLOBAL__N_111WriteFieldsINS1_17UnparseProto3TypeEEEN4absl12lts_202505126StatusERNS1_10JsonWriterERKNT_3MsgERKNSA_4DescERb:bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.bc, %.critedge37
  %.sroa.19.0.lcssa233243 = phi ptr [ %.sroa.19.0.lcssa233244, %.critedge37 ], [ %.sroa.19.1.a, %bb.bc ] ; 3 uses
  %.sroa.0132.0.lcssa235241 = phi ptr [ %.sroa.0132.0.lcssa235242, %.critedge37 ], [ %.sroa.0132.1, %bb.bc ]
  %.not.i.i.i69 = icmp eq ptr %.sroa.19.0.lcssa233243, null
  br i1 %.not.i.i.i69, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %.critedge
  %i.hb = ptrtoint ptr %.sroa.0132.0.lcssa235241 to i64
  %i.hc = ptrtoint ptr %.sroa.19.0.lcssa233243 to i64
  %i.hd = sub i64 %i.hb, %i.hc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.19.0.lcssa233243, i64 noundef %i.hd) #31
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit: ; preds = %.critedge, %bb.bd
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit181, %.loopexit.split-lp182, %bb.ac, %bb.t
  %.sroa.19.0196 = phi ptr [ %.sroa.19.0198, %.loopexit.split-lp182 ], [ %.sroa.19.1.a, %bb.ac ], [ %.sroa.19.0198, %bb.t ], [ %.sroa.19.0198, %.loopexit181 ], [ %.sroa.19.1.a, %.loopexit.split-lp.loopexit ], [ %.sroa.19.1.a, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.19.1.a, %.loopexit ] ; 3 uses
  %.sroa.0132.0188 = phi ptr [ %.sroa.0132.0200, %.loopexit.split-lp182 ], [ %.sroa.0132.1, %bb.ac ], [ %.sroa.0132.0200, %bb.t ], [ %.sroa.0132.0200, %.loopexit181 ], [ %.sroa.0132.1, %.loopexit.split-lp.loopexit ], [ %.sroa.0132.1, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0132.1, %.loopexit ]
  %.pn34.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp182 ], [ %i.dx, %bb.ac ], [ %i.cq, %bb.t ], [ %lpad.loopexit183, %.loopexit181 ], [ %lpad.loopexit177, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp178, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i70 = icmp eq ptr %.sroa.19.0196, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71, label %.body.thread168

.body.thread168:                                  ; preds = %.body
  %i.he = ptrtoint ptr %.sroa.0132.0188 to i64
  %i.hf = ptrtoint ptr %.sroa.19.0196 to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.19.0196, i64 noundef %i.hg) #31
  br label %_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71

_ZNSt6vectorIPKN6google8protobuf13json_internal12ResolverPool5FieldESaIS6_EED2Ev.exit71: ; preds = %.body, %.body.thread168
end_hunk_17
