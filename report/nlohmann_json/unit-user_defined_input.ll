Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-user_defined_input?download=true
inline.NumInlined: 5297
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE4scanEv:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !135, !range !85, !noundef !78
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE8skip_bomEv.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !136
  %i.ae = icmp eq i32 %i.ad, 47
  br i1 %i.ae, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.af = tail call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_commentEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br i1 %i.af, label %bb.l, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE15skip_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ag = load i8, ptr %i.z, align 8, !tbaa !135, !range !85, !noundef !78
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.j, label %.critedge, !llvm.loop !304

.critedge:                                        ; preds = %bb.j, %bb.l, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE8skip_bomEv.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !136
  switch i32 %i.aj, label %bb.x [
    i32 91, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5
    i32 93, label %bb.m
    i32 123, label %bb.n
    i32 125, label %bb.o
    i32 58, label %bb.p
    i32 44, label %bb.q
    i32 116, label %.lr.ph.i
    i32 102, label %.lr.ph.i1.preheader
    i32 110, label %.lr.ph.i6
    i32 34, label %bb.u
    i32 45, label %bb.v
    i32 48, label %bb.v
    i32 49, label %bb.v
    i32 50, label %bb.v
    i32 51, label %bb.v
    i32 52, label %bb.v
    i32 53, label %bb.v
    i32 54, label %bb.v
    i32 55, label %bb.v
    i32 56, label %bb.v
    i32 57, label %bb.v
    i32 0, label %bb.w
    i32 -1, label %bb.w
  ]

.lr.ph.i1.preheader:                              ; preds = %.critedge
  %i.ak = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.al = and i32 %i.ak, 255
  %.not.i3 = icmp eq i32 %i.al, 97
  br i1 %.not.i3, label %.lr.ph.i1.1, label %bb.s, !prof !73

bb.m:                                             ; preds = %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.n:                                             ; preds = %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.o:                                             ; preds = %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.p:                                             ; preds = %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.q:                                             ; preds = %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

.lr.ph.i:                                         ; preds = %.critedge
  %i.am = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.an = and i32 %i.am, 255
  %.not.i = icmp eq i32 %i.an, 114
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.r, !prof !73

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ao = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ap = and i32 %i.ao, 255
  %.not.i.1 = icmp eq i32 %i.ap, 117
  br i1 %.not.i.1, label %.lr.ph.i.2, label %bb.r, !prof !73

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.aq = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ar = and i32 %i.aq, 255
  %.not.i.2 = icmp eq i32 %i.ar, 101
  br i1 %.not.i.2, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5, label %bb.r, !prof !73

bb.r:                                             ; preds = %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.22, ptr %i.as, align 8, !tbaa !138
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

.lr.ph.i1.1:                                      ; preds = %.lr.ph.i1.preheader
  %i.at = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.au = and i32 %i.at, 255
  %.not.i3.1 = icmp eq i32 %i.au, 108
  br i1 %.not.i3.1, label %.lr.ph.i1.2, label %bb.s, !prof !73

.lr.ph.i1.2:                                      ; preds = %.lr.ph.i1.1
  %i.av = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.aw = and i32 %i.av, 255
  %.not.i3.2 = icmp eq i32 %i.aw, 115
  br i1 %.not.i3.2, label %.lr.ph.i1.3, label %bb.s, !prof !73

.lr.ph.i1.3:                                      ; preds = %.lr.ph.i1.2
  %i.ax = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.ay = and i32 %i.ax, 255
  %.not.i3.3 = icmp eq i32 %i.ay, 101
  br i1 %.not.i3.3, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5, label %bb.s, !prof !73

bb.s:                                             ; preds = %.lr.ph.i1.3, %.lr.ph.i1.2, %.lr.ph.i1.1, %.lr.ph.i1.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.22, ptr %i.az, align 8, !tbaa !138
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

.lr.ph.i6:                                        ; preds = %.critedge
  %i.ba = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.bb = and i32 %i.ba, 255
  %.not.i8 = icmp eq i32 %i.bb, 117
  br i1 %.not.i8, label %.lr.ph.i6.1, label %bb.t, !prof !73

.lr.ph.i6.1:                                      ; preds = %.lr.ph.i6
  %i.bc = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.bd = and i32 %i.bc, 255
  %.not.i8.1 = icmp eq i32 %i.bd, 108
  br i1 %.not.i8.1, label %.lr.ph.i6.2, label %bb.t, !prof !73

.lr.ph.i6.2:                                      ; preds = %.lr.ph.i6.1
  %i.be = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %i.bf = and i32 %i.be, 255
  %.not.i8.2 = icmp eq i32 %i.bf, 108
  br i1 %.not.i8.2, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5, label %bb.t, !prof !73

