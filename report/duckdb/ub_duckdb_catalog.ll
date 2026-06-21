inline.NumInlined: 7661
inline.NumDeleted: 2990
begin_hunk_0_@_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE17_M_realloc_insertIJRA7_KcRA11_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.bu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.br, i64 %i.bw, i1 false), !alias.scope !1553
  br label %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i
  store ptr %i.bq, ptr %i.bn, align 8, !tbaa !63, !alias.scope !1548, !noalias !1551
  %i.bx = load i64, ptr %i.br, align 8, !tbaa !65, !alias.scope !1551, !noalias !1548
  store i64 %i.bx, ptr %i.bp, align 8, !tbaa !65, !alias.scope !1548, !noalias !1551
  %.phi.trans.insert5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre6.i.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i.i, align 8, !tbaa !64, !alias.scope !1551, !noalias !1548
  br label %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i, %bb.n
  %i.by = phi i64 [ %i.bu, %bb.n ], [ %.pre6.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.by, ptr %i.ca, align 8, !tbaa !64, !alias.scope !1548, !noalias !1551
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !63, !alias.scope !1551, !noalias !1548
  store i64 0, ptr %i.bz, align 8, !tbaa !64, !alias.scope !1551, !noalias !1548
  store i8 0, ptr %i.br, align 8, !tbaa !65, !alias.scope !1551, !noalias !1548
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cb, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !620

_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i38 ], [ %i.cc, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i40 = icmp eq ptr %1, %i.d
  br i1 %.not10.i.i.i.i40, label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit54, label %.lr.ph.i.i.i.i41

.lr.ph.i.i.i.i41:                                 ; preds = %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51
  %.012.i.i.i.i42 = phi ptr [ %i.df, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51 ], [ %i.cd, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 8 uses
  %.0911.i.i.i.i43 = phi ptr [ %i.de, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51 ], [ %1, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 12 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  call void @llvm.experimental.noalias.scope.decl(metadata !1557)
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 16 ; 3 uses
  store ptr %i.ce, ptr %.012.i.i.i.i42, align 8, !tbaa !62, !alias.scope !1554, !noalias !1557
  %i.cf = load ptr, ptr %.0911.i.i.i.i43, align 8, !tbaa !63, !alias.scope !1557, !noalias !1554 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 16 ; 5 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44

bb.o:                                             ; preds = %.lr.ph.i.i.i.i41
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, ptr noundef nonnull align 8 dereferenceable(1) %i.cg, i64 %i.cl, i1 false), !alias.scope !1559
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44: ; preds = %.lr.ph.i.i.i.i41
  store ptr %i.cf, ptr %.012.i.i.i.i42, align 8, !tbaa !63, !alias.scope !1554, !noalias !1557
  %i.cm = load i64, ptr %i.cg, align 8, !tbaa !65, !alias.scope !1557, !noalias !1554
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !65, !alias.scope !1554, !noalias !1557
  %.phi.trans.insert.i.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 8
  %.pre.i.i.i.i.i46 = load i64, ptr %.phi.trans.insert.i.i.i.i.i45, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44, %bb.o
  %i.cn = phi i64 [ %.pre.i.i.i.i.i46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i44 ], [ %i.cj, %bb.o ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 8
  store i64 %i.cn, ptr %i.cp, align 8, !tbaa !64, !alias.scope !1554, !noalias !1557
  store ptr %i.cg, ptr %.0911.i.i.i.i43, align 8, !tbaa !63, !alias.scope !1557, !noalias !1554
  store i64 0, ptr %i.co, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554
  store i8 0, ptr %i.cg, align 8, !tbaa !65, !alias.scope !1557, !noalias !1554
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 32 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 48 ; 3 uses
  store ptr %i.cs, ptr %i.cq, align 8, !tbaa !62, !alias.scope !1554, !noalias !1557
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !63, !alias.scope !1557, !noalias !1554 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 48 ; 5 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 40
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554 ; 3 uses
  %i.cy = icmp ult i64 %i.cx, 16
  call void @llvm.assume(i1 %i.cy)
  %i.cz = add nuw nsw i64 %i.cx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull align 8 dereferenceable(1) %i.cu, i64 %i.cz, i1 false), !alias.scope !1559
  br label %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i47
  store ptr %i.ct, ptr %i.cq, align 8, !tbaa !63, !alias.scope !1554, !noalias !1557
  %i.da = load i64, ptr %i.cu, align 8, !tbaa !65, !alias.scope !1557, !noalias !1554
  store i64 %i.da, ptr %i.cs, align 8, !tbaa !65, !alias.scope !1554, !noalias !1557
  %.phi.trans.insert5.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 40
  %.pre6.i.i.i.i.i50 = load i64, ptr %.phi.trans.insert5.i.i.i.i.i49, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554
  br label %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51

_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48, %bb.p
  %i.db = phi i64 [ %i.cx, %bb.p ], [ %.pre6.i.i.i.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i48 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 40
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !64, !alias.scope !1554, !noalias !1557
  store ptr %i.cu, ptr %i.cr, align 8, !tbaa !63, !alias.scope !1557, !noalias !1554
  store i64 0, ptr %i.dc, align 8, !tbaa !64, !alias.scope !1557, !noalias !1554
  store i8 0, ptr %i.cu, align 8, !tbaa !65, !alias.scope !1557, !noalias !1554
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i43, i64 64 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i42, i64 64 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.de, %i.d
  br i1 %.not.i.i.i.i52, label %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit54, label %.lr.ph.i.i.i.i41, !llvm.loop !620

_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit54: ; preds = %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i53 = phi ptr [ %i.cd, %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.df, %_ZSt19__relocate_object_aIN6duckdb18CatalogSearchEntryES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i51 ]
  %.not.i55 = icmp eq ptr %i.e, null
  br i1 %.not.i55, label %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit54
  call void @_ZdlPv(ptr noundef nonnull %i.e) #35
  br label %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb18CatalogSearchEntryESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit54, %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %0, align 8, !tbaa !188
  store ptr %.0.lcssa.i.i.i.i53, ptr %i.c, align 8, !tbaa !185
  %i.dh = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.n
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !203
  ret void

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.aq, %bb.j ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.di = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.dj = call ptr @__cxa_begin_catch(ptr %i.di) #34 ; 0 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN6duckdb18CatalogSearchEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.t) #34
  br label %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit57

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit57
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.s unwind label %bb.t

_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.s) #35
  br label %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit57

_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit57: ; preds = %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb18CatalogSearchEntryES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #36
          to label %bb.u unwind label %bb.r

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %i.dk

bb.t:                                             ; preds = %bb.r
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #37
  unreachable

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb18CatalogSearchEntryESaIS1_EE13_M_deallocateEPS1_m.exit57
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE17_M_emplace_uniqueIJS6_IS5_SD_EEEES6_ISt17_Rb_tree_iteratorISE_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, duckdb::unique_ptr<duckdb::CatalogEntry>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, duckdb::unique_ptr<duckdb::CatalogEntry>>>, duckdb::CaseInsensitiveStringCompare>::_Auto_node", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %0, ptr %2, align 8, !tbaa !1560
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !62
  %i.d = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !63
  %i.k = load i64, ptr %i.e, align 8, !tbaa !65
  store i64 %i.k, ptr %i.c, align 8, !tbaa !65
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.b
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.l, ptr %i.o, align 8, !tbaa !64
  store ptr %i.e, ptr %1, align 8, !tbaa !63
  store i64 0, ptr %i.n, align 8, !tbaa !64
  store i8 0, ptr %i.e, align 8, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !136
  store i64 %i.r, ptr %i.p, align 8, !tbaa !136
  store ptr null, ptr %i.q, align 8, !tbaa !136
  store ptr %i.a, ptr %i.m, align 8, !tbaa !1562
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02022.i = load ptr, ptr %i.s, align 8, !tbaa !621 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.noexc
  %.02024.i = phi ptr [ %.020.i, %.noexc ], [ %.02022.i, %bb.c ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.v = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.in.v.i = select i1 %i.v, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !621 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1565

._crit_edge.i:                                    ; preds = %.noexc
  br i1 %i.v, label %._crit_edge.thread.i, label %bb.e

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.c
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.t, %bb.c ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !441
  %i.y = icmp eq ptr %.019.lcssa29.i, %i.x
  br i1 %i.y, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.z = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.d ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.z, %bb.d ], [ %.02024.i, %._crit_edge.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.ab = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.noexc7.a unwind label %.loopexit.split-lp

.noexc7.a:                                        ; preds = %bb.e
  %.pre.a = load ptr, ptr %i.m, align 8, !tbaa !1562 ; 6 uses
  br i1 %i.ab, label %select.unfold, label %bb.h

select.unfold:                                    ; preds = %.noexc7.a, %._crit_edge.thread.i
  %i.ac = phi ptr [ %i.a, %._crit_edge.thread.i ], [ %.pre.a, %.noexc7.a ] ; 3 uses
  %.sroa.4.0.i.ph.a = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %.noexc7.a ] ; 3 uses
  %3 = load ptr, ptr %2, align 8, !tbaa !1566, !nonnull !82, !align !83 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = icmp eq ptr %.sroa.4.0.i.ph.a, %i.ad
  br i1 %i.ae, label %.thread20, label %bb.f

bb.f:                                             ; preds = %select.unfold
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.a, i64 32
  %i.ah = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ag)
          to label %.thread20 unwind label %bb.g

.thread20:                                        ; preds = %bb.f, %select.unfold
  %i.ai = phi i1 [ true, %select.unfold ], [ %i.ah, %bb.f ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ai, ptr noundef %i.ac, ptr noundef nonnull %.sroa.4.0.i.ph.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad) #34
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !443
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !443
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %.noexc7.a
  %.not.i9 = icmp eq ptr %.pre.a, null
  br i1 %.not.i9, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.a, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre.a, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !136 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.ap) #34, !inline_history !1567
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i.i, %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !63 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pre.a, i64 48
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.at) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.a) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread20, %bb.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i
  %.sroa.3.025 = phi i8 [ 1, %.thread20 ], [ 0, %bb.h ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i ]
  %.sroa.012.024 = phi ptr [ %i.ac, %.thread20 ], [ %.sroa.05.0.i, %bb.h ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.012.024, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.025, 1
  ret { ptr, i8 } %.fca.1.insert

bb.j:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.am, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1562 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !136  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i: ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.e) #34, !inline_history !1163
  br label %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb12CatalogEntryEEclEPS1_.exit.i.i.i.i, %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #35
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12CatalogEntryESt14default_deleteIS1_EED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #35
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb10unique_ptrINS8_12CatalogEntryESt14default_deleteISA_ELb1EEEESt10_Select1stISE_ENS8_28CaseInsensitiveStringCompareESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, %bb.a
  ret void
}

declare void @_ZN6duckdb20TransactionExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_11TransactionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !678
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_17DependencyManagerELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !684
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.111, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !63     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16DatabaseInstanceELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
end_hunk_0
