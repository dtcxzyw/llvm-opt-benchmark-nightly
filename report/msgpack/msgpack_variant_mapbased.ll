Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_mapbased?download=true
inline.NumInlined: 4597
inline.NumDeleted: 2574
begin_hunk_0_@_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !169
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !193 ; 3 uses
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !193
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.n, label %bb.o, !prof !99

bb.n:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  br label %.noexc12

bb.o:                                             ; preds = %.noexc23
  %i.bh = icmp eq i64 %i.bf, 1
  br i1 %i.bh, label %bb.p, label %.noexc12

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !30
  store i8 %i.bi, ptr %i.ax, align 1, !tbaa !30
  br label %.noexc12

.noexc12:                                         ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.bf
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !216
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc13:                                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !208
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc37:                                         ; preds = %bb.a
  %i.bk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33, !inline_history !347 ; 3 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !172
  invoke void @_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.noexc14 unwind label %bb.q, !inline_history !347

bb.q:                                             ; preds = %.noexc37
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 24) #28, !inline_history !347
  br label %.body

.noexc14:                                         ; preds = %.noexc37
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !172
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc38:                                         ; preds = %bb.a
  %i.bn = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33, !inline_history !348 ; 9 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !180 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !197
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !185
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !198
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !199
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !200
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !185 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %.noexc15, label %bb.r

bb.r:                                             ; preds = %.noexc38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %i.bn, ptr %3, align 8, !tbaa !202
  %i.bw = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc46 unwind label %bb.t, !inline_history !349 ; 3 uses

.noexc46:                                         ; preds = %bb.r, %.noexc46
  %.0.i.i.i = phi ptr [ %i.by, %.noexc46 ], [ %i.bw, %bb.r ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc46, !llvm.loop !7

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc46
  store ptr %.0.i.i.i, ptr %i.br, align 8, !tbaa !203
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.bw, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.ca, %bb.s ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !189 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i, label %bb.s, !llvm.loop !8

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i: ; preds = %bb.s
  store ptr %.0.i.i7.i, ptr %i.bs, align 8, !tbaa !203
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !200
  store i64 %i.cc, ptr %i.bt, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !203
  br label %.noexc15

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 48) #28, !inline_history !348
  br label %.body

.noexc15:                                         ; preds = %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i, %.noexc38
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !180
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc43:                                         ; preds = %bb.a
  %i.ce = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33, !inline_history !350 ; 9 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !197
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !185
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !198
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !199
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !200
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !185 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i41, label %.noexc16, label %bb.u

bb.u:                                             ; preds = %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.ce, ptr %2, align 8, !tbaa !202
  %i.cn = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc52 unwind label %bb.w, !inline_history !351 ; 3 uses

