inline.NumInlined: 1326
inline.NumDeleted: 714
begin_hunk_0_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE17_M_realloc_insertIJRA1_KcRKS8_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i.i, align 8, !tbaa !100, !alias.scope !383, !noalias !386
  %i.ai = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !77, !alias.scope !386, !noalias !383 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 6 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !101, !alias.scope !386, !noalias !383 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !388
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i.i, align 8, !tbaa !77, !alias.scope !383, !noalias !386
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !103, !alias.scope !386, !noalias !383
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !103, !alias.scope !383, !noalias !386
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !101, !alias.scope !386, !noalias !383
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.g
  %i.aq = phi i64 [ %i.am, %bb.g ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !101, !alias.scope !383, !noalias !386
  store ptr %i.aj, ptr %.0911.i.i.i.i, align 8, !tbaa !77, !alias.scope !386, !noalias !383
  store i64 0, ptr %i.ar, align 8, !tbaa !101, !alias.scope !386, !noalias !383
  store i8 0, ptr %i.aj, align 8, !tbaa !103, !alias.scope !386, !noalias !383
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #20
  %i.av = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !77, !alias.scope !386, !noalias !383 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.aj
  br i1 %i.aw, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.av) #22
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !304

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRA1_KcRKS8_EEEvRSA_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %_ZNSt16allocator_traitsISaISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEE9constructIS9_JRA1_KcRKS8_EEEvRSA_PT_DpOT0_.exit ], [ %i.ay, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i.i27 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i27, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit40, label %.lr.ph.i.i.i.i28

.lr.ph.i.i.i.i28:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36
  %.012.i.i.i.i29 = phi ptr [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36 ], [ %i.az, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 6 uses
  %.0911.i.i.i.i30 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 16 ; 3 uses
  store ptr %i.ba, ptr %.012.i.i.i.i29, align 8, !tbaa !100, !alias.scope !389, !noalias !392
  %i.bb = load ptr, ptr %.0911.i.i.i.i30, align 8, !tbaa !77, !alias.scope !392, !noalias !389 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 16 ; 6 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

bb.h:                                             ; preds = %.lr.ph.i.i.i.i28
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !101, !alias.scope !392, !noalias !389 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bh, i1 false), !alias.scope !394
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i28
  store ptr %i.bb, ptr %.012.i.i.i.i29, align 8, !tbaa !77, !alias.scope !389, !noalias !392
  %i.bi = load i64, ptr %i.bc, align 8, !tbaa !103, !alias.scope !392, !noalias !389
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !103, !alias.scope !389, !noalias !392
  %.phi.trans.insert.i.i.i.i.i32 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %.pre.i.i.i.i.i33 = load i64, ptr %.phi.trans.insert.i.i.i.i.i32, align 8, !tbaa !101, !alias.scope !392, !noalias !389
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i34

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31, %bb.h
  %i.bj = phi i64 [ %i.bf, %bb.h ], [ %.pre.i.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !101, !alias.scope !389, !noalias !392
  store ptr %i.bc, ptr %.0911.i.i.i.i30, align 8, !tbaa !77, !alias.scope !392, !noalias !389
  store i64 0, ptr %i.bk, align 8, !tbaa !101, !alias.scope !392, !noalias !389
  store i8 0, ptr %i.bc, align 8, !tbaa !103, !alias.scope !392, !noalias !389
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 32 ; 2 uses
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bn) #20
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #20
  %i.bo = load ptr, ptr %.0911.i.i.i.i30, align 8, !tbaa !77, !alias.scope !392, !noalias !389 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.bc
  br i1 %i.bp, label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i34
  call void @_ZdlPv(ptr noundef %i.bo) #22
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2EOS8_.exit.i.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i35
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i30, i64 56 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i29, i64 56 ; 2 uses
  %.not.i.i.i.i37 = icmp eq ptr %i.bq, %i.c
  br i1 %.not.i.i.i.i37, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit40, label %.lr.ph.i.i.i.i28, !llvm.loop !304

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit40: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit
  %.0.lcssa.i.i.i.i38 = phi ptr [ %i.az, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit ], [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_SaIS9_EEvPT_PT0_RT1_.exit.i.i.i.i36 ]
  %.not.i41 = icmp eq ptr %i.d, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit40
  call void @_ZdlPv(ptr noundef nonnull %i.d) #22
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE13_M_deallocateEPS9_m.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE11_S_relocateEPS9_SC_SC_RSA_.exit40, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.q, ptr %0, align 8, !tbaa !94
  store ptr %.0.lcssa.i.i.i.i38, ptr %i.b, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !104
  ret void

bb.j:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.j ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ae, %bb.f ]
  %i.bw = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.bx = call ptr @__cxa_begin_catch(ptr %i.bw) #20 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.q) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bv

