Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/sentencepiece_processor?download=true
inline.NumInlined: 6483
inline.NumDeleted: 2307
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
          to label %.noexc27 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc27:                                         ; preds = %.noexc.i
  store ptr %i.y, ptr %i.r, align 8, !tbaa !89
  %i.z = load i64, ptr %i.a, align 8, !tbaa !117
  store i64 %i.z, ptr %i.u, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc27, %bb.d
  %i.aa = phi ptr [ %i.y, %.noexc27 ], [ %i.u, %bb.d ] ; 2 uses
  switch i64 %i.t, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.s, align 1, !tbaa !47
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !47
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.s, i64 %i.t, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !88
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.g ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ag, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !1444
  %i.ah = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !89, !alias.scope !1445 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !88, !alias.scope !1445 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false), !alias.scope !1446
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !89, !alias.scope !1444
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !47, !alias.scope !1445
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !47, !alias.scope !1444
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !88, !alias.scope !1445
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.h
  %i.ap = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !88, !alias.scope !1444
  store ptr %i.ai, ptr %.0911.i.i.i, align 8, !tbaa !89, !alias.scope !1445
  store i64 0, ptr %i.aq, align 8, !tbaa !88, !alias.scope !1445
  store i8 0, ptr %i.ai, align 8, !tbaa !47, !alias.scope !1445
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.as, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %bb.g ], [ %i.at, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i30 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i31 = phi ptr [ %i.bh, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 16 ; 3 uses
  store ptr %i.av, ptr %.012.i.i.i30, align 8, !tbaa !100, !alias.scope !1447
  %i.aw = load ptr, ptr %.0911.i.i.i31, align 8, !tbaa !89, !alias.scope !1448 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 16 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

bb.i:                                             ; preds = %.lr.ph.i.i.i29
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !88, !alias.scope !1448 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !1449
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %.lr.ph.i.i.i29
  store ptr %i.aw, ptr %.012.i.i.i30, align 8, !tbaa !89, !alias.scope !1447
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !47, !alias.scope !1448
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !47, !alias.scope !1447
  %.phi.trans.insert.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %.pre.i.i.i.i34 = load i64, ptr %.phi.trans.insert.i.i.i.i33, align 8, !tbaa !88, !alias.scope !1448
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32, %bb.i
  %i.be = phi i64 [ %i.ba, %bb.i ], [ %.pre.i.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !88, !alias.scope !1447
  store ptr %i.ax, ptr %.0911.i.i.i31, align 8, !tbaa !89, !alias.scope !1448
  store i64 0, ptr %i.bf, align 8, !tbaa !88, !alias.scope !1448
  store i8 0, ptr %i.ax, align 8, !tbaa !47, !alias.scope !1448
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bh, %i.c
  br i1 %.not.i.i.i36, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, label %.lr.ph.i.i.i29, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.au, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bi, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i39 = icmp eq ptr %i.d, null
  br i1 %.not.i39, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !166
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bm) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit38, %bb.j
  store ptr %i.q, ptr %0, align 8, !tbaa !167
  store ptr %.0.lcssa.i.i.i37, ptr %i.b, align 8, !tbaa !165
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bn, ptr %i.bj, align 8, !tbaa !166
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %.noexc.i
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #33 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.p) #34
  invoke void @__cxa_rethrow() #35
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  call void @__clang_call_terminate(ptr %i.bt) #37
  unreachable

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK13sentencepiece22SentencePieceProcessor17ApplyExtraOptionsISt6vectorIiSaIiEEEEN4absl12lts_202605266StatusENS6_4SpanIKNS0_11ExtraOptionEEEPT_(ptr dead_on_unwind noalias writable sret(%"class.absl::lts_20260526::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %.idx = shl nuw nsw i64 %3, 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not27 = icmp eq i64 %3, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  %.028 = phi ptr [ %2, %.lr.ph ], [ %i.bo, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit ] ; 2 uses
  %i.e = load i32, ptr %.028, align 4, !tbaa !186
  switch i32 %i.e, label %.critedge [
    i32 0, label %bb.c
    i32 2, label %bb.d
    i32 1, label %bb.k
    i32 3, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8, !tbaa !251    ; 9 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !251  ; 5 uses
  %i.h = icmp ne ptr %i.f, %i.g
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 5 uses
  %i.i = icmp ult ptr %i.f, %.sroa.0.08.i.i
  %or.cond.i.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i.preheader, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %5 = ptrtoaddr ptr %i.g to i64
  %6 = ptrtoaddr ptr %i.f to i64                  ; 3 uses
  %i.j = add i64 %5, -8
  %i.k = add i64 %6, 4
  %i.l = call i64 @llvm.umax.i64(i64 %i.j, i64 %i.k)
  %i.m = add i64 %i.l, -4                         ; 2 uses
  %i.n = icmp ne i64 %i.m, %6
  %i.o = zext i1 %i.n to i64                      ; 3 uses
  %i.p = add i64 %6, %i.o
  %i.q = sub i64 %i.m, %i.p                       ; 2 uses
  %i.r = lshr i64 %i.q, 3
  %i.s = add nuw nsw i64 %i.r, %i.o               ; 2 uses
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.s, 15
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader42, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.u = lshr i64 %i.q, 3
  %i.v = add nuw nsw i64 %i.u, %i.o
  %i.w = shl nuw i64 %i.v, 2                      ; 2 uses
  %scevgep35 = getelementptr i8, ptr %i.f, i64 %i.w
  %scevgep36 = getelementptr i8, ptr %scevgep35, i64 4
  %7 = sub nuw nsw i64 -4, %i.w
  %scevgep37 = getelementptr i8, ptr %i.g, i64 %7
  %bound0 = icmp ult ptr %i.f, %i.g
  %bound1 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader42, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.t, 9223372036854775804      ; 4 uses
  %i.x = mul i64 %n.vec, -4
  %i.y = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.x
  %i.z = shl i64 %n.vec, 2
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = mul i64 %index, -4
  %next.gep = getelementptr i8, ptr %.sroa.0.08.i.i, i64 %i.ab
  %i.ac = shl i64 %index, 2
  %next.gep38 = getelementptr i8, ptr %i.f, i64 %i.ac ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep38, align 4, !tbaa !48, !alias.scope !1457, !noalias !1458
  %i.ad = getelementptr i8, ptr %next.gep, i64 -12 ; 2 uses
  %wide.load39 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !48, !alias.scope !1458
  %reverse = shufflevector <4 x i32> %wide.load39, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse, ptr %next.gep38, align 4, !tbaa !48, !alias.scope !1457, !noalias !1458
  %reverse40 = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse40, ptr %i.ad, align 4, !tbaa !48, !alias.scope !1458
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1453

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %.lr.ph.i.i.preheader42

.lr.ph.i.i.preheader42:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.010.i.i.ph = phi ptr [ %.sroa.0.08.i.i, %vector.memcheck ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.05.09.i.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader42, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.010.i.i.ph, %.lr.ph.i.i.preheader42 ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.sroa.05.09.i.i.ph, %.lr.ph.i.i.preheader42 ] ; 3 uses
  %i.af = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !48
  %i.ag = load i32, ptr %.sroa.0.010.i.i, align 4, !tbaa !48
  store i32 %i.ag, ptr %.sroa.05.09.i.i, align 4, !tbaa !48
  store i32 %i.af, ptr %.sroa.0.010.i.i, align 4, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %.sroa.0.0.i.i
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, !llvm.loop !1454

bb.d:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %1, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 680
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 3 uses
  %.not20 = icmp eq i32 %i.am, -1
  br i1 %.not20, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !210 ; 4 uses
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !211
  %.not.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.am, ptr %i.an, align 4, !tbaa !48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !210
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

bb.g:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %4, align 8, !tbaa !209   ; 4 uses
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 6 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #35
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #36 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i32 %i.am, ptr %i.bc, align 4, !tbaa !48
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.at) #34
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bb, ptr %4, align 8, !tbaa !209
  store ptr %i.be, ptr %i.c, align 8, !tbaa !210
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bf, ptr %i.d, align 8, !tbaa !211
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.bg = load ptr, ptr %1, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 672
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(104) %1) ; 2 uses
  store i32 %i.bj, ptr %i.a, align 4, !tbaa !48
  %.not19 = icmp eq i32 %i.bj, -1
  br i1 %.not19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %4, align 8, !tbaa !251
  %i.bl = call ptr @_ZNSt6vectorIiSaIiEE14_M_emplace_auxIJRKiEEEN9__gnu_cxx17__normal_iteratorIPiS1_EENS6_IPS3_S1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bk, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit

.critedge:                                        ; preds = %bb.b
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !210
  %.not.i.i = icmp eq ptr %i.bn, %i.bm
  br i1 %.not.i.i, label %bb.n, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %.critedge
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !210
  br label %bb.n

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.d, %bb.f, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.c, %bb.b, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.028, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bo, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

bb.n:                                             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %.critedge
  call void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi13EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8 %0, i64 26, ptr nonnull @.str.114, i64 1508, ptr nonnull @.str.1)
  br label %bb.o

._crit_edge:                                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, %bb.a
  store i64 1, ptr %0, align 8, !tbaa !111, !alias.scope !1459
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIiSaIiEE14_M_emplace_auxIJRKiEEEN9__gnu_cxx17__normal_iteratorIPiS1_EENS6_IPS3_S1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !251    ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !210  ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !211
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  %i.j = load i32, ptr %2, align 4, !tbaa !48     ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.j, ptr %i.f, align 4, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.k, ptr %i.e, align 8, !tbaa !210
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48
  store i32 %i.n, ptr %i.f, align 4, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store ptr %i.o, ptr %i.e, align 8, !tbaa !210
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !118
end_hunk_0