.noexc52:                                         ; preds = %bb.u, %.noexc52
  %.0.i.i.i47 = phi ptr [ %i.cp, %.noexc52 ], [ %i.cn, %bb.u ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i47, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i48, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49, label %.noexc52, !llvm.loop !7

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49: ; preds = %.noexc52
  store ptr %.0.i.i.i47, ptr %i.ci, align 8, !tbaa !203
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49
  %.0.i.i7.i50 = phi ptr [ %i.cn, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49 ], [ %i.cr, %bb.v ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i50, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !189 ; 2 uses
  %.not.i.i8.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i8.i51, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i42, label %bb.v, !llvm.loop !8

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i42: ; preds = %bb.v
  store ptr %.0.i.i7.i50, ptr %i.cj, align 8, !tbaa !203
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !200
  store i64 %i.ct, ptr %i.ck, align 8, !tbaa !200
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !203
  br label %.noexc16

bb.w:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 48) #28, !inline_history !350
  br label %.body

.noexc16:                                         ; preds = %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyERKSK_.exit.i.i42, %.noexc43
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !188
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

bb.x:                                             ; preds = %bb.a
  unreachable

_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit: ; preds = %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc4, %bb.a
  %i.cv = load i32, ptr %1, align 8, !tbaa !166   ; 2 uses
  %.lobit.i32 = ashr i32 %i.cv, 31
  %spec.select.i33 = xor i32 %.lobit.i32, %i.cv
  store i32 %spec.select.i33, ptr %0, align 8, !tbaa !166
  ret void

.body:                                            ; preds = %bb.t, %bb.w, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.cd, %bb.t ], [ %i.cu, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EEC2ERKSD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !175    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEE8allocateEmPKv.exit.i.i.i, !prof !100

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !175
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !176
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !177
  %i.m = load ptr, ptr %1, align 8, !tbaa !213    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESt6vectorISD_SaISD_EEEEPSD_SD_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i
  %.013.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.012.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.013.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !352

_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESt6vectorISD_SaISD_EEEEPSD_SD_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i, !llvm.loop !353

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #27, !inline_history !354 ; 0 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %.013.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i) #27, !inline_history !355
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, %.013.i
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #29
          to label %bb.g unwind label %bb.e, !inline_history !354

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f, !inline_history !354

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31, !inline_history !354
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEEvT_SD_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESt6vectorISD_SaISD_EEEEPSD_SD_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEEJRKSB_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !176
  ret void

.body:                                            ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !175    ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !177
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit

_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESaISB_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !360, !nonnull !120, !align !138
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 9 uses
  tail call void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE17_M_construct_nodeIJRKSE_EEEvPSt13_Rb_tree_nodeISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a), !inline_history !356
  %i.d = load i32, ptr %1, align 8, !tbaa !361
  store i32 %i.d, ptr %i.c, align 8, !tbaa !361
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.g, align 8, !tbaa !215
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !189
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03038 = load ptr, ptr %.030.in37, align 8, !tbaa !190 ; 2 uses
  %.not3239 = icmp eq ptr %.03038, null
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03041 = phi ptr [ %.030, %bb.l ], [ %.03038, %bb.e ] ; 4 uses
  %.03140 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !360, !nonnull !120, !align !138
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03041, i64 32
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE17_M_construct_nodeIJRKSE_EEEvPSt13_Rb_tree_nodeISE_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %bb.f unwind label %bb.i, !inline_history !357

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03041, align 8, !tbaa !361
  store i32 %i.o, ptr %i.m, align 8, !tbaa !361
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.r, align 8, !tbaa !190
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !215
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !189  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE7_M_copyILb0ENSK_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISE_ESP_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !189
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #27 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS2_7raw_refENS2_7ext_refEEESt4pairIKSB_SB_ESt10_Select1stISE_ESt4lessISB_ESaISE_EE8_M_eraseEPSt13_Rb_tree_nodeISE_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #29
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !190 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !358

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZNK7msgpack2v17adaptor16object_with_zoneISt6vectorIcSaIcEEvEclERNS0_21object_with_zone_typeERKS5_:bb.a
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #27
  resume { ptr, i32 } %i.i

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.a
  %i.j = trunc nuw i64 %i.f to i32
  store i32 6, ptr %1, align 8, !tbaa !87
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !30
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !230, !nonnull !120, !align !138 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !146
  %i.q = load i64, ptr %i.n, align 8, !tbaa !147  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.f
  br i1 %i.r, label %bb.f, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.m, align 8, !tbaa !80
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.022.i.i = phi i64 [ %i.s, %bb.f ], [ %i.u, %bb.h ] ; 4 uses
  %i.t = icmp ult i64 %.022.i.i, %i.f
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.u = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.i.i = phi i64 [ %i.f, %bb.h ], [ %.022.i.i, %bb.g ] ; 3 uses
  %i.v = icmp ugt i64 %.2.i.i, -9
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.x = add nuw i64 %.2.i.i, 8
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #30 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.y, null
  br i1 %.not27.i.i, label %bb.l, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !81
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !85
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !81
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.e, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.ad = phi ptr [ %i.aa, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.p, %bb.e ] ; 3 uses
  %i.ae = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.q, %bb.e ]
  %i.af = sub i64 %i.ae, %i.f
  store i64 %i.af, ptr %i.n, align 8, !tbaa !147
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.f
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !146
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.ad, ptr %i.ah, align 8, !tbaa !30
  %i.ai = load ptr, ptr %2, align 8, !tbaa !193
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr nonnull align 1 %i.ai, i64 %i.f, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %_ZN7msgpack2v14zone14allocate_alignEmm.exit, %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7msgpack2v17adaptor16object_with_zoneINS0_4type3extEvEclERNS0_21object_with_zone_typeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !216
  %i.c = load ptr, ptr %2, align 8, !tbaa !168
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  store i32 9, ptr %1, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !230, !nonnull !120, !align !138 ; 4 uses
  %i.i = and i64 %i.f, 4294967295                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !146
  %i.m = load i64, ptr %i.j, align 8, !tbaa !147  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.i
  br i1 %i.n, label %bb.b, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.b:                                             ; preds = %bb.a
  %i.o = load i64, ptr %i.h, align 8, !tbaa !80
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.022.i.i = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.d ] ; 5 uses
  %i.p = icmp ult i64 %.022.i.i, %i.i
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.q = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.c, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ugt i64 %.022.i.i, -9
  br i1 %i.r, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %.2.i.i13 = phi i64 [ %.022.i.i, %bb.e ], [ %i.i, %bb.d ] ; 2 uses
  %i.t = add nuw i64 %.2.i.i13, 8
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #30 ; 4 uses
  %.not27.i.i = icmp eq ptr %i.u, null
  br i1 %.not27.i.i, label %bb.g, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.g:                                             ; preds = %.thread
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %.thread
  %i.w = getelementptr i8, ptr %i.u, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  store ptr %i.y, ptr %i.u, align 8, !tbaa !85
  store ptr %i.u, ptr %i.x, align 8, !tbaa !81
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %bb.a, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.z = phi ptr [ %i.w, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.l, %bb.a ] ; 4 uses
  %i.aa = phi i64 [ %.2.i.i13, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.m, %bb.a ]
  %i.ab = trunc i64 %i.f to i32
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  %i.ad = sub i64 %i.aa, %i.i
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !147
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.i
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !146
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.z, ptr %i.ag, align 8, !tbaa !30
  store i32 %i.ac, ptr %i.af, align 8, !tbaa !30
  %i.ah = load ptr, ptr %2, align 8, !tbaa !168
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !30
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ak = load ptr, ptr %2, align 8, !tbaa !168
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.am = zext i32 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.al, i64 %i.am, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7msgpack2v17adaptor16object_with_zoneISt6vectorINS0_4type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESaISD_EEvEclERNS0_21object_with_zone_typeERKSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::adaptor::detail::object_with_zone_imp", align 8 ; 4 uses
  %4 = alloca %"struct.msgpack::v1::object_with_zone_type", align 8 ; 7 uses
  %.sroa.4 = alloca [20 x i8], align 4            ; 4 uses
  store i32 7, ptr %1, align 8, !tbaa !87
  %i.a = load ptr, ptr %2, align 8, !tbaa !213    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !213  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.f, align 8, !tbaa !30
  store i32 0, ptr %i.e, align 8, !tbaa !30
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = sdiv exact i64 %i.i, 40                  ; 3 uses
  %i.k = icmp ugt i64 %i.i, 171798691800
  br i1 %i.k, label %bb.d, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.32)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #27
  resume { ptr, i32 } %i.m

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.c
  %i.n = trunc nuw i64 %i.j to i32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !230, !nonnull !120, !align !138 ; 4 uses
  %i.q = mul nuw nsw i64 %i.j, 24                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !146  ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 7
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = add i64 %i.y, %i.q                       ; 2 uses
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !147 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %bb.g, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.g:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.ac = or disjoint i64 %i.q, 7                 ; 2 uses
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.022.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.af, %bb.i ] ; 4 uses
  %i.ae = icmp ult i64 %.022.i.i, %i.ac
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.af = shl nuw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.i.i = phi i64 [ %i.ac, %bb.i ], [ %.022.i.i, %bb.h ] ; 3 uses
  %i.ag = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ah, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ai = add nuw i64 %.2.i.i, 8
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #30 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.aj, null
  br i1 %.not27.i.i, label %bb.m, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ak, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !81
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !85
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !81
  %i.ao = getelementptr i8, ptr %i.aj, i64 15
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, -8                       ; 2 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = sub i64 %i.q, %i.ar
  %i.at = add i64 %i.as, %i.aq
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
  %i.au = phi ptr [ %i.al, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.t, %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit ]
  %i.av = phi i64 [ %.2.i.i, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.aa, %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit ]
  %.014.i = phi i64 [ %i.at, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.z, %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit ] ; 2 uses
  %.0.in.i = phi i64 [ %i.aq, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i ], [ %i.w, %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit ]
  %.0.i = inttoptr i64 %.0.in.i to ptr            ; 3 uses
  %i.aw = sub i64 %i.av, %.014.i
  store i64 %i.aw, ptr %i.r, align 8, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.014.i
  store ptr %i.ax, ptr %i.s, align 8, !tbaa !146
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.0.i, i64 %i.j
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.0.i, ptr %i.ba, align 8, !tbaa !30
  store i32 %i.n, ptr %i.az, align 8, !tbaa !30
  %i.bb = load ptr, ptr %2, align 8, !tbaa !213
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN7msgpack2v14zone14allocate_alignEmm.exit
  %.sroa.018.0 = phi ptr [ %i.bb, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ %i.bh, %bb.n ] ; 2 uses
  %.0 = phi ptr [ %.0.i, %_ZN7msgpack2v14zone14allocate_alignEmm.exit ], [ %i.bg, %bb.n ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !230, !nonnull !120, !align !138
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store i32 0, ptr %4, align 8, !tbaa !87
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %4, ptr %3, align 8, !tbaa !91
  call void @_ZNKR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISC_SF_SH_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorIKNS2_7adaptor6detail20object_with_zone_impEEENT_11result_typeERS16_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.018.0, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bf = load i32, ptr %4, align 8, !tbaa !87
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store i32 %i.bf, ptr %.0, align 8
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..0.sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 40
  %i.bi = icmp ult ptr %i.bg, %i.ay
  br i1 %i.bi, label %bb.n, label %.loopexit, !llvm.loop !418

.loopexit:                                        ; preds = %bb.n, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7msgpack2v17adaptor16object_with_zoneISt3mapINS0_4type13basic_variantIN5boost16basic_string_refIcSt11char_traitsIcEEENS4_7raw_refENS4_7ext_refEEESD_St4lessISD_ESaISt4pairIKSD_SD_EEEvEclERNS0_21object_with_zone_typeERKSK_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::adaptor::detail::object_with_zone_imp", align 8 ; 4 uses
  %4 = alloca %"struct.msgpack::v1::adaptor::detail::object_with_zone_imp", align 8 ; 4 uses
  %5 = alloca %"struct.msgpack::v1::object_with_zone_type", align 8 ; 7 uses
  %6 = alloca %"struct.msgpack::v1::object_with_zone_type", align 8 ; 7 uses
  %.sroa.421 = alloca [20 x i8], align 4          ; 4 uses
  %.sroa.4 = alloca [20 x i8], align 4            ; 4 uses
  store i32 8, ptr %1, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !200  ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !30
  store i32 0, ptr %i.d, align 8, !tbaa !30
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.b, 4294967295
  br i1 %i.f, label %bb.d, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.32)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #27
  resume { ptr, i32 } %i.h

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.c
  %i.i = trunc nuw i64 %i.b to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !230, !nonnull !120, !align !138 ; 4 uses
  %i.l = mul nuw nsw i64 %i.b, 48                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !146  ; 3 uses
  %i.p = getelementptr i8, ptr %i.o, i64 7
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = and i64 %i.q, -8                         ; 2 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %i.t, %i.l                       ; 2 uses
  %i.v = load i64, ptr %i.m, align 8, !tbaa !147  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.g, label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