bb.m:                                             ; preds = %bb.k
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #21
  unreachable

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(104) %3) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  tail call void %i.a(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(104) %3), !inline_history !395
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !7
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFvRN6duckdb9DataChunkERNS_15ExpressionStateERNS_6VectorEE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !7
  br label %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFvRN6duckdb9DataChunkERNS1_15ExpressionStateERNS1_6VectorEEE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE17_M_emplace_uniqueIJRS5_RmEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, duckdb::CaseInsensitiveStringCompare>::_Auto_node", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %0, ptr %3, align 8, !tbaa !396
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #24 ; 4 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE17_M_construct_nodeIJRS5_RmEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !398
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02022.i = load ptr, ptr %i.d, align 8, !tbaa !179 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.noexc
  %.02024.i = phi ptr [ %.020.i, %.noexc ], [ %.02022.i, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.g = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.in.v.i = select i1 %i.g, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !179 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !401

._crit_edge.i:                                    ; preds = %.noexc
  br i1 %i.g, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !163
  %i.j = icmp eq ptr %.019.lcssa29.i, %i.i
  br i1 %i.j, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.k = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.k, %bb.b ], [ %.02024.i, %._crit_edge.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32
  %i.m = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc8.a unwind label %.loopexit.split-lp

.noexc8.a:                                        ; preds = %bb.c
  %.pre.a = load ptr, ptr %i.a, align 8, !tbaa !398 ; 5 uses
  br i1 %i.m, label %select.unfold, label %bb.f

select.unfold:                                    ; preds = %.noexc8.a, %._crit_edge.thread.i
  %i.n = phi ptr [ %i.b, %._crit_edge.thread.i ], [ %.pre.a, %.noexc8.a ] ; 3 uses
  %.sroa.4.0.i.ph.a = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %.noexc8.a ] ; 3 uses
  %4 = load ptr, ptr %3, align 8, !tbaa !402, !nonnull !135, !align !136 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.p = icmp eq ptr %.sroa.4.0.i.ph.a, %i.o
  br i1 %i.p, label %.thread21, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.a, i64 32
  %i.s = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %.thread21 unwind label %bb.e

.thread21:                                        ; preds = %bb.d, %select.unfold
  %i.t = phi i1 [ true, %select.unfold ], [ %i.s, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef %i.n, ptr noundef nonnull %.sroa.4.0.i.ph.a, ptr noundef nonnull align 8 dereferenceable(32) %i.o) #20
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !169
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8, !tbaa !169
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev.exit

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %.noexc8.a
  %.not.i10 = icmp eq ptr %.pre.a, null
  br i1 %.not.i10, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.a, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre.a, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.g
  tail call void @_ZdlPv(ptr noundef %i.z) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.pre.a) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread21, %bb.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.3.026 = phi i8 [ 1, %.thread21 ], [ 0, %bb.f ], [ 0, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  %.sroa.013.025 = phi ptr [ %i.n, %.thread21 ], [ %.sroa.05.0.i, %bb.f ], [ %.sroa.05.0.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.013.025, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.026, 1
  ret { ptr, i8 } %.fca.1.insert

bb.h:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !398  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.d) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESt10_Select1stIS8_EN6duckdb28CaseInsensitiveStringCompareESaIS8_EE17_M_construct_nodeIJRS5_RmEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !100
  %i.d = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !101  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.f, ptr %i.a, align 8, !tbaa !102
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !77
  %i.i = load i64, ptr %i.a, align 8, !tbaa !102
  store i64 %i.i, ptr %i.c, align 8, !tbaa !103
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !103
  store i8 %i.k, ptr %i.j, align 1, !tbaa !103
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #20 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %1) #22
  invoke void @__cxa_rethrow() #23
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !101
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i64, ptr %3, align 8, !tbaa !102
  store i64 %i.u, ptr %i.t, align 8, !tbaa !181
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #21
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb10StringUtil10CILessThanERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZN6duckdb6vectorIbLb1ESaIbEE3getILb1EEESt14_Bit_referencem(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !173
  %i.g = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 3
  %i.l = zext i32 %i.f to i64
  %i.m = add nsw i64 %i.k, %i.l                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !102
  store i64 %i.m, ptr %i.b, align 8, !tbaa !102
  %.not.i = icmp ult i64 %1, %i.m
  br i1 %.not.i, label %_ZN6duckdb6vectorIbLb1ESaIbEE19AssertIndexInBoundsEmm.exit, label %bb.b, !prof !185

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !77     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.q) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
end_hunk_0
