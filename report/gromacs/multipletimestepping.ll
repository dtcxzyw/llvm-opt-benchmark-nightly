Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/multipletimestepping?download=true
inline.NumInlined: 532
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA35_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.z = load i64, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !132
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !130, !alias.scope !177, !noalias !178
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !178, !noalias !177 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !132, !alias.scope !178, !noalias !177 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !179
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !16, !alias.scope !177, !noalias !178
  %i.al = load i64, ptr %i.af, align 8, !tbaa !17, !alias.scope !178, !noalias !177
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !17, !alias.scope !177, !noalias !178
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !132, !alias.scope !178, !noalias !177
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.am = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !132, !alias.scope !177, !noalias !178
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !16, !alias.scope !178, !noalias !177
  store i64 0, ptr %i.an, align 8, !tbaa !132, !alias.scope !178, !noalias !177
  store i8 0, ptr %i.af, align 8, !tbaa !17, !alias.scope !178, !noalias !177
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !tbaa !130, !alias.scope !180, !noalias !181
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !16, !alias.scope !181, !noalias !180 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !132, !alias.scope !181, !noalias !180 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !182
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !16, !alias.scope !180, !noalias !181
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !17, !alias.scope !181, !noalias !180
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !17, !alias.scope !180, !noalias !181
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !132, !alias.scope !181, !noalias !180
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bb = phi i64 [ %i.ax, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !132, !alias.scope !180, !noalias !181
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !tbaa !16, !alias.scope !181, !noalias !180
  store i64 0, ptr %i.bc, align 8, !tbaa !132, !alias.scope !181, !noalias !180
  store i8 0, ptr %i.au, align 8, !tbaa !17, !alias.scope !181, !noalias !180
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.be, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !1

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !129
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bj) #21
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !133
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !128
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !129
  ret void

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  %i.bo = call ptr @__cxa_begin_catch(ptr %i.bn) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #21
  invoke void @__cxa_rethrow() #24
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bl

bb.k:                                             ; preds = %bb.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #23
  unreachable

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3gmx17haveValidMtsSetupERK10t_inputrec(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !116, !range !117, !noundef !118
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp eq i64 %i.j, 32
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !125
  %i.n = icmp sgt i32 %i.m, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.o = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.n, %bb.c ]
  ret i1 %i.o
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx20checkMtsRequirementsB5cxx11ERK10t_inputrec(ptr dead_on_unwind noalias writable sret(%"class.std::vector.66") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::optional", align 8     ; 32 uses
  %10 = alloca %"class.std::optional", align 8    ; 13 uses
  %11 = alloca %"class.std::optional", align 8    ; 14 uses
  %12 = alloca %"class.std::optional", align 8    ; 13 uses
  %13 = alloca %"class.std::optional", align 8    ; 13 uses
  %14 = alloca %"class.std::optional", align 8    ; 13 uses
  %15 = alloca %"class.std::optional", align 8    ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i8, ptr %i.j, align 8, !tbaa !116, !range !117, !noundef !118
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.cp

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !120  ; 5 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = icmp eq i64 %i.s, 32
  br i1 %i.t, label %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit, label %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit.thread

_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit:   ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !125
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.c, label %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit.thread

_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit.thread: ; preds = %bb.b, %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx20checkMtsRequirementsB5cxx11ERK10t_inputrecENK3$_0clEv", ptr noundef nonnull @.str.10, i32 noundef 153) #24
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !195
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.z = invoke noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef 0)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.18, ptr noundef %i.z)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !129
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !130
  %i.af = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !132 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !16
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !17
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !132
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.an = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aj, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !132
  store ptr %i.ag, ptr %8, align 8, !tbaa !16
  store i64 0, ptr %i.ao, align 8, !tbaa !132
  %i.aq = load ptr, ptr %i.aa, align 8, !tbaa !128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !128
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.m

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.i
  %.pre202 = load ptr, ptr %8, align 8, !tbaa !16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.at = icmp eq ptr %.pre202, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.au = load i64, ptr %i.as, align 8, !tbaa !17
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %.pre202, i64 noundef %i.av) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.n