bb.g:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.x = or disjoint i64 %i.l, 7                  ; 2 uses
  %i.y = load i64, ptr %i.k, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.022.i.i = phi i64 [ %i.y, %bb.g ], [ %i.aa, %bb.i ] ; 4 uses
  %i.z = icmp ult i64 %.022.i.i, %i.x
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.not.i.i = icmp sgt i64 %.022.i.i, 0
  %i.aa = shl nuw nsw i64 %.022.i.i, 1
  br i1 %.not.i.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.i.i = phi i64 [ %i.x, %bb.i ], [ %.022.i.i, %bb.h ] ; 3 uses
  %i.ab = icmp ugt i64 %.2.i.i, -9
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ac, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.ac, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ad = add nuw i64 %.2.i.i, 8
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #30 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.ae, null
  br i1 %.not27.i.i, label %bb.m, label %_ZN7msgpack2v14zone15allocate_expandEm.exit.i

bb.m:                                             ; preds = %bb.l
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !38
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN7msgpack2v14zone15allocate_expandEm.exit.i:    ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !85
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !81
  %i.aj = getelementptr i8, ptr %i.ae, i64 15
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, -8                       ; 2 uses
  %i.am = ptrtoint ptr %i.ag to i64
  %i.an = sub i64 %i.l, %i.am
  %i.ao = add i64 %i.an, %i.al
  br label %_ZN7msgpack2v14zone14allocate_alignEmm.exit

_ZN7msgpack2v14zone14allocate_alignEmm.exit:      ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit, %_ZN7msgpack2v14zone15allocate_expandEm.exit.i
end_hunk_1
