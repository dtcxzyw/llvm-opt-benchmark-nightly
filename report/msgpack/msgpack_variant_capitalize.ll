Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/msgpack_variant_capitalize?download=true
inline.NumInlined: 4637
inline.NumDeleted: 2503
begin_hunk_0_@_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !170
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !205 ; 3 uses
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !205
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.n, label %bb.o, !prof !98

bb.n:                                             ; preds = %.noexc23
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.bb, i64 %i.bf, i1 false)
  br label %.noexc12

bb.o:                                             ; preds = %.noexc23
  %i.bh = icmp eq i64 %i.bf, 1
  br i1 %i.bh, label %bb.p, label %.noexc12

bb.p:                                             ; preds = %bb.o
  %i.bi = load i8, ptr %i.bb, align 1, !tbaa !55
  store i8 %i.bi, ptr %i.ax, align 1, !tbaa !55
  br label %.noexc12

.noexc12:                                         ; preds = %bb.p, %bb.o, %bb.n
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.bf
  store ptr %i.bj, ptr %i.ay, align 8, !tbaa !195
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc13:                                         ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !208
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc37:                                         ; preds = %bb.a
  %i.bk = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29, !inline_history !404 ; 3 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !173
  invoke void @_ZNSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.noexc14 unwind label %bb.q, !inline_history !404

bb.q:                                             ; preds = %.noexc37
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 24) #26, !inline_history !404
  br label %.body

.noexc14:                                         ; preds = %.noexc37
  store ptr %i.bk, ptr %i.a, align 8, !tbaa !173
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc38:                                         ; preds = %bb.a
  %i.bn = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !inline_history !405 ; 9 uses
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !181 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !196
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !186
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  store ptr %i.bp, ptr %i.br, align 8, !tbaa !197
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !198
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !tbaa !199
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !186 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %.noexc15, label %bb.r

bb.r:                                             ; preds = %.noexc38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.bn, ptr %3, align 8, !tbaa !201
  %i.bw = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bp, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc46 unwind label %bb.t, !inline_history !406 ; 3 uses

.noexc46:                                         ; preds = %bb.r, %.noexc46
  %.0.i.i.i = phi ptr [ %i.by, %.noexc46 ], [ %i.bw, %bb.r ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc46, !llvm.loop !10

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc46
  store ptr %.0.i.i.i, ptr %i.br, align 8, !tbaa !202
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.bw, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.ca, %bb.s ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !190 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i, label %bb.s, !llvm.loop !11

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i: ; preds = %bb.s
  store ptr %.0.i.i7.i, ptr %i.bs, align 8, !tbaa !202
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !199
  store i64 %i.cc, ptr %i.bt, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  store ptr %i.bw, ptr %i.bq, align 8, !tbaa !202
  br label %.noexc15

bb.t:                                             ; preds = %bb.r
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 48) #26, !inline_history !405
  br label %.body

.noexc15:                                         ; preds = %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i, %.noexc38
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !181
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

.noexc43:                                         ; preds = %bb.a
  %i.ce = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29, !inline_history !407 ; 9 uses
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !189 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  store i32 0, ptr %i.cg, align 8, !tbaa !196
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !186
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 2 uses
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !197
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !198
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  store i64 0, ptr %i.ck, align 8, !tbaa !199
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !186 ; 2 uses
  %.not.i.i41 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i41, label %.noexc16, label %bb.u

bb.u:                                             ; preds = %.noexc43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.ce, ptr %2, align 8, !tbaa !201
  %i.cn = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.ce, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc52 unwind label %bb.w, !inline_history !408 ; 3 uses

