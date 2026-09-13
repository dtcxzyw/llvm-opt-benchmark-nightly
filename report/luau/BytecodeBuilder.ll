Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeBuilder?download=true
inline.NumInlined: 2648
inline.NumDeleted: 1082
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE17_M_realloc_insertIJRiPKcEEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc27, %bb.c
  %i.ab = phi ptr [ %i.z, %.noexc27 ], [ %i.v, %bb.c ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !155
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !155
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.u, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !151 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !154
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !441)
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.ah = load i32, ptr %.0911.i.i.i, align 8, !tbaa !269, !alias.scope !442, !noalias !441
  store i32 %i.ah, ptr %.012.i.i.i, align 8, !tbaa !269, !alias.scope !441, !noalias !442
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !153, !alias.scope !441, !noalias !442
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !170, !alias.scope !442, !noalias !441 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !154, !alias.scope !442, !noalias !441 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false), !alias.scope !443
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !170, !alias.scope !441, !noalias !442
  %i.as = load i64, ptr %i.am, align 8, !tbaa !155, !alias.scope !442, !noalias !441
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !155, !alias.scope !441, !noalias !442
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !154, !alias.scope !442, !noalias !441
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.g
  %i.at = phi i64 [ %i.ap, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !154, !alias.scope !441, !noalias !442
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !170, !alias.scope !442, !noalias !441
  store i64 0, ptr %i.au, align 8, !tbaa !154, !alias.scope !442, !noalias !441
  store i8 0, ptr %i.am, align 8, !tbaa !155, !alias.scope !442, !noalias !441
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !437

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.f ], [ %i.ax, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 40 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bp, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ay, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bo, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.az = load i32, ptr %.0911.i.i.i31, align 8, !tbaa !269, !alias.scope !445, !noalias !444
  store i32 %i.az, ptr %.012.i.i.i30, align 8, !tbaa !269, !alias.scope !444, !noalias !445
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !153, !alias.scope !444, !noalias !445
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !170, !alias.scope !445, !noalias !444 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32

bb.h:                                             ; preds = %.lr.ph.i.i.i29
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !154, !alias.scope !445, !noalias !444 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false), !alias.scope !446
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !170, !alias.scope !444, !noalias !445
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !155, !alias.scope !445, !noalias !444
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !155, !alias.scope !444, !noalias !445
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !154, !alias.scope !445, !noalias !444
  br label %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32, %bb.h
  %i.bl = phi i64 [ %i.bh, %bb.h ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i32 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !154, !alias.scope !444, !noalias !445
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !170, !alias.scope !445, !noalias !444
  store i64 0, ptr %i.bm, align 8, !tbaa !154, !alias.scope !445, !noalias !444
  store i8 0, ptr %i.be, align 8, !tbaa !155, !alias.scope !445, !noalias !444
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 40 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 40 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !437

_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit38: ; preds = %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ay, %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.bp, %_ZSt19__relocate_object_aISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit38
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !193
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bt) #34
  br label %_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt4pairIiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit38, %bb.i
  store ptr %i.q, ptr %0, align 8, !tbaa !191
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !192
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !193
  ret void

bb.j:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

bb.k:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  %i.by = call ptr @__cxa_begin_catch(ptr %i.bx) #35 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #34
  invoke void @__cxa_rethrow() #37
          to label %bb.n unwind label %bb.j

bb.l:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bv