bb.j:                                             ; preds = %_ZN3gmx17haveValidMtsSetupERK10t_inputrec.exit.thread
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.k:                                             ; preds = %bb.p, %.noexc.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

bb.m:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.m
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !17
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ay, %bb.l ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42 ], [ %i.az, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.cq

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.val = load i32, ptr %i.bf, align 4, !tbaa !196
  switch i32 %.val, label %bb.o [
    i32 3, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 14, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 13, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 15, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 5, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 4, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 17, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
    i32 6, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
  ]

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val40 = load i32, ptr %i.bg, align 8, !tbaa !197
  %i.bh = icmp eq i32 %.val40, 5
  br i1 %i.bh, label %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit

_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread: ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.o
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !120 ; 2 uses
  %i.bj = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit: ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread
  %i.bl = load i64, ptr %i.bi, align 8, !tbaa !122
  %i.bm = and i64 %i.bl, 1
  %.not200 = icmp eq i64 %i.bm, 0
  br i1 %.not200, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit, label %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread

_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread: ; preds = %_ZL23usingFullElectrostaticsRK22CoulombInteractionType.exit.thread, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !128 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !129
  %.not.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i, label %bb.p, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  store ptr %i.br, ptr %i.bo, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store i64 111, ptr %i.i, align 8, !tbaa !131
  %i.bs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc45 unwind label %bb.k   ; 2 uses

.noexc45:                                         ; preds = %.noexc.i.i
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !16
  %i.bt = load i64, ptr %i.i, align 8, !tbaa !131 ; 3 uses
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(111) %i.bs, ptr noundef nonnull align 1 dereferenceable(112) @.str.19, i64 111, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !132
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bt
  store i8 0, ptr %i.bw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !128
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.by, ptr %i.bn, align 8, !tbaa !128
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit

bb.p:                                             ; preds = %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA112_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bo, ptr noundef nonnull align 1 dereferenceable(112) @.str.19)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit unwind label %bb.k

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit: ; preds = %bb.p, %.noexc45, %_ZN3gmxL18forceGroupMtsLevelENS_8ArrayRefIKNS_8MtsLevelEEENS_14MtsForceGroupsE.exit, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 17 uses
  store i8 0, ptr %i.bz, align 8, !tbaa !137
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !198 ; 3 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %16

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !125, !noalias !199 ; 2 uses
  %i.cf = srem i32 %i.cb, %i.ce
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 0, ptr %i.ch, align 8, !tbaa !137, !alias.scope !199
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !199
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.20, i32 noundef %i.cb, i32 noundef %i.ce)
          to label %.noexc49 unwind label %bb.aa

.noexc49:                                         ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ci, ptr %10, align 8, !tbaa !130, !alias.scope !199
  %i.cj = load ptr, ptr %7, align 8, !tbaa !16, !noalias !199 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %.noexc49
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !132, !noalias !199 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc49
  store ptr %i.cj, ptr %10, align 8, !tbaa !16, !alias.scope !199
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !17, !noalias !199
  store i64 %i.cq, ptr %i.ci, align 8, !tbaa !17, !alias.scope !199
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre.i47 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !132, !noalias !199
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.t
  %i.cr = phi i64 [ %i.cn, %bb.t ], [ %.pre.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !132, !alias.scope !199
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i8 1, ptr %i.ct, align 8, !tbaa !137, !alias.scope !199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !199
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit

_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.r
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %10) #22
  %i.cu = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !137, !range !117, !noundef !118
  %i.cy = trunc nuw i8 %i.cx to i1
  store i8 0, ptr %i.cw, align 8, !tbaa !137
  br i1 %i.cy, label %bb.u, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.u:                                             ; preds = %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit
  %i.cz = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.u
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !17
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.u, %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %i.cv, label %bb.v, label %.thread

