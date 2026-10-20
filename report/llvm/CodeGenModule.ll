Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenModule?download=true
inline.NumInlined: 33934
inline.NumDeleted: 16733
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN5clang17DiagnosticStorageD2Ev:bb.a
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !1014
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ao = load ptr, ptr %.ptr1.4, align 8, !tbaa !1085 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !1014
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.at = load ptr, ptr %.ptr1.5, align 8, !tbaa !1085 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !1014
  %i.ax = add i64 %i.aw, 1
  tail call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %.ptr1.6 = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ay = load ptr, ptr %.ptr1.6, align 8, !tbaa !1085 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !1014
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  %.ptr1.7 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bd = load ptr, ptr %.ptr1.7, align 8, !tbaa !1085 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !1014
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7
  %.ptr1.8 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bi = load ptr, ptr %.ptr1.8, align 8, !tbaa !1085 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !1014
  %i.bm = add i64 %i.bl, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8
  %.ptr1.9 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load ptr, ptr %.ptr1.9, align 8, !tbaa !1085 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !1014
  %i.br = add i64 %i.bq, 1
  tail call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2180
  tail call void @_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2181 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8 ; 2 uses
  %i.f = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.f, 0
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -5 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 3 uses
  %.not3.i.i.i.i = icmp eq i64 %i.g, 0
  %.not.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %.not3.i.i.i.i
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN4llvm11SmallVectorIPNS_8FunctionELj4EED2Ev.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.i) #28
  br label %_ZN4llvm11SmallVectorIPNS_8FunctionELj4EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIPNS_8FunctionELj4EED2Ev.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 48) #30
  br label %_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIPNS_8FunctionELj4EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3310

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiN4llvm13TinyPtrVectorIPNS2_8FunctionEEEESt10_Select1stIS7_ESt4lessIiESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

declare void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN5clang7CodeGen15CGOpenMPRuntimeC2ERNS0_13CodeGenModuleE(ptr noundef nonnull align 8 dereferenceable(3696), ptr noundef nonnull align 8 dereferenceable(4008)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang7CodeGen13CGHLSLRuntimeD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5clang7CodeGen13CGHLSLRuntimeE, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2184 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIPKN5clang10RecordTypeEPNS_10StructTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2185
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #28
  br label %_ZN4llvm8DenseMapIPKN5clang10RecordTypeEPNS_10StructTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit

_ZN4llvm8DenseMapIPKN5clang10RecordTypeEPNS_10StructTypeENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang7CodeGen13CGHLSLRuntimeD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5clang7CodeGen13CGHLSLRuntimeE, i64 16), ptr %0, align 8, !tbaa !128
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2184 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN5clang7CodeGen13CGHLSLRuntimeD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2185
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #28, !inline_history !3311
  br label %_ZN5clang7CodeGen13CGHLSLRuntimeD2Ev.exit

_ZN5clang7CodeGen13CGHLSLRuntimeD2Ev.exit:        ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #30
  ret void
}

declare noundef ptr @_ZNK4llvm11GlobalValue16getAliaseeObjectEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm5Value17stripPointerCastsEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1016 ; 2 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = add nuw nsw i64 %i.d, 1                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1017
  %.not.i.i.not = icmp ult i32 %i.c, %i.g
  %.pre3 = load ptr, ptr %0, align 8, !tbaa !140  ; 4 uses
  br i1 %.not.i.i.not, label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit, label %bb.b, !prof !1174

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %.pre3, i64 %i.d
  %i.i = icmp uge ptr %1, %.pre3
  %i.j = icmp ult ptr %1, %i.h
  %spec.select.i.i.i.i = and i1 %i.i, %i.j
  br i1 %spec.select.i.i.i.i, label %bb.c, label %.critedge.i.i, !prof !1371

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64
  %i.l = ptrtoint ptr %.pre3 to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  %i.n = load ptr, ptr %0, align 8, !tbaa !140    ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.m
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit

.critedge.i.i:                                    ; preds = %bb.b
  tail call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.e)
  %.pre = load ptr, ptr %0, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit

_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit: ; preds = %bb.a, %bb.c, %.critedge.i.i
  %i.p = phi ptr [ %.pre3, %bb.a ], [ %i.n, %bb.c ], [ %.pre, %.critedge.i.i ]
  %.016.i.i = phi ptr [ %1, %bb.a ], [ %i.o, %bb.c ], [ %1, %.critedge.i.i ] ; 4 uses
  %i.q = load i32, ptr %i.b, align 8, !tbaa !1016
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.r ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(57) %i.s, ptr noundef nonnull align 8 dereferenceable(57) %.016.i.i, i64 21, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1012
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1085 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1013 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.y, ptr %i.a, align 8, !tbaa !1090
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %bb.d, label %._crit_edge.i.i.i

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.aa = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !1085
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !1090
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !1014
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit
  %i.ac = phi ptr [ %i.aa, %bb.d ], [ %i.v, %_ZN4llvm23SmallVectorTemplateBaseIN5clang9FixItHintELb0EE28reserveForParamAndGetAddressERKS2_m.exit ] ; 2 uses
  switch i64 %i.y, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5clang9FixItHintC2ERKS0_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !1014
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !1014
  br label %_ZN5clang9FixItHintC2ERKS0_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %_ZN5clang9FixItHintC2ERKS0_.exit