.noexc52:                                         ; preds = %bb.u, %.noexc52
  %.0.i.i.i47 = phi ptr [ %i.cp, %.noexc52 ], [ %i.cn, %bb.u ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i47, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !191 ; 2 uses
  %.not.i.i.i48 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i48, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49, label %.noexc52, !llvm.loop !10

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49: ; preds = %.noexc52
  store ptr %.0.i.i.i47, ptr %i.ci, align 8, !tbaa !202
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49
  %.0.i.i7.i50 = phi ptr [ %i.cn, %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i49 ], [ %i.cr, %bb.v ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.i7.i50, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !190 ; 2 uses
  %.not.i.i8.i51 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i8.i51, label %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i42, label %bb.v, !llvm.loop !11

_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i42: ; preds = %bb.v
  store ptr %.0.i.i7.i50, ptr %i.cj, align 8, !tbaa !202
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !199
  store i64 %i.ct, ptr %i.ck, align 8, !tbaa !199
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !202
  br label %.noexc16

bb.w:                                             ; preds = %bb.u
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 48) #26, !inline_history !407
  br label %.body

.noexc16:                                         ; preds = %_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyERKSM_.exit.i.i42, %.noexc43
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !189
  br label %_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit

bb.x:                                             ; preds = %bb.a
  unreachable

_ZNK5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE22internal_apply_visitorINS_6detail7variant9copy_intoEEENT_11result_typeERS15_.exit: ; preds = %.noexc16, %.noexc15, %.noexc14, %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc9, %.noexc8, %.noexc7, %.noexc6, %.noexc5, %.noexc4, %bb.a
  %i.cv = load i32, ptr %1, align 8, !tbaa !167   ; 2 uses
  %.lobit.i32 = ashr i32 %i.cv, 31
  %spec.select.i33 = xor i32 %.lobit.i32, %i.cv
  store i32 %spec.select.i33, ptr %0, align 8, !tbaa !167
  ret void

.body:                                            ; preds = %bb.t, %bb.w, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bm, %bb.q ], [ %i.cd, %bb.t ], [ %i.cu, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IcS8_ENS2_3extEEESaISC_EEC2ERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %2 = sdiv exact i64 %i.f, 40
  %i.g = icmp ugt i64 %2, 230584300921369395
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEE8allocateEmPKv.exit.i.i.i, !prof !99

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEE8allocateEmPKv.exit.i.i.i ] ; 7 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !177
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !178
  %i.m = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !192  ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESC_ISF_SaISF_EEEEPSF_SF_ET0_T_SN_SM_RSaIT1_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i
  %.013.i = phi ptr [ %i.q, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i ], [ %i.i, %bb.c ] ; 4 uses
  %.sroa.08.012.i = phi ptr [ %i.p, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i ], [ %i.m, %bb.c ] ; 2 uses
  invoke void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEEC2ERKS10_(ptr noundef nonnull align 8 dereferenceable(40) %.013.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.08.012.i)
          to label %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !409

_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i: ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i, i64 40 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.n
  br i1 %i.r, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESC_ISF_SaISF_EEEEPSF_SF_ET0_T_SN_SM_RSaIT1_E.exit, label %.lr.ph.i, !llvm.loop !410

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = tail call ptr @__cxa_begin_catch(ptr %i.t) #25, !inline_history !411 ; 0 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %.013.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @_ZN5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE15destroy_contentEv(ptr noundef nonnull align 8 dereferenceable(40) %.05.i.i.i) #25, !inline_history !412
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.v, %.013.i
  br i1 %.not.i.i.i13, label %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.g unwind label %bb.e, !inline_history !411

bb.e:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.f, !inline_history !411

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #27, !inline_history !411
  unreachable

bb.g:                                             ; preds = %_ZSt8_DestroyIPN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEEvT_SF_.exit.i
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESC_ISF_SaISF_EEEEPSF_SF_ET0_T_SN_SM_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i, %bb.c
  %.0.lcssa.i = phi ptr [ %i.i, %bb.c ], [ %i.q, %_ZSt10_ConstructIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEEJRKSD_EEvPT_DpOT0_.exit.i ]
  store ptr %.0.lcssa.i, ptr %i.j, align 8, !tbaa !177
  ret void

.body:                                            ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !176    ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !178
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #26
  br label %_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EED2Ev.exit

_ZNSt12_Vector_baseIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESaISD_EED2Ev.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !417, !nonnull !59, !align !139
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #29 ; 9 uses
  tail call void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE17_M_construct_nodeIJRKSG_EEEvPSt13_Rb_tree_nodeISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(80) %i.a), !inline_history !413
  %i.d = load i32, ptr %1, align 8, !tbaa !418
  store i32 %i.d, ptr %i.c, align 8, !tbaa !418
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.g, align 8, !tbaa !214
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !190  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !190
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03038 = load ptr, ptr %.030.in37, align 8, !tbaa !191 ; 2 uses
  %.not3239 = icmp eq ptr %.03038, null
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03041 = phi ptr [ %.030, %bb.l ], [ %.03038, %bb.e ] ; 4 uses
  %.03140 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !417, !nonnull !59, !align !139
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #29
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03041, i64 32
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE17_M_construct_nodeIJRKSG_EEEvPSt13_Rb_tree_nodeISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(80) %i.n)
          to label %bb.f unwind label %bb.i, !inline_history !414

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03041, align 8, !tbaa !418
  store i32 %i.o, ptr %i.m, align 8, !tbaa !418
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.r, align 8, !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !214
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE7_M_copyILb0ENSM_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISG_ESR_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !190
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #25 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN7msgpack2v14type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcS8_ENS2_3extEEESt4pairIKSD_SD_ESt10_Select1stISG_ESt4lessISD_ESaISG_EE8_M_eraseEPSt13_Rb_tree_nodeISG_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !191 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !415

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
begin_hunk_1_@_ZNK7msgpack2v17adaptor6detail8pack_impINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclINS0_4type7raw_refEEEvRKT_:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 -60, ptr %i.a, align 1, !tbaa !55
  %i.g = trunc nuw i32 %i.e to i8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.g, ptr %i.h, align 1, !tbaa !55
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZNK7msgpack2v17adaptor4packINS0_4type7raw_refEvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESG_RKS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.e, 65536
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 -59, ptr %i.b, align 1, !tbaa !55
  %i.m = trunc nuw i32 %i.e to i16
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %rev.i.i.i, ptr %i.n, align 1
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.b, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZNK7msgpack2v17adaptor4packINS0_4type7raw_refEvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESG_RKS4_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 -58, ptr %i.c, align 1, !tbaa !55
  %i.r = tail call noundef i32 @llvm.bswap.i32(i32 %i.e)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i32 %i.r, ptr %i.s, align 1
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull %i.c, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZNK7msgpack2v17adaptor4packINS0_4type7raw_refEvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESG_RKS4_.exit