bb.v:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.de = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %.invoke

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !128 ; 8 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !129
  %.not.i51 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i51, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 3 uses
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !130
  %i.dl = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !132 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i64 %i.dn, ptr %i.h, align 8, !tbaa !131
  %i.do = icmp ugt i64 %i.dn, 15
  br i1 %i.do, label %.noexc.i.i53, label %._crit_edge.i.i.i52

.noexc.i.i53:                                     ; preds = %bb.w
  %i.dp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc54 unwind label %bb.ab  ; 2 uses

.noexc54:                                         ; preds = %.noexc.i.i53
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !16
  %i.dq = load i64, ptr %i.h, align 8, !tbaa !131
  store i64 %i.dq, ptr %i.dk, align 8, !tbaa !17
  br label %._crit_edge.i.i.i52

._crit_edge.i.i.i52:                              ; preds = %.noexc54, %bb.w
  %i.dr = phi ptr [ %i.dp, %.noexc54 ], [ %i.dk, %bb.w ] ; 2 uses
  switch i64 %i.dn, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i52
  %i.ds = load i8, ptr %i.dl, align 1, !tbaa !17
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.y:                                             ; preds = %._crit_edge.i.i.i52
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dl, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i52
  %i.dt = load i64, ptr %i.h, align 8, !tbaa !131 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !132
  %i.dv = load ptr, ptr %i.dh, align 8, !tbaa !16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dt
  store i8 0, ptr %i.dw, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.dx = load ptr, ptr %i.dg, align 8, !tbaa !128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store ptr %i.dy, ptr %i.dg, align 8, !tbaa !128
  br label %.thread

bb.z:                                             ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %.thread unwind label %bb.ab

bb.aa:                                            ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.cn

bb.ab:                                            ; preds = %.invoke, %bb.cd, %.noexc.i.i147, %bb.bs, %.noexc.i.i128, %bb.bh, %.noexc.i.i109, %bb.aw, %.noexc.i.i90, %bb.al, %.noexc.i.i71, %bb.z, %.noexc.i.i53
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

.thread:                                          ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  br label %bb.ac

16:                                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA112_KcEEERS5_DpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  br label %bb.ac

bb.ac:                                            ; preds = %16, %.thread
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.eb = load i32, ptr %.in, align 4, !tbaa !201 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 5 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !125, !noalias !200 ; 2 uses
  %i.ee = srem i32 %i.eb, %i.ed
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 0, ptr %i.eg, align 8, !tbaa !137, !alias.scope !200
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit62

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !200
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i32 noundef %i.eb, i32 noundef %i.ed)
          to label %.noexc61 unwind label %bb.am

.noexc61:                                         ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.eh, ptr %11, align 8, !tbaa !130, !alias.scope !200
  %i.ei = load ptr, ptr %6, align 8, !tbaa !16, !noalias !200 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ek = icmp eq ptr %i.ei, %i.ej
  br i1 %i.ek, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56

bb.af:                                            ; preds = %.noexc61
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !132, !noalias !200 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eh, ptr noundef nonnull align 8 dereferenceable(1) %i.ej, i64 %i.eo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56: ; preds = %.noexc61
  store ptr %i.ei, ptr %11, align 8, !tbaa !16, !alias.scope !200
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !17, !noalias !200
  store i64 %i.ep, ptr %i.eh, align 8, !tbaa !17, !alias.scope !200
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i58 = load i64, ptr %.phi.trans.insert.i57, align 8, !tbaa !132, !noalias !200
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56, %bb.af
  %i.eq = phi i64 [ %i.em, %bb.af ], [ %.pre.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i56 ]
  %i.er = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !132, !alias.scope !200
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.es, align 8, !tbaa !137, !alias.scope !200
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !200
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit62