_ZN5clang9FixItHintC2ERKS0_.exit:                 ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !1090 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !1013
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !1085
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !1014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %.016.i.i, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !2188, !range !136, !noundef !137
  store i8 %i.ak, ptr %i.ai, align 8, !tbaa !2188
  %i.al = load i32, ptr %i.b, align 8, !tbaa !1016
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.b, align 8, !tbaa !1016
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang20DiagStorageAllocator8AllocateEv(ptr noundef nonnull align 8 dereferenceable(14980) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14976 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1112 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(928) ptr @_Znwm(i64 noundef 928) #29 ; 40 uses
  store i8 0, ptr %i.d, align 8, !tbaa !1206
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  store ptr %i.e, ptr %.ptr.i, align 8, !tbaa !1012
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %i.f, align 8, !tbaa !1013
  store i8 0, ptr %i.e, align 8, !tbaa !1014
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 2 uses
  store ptr %i.g, ptr %.ptr.1.i, align 8, !tbaa !1012
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store i64 0, ptr %i.h, align 8, !tbaa !1013
  store i8 0, ptr %i.g, align 8, !tbaa !1014
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  store ptr %i.i, ptr %.ptr.2.i, align 8, !tbaa !1012
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store i64 0, ptr %i.j, align 8, !tbaa !1013
  store i8 0, ptr %i.i, align 8, !tbaa !1014
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  store ptr %i.k, ptr %.ptr.3.i, align 8, !tbaa !1012
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  store i64 0, ptr %i.l, align 8, !tbaa !1013
  store i8 0, ptr %i.k, align 8, !tbaa !1014
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 240 ; 2 uses
  store ptr %i.m, ptr %.ptr.4.i, align 8, !tbaa !1012
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store i64 0, ptr %i.n, align 8, !tbaa !1013
  store i8 0, ptr %i.m, align 8, !tbaa !1014
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 272 ; 2 uses
  store ptr %i.o, ptr %.ptr.5.i, align 8, !tbaa !1012
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store i64 0, ptr %i.p, align 8, !tbaa !1013
  store i8 0, ptr %i.o, align 8, !tbaa !1014
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 304 ; 2 uses
  store ptr %i.q, ptr %.ptr.6.i, align 8, !tbaa !1012
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store i64 0, ptr %i.r, align 8, !tbaa !1013
  store i8 0, ptr %i.q, align 8, !tbaa !1014
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  store ptr %i.s, ptr %.ptr.7.i, align 8, !tbaa !1012
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store i64 0, ptr %i.t, align 8, !tbaa !1013
  store i8 0, ptr %i.s, align 8, !tbaa !1014
  %.ptr.8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  store ptr %i.u, ptr %.ptr.8.i, align 8, !tbaa !1012
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i64 0, ptr %i.v, align 8, !tbaa !1013
  store i8 0, ptr %i.u, align 8, !tbaa !1014
  %.ptr.9.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 400 ; 2 uses
  store ptr %i.w, ptr %.ptr.9.i, align 8, !tbaa !1012
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  store i64 0, ptr %i.x, align 8, !tbaa !1013
  store i8 0, ptr %i.w, align 8, !tbaa !1014
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store ptr %i.z, ptr %i.y, align 8, !tbaa !140
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store i32 0, ptr %i.aa, align 8, !tbaa !1016
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 428
  store i32 8, ptr %i.ab, align 4, !tbaa !1017
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 528
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !140
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 536
  store i32 0, ptr %i.ae, align 8, !tbaa !1016
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 540
  store i32 6, ptr %i.af, align 4, !tbaa !1017
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 14848
  %i.ah = add i32 %i.b, -1                        ; 2 uses
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !1112
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1113 ; 5 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !1206
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 424
  store i32 0, ptr %i.al, align 8, !tbaa !1016
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 528
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !140 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 536 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1016 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not4.i.i, label %_ZN4llvm15SmallVectorImplIN5clang9FixItHintEE5clearEv.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.aq = zext i32 %i.ap to i64
  %.idx.i = shl nuw nsw i64 %i.aq, 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5clang9FixItHintD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.as, %_ZN5clang9FixItHintD2Ev.exit.i.i ], [ %i.ar, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %.05.i.i, i64 -64 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i.i, i64 -40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1085 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5clang9FixItHintD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
end_hunk_0