_ZNK7msgpack2v17adaptor4packINS0_4type7raw_refEvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESG_RKS4_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !220
  %i.y = load i32, ptr %1, align 8, !tbaa !219
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.x, i64 noundef %i.z) ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_extEma(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [2 x i8], align 1                 ; 5 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [2 x i8], align 1                 ; 5 uses
  %i.f = alloca [3 x i8], align 1                 ; 6 uses
  %i.g = alloca [4 x i8], align 1                 ; 6 uses
  %i.h = alloca [6 x i8], align 1                 ; 6 uses
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %.split, label %bb.g

.split:                                           ; preds = %bb.a
  %i.k = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
  switch i64 %i.k, label %bb.g [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
  ]

bb.b:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 -44, ptr %i.a, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %2, ptr %i.l, align 1, !tbaa !55
  %i.m = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.l

bb.c:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 -43, ptr %i.b, align 1, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %2, ptr %i.p, align 1, !tbaa !55
  %i.q = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.b, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.l

bb.d:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 -42, ptr %i.c, align 1, !tbaa !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %2, ptr %i.t, align 1, !tbaa !55
  %i.u = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull %i.c, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.l

bb.e:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i8 -41, ptr %i.d, align 1, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %2, ptr %i.x, align 1, !tbaa !55
  %i.y = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.d, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.l

bb.f:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store i8 -40, ptr %i.e, align 1, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 %2, ptr %i.ab, align 1, !tbaa !55
  %i.ac = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.e, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %bb.l

bb.g:                                             ; preds = %bb.a, %.split
  %i.af = icmp ult i64 %1, 256
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i8 -57, ptr %i.f, align 1, !tbaa !55
  %i.ag = trunc nuw i64 %1 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %2, ptr %i.ai, align 1, !tbaa !55
  %i.aj = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.f, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.am = icmp ult i64 %1, 65536
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store i8 -56, ptr %i.g, align 1, !tbaa !55
  %i.an = trunc nuw i64 %1 to i16
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i16 %rev.i, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %2, ptr %i.ap, align 1, !tbaa !55
  %i.aq = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, ptr noundef nonnull %i.g, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  store i8 -55, ptr %i.h, align 1, !tbaa !55
  %i.at = trunc i64 %1 to i32
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i32 %i.au, ptr %i.av, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 5
  store i8 %2, ptr %i.aw, align 1, !tbaa !55
  %i.ax = load ptr, ptr %0, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %i.h, i64 noundef 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packISt6vectorINS0_4type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_IcSA_ENS4_3extEEESaISE_EEvEclINS6_18basic_stringstreamIcS9_SA_EEEERNS0_6packerIT_EESO_RKSG_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::adaptor::detail::pack_imp", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [5 x i8], align 1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = load ptr, ptr %2, align 8, !tbaa !176
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %4 = sdiv exact i64 %i.i, 40                    ; 6 uses
  %i.j = icmp ugt i64 %4, 4294967295
  br i1 %i.j, label %bb.b, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.34)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #25
  resume { ptr, i32 } %i.l

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.a
  %i.m = trunc nuw i64 %4 to i32
  %i.n = icmp samesign ult i64 %4, 16
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.o = trunc nuw nsw i64 %4 to i8
  %i.p = or disjoint i8 %i.o, -112
  store i8 %i.p, ptr %i.a, align 1, !tbaa !55
  %i.q = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

bb.f:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.t = icmp samesign ult i64 %4, 65536
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 -36, ptr %i.b, align 1, !tbaa !55
  %i.u = trunc nuw i64 %4 to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %rev.i.i, ptr %i.v, align 1
  %i.w = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.b, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 -35, ptr %i.c, align 1, !tbaa !55
  %i.z = tail call noundef i32 @llvm.bswap.i32(i32 %i.m)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i32 %i.z, ptr %i.aa, align 1
  %i.ab = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.c, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.ae = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !192 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit
  ret ptr %1