_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i59, %bb.ad
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %11) #22
  %i.et = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.eu = trunc nuw i8 %i.et to i1
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !137, !range !117, !noundef !118
  %i.ex = trunc nuw i8 %i.ew to i1
  store i8 0, ptr %i.ev, align 8, !tbaa !137
  br i1 %i.ex, label %bb.ag, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65

bb.ag:                                            ; preds = %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit62
  %i.ey = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63: ; preds = %bb.ag
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !17
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fc) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65: ; preds = %bb.ag, %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br i1 %i.eu, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65
  %i.fd = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit67, label %.invoke

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit67: ; preds = %bb.ah
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !128 ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !129
  %.not.i68 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i68, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit67
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 3 uses
  store ptr %i.fj, ptr %i.fg, align 8, !tbaa !130
  %i.fk = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !132 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 %i.fm, ptr %i.g, align 8, !tbaa !131
  %i.fn = icmp ugt i64 %i.fm, 15
  br i1 %i.fn, label %.noexc.i.i71, label %._crit_edge.i.i.i69

.noexc.i.i71:                                     ; preds = %bb.ai
  %i.fo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fg, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc72 unwind label %bb.ab  ; 2 uses

.noexc72:                                         ; preds = %.noexc.i.i71
  store ptr %i.fo, ptr %i.fg, align 8, !tbaa !16
  %i.fp = load i64, ptr %i.g, align 8, !tbaa !131
  store i64 %i.fp, ptr %i.fj, align 8, !tbaa !17
  br label %._crit_edge.i.i.i69

._crit_edge.i.i.i69:                              ; preds = %.noexc72, %bb.ai
  %i.fq = phi ptr [ %i.fo, %.noexc72 ], [ %i.fj, %bb.ai ] ; 2 uses
  switch i64 %i.fm, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i70
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i69
  %i.fr = load i8, ptr %i.fk, align 1, !tbaa !17
  store i8 %i.fr, ptr %i.fq, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i70

bb.ak:                                            ; preds = %._crit_edge.i.i.i69
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fk, i64 %i.fm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i70: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i69
  %i.fs = load i64, ptr %i.g, align 8, !tbaa !131 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !132
  %i.fu = load ptr, ptr %i.fg, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs
  store i8 0, ptr %i.fv, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.fw = load ptr, ptr %i.ff, align 8, !tbaa !128
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %i.fx, ptr %i.ff, align 8, !tbaa !128
  br label %bb.an

bb.al:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit67
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fg, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.an unwind label %bb.ab

bb.am:                                            ; preds = %bb.ae
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.cn

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i70, %bb.al, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit65
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !202 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %i.gb = load i32, ptr %i.ec, align 8, !tbaa !125, !noalias !203 ; 2 uses
  %i.gc = srem i32 %i.ga, %i.gb
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 0, ptr %i.ge, align 8, !tbaa !137, !alias.scope !203
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit81

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !203
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22, i32 noundef %i.ga, i32 noundef %i.gb)
          to label %.noexc80 unwind label %bb.ax

.noexc80:                                         ; preds = %bb.ap
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.gf, ptr %12, align 8, !tbaa !130, !alias.scope !203
  %i.gg = load ptr, ptr %5, align 8, !tbaa !16, !noalias !203 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75