bb.t:                                             ; preds = %.lr.ph.i6.2, %.lr.ph.i6.1, %.lr.ph.i6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.22, ptr %i.bg, align 8, !tbaa !138
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.u:                                             ; preds = %.critedge
  %i.bh = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.v:                                             ; preds = %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge, %.critedge
  %i.bi = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE11scan_numberEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.w:                                             ; preds = %.critedge, %.critedge
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

bb.x:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.22, ptr %i.bj, align 8, !tbaa !138
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_literalEPKcmNS1_10lexer_baseISF_E10token_typeE.exit5: ; preds = %bb.k, %bb.t, %.lr.ph.i6.2, %.lr.ph.i1.3, %bb.r, %.lr.ph.i.2, %bb.s, %.critedge, %bb.x, %bb.w, %bb.v, %bb.u, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE8skip_bomEv.exit.thread12
  %.0 = phi i32 [ 14, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE8skip_bomEv.exit.thread12 ], [ 14, %bb.x ], [ 1, %.lr.ph.i.2 ], [ 10, %bb.m ], [ 9, %bb.n ], [ 11, %bb.o ], [ 12, %bb.p ], [ 13, %bb.q ], [ 3, %.lr.ph.i6.2 ], [ 8, %.critedge ], [ 2, %.lr.ph.i1.3 ], [ %i.bh, %bb.u ], [ %i.bi, %bb.v ], [ 15, %bb.w ], [ 14, %bb.s ], [ 14, %bb.r ], [ 14, %bb.t ], [ 14, %bb.k ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE15skip_whitespaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.j = load <2 x i64>, ptr %i.a, align 8, !tbaa !93
  %i.k = add <2 x i64> %i.j, splat (i64 1)
  store <2 x i64> %i.k, ptr %i.a, align 8, !tbaa !93
  %i.l = load i8, ptr %i.c, align 8, !tbaa !137, !range !85, !noundef !78
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  store i8 0, ptr %i.c, align 8, !tbaa !137
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !136
  br label %bb.d

bb.c:                                             ; preds = %.backedge
  %i.n = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, label %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, !prof !144

_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %1 = load ptr, ptr %i.n, align 8, !tbaa !32
  %2 = zext i8 %i.q to i32
  store ptr %1, ptr %0, align 8, !tbaa !146
  br label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i: ; preds = %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, %bb.c
  %.0.i.i = phi i32 [ %2, %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i ], [ -1, %bb.c ] ; 2 uses
  store i32 %.0.i.i, ptr %i.d, align 4, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, %bb.b
  %i.r = phi i32 [ %.0.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i ], [ %.pre.i, %bb.b ] ; 2 uses
  %.not.i = icmp eq i32 %i.r, -1
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread, label %bb.e, !prof !144

bb.e:                                             ; preds = %bb.d
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !145  ; 3 uses
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.s, ptr %i.t, align 1, !tbaa !29
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.g, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !48   ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store i8 %i.s, ptr %i.ah, align 1, !tbaa !29
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !48
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !147
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.f
  %.pr.i = load i32, ptr %i.d, align 4, !tbaa !136
  switch i32 %.pr.i, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread [
    i32 10, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread6
    i32 32, label %.backedge.backedge
    i32 9, label %.backedge.backedge
    i32 13, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread6
  br label %.backedge

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread6: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.al = load i64, ptr %i.i, align 8, !tbaa !143
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.i, align 8, !tbaa !143
  store i64 0, ptr %i.b, align 8, !tbaa !142
  br label %.backedge.backedge

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE12scan_commentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.a, label %.loopexit.sink.split [
    i32 47, label %.preheader
    i32 42, label %.preheader2
  ]

.preheader2:                                      ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %.backedge

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.h = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %switch.tableidx = add i32 %i.h, 1              ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 15
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 18435, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.i, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.backedge:                                        ; preds = %.backedge.backedge, %.preheader2
  %i.j = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.j, label %.backedge.backedge [
    i32 -1, label %.loopexit.sink.split
    i32 0, label %.loopexit.sink.split
    i32 42, label %bb.b
  ]

bb.b:                                             ; preds = %.backedge
  %i.k = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %cond = icmp eq i32 %i.k, 47
  br i1 %cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.b, align 8, !tbaa !137
  %i.l = load i64, ptr %i.c, align 8, !tbaa !141
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !141
  %i.n = load i64, ptr %i.d, align 8, !tbaa !142  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.e, align 8, !tbaa !143  ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.e, align 8, !tbaa !143
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.r = add i64 %i.n, -1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !142
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.s = load i32, ptr %i.f, align 4, !tbaa !136
  %.not2.i = icmp eq i32 %i.s, -1
  br i1 %.not2.i, label %.backedge.backedge, label %bb.h, !prof !144

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !145
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1
  store ptr %i.u, ptr %i.g, align 8, !tbaa !145
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.h, %bb.g, %.backedge
  br label %.backedge, !llvm.loop !305

.loopexit.sink.split:                             ; preds = %.backedge, %.backedge, %bb.a
  %.str.25.sink = phi ptr [ @.str.25, %bb.a ], [ @.str.24, %.backedge ], [ @.str.24, %.backedge ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.str.25.sink, ptr %i.v, align 8, !tbaa !138
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.preheader, %.loopexit.sink.split
  %.0 = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE11scan_stringEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = alloca [4 x i32], align 16               ; 4 uses
  %i.d = alloca [4 x i32], align 16               ; 4 uses
  %i.e = alloca [6 x i32], align 4                ; 4 uses
  %i.f = alloca [6 x i32], align 4                ; 4 uses
  %i.g = alloca [6 x i32], align 4                ; 4 uses
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 40 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 20 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 20 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.t = load <2 x i64>, ptr %i.h, align 8, !tbaa !93
  %i.u = add <2 x i64> %i.t, splat (i64 1)
  store <2 x i64> %i.u, ptr %i.h, align 8, !tbaa !93
  %i.v = load i8, ptr %i.j, align 8, !tbaa !137, !range !85, !noundef !78
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 8, !tbaa !137
  %.pre.i = load i32, ptr %i.k, align 4, !tbaa !136
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, label %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, !prof !144

_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !29
  %1 = load ptr, ptr %i.x, align 8, !tbaa !32
  %2 = zext i8 %i.aa to i32
  store ptr %1, ptr %0, align 8, !tbaa !146
  br label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i: ; preds = %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, %bb.d
  %.0.i.i = phi i32 [ %2, %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i ], [ -1, %bb.d ] ; 2 uses
  store i32 %.0.i.i, ptr %i.k, align 4, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, %bb.c
  %i.ab = phi i32 [ %.0.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i ], [ %.pre.i, %bb.c ] ; 2 uses
  %.not.i = icmp eq i32 %i.ab, -1
  br i1 %.not.i, label %.thread104.sink.split, label %bb.f, !prof !144

bb.f:                                             ; preds = %bb.e
  %i.ac = trunc i32 %i.ab to i8                   ; 2 uses
  %i.ad = load ptr, ptr %i.n, align 8, !tbaa !145 ; 3 uses
  %i.ae = load ptr, ptr %i.o, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !29
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !145
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.n, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.m, align 8, !tbaa !48  ; 4 uses
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = icmp eq i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.i, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.h
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 1)
  %i.am = add i64 %.sroa.speculated.i.i.i.i.i, %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ak
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 9223372036854775807)
  %i.ap = select i1 %i.an, i64 9223372036854775807, i64 %i.ao ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #29 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ak ; 2 uses
  store i8 %i.ac, ptr %i.ar, align 1, !tbaa !29
  %i.as = icmp sgt i64 %i.ak, 0
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ah, i64 %i.ak, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ah) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.aq, ptr %i.m, align 8, !tbaa !48
  store ptr %i.at, ptr %i.n, align 8, !tbaa !145
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store ptr %i.au, ptr %i.o, align 8, !tbaa !147
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.g
  %.pr.i = load i32, ptr %i.k, align 4, !tbaa !136 ; 3 uses
  %i.av = icmp eq i32 %.pr.i, 10
  br i1 %i.av, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread91, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread91: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !143
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !143
  store i64 0, ptr %i.i, align 8, !tbaa !142
  br label %.thread104.sink.split

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  switch i32 %.pr.i, label %bb.cc [
    i32 -1, label %.thread104.sink.split.loopexit
    i32 34, label %.thread104
    i32 92, label %bb.l
    i32 0, label %.thread104.sink.split.loopexit156
    i32 1, label %.thread104.sink.split
    i32 2, label %bb.aq
    i32 3, label %bb.ar
    i32 4, label %bb.as
    i32 5, label %bb.at
    i32 6, label %bb.au
    i32 7, label %bb.av
    i32 8, label %bb.aw
    i32 9, label %bb.ax
    i32 244, label %bb.cb
    i32 11, label %bb.ay
    i32 12, label %bb.az
    i32 13, label %bb.ba
    i32 14, label %bb.bb
    i32 15, label %bb.bc
    i32 16, label %bb.bd
    i32 17, label %bb.be
    i32 18, label %bb.bf
    i32 19, label %bb.bg
    i32 20, label %bb.bh
    i32 21, label %bb.bi
    i32 22, label %bb.bj
    i32 23, label %bb.bk
    i32 24, label %bb.bl
    i32 25, label %bb.bm
    i32 26, label %bb.bn
    i32 27, label %bb.bo
    i32 28, label %bb.bp
    i32 29, label %bb.bq
    i32 30, label %bb.br
    i32 31, label %bb.bs
    i32 32, label %bb.bt
    i32 33, label %bb.bt
    i32 35, label %bb.bt
    i32 36, label %bb.bt
    i32 37, label %bb.bt
    i32 38, label %bb.bt
    i32 39, label %bb.bt
    i32 40, label %bb.bt
    i32 41, label %bb.bt
    i32 42, label %bb.bt
    i32 43, label %bb.bt
    i32 44, label %bb.bt
    i32 45, label %bb.bt
    i32 46, label %bb.bt
    i32 47, label %bb.bt
    i32 48, label %bb.bt
    i32 49, label %bb.bt
    i32 50, label %bb.bt
    i32 51, label %bb.bt
    i32 52, label %bb.bt
    i32 53, label %bb.bt
    i32 54, label %bb.bt
    i32 55, label %bb.bt
    i32 56, label %bb.bt
    i32 57, label %bb.bt
    i32 58, label %bb.bt
    i32 59, label %bb.bt
    i32 60, label %bb.bt
    i32 61, label %bb.bt
    i32 62, label %bb.bt
    i32 63, label %bb.bt
    i32 64, label %bb.bt
    i32 65, label %bb.bt
    i32 66, label %bb.bt
    i32 67, label %bb.bt
    i32 68, label %bb.bt
    i32 69, label %bb.bt
    i32 70, label %bb.bt
    i32 71, label %bb.bt
    i32 72, label %bb.bt
    i32 73, label %bb.bt
    i32 74, label %bb.bt
    i32 75, label %bb.bt
    i32 76, label %bb.bt
    i32 77, label %bb.bt
    i32 78, label %bb.bt
    i32 79, label %bb.bt
    i32 80, label %bb.bt
    i32 81, label %bb.bt
    i32 82, label %bb.bt
    i32 83, label %bb.bt
    i32 84, label %bb.bt
    i32 85, label %bb.bt
    i32 86, label %bb.bt
    i32 87, label %bb.bt
    i32 88, label %bb.bt
    i32 89, label %bb.bt
    i32 90, label %bb.bt
    i32 91, label %bb.bt
    i32 93, label %bb.bt
    i32 94, label %bb.bt
    i32 95, label %bb.bt
    i32 96, label %bb.bt
    i32 97, label %bb.bt
    i32 98, label %bb.bt
    i32 99, label %bb.bt
    i32 100, label %bb.bt
    i32 101, label %bb.bt
    i32 102, label %bb.bt
    i32 103, label %bb.bt
    i32 104, label %bb.bt
    i32 105, label %bb.bt
    i32 106, label %bb.bt
    i32 107, label %bb.bt
    i32 108, label %bb.bt
    i32 109, label %bb.bt
    i32 110, label %bb.bt
    i32 111, label %bb.bt
    i32 112, label %bb.bt
    i32 113, label %bb.bt
    i32 114, label %bb.bt
    i32 115, label %bb.bt
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE11scan_numberEv:bb.a
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !28
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ak
  store i8 0, ptr %i.aw, align 1, !tbaa !29
  br label %.preheader101

bb.h:                                             ; preds = %bb.a, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit
  %i.ax = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.ax, label %bb.l [
    i32 48, label %bb.i
    i32 49, label %bb.j
    i32 50, label %bb.j
    i32 51, label %bb.j
    i32 52, label %bb.j
    i32 53, label %bb.j
    i32 54, label %bb.j
    i32 55, label %bb.j
    i32 56, label %bb.j
    i32 57, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.b, align 4, !tbaa !136
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %i.ay)
  br label %bb.m

bb.j:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %i.az = load i32, ptr %i.b, align 4, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28 ; 4 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !44 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %bb.j
  %i.bh = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.bj = phi i64 [ %i.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.bk = icmp ugt i64 %i.bd, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit38

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 noundef %i.bc, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i36 = load ptr, ptr %i.ba, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit38

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %bb.k
  %i.bl = phi ptr [ %.pre.i.i36, %bb.k ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.bm = trunc i32 %i.az to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bc
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !29
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !28
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !44
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bd
  store i8 0, ptr %i.bp, align 1, !tbaa !29
  br label %.preheader101

.preheader101:                                    ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit33, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit38
  %.111.ph = phi i32 [ 5, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit33 ], [ 6, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit38 ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.66, ptr %i.ca, align 8, !tbaa !138
  br label %bb.bm

bb.m:                                             ; preds = %bb.i, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit28
  %.010 = phi i32 [ 6, %bb.i ], [ 5, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit28 ]
  %i.cb = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  switch i32 %i.cb, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread [
    i32 46, label %bb.n
    i32 101, label %bb.p
    i32 69, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !139
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !28 ; 4 uses
  %i.ch = add i64 %i.cg, 1                        ; 3 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !44 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42: ; preds = %bb.n
  %i.cl = icmp ult i64 %i.cg, 16
  tail call void @llvm.assume(i1 %i.cl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39: ; preds = %bb.n
  %i.cm = load i64, ptr %i.cj, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42
  %i.cn = phi i64 [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i39 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i42 ]
  %i.co = icmp ugt i64 %i.ch, %i.cn
  br i1 %i.co, label %bb.o, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit43

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 noundef %i.cg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i41 = load ptr, ptr %i.ce, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit43

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40, %bb.o
  %i.cp = phi ptr [ %.pre.i.i41, %bb.o ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i40 ]
  %i.cq = trunc i32 %i.cd to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cg
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !29
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !28
  %i.cs = load ptr, ptr %i.ce, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ch
  store i8 0, ptr %i.ct, align 1, !tbaa !29
  br label %bb.ai

bb.p:                                             ; preds = %bb.m, %bb.m
  %i.cu = load i32, ptr %i.b, align 4, !tbaa !136
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !28 ; 4 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = load ptr, ptr %i.cv, align 8, !tbaa !44 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47: ; preds = %bb.p
  %i.dc = icmp ult i64 %i.cx, 16
  tail call void @llvm.assume(i1 %i.dc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %bb.p
  %i.dd = load i64, ptr %i.da, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47
  %i.de = phi i64 [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i47 ]
  %i.df = icmp ugt i64 %i.cy, %i.de
  br i1 %i.df, label %bb.q, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit48

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, i64 noundef %i.cx, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i46 = load ptr, ptr %i.cv, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit48

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit48: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45, %bb.q
  %i.dg = phi ptr [ %.pre.i.i46, %bb.q ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i45 ]
  %i.dh = trunc i32 %i.cu to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cx
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !29
  store i64 %i.cy, ptr %i.cw, align 8, !tbaa !28
  %i.dj = load ptr, ptr %i.cv, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cy
  store i8 0, ptr %i.dk, align 1, !tbaa !29
  br label %bb.ar

bb.r:                                             ; preds = %.preheader101, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit53
  %i.dl = load <2 x i64>, ptr %i.bq, align 8, !tbaa !93
  %i.dm = add <2 x i64> %i.dl, splat (i64 1)
  store <2 x i64> %i.dm, ptr %i.bq, align 8, !tbaa !93
  %i.dn = load i8, ptr %i.bs, align 8, !tbaa !137, !range !85, !noundef !78
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.bs, align 8, !tbaa !137
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !136
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dp = load ptr, ptr %0, align 8, !tbaa !146   ; 3 uses
  %i.dq = load ptr, ptr %i.bt, align 8, !tbaa !146
  %.not.i.i = icmp eq ptr %i.dp, %i.dq
  br i1 %.not.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, label %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, !prof !144

_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i: ; preds = %bb.t
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !29
  %1 = load ptr, ptr %i.dp, align 8, !tbaa !32
  %2 = zext i8 %i.ds to i32
  store ptr %1, ptr %0, align 8, !tbaa !146
  br label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i: ; preds = %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i, %bb.t
  %.0.i.i = phi i32 [ %2, %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i.i ], [ -1, %bb.t ] ; 2 uses
  store i32 %.0.i.i, ptr %i.b, align 4, !tbaa !136
  br label %bb.u

bb.u:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i, %bb.s
  %i.dt = phi i32 [ %.0.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit.i ], [ %.pre.i, %bb.s ] ; 2 uses
  %.not.i = icmp eq i32 %i.dt, -1
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread, label %bb.v, !prof !144

bb.v:                                             ; preds = %bb.u
  %i.du = trunc i32 %i.dt to i8                   ; 2 uses
  %i.dv = load ptr, ptr %i.bv, align 8, !tbaa !145 ; 3 uses
  %i.dw = load ptr, ptr %i.bw, align 8, !tbaa !147
  %.not.i.i.i = icmp eq ptr %i.dv, %i.dw
  br i1 %.not.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !29
  %i.dx = load ptr, ptr %i.bv, align 8, !tbaa !145
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.dy, ptr %i.bv, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

bb.x:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr %i.bu, align 8, !tbaa !48 ; 4 uses
  %i.ea = ptrtoint ptr %i.dv to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 7 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775807
  br i1 %i.ed, label %bb.y, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.x
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ee = add i64 %.sroa.speculated.i.i.i.i.i, %i.ec ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ec
  %i.eg = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 9223372036854775807)
  %i.eh = select i1 %i.ef, i64 9223372036854775807, i64 %i.eg ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.eh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ei = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #29 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ec ; 2 uses
  store i8 %i.du, ptr %i.ej, align 1, !tbaa !29
  %i.ek = icmp sgt i64 %i.ec, 0
  br i1 %i.ek, label %bb.z, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

bb.z:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr align 1 %i.dz, i64 %i.ec, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.z, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %.not.i17.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.dz) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i: ; preds = %bb.aa, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.ei, ptr %i.bu, align 8, !tbaa !48
  store ptr %i.el, ptr %i.bv, align 8, !tbaa !145
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eh
  store ptr %i.em, ptr %i.bw, align 8, !tbaa !147
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i:         ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i.i, %bb.w
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !136 ; 3 uses
  switch i32 %.pr.i, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread [
    i32 10, label %bb.ab
    i32 48, label %bb.ac
    i32 49, label %bb.ac
    i32 50, label %bb.ac
    i32 51, label %bb.ac
    i32 52, label %bb.ac
    i32 53, label %bb.ac
    i32 54, label %bb.ac
    i32 55, label %bb.ac
    i32 56, label %bb.ac
    i32 57, label %bb.ac
    i32 46, label %bb.ae
    i32 101, label %bb.ag
    i32 69, label %bb.ag
  ]

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !143
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !143
  store i64 0, ptr %i.br, align 8, !tbaa !142
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread

bb.ac:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.eq = load i64, ptr %i.by, align 8, !tbaa !28 ; 4 uses
  %i.er = add i64 %i.eq, 1                        ; 3 uses
  %i.es = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bz
  br i1 %i.et, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i52: ; preds = %bb.ac
  %i.eu = icmp ult i64 %i.eq, 16
  tail call void @llvm.assume(i1 %i.eu)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %bb.ac
  %i.ev = load i64, ptr %i.bz, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i52
  %i.ew = phi i64 [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i52 ]
  %i.ex = icmp ugt i64 %i.er, %i.ew
  br i1 %i.ex, label %bb.ad, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit53

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.eq, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i51 = load ptr, ptr %i.bx, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit53

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50, %bb.ad
  %i.ey = phi ptr [ %.pre.i.i51, %bb.ad ], [ %i.es, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i50 ]
  %i.ez = trunc nuw nsw i32 %.pr.i to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !29
  store i64 %i.er, ptr %i.by, align 8, !tbaa !28
  %i.fb = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.er
  store i8 0, ptr %i.fc, align 1, !tbaa !29
  br label %bb.r

bb.ae:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !139
  %i.ff = load i64, ptr %i.by, align 8, !tbaa !28 ; 4 uses
  %i.fg = add i64 %i.ff, 1                        ; 3 uses
  %i.fh = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.bz
  br i1 %i.fi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57: ; preds = %bb.ae
  %i.fj = icmp ult i64 %i.ff, 16
  tail call void @llvm.assume(i1 %i.fj)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.ae
  %i.fk = load i64, ptr %i.bz, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57
  %i.fl = phi i64 [ %i.fk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i57 ]
  %i.fm = icmp ugt i64 %i.fg, %i.fl
  br i1 %i.fm, label %bb.af, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit58

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.ff, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i56 = load ptr, ptr %i.bx, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit58

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit58: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55, %bb.af
  %i.fn = phi ptr [ %.pre.i.i56, %bb.af ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i55 ]
  %i.fo = trunc i32 %i.fe to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !29
  store i64 %i.fg, ptr %i.by, align 8, !tbaa !28
  %i.fq = load ptr, ptr %i.bx, align 8, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fg
  store i8 0, ptr %i.fr, align 1, !tbaa !29
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i
  %i.fs = load i64, ptr %i.by, align 8, !tbaa !28 ; 4 uses
  %i.ft = add i64 %i.fs, 1                        ; 3 uses
  %i.fu = load ptr, ptr %i.bx, align 8, !tbaa !44 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bz
  br i1 %i.fv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i62: ; preds = %bb.ag
  %i.fw = icmp ult i64 %i.fs, 16
  tail call void @llvm.assume(i1 %i.fw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %bb.ag
  %i.fx = load i64, ptr %i.bz, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i62
  %i.fy = phi i64 [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i62 ]
  %i.fz = icmp ugt i64 %i.ft, %i.fy
  br i1 %i.fz, label %bb.ah, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit63

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i64 noundef %i.fs, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i61 = load ptr, ptr %i.bx, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit63

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit63: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60, %bb.ah
  %i.ga = phi ptr [ %.pre.i.i61, %bb.ah ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i60 ]
  %i.gb = trunc nuw nsw i32 %.pr.i to i8
end_hunk_1
begin_hunk_2_@_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE11scan_numberEv:bb.a
  br i1 %i.ju, label %bb.ay, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit93

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i90
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.id, i64 noundef %i.jn, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i91 = load ptr, ptr %i.id, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit93

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit93: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i90, %bb.ay
  %i.jv = phi ptr [ %.pre.i.i91, %bb.ay ], [ %i.jp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i90 ]
  %i.jw = trunc i32 %i.jm to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jn
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !29
  store i64 %i.jo, ptr %i.ie, align 8, !tbaa !28
  %i.jy = load ptr, ptr %i.id, align 8, !tbaa !44
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jo
  store i8 0, ptr %i.jz, align 1, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit88, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit93
  %i.ka = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %.off20107 = add i32 %i.ka, -48
  %switch21108 = icmp ult i32 %.off20107, 10
  br i1 %switch21108, label %.lr.ph, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.ba

bb.az:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit83
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.69, ptr %i.ke, align 8, !tbaa !138
  br label %bb.bm

bb.ba:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98
  %i.kf = load i32, ptr %i.b, align 4, !tbaa !136
  %i.kg = load i64, ptr %i.kc, align 8, !tbaa !28 ; 4 uses
  %i.kh = add i64 %i.kg, 1                        ; 3 uses
  %i.ki = load ptr, ptr %i.kb, align 8, !tbaa !44 ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.kd
  br i1 %i.kj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i97: ; preds = %bb.ba
  %i.kk = icmp ult i64 %i.kg, 16
  tail call void @llvm.assume(i1 %i.kk)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94: ; preds = %bb.ba
  %i.kl = load i64, ptr %i.kd, align 8, !tbaa !29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i97
  %i.km = phi i64 [ %i.kl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i94 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i97 ]
  %i.kn = icmp ugt i64 %i.kh, %i.km
  br i1 %i.kn, label %bb.bb, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98

bb.bb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.kb, i64 noundef %i.kg, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i.i96 = load ptr, ptr %i.kb, align 8, !tbaa !44
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95, %bb.bb
  %i.ko = phi ptr [ %.pre.i.i96, %bb.bb ], [ %i.ki, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i95 ]
  %i.kp = trunc i32 %i.kf to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kg
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !29
  store i64 %i.kh, ptr %i.kc, align 8, !tbaa !28
  %i.kr = load ptr, ptr %i.kb, align 8, !tbaa !44
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kh
  store i8 0, ptr %i.ks, align 1, !tbaa !29
  %i.kt = tail call noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %.off20 = add i32 %i.kt, -48
  %switch21 = icmp ult i32 %.off20, 10
  br i1 %switch21, label %bb.ba, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread: ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i, %bb.u, %bb.am, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98, %.preheader, %bb.ab, %bb.m
  %.2 = phi i32 [ %.010, %bb.m ], [ 7, %bb.am ], [ %.111.ph, %bb.ab ], [ 7, %.preheader ], [ 7, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi.exit98 ], [ %.111.ph, %bb.u ], [ %.111.ph, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.i ]
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ku, align 8, !tbaa !137
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !141
  %i.kx = add i64 %i.kw, -1
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !141
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !142 ; 2 uses
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !143 ; 2 uses
  %.not.i99 = icmp eq i64 %i.lc, 0
  br i1 %.not.i99, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ld = add i64 %i.lc, -1
  store i64 %i.ld, ptr %i.lb, align 8, !tbaa !143
  br label %bb.bf

bb.be:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv.exit.thread
  %i.le = add i64 %i.kz, -1
  store i64 %i.le, ptr %i.ky, align 8, !tbaa !142
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.lf = load i32, ptr %i.b, align 4, !tbaa !136
  %.not2.i = icmp eq i32 %i.lf, -1
  br i1 %.not2.i, label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit, label %bb.bg, !prof !144

bb.bg:                                            ; preds = %bb.bf
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !145
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -1
  store ptr %i.li, ptr %i.lg, align 8, !tbaa !145
  br label %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit: ; preds = %bb.bf, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !49
  %i.lj = tail call ptr @__errno_location() #35   ; 3 uses
  store i32 0, ptr %i.lj, align 4, !tbaa !39
  switch i32 %.2, label %.critedge [
    i32 5, label %bb.bh
    i32 6, label %bb.bj
  ]

bb.bh:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !44
  %i.lm = call i64 @__isoc23_strtoull(ptr noundef %i.ll, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ln = load i32, ptr %i.lj, align 4, !tbaa !39
  %.not17 = icmp eq i32 %i.ln, 34
  br i1 %.not17, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.lm, ptr %i.lo, align 8, !tbaa !150
  br label %bb.bl

bb.bj:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !44
  %i.lr = call i64 @__isoc23_strtoll(ptr noundef %i.lq, ptr noundef nonnull %i.a, i32 noundef 10) #28
  %i.ls = load i32, ptr %i.lj, align 4, !tbaa !39
  %.not = icmp eq i32 %i.ls, 34
  br i1 %.not, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.lr, ptr %i.lt, align 8, !tbaa !151
  br label %bb.bl

.critedge:                                        ; preds = %bb.bj, %bb.bh, %_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5ungetEv.exit
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !44
  %i.lx = call double @strtod(ptr noundef nonnull %i.lw, ptr noundef nonnull %i.a) #28
  store double %i.lx, ptr %i.lu, align 8, !tbaa !152
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi, %.critedge
  %.214 = phi i32 [ 7, %.critedge ], [ 5, %bb.bi ], [ 6, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.az, %bb.aw, %bb.al, %bb.l
  %.3 = phi i32 [ 14, %bb.l ], [ %.214, %bb.bl ], [ 14, %bb.al ], [ 14, %bb.aw ], [ 14, %bb.az ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3getEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load <2 x i64>, ptr %i.a, align 8, !tbaa !93
  %i.d = add <2 x i64> %i.c, splat (i64 1)
  store <2 x i64> %i.d, ptr %i.a, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !137, !range !85, !noundef !78
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 8, !tbaa !137
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !136
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %0, align 8, !tbaa !146    ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !146
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit, label %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i, !prof !144

_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29
  %1 = load ptr, ptr %i.i, align 8, !tbaa !32
  %2 = zext i8 %i.l to i32
  store ptr %1, ptr %0, align 8, !tbaa !146
  br label %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit: ; preds = %bb.c, %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i
  %.0.i = phi i32 [ %2, %_ZSt9__advanceISt14_List_iteratorIcElEvRT_T0_St26bidirectional_iterator_tag.exit.i ], [ -1, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.i, ptr %i.m, align 4, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit, %bb.b
  %i.n = phi i32 [ %.0.i, %_ZN8nlohmann16json_abi_v3_12_06detail22iterator_input_adapterISt14_List_iteratorIcEE13get_characterEv.exit ], [ %.pre, %bb.b ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread, label %bb.e, !prof !144

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = trunc i32 %i.n to i8                     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !145  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !147
  %.not.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.s, align 1, !tbaa !29
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !145
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store ptr %i.w, ptr %i.r, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !48   ; 4 uses
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #33
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store i8 %i.q, ptr %i.ah, align 1, !tbaa !29
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ag, ptr %i.p, align 8, !tbaa !48
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !145
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !147
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.f
  %.pr = load i32, ptr %i.o, align 4, !tbaa !136  ; 2 uses
  %i.al = icmp eq i32 %.pr, 10
  br i1 %i.al, label %bb.k, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

bb.k:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !143
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !143
  store i64 0, ptr %i.b, align 8, !tbaa !142
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread

_ZNSt6vectorIcSaIcEE9push_backEOc.exit.thread:    ; preds = %bb.d, %bb.k, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.ap = phi i32 [ %.pr, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 10, %bb.k ], [ -1, %bb.d ]
  ret i32 %i.ap
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.b, align 8, !tbaa !28
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !44
  store i8 0, ptr %i.c, align 1, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !145  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.h = phi ptr [ %i.g, %bb.a ], [ %i.e, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 -1, ptr %i.i, align 8, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !39
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !147
  %.not.i.i1 = icmp eq ptr %i.h, %i.n
  br i1 %.not.i.i1, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  store i8 %i.l, ptr %i.h, align 1, !tbaa !29
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.f, align 8, !tbaa !145
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.c:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit
  %i.q = ptrtoint ptr %i.h to i64
  %i.r = ptrtoint ptr %i.e to i64
  %i.s = sub i64 %i.q, %i.r                       ; 7 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775807
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #33
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = add i64 %.sroa.speculated.i.i.i.i, %i.s  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.s
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807)
  %i.x = select i1 %i.v, i64 9223372036854775807, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #29
          to label %.noexc2 unwind label %bb.g    ; 4 uses

.noexc2:                                          ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s ; 2 uses
  store i8 %i.l, ptr %i.z, align 1, !tbaa !29
  %i.aa = icmp sgt i64 %i.s, 0
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.e, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #30
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.y, ptr %i.d, align 8, !tbaa !48
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !145
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !147
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.b
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail5lexerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterISt14_List_iteratorIcEEEE3addEi(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28   ; 4 uses
end_hunk_2