bb.m:                                             ; preds = %bb.j
  %i.bz = landingpad { ptr, i32 }
          catch ptr null
  %i.ca = extractvalue { ptr, i32 } %i.bz, 0
  call void @__clang_call_terminate(ptr %i.ca) #36
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #26 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph46

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEET_SE_SE_T0_.exit"
  %i.h = icmp eq i64 %i.cq, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph46, !llvm.loop !447

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.dq, %bb.b ] ; 3 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"
  %.010.us.i.i.i = phi i64 [ %i.ak, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.us.i.i.i
  %.sroa.03.0.copyload.us.i.i.i = load i64, ptr %i.s, align 4 ; 2 uses
  %i.t = icmp slt i64 %.010.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.036.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.010.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.u = shl i64 %.036.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.x
  %.val.i.i.us.i.i.i = load i32, ptr %i.w, align 4, !tbaa !280
  %.val1.i.i.us.i.i.i = load i32, ptr %i.y, align 4, !tbaa !280
  %i.z = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.z, i64 %i.x, i64 %i.v ; 4 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ab = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.us.i.i.i
  %i.ac = load i64, ptr %i.aa, align 4
  store i64 %i.ac, ptr %i.ab, align 4
  %i.ad = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ad, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !448

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %.sroa.03.0.extract.trunc.i.i.us.i.i.i = trunc i64 %.sroa.03.0.copyload.us.i.i.i to i32
  br label %.lr.ph.i.i.us.i.i.i

.lr.ph.i.i.us.i.i.i:                              ; preds = %bb.c, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %.0911.i.i.us.i.i.i, %bb.c ], [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i ; 2 uses
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.ae, align 4, !tbaa !280
  %i.af = icmp ult i32 %.val.i.i.i.us.i.i.i, %.sroa.03.0.extract.trunc.i.i.us.i.i.i
  br i1 %i.af, label %bb.c, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i.us.i.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  %i.ah = load i64, ptr %i.ae, align 4
  store i64 %i.ah, ptr %i.ag, align 4
  %i.ai = icmp sgt i64 %.0911.i.i.us.i.i.i, %.010.us.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i", !llvm.loop !449

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i": ; preds = %bb.c, %.lr.ph.i.i.us.i.i.i, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.010.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.c ], [ %.010.i.i.us.i.i.i, %.lr.ph.i.i.us.i.i.i ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i64 %.sroa.03.0.copyload.us.i.i.i, ptr %i.aj, align 4
  %.not.us.i.i.i = icmp eq i64 %.010.us.i.i.i, 0
  %i.ak = add nsw i64 %.010.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !450

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.010.i.i.i = phi i64 [ %i.bg, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.al, align 4 ; 2 uses
  %i.am = icmp slt i64 %.010.i.i.i, %i.m
  br i1 %i.am, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.010.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.an = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.ao = add i64 %i.an, 2                        ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.ao
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.aq
  %.val.i.i.i.i.i = load i32, ptr %i.ap, align 4, !tbaa !280
  %.val1.i.i.i.i.i = load i32, ptr %i.ar, align 4, !tbaa !280
  %i.as = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.as, i64 %i.aq, i64 %i.ao ; 4 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.au = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i.i
  %i.av = load i64, ptr %i.at, align 4
  store i64 %i.av, ptr %i.au, align 4
  %i.aw = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.aw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !448

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.010.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ax = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = load i64, ptr %i.q, align 4
  store i64 %i.ay, ptr %i.r, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.03.0.extract.trunc.i.i.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i.i to i32
  %i.az = icmp sgt i64 %.1.i.i.i.i, %.010.i.i.i
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i32, ptr %i.ba, align 4, !tbaa !280
  %i.bb = icmp ult i32 %.val.i.i.i.i.i.i, %.sroa.03.0.extract.trunc.i.i.i.i.i
  br i1 %i.bb, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  %i.bd = load i64, ptr %i.ba, align 4
  store i64 %i.bd, ptr %i.bc, align 4
  %i.be = icmp sgt i64 %.0911.i.i.i.i.i, %.010.i.i.i
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i", !llvm.loop !449

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i64 %.sroa.03.0.copyload.i.i.i, ptr %i.bf, align 4
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bg = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !450

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_T0_SF_T1_T2_.exit.i.i.i"
  %3 = icmp sgt i64 %.fr.i.i.i26.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.bh, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i" ]
  %i.bh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i64, ptr %i.bh, align 4 ; 2 uses
  %i.bi = load i64, ptr %.fr27, align 4
  store i64 %i.bi, ptr %i.bh, align 4
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bj, %i.a                     ; 3 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 3 uses
  %i.bm = add nsw i64 %i.bl, -1
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = icmp sgt i64 %i.bl, 2
  br i1 %i.bo, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.036.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.bp = shl i64 %.036.i.i.i20.i, 1              ; 2 uses
  %i.bq = add i64 %i.bp, 2                        ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bq
  %i.bs = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %i.bs
  %.val.i.i.i.i21.i = load i32, ptr %i.br, align 4, !tbaa !280
  %.val1.i.i.i.i22.i = load i32, ptr %i.bt, align 4, !tbaa !280
  %i.bu = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.bu, i64 %i.bs, i64 %i.bq ; 4 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %spec.select.i.i.i23.i
  %i.bw = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.036.i.i.i20.i
  %i.bx = load i64, ptr %i.bv, align 4
  store i64 %i.bx, ptr %i.bw, align 4
  %i.by = icmp slt i64 %spec.select.i.i.i23.i, %i.bn
  br i1 %i.by, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i11.i, !llvm.loop !448

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.bz = and i64 %i.bk, 8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.cb = add nsw i64 %i.bl, -2
  %i.cc = ashr exact i64 %i.cb, 1
  %i.cd = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.cc
  br i1 %i.cd, label %.thread.i.i.i, label %bb.h

.thread.i.i.i:                                    ; preds = %bb.g
  %i.ce = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i12.i
  %i.ci = load i64, ptr %i.cg, align 4
  store i64 %i.ci, ptr %i.ch, align 4
  br label %.lr.ph.i.i.preheader.i.i.i

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.preheader.i.i.i

.lr.ph.i.i.preheader.i.i.i:                       ; preds = %bb.h, %.thread.i.i.i
  %.1.i11.i.i.i = phi i64 [ %i.cf, %.thread.i.i.i ], [ %.0.lcssa.i.i.i12.i, %bb.h ]
  %.sroa.03.0.extract.trunc.i.i12.i.i.i = trunc i64 %.sroa.03.0.copyload.i.i10.i to i32
  br label %.lr.ph.i.i.i.i14.i

.lr.ph.i.i.i.i14.i:                               ; preds = %bb.i, %.lr.ph.i.i.preheader.i.i.i
  %.010.i.i.i.i15.i = phi i64 [ %.0911.i.i56.i.i.i, %bb.i ], [ %.1.i11.i.i.i, %.lr.ph.i.i.preheader.i.i.i ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i56.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %.0911.i.i56.i.i.i ; 2 uses
  %.val.i.i.i.i.i17.i = load i32, ptr %i.cj, align 4, !tbaa !280
  %i.ck = icmp ult i32 %.val.i.i.i.i.i17.i, %.sroa.03.0.extract.trunc.i.i12.i.i.i
  br i1 %i.ck, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i14.i
  %i.cl = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  %i.cm = load i64, ptr %i.cj, align 4
  store i64 %i.cm, ptr %i.cl, align 4
  %.not7.i.i.i = icmp eq i64 %.0911.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", label %.lr.ph.i.i.i.i14.i, !llvm.loop !449

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i": ; preds = %bb.i, %.lr.ph.i.i.i.i14.i, %bb.h
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i15.i, %.lr.ph.i.i.i.i14.i ], [ 0, %bb.i ]
  %i.cn = getelementptr inbounds [8 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %.sroa.03.0.copyload.i.i10.i, ptr %i.cn, align 4
  %i.co = icmp sgt i64 %i.bk, 8
  br i1 %i.co, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !451

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2445 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02544 = phi i64 [ %i.cq, %bb.b ], [ %2, %.lr.ph ]
  %i.cp = phi i64 [ %i.dr, %bb.b ], [ %i.d, %.lr.ph ]
  %i.cq = add nsw i64 %.02544, -1                 ; 3 uses
  %i.cr = lshr i64 %i.cp, 1
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %.fr27, i64 %i.cr ; 5 uses
  %i.ct = getelementptr inbounds i8, ptr %storemerge2445, i64 -8 ; 5 uses
  %.val.i.i.i = load i32, ptr %i.f, align 4, !tbaa !280 ; 3 uses
  %.val1.i.i.i = load i32, ptr %i.cs, align 4, !tbaa !280 ; 3 uses
  %i.cu = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %.val1.i27.i.i = load i32, ptr %i.ct, align 4, !tbaa !280 ; 4 uses
  br i1 %i.cu, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph46
  %i.cv = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.cv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cw = load i64, ptr %.fr27, align 4
  %i.cx = load i64, ptr %i.cs, align 4
  store i64 %i.cx, ptr %.fr27, align 4
  store i64 %i.cw, ptr %i.cs, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cy = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %i.cz = load i64, ptr %.fr27, align 4           ; 2 uses
  br i1 %i.cy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.da = load i64, ptr %i.ct, align 4
  store i64 %i.da, ptr %.fr27, align 4
  store i64 %i.cz, ptr %i.ct, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %i.db = load i64, ptr %i.f, align 4
  store i64 %i.db, ptr %.fr27, align 4
  store i64 %i.cz, ptr %i.f, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph46
  %i.dc = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = load <2 x i64>, ptr %.fr27, align 4
  %i.de = shufflevector <2 x i64> %i.dd, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.de, ptr %.fr27, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.df = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.dg = load i64, ptr %.fr27, align 4           ; 2 uses
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = load i64, ptr %i.ct, align 4
  store i64 %i.dh, ptr %.fr27, align 4
  store i64 %i.dg, ptr %i.ct, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

bb.s:                                             ; preds = %bb.q
  %i.di = load i64, ptr %i.cs, align 4
  store i64 %i.di, ptr %.fr27, align 4
  store i64 %i.dg, ptr %i.cs, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader": ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader", %bb.v
  %.sroa.012.0.i.i = phi ptr [ %i.dk, %bb.v ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2445, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i.preheader" ]
  %.val1.i.i13.i = load i32, ptr %.fr27, align 4, !tbaa !280 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i"
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i" ], [ %i.dk, %bb.t ] ; 9 uses
  %.val.i.i14.i = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !280
  %i.dj = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.dj, label %bb.t, label %.preheader.i.i, !llvm.loop !452

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %.val1.i9.i.i = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !280
  %i.dl = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.dl, label %.preheader.i.i, label %bb.u, !llvm.loop !453

bb.u:                                             ; preds = %.preheader.i.i
  %i.dm = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.dm, label %bb.v, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEET_SE_SE_T0_.exit"

bb.v:                                             ; preds = %bb.u
  %i.dn = load i64, ptr %.sroa.012.1.i.i, align 4
  %i.do = load i64, ptr %.sroa.0.1.i.i, align 4
  store i64 %i.do, ptr %.sroa.012.1.i.i, align 4
  store i64 %i.dn, ptr %.sroa.0.1.i.i, align 4
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_SE_T0_.exit.i", !llvm.loop !454

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEET_SE_SE_T0_.exit": ; preds = %bb.u
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_T0_T1_"(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2445, i64 noundef %i.cq)
  %i.dp = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.dq = sub i64 %i.dp, %i.a                     ; 2 uses
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 16
  br i1 %i.ds, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_T0_.exit", !llvm.loop !447

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEET_SE_SE_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_SE_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau15BytecodeBuilder4JumpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_11expandJumpsEvE3$_0EEEvT_SE_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !159  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !41     ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !282

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !159
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !41
  store i32 %i.s, ptr %i.d, align 4, !tbaa !41
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !159
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !282

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !41
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !41
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !41
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !41
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !455

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !456

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !41
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !457

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !458

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !159
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !282

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !159
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !41
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !41
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !159
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
end_hunk_0