bb.aq:                                            ; preds = %.noexc80
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !132, !noalias !203 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 16
  call void @llvm.assume(i1 %i.gl)
  %i.gm = add nuw nsw i64 %i.gk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.gh, i64 %i.gm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75: ; preds = %.noexc80
  store ptr %i.gg, ptr %12, align 8, !tbaa !16, !alias.scope !203
  %i.gn = load i64, ptr %i.gh, align 8, !tbaa !17, !noalias !203
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !17, !alias.scope !203
  %.phi.trans.insert.i76 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre.i77 = load i64, ptr %.phi.trans.insert.i76, align 8, !tbaa !132, !noalias !203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75, %bb.aq
  %i.go = phi i64 [ %i.gk, %bb.aq ], [ %.pre.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i75 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !132, !alias.scope !203
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.gq, align 8, !tbaa !137, !alias.scope !203
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !203
  br label %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit81

_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit81: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78, %bb.ao
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_move_assignEOS6_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %12) #22
  %i.gr = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 8, !tbaa !137, !range !117, !noundef !118
  %i.gv = trunc nuw i8 %i.gu to i1
  store i8 0, ptr %i.gt, align 8, !tbaa !137
  br i1 %i.gv, label %bb.ar, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit84

bb.ar:                                            ; preds = %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit81
  %i.gw = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82: ; preds = %bb.ar
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !17
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #21
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit84

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit84: ; preds = %bb.ar, %_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci.exit81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br i1 %i.gs, label %bb.as, label %bb.ay