.lr.ph:                                           ; preds = %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit, %.lr.ph
  %.sroa.06.010 = phi ptr [ %i.ah, %.lr.ph ], [ %i.ae, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8, !tbaa !83
  call void @_ZNKR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorIKNS2_7adaptor6detail8pack_impINS5_18basic_stringstreamIcS8_S9_EEEEEENT_11result_typeERS19_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.06.010, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.af
  br i1 %i.ai, label %._crit_edge, label %.lr.ph, !llvm.loop !451
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packISt3mapINS0_4type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESF_St4lessISF_ESaISt4pairIKSF_SF_EEEvEclINS6_18basic_stringstreamIcS9_SA_EEEERNS0_6packerIT_EESU_RKSM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::adaptor::detail::pack_imp", align 8 ; 4 uses
  %4 = alloca %"struct.msgpack::v1::adaptor::detail::pack_imp", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [5 x i8], align 1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !199  ; 6 uses
  %i.f = icmp ugt i64 %i.e, 4294967295
  br i1 %i.f, label %bb.b, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.34)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #25
  resume { ptr, i32 } %i.h

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.a
  %i.i = trunc nuw i64 %i.e to i32
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.k = trunc nuw nsw i64 %i.e to i8
  %i.l = or disjoint i8 %i.k, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 %i.l, ptr %i.a, align 1, !tbaa !55
  %i.m = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit

bb.f:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.p = icmp samesign ult i64 %i.e, 65536
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 -34, ptr %i.b, align 1, !tbaa !55
  %i.q = trunc nuw i64 %i.e to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %rev.i.i, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.b, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i8 -33, ptr %i.c, align 1, !tbaa !55
  %i.v = tail call noundef i32 @llvm.bswap.i32(i32 %i.i)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i32 %i.v, ptr %i.w, align 1
  %i.x = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.c, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit

_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !197 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit
  ret ptr %1

.lr.ph:                                           ; preds = %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit, %.lr.ph
  %.sroa.07.013 = phi ptr [ %i.ag, %.lr.ph ], [ %i.ab, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %1, ptr %4, align 8, !tbaa !83
  call void @_ZNKR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorIKNS2_7adaptor6detail8pack_impINS5_18basic_stringstreamIcS8_S9_EEEEEENT_11result_typeERS19_(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %4), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.07.013, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %1, ptr %3, align 8, !tbaa !83
  call void @_ZNKR5boost7variantIN7msgpack2v14type5nil_tEJblmdNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_16basic_string_refIcS8_EESt6vectorIcS9_ENS3_7raw_refENS3_3extENS3_7ext_refENS_17recursive_wrapperISD_INS3_13basic_variantISA_SE_SG_EESaISK_EEEENSI_ISt3mapISK_SK_St4lessISK_ESaISt4pairIKSK_SK_EEEEENSI_ISt8multimapISK_SK_SQ_SU_EEEEE13apply_visitorIKNS2_7adaptor6detail8pack_impINS5_18basic_stringstreamIcS8_S9_EEEEEENT_11result_typeERS19_(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %3), !inline_history !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.ag = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.07.013) #31 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ac
  br i1 %i.ah, label %._crit_edge, label %.lr.ph, !llvm.loop !452
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packISt8multimapINS0_4type13basic_variantINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIcSA_ENS4_3extEEESF_St4lessISF_ESaISt4pairIKSF_SF_EEEvEclINS6_18basic_stringstreamIcS9_SA_EEEERNS0_6packerIT_EESU_RKSM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::adaptor::detail::pack_imp", align 8 ; 4 uses
  %4 = alloca %"struct.msgpack::v1::adaptor::detail::pack_imp", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %i.c = alloca [5 x i8], align 1                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !199  ; 6 uses
  %i.f = icmp ugt i64 %i.e, 4294967295
  br i1 %i.f, label %bb.b, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.34)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #25
  resume { ptr, i32 } %i.h

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.a
  %i.i = trunc nuw i64 %i.e to i32
  %i.j = icmp samesign ult i64 %i.e, 16
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.k = trunc nuw nsw i64 %i.e to i8
  %i.l = or disjoint i8 %i.k, -128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 %i.l, ptr %i.a, align 1, !tbaa !55
  %i.m = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_mapEj.exit

bb.f:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.p = icmp samesign ult i64 %i.e, 65536
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i8 -34, ptr %i.b, align 1, !tbaa !55
  %i.q = trunc nuw i64 %i.e to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i16 %rev.i.i, ptr %i.r, align 1
  %i.s = load ptr, ptr %1, align 8, !tbaa !194, !nonnull !59, !align !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %i.b, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
end_hunk_1