bb.as:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit84
  %i.hb = load i8, ptr %i.bz, align 8, !tbaa !137, !range !117, !noundef !118
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit86, label %.invoke

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit86: ; preds = %bb.as
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !128 ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !129
  %.not.i87 = icmp eq ptr %i.he, %i.hg
  br i1 %.not.i87, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit86
  %i.hh = getelementptr inbounds nuw i8, ptr %i.he, i64 16 ; 3 uses
  store ptr %i.hh, ptr %i.he, align 8, !tbaa !130
  %i.hi = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !132 ; 4 uses
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!0 = distinct !{!0, !134}
!1 = distinct !{!1, !134}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !14, i64 8, !7, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!19 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!20 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!21 = !{!"double", !7, i64 0}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 _ZTSN3gmx8MtsLevelE", !11, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !26, i64 0}
!28 = !{!"float", !7, i64 0}
!29 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!30 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!31 = !{!"_ZTS7PbcType", !7, i64 0}
!32 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!33 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!34 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!35 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!36 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!37 = !{!"_ZTS23PressureCouplingOptions", !34, i64 0, !35, i64 4, !8, i64 8, !28, i64 12, !7, i64 16, !7, i64 52, !36, i64 88}
!38 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !41, i64 0}
!43 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!44 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!45 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!46 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!47 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!48 = !{!"p1 _ZTS8t_lambda", !11, i64 0}
!49 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !48, i64 0}
!50 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !49, i64 0}
!51 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !50, i64 0}
!52 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !52, i64 0}
!54 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !53, i64 0}
!55 = !{!"p1 _ZTS9t_simtemp", !11, i64 0}
!56 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !55, i64 0}
!57 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !56, i64 0}
!58 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !57, i64 0}
!59 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !59, i64 0}
!61 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !60, i64 0}
!62 = !{!"p1 _ZTS10t_expanded", !11, i64 0}
!63 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !62, i64 0}
!64 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !63, i64 0}
!65 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !64, i64 0}
!66 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !65, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !66, i64 0}
!68 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !67, i64 0}
!69 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!70 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!71 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!72 = !{!"_ZTS8WallType", !7, i64 0}
!73 = !{!"p1 _ZTS13pull_params_t", !11, i64 0}
!74 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !73, i64 0}
!75 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !74, i64 0}
!76 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !75, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !76, i64 0}
!78 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !77, i64 0}
!79 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !78, i64 0}
!80 = !{!"p1 _ZTSN3gmx9AwhParamsE", !11, i64 0}
!81 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !80, i64 0}
!82 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !81, i64 0}
!83 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !82, i64 0}
!84 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !84, i64 0}
!86 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !85, i64 0}
!87 = !{!"p1 _ZTS5t_rot", !11, i64 0}
!88 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !87, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !88, i64 0}
!90 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !89, i64 0}
!91 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !90, i64 0}
!92 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !92, i64 0}
!94 = !{!"_ZTS8SwapType", !7, i64 0}
!95 = !{!"p1 _ZTS12t_swapcoords", !11, i64 0}
!96 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !95, i64 0}
!97 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !96, i64 0}
!98 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !97, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !99, i64 0}
!101 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !100, i64 0}
!102 = !{!"p1 _ZTS5t_IMD", !11, i64 0}
!103 = !{!"p1 float", !11, i64 0}
!104 = !{!"p1 int", !11, i64 0}
!105 = !{!"any p2 pointer", !11, i64 0}
!106 = !{!"p2 float", !105, i64 0}
!107 = !{!"_ZTS9t_grpopts", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !103, i64 16, !103, i64 24, !11, i64 32, !104, i64 40, !106, i64 48, !106, i64 56, !103, i64 64, !42, i64 72, !104, i64 96, !104, i64 104, !8, i64 112}
!108 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !11, i64 0}
!109 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !108, i64 0}
!110 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !109, i64 0}
!111 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !110, i64 0}
!112 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !111, i64 0}
!113 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !112, i64 0}
!114 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !113, i64 0}
!115 = !{!"_ZTS10t_inputrec", !8, i64 0, !18, i64 4, !14, i64 8, !8, i64 16, !14, i64 24, !8, i64 32, !19, i64 36, !8, i64 40, !8, i64 44, !20, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !21, i64 80, !21, i64 88, !22, i64 96, !27, i64 104, !28, i64 128, !28, i64 132, !28, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !28, i64 156, !28, i64 160, !29, i64 164, !28, i64 168, !30, i64 172, !31, i64 176, !22, i64 180, !22, i64 181, !32, i64 184, !28, i64 188, !33, i64 192, !8, i64 196, !22, i64 200, !37, i64 204, !42, i64 296, !42, i64 320, !8, i64 344, !28, i64 348, !28, i64 352, !28, i64 356, !28, i64 360, !43, i64 364, !44, i64 368, !28, i64 372, !28, i64 376, !28, i64 380, !28, i64 384, !22, i64 388, !45, i64 392, !44, i64 396, !28, i64 400, !28, i64 404, !46, i64 408, !28, i64 412, !28, i64 416, !47, i64 420, !54, i64 424, !22, i64 432, !61, i64 440, !22, i64 448, !68, i64 456, !69, i64 464, !28, i64 468, !70, i64 472, !22, i64 476, !8, i64 480, !28, i64 484, !28, i64 488, !28, i64 492, !8, i64 496, !28, i64 500, !28, i64 504, !8, i64 508, !28, i64 512, !8, i64 516, !8, i64 520, !71, i64 524, !8, i64 528, !28, i64 532, !8, i64 536, !22, i64 540, !28, i64 544, !14, i64 552, !8, i64 560, !72, i64 564, !28, i64 568, !7, i64 572, !7, i64 580, !28, i64 588, !22, i64 592, !79, i64 600, !22, i64 608, !86, i64 616, !22, i64 624, !93, i64 632, !94, i64 640, !101, i64 648, !22, i64 656, !102, i64 664, !28, i64 672, !7, i64 676, !8, i64 712, !8, i64 716, !8, i64 720, !8, i64 724, !28, i64 728, !28, i64 732, !28, i64 736, !28, i64 740, !107, i64 744, !22, i64 864, !22, i64 865, !22, i64 866, !22, i64 867, !108, i64 872, !114, i64 880}
!116 = !{!115, !22, i64 96}
!117 = !{i8 0, i8 2}
!118 = !{}
!119 = !{!24, !23, i64 8}
!120 = !{!24, !23, i64 0}
!121 = !{!"_ZTSSt12_Base_bitsetILm1EE", !14, i64 0}
!122 = !{!121, !14, i64 0}
!123 = !{!"_ZTSSt6bitsetILm7EE", !121, i64 0}
!124 = !{!"_ZTSN3gmx8MtsLevelE", !123, i64 0, !8, i64 8}
!125 = !{!124, !8, i64 8}
!126 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !126, i64 0, !126, i64 8, !126, i64 16}
!128 = !{!127, !126, i64 8}
!129 = !{!127, !126, i64 16}
!130 = !{!13, !12, i64 0}
!131 = !{!14, !14, i64 0}
!132 = !{!15, !14, i64 8}
!133 = !{!127, !126, i64 0}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!24, !23, i64 16}
!136 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !7, i64 0, !22, i64 32}
!137 = !{!136, !22, i64 32}
!138 = !{!"_ZTSN3gmx13GromppMtsOptsE", !8, i64 0, !15, i64 8, !8, i64 40}
!139 = !{!138, !8, i64 0}
!140 = !{!126, !126, i64 0}
!141 = !{!138, !8, i64 40}
!142 = distinct !{!142, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!143 = distinct !{!143, !142, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !142, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!145 = distinct !{!145, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!146 = distinct !{!146, !145, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!147 = distinct !{!147, !145, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!148 = !{!143}
!149 = !{!144}
!150 = !{!143, !144}
!151 = !{!146}
!152 = !{!147}
!153 = !{!146, !147}
!154 = distinct !{!154, !"_ZSt19__relocate_object_aIN3gmx8MtsLevelES1_SaIS1_EEvPT_PT0_RT1_"}
!155 = distinct !{!155, !154, !"_ZSt19__relocate_object_aIN3gmx8MtsLevelES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!156 = distinct !{!156, !154, !"_ZSt19__relocate_object_aIN3gmx8MtsLevelES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!157 = distinct !{!157, !134}
!158 = !{!156, !155}
!159 = distinct !{!159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!160 = distinct !{!160, !159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!161 = distinct !{!161, !159, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!162 = distinct !{!162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!163 = distinct !{!163, !162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!164 = distinct !{!164, !162, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!165 = !{!160}
!166 = !{!161}
!167 = !{!160, !161}
!168 = !{!163}
!169 = !{!164}
!170 = !{!163, !164}
!171 = distinct !{!171, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!172 = distinct !{!172, !171, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!173 = distinct !{!173, !171, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!174 = distinct !{!174, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!175 = distinct !{!175, !174, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!176 = distinct !{!176, !174, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!177 = !{!172}
!178 = !{!173}
!179 = !{!172, !173}
!180 = !{!175}
!181 = !{!176}
!182 = !{!175, !176}
!183 = distinct !{!183, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!184 = distinct !{!184, !183, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!185 = distinct !{!185, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!186 = distinct !{!186, !185, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!187 = distinct !{!187, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!188 = distinct !{!188, !187, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!189 = distinct !{!189, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!190 = distinct !{!190, !189, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!191 = distinct !{!191, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!192 = distinct !{!192, !191, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!193 = distinct !{!193, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci"}
!194 = distinct !{!194, !193, !"_ZN3gmx12_GLOBAL__N_116checkMtsIntervalB5cxx11ENS_8ArrayRefIKNS_8MtsLevelEEEPKci: argument 0"}
!195 = !{!115, !18, i64 4}
!196 = !{!43, !43, i64 0}
!197 = !{!45, !45, i64 0}
!198 = !{!115, !8, i64 32}
!199 = !{!184}
!200 = !{!186}
!201 = !{!115, !8, i64 68}
!202 = !{!115, !8, i64 52}
!203 = !{!188}
!204 = !{!115, !8, i64 64}
!205 = !{!190}
!206 = !{!115, !47, i64 420}
!207 = !{!48, !48, i64 0}
!208 = !{!"_ZTS21FreeEnergyPrintEnergy", !7, i64 0}
!209 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypeSt6vectorIdSaIdEELS1_7EEE", !7, i64 0}
!210 = !{!"_ZTS12SoftcoreType", !7, i64 0}
!211 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypebLS1_7EEE", !7, i64 0}
!212 = !{!"_ZTS16SeparateDhdlFile", !7, i64 0}
!213 = !{!"_ZTS25DhDlDerivativeCalculation", !7, i64 0}
!214 = !{!"_ZTS8t_lambda", !8, i64 0, !21, i64 8, !8, i64 16, !21, i64 24, !208, i64 32, !8, i64 36, !209, i64 40, !8, i64 208, !8, i64 212, !8, i64 216, !28, i64 220, !8, i64 224, !28, i64 228, !28, i64 232, !28, i64 236, !22, i64 240, !210, i64 244, !28, i64 248, !28, i64 252, !28, i64 256, !211, i64 260, !212, i64 268, !213, i64 272, !8, i64 276, !21, i64 280}
!215 = !{!214, !8, i64 0}
!216 = !{!192}
!217 = !{!115, !8, i64 40}
!218 = !{!194}
!219 = !{!115, !22, i64 592}
!220 = !{!73, !73, i64 0}
!221 = !{!"p1 _ZTS12t_pull_group", !11, i64 0}
!222 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE17_Vector_impl_dataE", !221, i64 0, !221, i64 8, !221, i64 16}
!223 = !{!"_ZTSNSt12_Vector_baseI12t_pull_groupSaIS0_EE12_Vector_implE", !222, i64 0}
!224 = !{!"_ZTSSt12_Vector_baseI12t_pull_groupSaIS0_EE", !223, i64 0}
!225 = !{!"_ZTSSt6vectorI12t_pull_groupSaIS0_EE", !224, i64 0}
!226 = !{!"p1 _ZTS12t_pull_coord", !11, i64 0}
!227 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE17_Vector_impl_dataE", !226, i64 0, !226, i64 8, !226, i64 16}
!228 = !{!"_ZTSNSt12_Vector_baseI12t_pull_coordSaIS0_EE12_Vector_implE", !227, i64 0}
!229 = !{!"_ZTSSt12_Vector_baseI12t_pull_coordSaIS0_EE", !228, i64 0}
!230 = !{!"_ZTSSt6vectorI12t_pull_coordSaIS0_EE", !229, i64 0}
!231 = !{!"_ZTS13pull_params_t", !8, i64 0, !8, i64 4, !28, i64 8, !28, i64 12, !22, i64 16, !22, i64 17, !22, i64 18, !22, i64 19, !8, i64 20, !8, i64 24, !22, i64 28, !22, i64 29, !225, i64 32, !230, i64 56}
!232 = !{!231, !8, i64 20}
!233 = !{!231, !8, i64 24}
!234 = distinct !{!234, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!235 = distinct !{!235, !234, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!236 = distinct !{!236, !234, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!237 = distinct !{!237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!238 = distinct !{!238, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!239 = distinct !{!239, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!240 = !{!235}
!241 = !{!236}
!242 = !{!235, !236}
!243 = !{!238}
!244 = !{!239}
!245 = !{!238, !239}
!246 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!247 = distinct !{!247, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!248 = distinct !{!248, !247, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!249 = distinct !{!249, !247, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!250 = distinct !{!250, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!251 = distinct !{!251, !250, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!252 = distinct !{!252, !250, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!253 = !{!248}
!254 = !{!249}
!255 = !{!248, !249}
!256 = !{!251}
!257 = !{!252}
!258 = !{!251, !252}
!259 = !{!"vtable pointer", !6, i64 0}
!260 = !{!259, !259, i64 0}
!261 = distinct !{!261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!262 = distinct !{!262, !261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!263 = distinct !{!263, !261, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!264 = distinct !{!264, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!265 = distinct !{!265, !264, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!266 = distinct !{!266, !264, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!267 = !{!262}
!268 = !{!263}
!269 = !{!262, !263}
!270 = !{!265}
!271 = !{!266}
!272 = !{!265, !266}
end_hunk_1
