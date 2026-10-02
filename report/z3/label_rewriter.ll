Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/label_rewriter?download=true
inline.NumInlined: 1113
inline.NumDeleted: 289
begin_hunk_0_@_ZN12rewriter_tplI14label_rewriterE11resume_coreILb1EEEvR7obj_refI4expr11ast_managerERS3_I3appS5_E:bb.a
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !81
  %i.fj = add i32 %i.fi, -1                       ; 2 uses
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fk
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !86 ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.fg, i64 -4
  store i32 %i.fj, ptr %i.fn, align 4, !tbaa !81
  %i.fo = load ptr, ptr %i.em, align 8, !tbaa !87, !nonnull !77, !align !78
  %.not.i.i.i.i46 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i46, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.af

bb.af:                                            ; preds = %_ZN6vectorIP3appLb0EjE4backEv.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !75
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !75
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.ag, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fo, ptr noundef nonnull %i.fm)
  %.pre63 = load ptr, ptr %2, align 8, !tbaa !61
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %_ZN6vectorIP3appLb0EjE4backEv.exit.i, %bb.af, %bb.ag
  %i.ft = phi ptr [ %i.ev, %_ZN6vectorIP3appLb0EjE4backEv.exit.i ], [ %i.ev, %bb.af ], [ %.pre63, %bb.ag ]
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !89, !nonnull !77, !align !78
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !98
  %i.fz = tail call noundef ptr @_ZN11ast_manager14mk_reflexivityEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.fw, ptr noundef %i.fy) ; 3 uses
  %.not.i49 = icmp eq ptr %i.fz, null
  br i1 %.not.i49, label %bb.ai, label %_ZN11ast_manager7inc_refEP3ast.exit.i50

_ZN11ast_manager7inc_refEP3ast.exit.i50:          ; preds = %bb.ah
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !75
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !75
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i50, %bb.ah
  %i.gd = load ptr, ptr %2, align 8, !tbaa !61    ; 3 uses
  %.not.i4.i51 = icmp eq ptr %i.gd, null
  br i1 %.not.i4.i51, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit52, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !79, !nonnull !77, !align !78
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !75
  %i.gi = add i32 %i.gh, -1                       ; 2 uses
  store i32 %i.gi, ptr %i.gg, align 4, !tbaa !75
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ak, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit52

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gf, ptr noundef nonnull %i.gd)
  br label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit52

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit52:     ; preds = %bb.ai, %bb.aj, %bb.ak
  store ptr %i.fz, ptr %2, align 8, !tbaa !61
  br label %bb.al

bb.al:                                            ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit52, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit
  ret void

bb.am:                                            ; preds = %.thread57, %bb.k
  %.pn.pn55 = phi { ptr, i32 } [ %i.aj, %.thread57 ], [ %.pn.pn56, %bb.k ]
  resume { ptr, i32 } %.pn.pn55

bb.an:                                            ; preds = %bb.h
  unreachable
}

declare noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN13rewriter_core5resetEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN18rewriter_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !56
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN17default_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !97
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZN17default_exceptionD2Ev.exit

_ZN17default_exceptionD2Ev.exit:                  ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK17default_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

declare noundef i32 @_ZNK12z3_exception10error_codeEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4, !tbaa !75
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !81   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !81
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.c, %bb.d
  %i.l = phi i32 [ %.pre2.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !74
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !81
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12rewriter_tplI14label_rewriterE13process_constILb1EEEbP3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref.10, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89, !nonnull !77, !align !78 ; 2 uses
  store ptr %1, ptr %2, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !75
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %bb.a, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !75
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.m

bb.c:                                             ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc14 unwind label %bb.b

.noexc14:                                         ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %.noexc14, %bb.c
  %i.s = phi i32 [ %.pre2.i.i, %.noexc14 ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc14 ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %1, ptr %i.w, align 8, !tbaa !74
  %i.x = add i32 %i.s, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !85   ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !81 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !81
  %i.af = icmp eq i32 %i.ac, %i.ae
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %.noexc18 unwind label %bb.b

.noexc18:                                         ; preds = %bb.g
  %.pre.i.i15 = load ptr, ptr %i.y, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert.i.i16 = getelementptr inbounds i8, ptr %.pre.i.i15, i64 -4
  %.pre2.i.i17 = load i32, ptr %.phi.trans.insert.i.i16, align 4, !tbaa !81
  br label %bb.h

bb.h:                                             ; preds = %.noexc18, %bb.f
  %i.ag = phi i32 [ %.pre2.i.i17, %.noexc18 ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ah = phi ptr [ %.pre.i.i15, %.noexc18 ], [ %i.z, %bb.f ] ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = zext i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aj
  store ptr null, ptr %i.ak, align 8, !tbaa !86
  %i.al = add i32 %i.ag, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !75
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !75
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull %1)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #16
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK13rewriter_core10is_blockedEP4expr(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !113  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108  ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %i.i = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.i, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i ; 3 uses
  %i.k = zext i32 %i.e to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %.not34.i.i = icmp eq i32 %i.g, %i.e
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.a
  %.not2736.i.i = icmp eq i32 %i.g, 0
  br i1 %.not2736.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.035.i.i = phi ptr [ %i.s, %bb.d ], [ %i.j, %bb.a ] ; 2 uses
  %i.m = load ptr, ptr %.035.i.i, align 8, !tbaa !110 ; 4 uses
  %.not.i.not.not = icmp uge ptr %i.m, inttoptr (i64 2 to ptr) ; 3 uses
  br i1 %.not.i.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !113
  %i.p = icmp eq i32 %i.o, %i.c
  %i.q = icmp eq ptr %i.m, %1
  %or.cond.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = icmp eq ptr %i.m, null
  br i1 %i.r, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.l
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !140

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.h, %.preheader.i.i ] ; 3 uses
  %i.t = load ptr, ptr %.137.i.i, align 8, !tbaa !110 ; 4 uses
  %i.u = icmp ult ptr %i.t, inttoptr (i64 2 to ptr)
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !113
  %i.x = icmp eq i32 %i.w, %i.c
  %i.y = icmp eq ptr %i.t, %1
  %or.cond31.i.i = and i1 %i.y, %i.x
  br i1 %or.cond31.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %bb.g

bb.f:                                             ; preds = %.lr.ph38.i.i
  %i.z = icmp eq ptr %i.t, null
  %i.aa = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.aa, %i.j
  %or.cond43.i.i = select i1 %i.z, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i.backedge

bb.g:                                             ; preds = %bb.e
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.j
  br i1 %.not27.old.i.i, label %_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.g, %bb.f
  %.137.i.i.be = phi ptr [ %i.aa, %bb.f ], [ %.old.i.i, %bb.g ]
  br label %.lr.ph38.i.i, !llvm.loop !141

_ZNK14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE8containsERKPS1_.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %.preheader.i.i
  %.026.i.i = phi i1 [ false, %.preheader.i.i ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %.not.i.not.not, %bb.c ], [ %.not.i.not.not, %bb.b ]
  ret i1 %.026.i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI14label_rewriterE10push_frameEP4exprbj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !80   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !81   ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !81
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZN13rewriter_core15push_frame_coreEP4exprbjj.exit

bb.d:                                             ; preds = %bb.c, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  tail call void @_ZN6vectorIN13rewriter_core5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !80 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !81
  br label %_ZN13rewriter_core15push_frame_coreEP4exprbjj.exit

_ZN13rewriter_core15push_frame_coreEP4exprbjj.exit: ; preds = %bb.c, %bb.d
  %i.n = phi i32 [ %.pre2.i.i, %bb.d ], [ %i.j, %bb.c ]
  %i.o = phi ptr [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.p = zext i1 %2 to i32
  %i.q = shl i32 %3, 4
  %.masked.i.i = and i32 %i.q, 48
  %i.r = or disjoint i32 %.masked.i.i, %i.p
  %i.s = zext i32 %i.n to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.s ; 3 uses
  store ptr %1, ptr %i.t, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !97
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 %.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !81
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI14label_rewriterE11process_varILb1EEEvP3var(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !85   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !81
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i.i32 = load ptr, ptr %i.c, align 8, !tbaa !85 ; 2 uses
  %.phi.trans.insert.i.i33 = getelementptr inbounds i8, ptr %.pre.i.i32, i64 -4
  %.pre2.i.i34 = load i32, ptr %.phi.trans.insert.i.i33, align 4, !tbaa !81
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35: ; preds = %bb.b, %bb.c
  %i.k = phi i32 [ %.pre2.i.i34, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.pre.i.i32, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.n
  store ptr null, ptr %i.o, align 8, !tbaa !86
  %i.p = add i32 %i.k, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !81   ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplI14label_rewriterE11resume_coreILb0EEEvR7obj_refI4expr11ast_managerERS3_I3appS5_E:bb.a
  br i1 %.not27, label %.critedge, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !58  ; 4 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !81 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !81
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.p, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.p:                                             ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !81
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.o, %bb.p
  %i.bm = phi i32 [ %.pre2.i.i, %bb.p ], [ %i.bi, %bb.o ] ; 2 uses
  %i.bn = phi ptr [ %.pre.i.i, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bp
  store ptr %i.bb, ptr %i.bq, align 8, !tbaa !74
  %i.br = add i32 %i.bm, 1
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !81
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !81 ; 2 uses
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !81
  %.not.i = icmp eq ptr %i.au, %i.bb
  %i.bw = icmp eq i32 %i.bv, 0
  %or.cond38 = select i1 %.not.i, i1 true, i1 %i.bw
  br i1 %or.cond38, label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.bx = add i32 %i.bu, -2
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = or i32 %i.cb, 2
  store i32 %i.cc, ptr %i.ca, align 8
  br label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit

.critedge:                                        ; preds = %bb.n, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %trunc = trunc i32 %i.ce to i16
  switch i16 %trunc, label %bb.t [
    i16 0, label %bb.q
    i16 2, label %bb.r
    i16 1, label %bb.s
  ]

bb.q:                                             ; preds = %.critedge
  tail call void @_ZN12rewriter_tplI14label_rewriterE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  br label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit

bb.r:                                             ; preds = %.critedge
  tail call void @_ZN12rewriter_tplI14label_rewriterE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at)
  br label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit

bb.s:                                             ; preds = %.critedge
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !81
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !81
  tail call void @_ZN12rewriter_tplI14label_rewriterE11process_varILb0EEEvP3var(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %i.au)
  br label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit

bb.t:                                             ; preds = %.critedge
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.2, i32 noundef 797, ptr noundef nonnull @.str.3)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit

_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.q, %bb.r, %bb.s, %bb.t
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.thread, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.thread: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit, %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4exprS3_.exit, %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !58 ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.thread
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !81
  %i.cr = add i32 %i.cq, -1
  %i.cs = zext i32 %i.cr to i64
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.thread, %bb.u
  %.0.i.i.i = phi i64 [ %i.cs, %bb.u ], [ 4294967295, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.thread ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.0.i.i.i
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !74 ; 3 uses
  %.not.i28 = icmp eq ptr %i.cu, null
  br i1 %.not.i28, label %bb.v, label %_ZN11ast_manager7inc_refEP3ast.exit.i

_ZN11ast_manager7inc_refEP3ast.exit.i:            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !75
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4backEv.exit
  %i.cy = load ptr, ptr %1, align 8, !tbaa !59    ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cy, null
  br i1 %.not.i4.i, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !76, !nonnull !77, !align !78
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !75
  %i.dd = add i32 %i.dc, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !75
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit, label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit:      ; preds = %bb.w
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.da, ptr noundef nonnull %i.cy)
  %.pre39 = load ptr, ptr %i.cm, align 8, !tbaa !58, !nonnull !77, !noundef !77
  br label %_ZN6vectorIP4exprLb0EjE4backEv.exit.i

_ZN6vectorIP4exprLb0EjE4backEv.exit.i:            ; preds = %bb.w, %bb.v, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  %i.df = phi ptr [ %.pre39, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit ], [ %i.cn, %bb.v ], [ %i.cn, %bb.w ] ; 3 uses
  store ptr %i.cu, ptr %1, align 8, !tbaa !59
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !81
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !74 ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !81
  %i.dn = load ptr, ptr %i.cl, align 8, !tbaa !83, !nonnull !77, !align !78
  %.not.i.i.i.i30 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i30, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.x

bb.x:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !75
  %i.dq = add i32 %i.dp, -1                       ; 2 uses
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !75
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.y, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dn, ptr noundef nonnull %i.dl)
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %_ZN6vectorIP4exprLb0EjE4backEv.exit.i, %bb.x, %bb.y
  ret void

bb.z:                                             ; preds = %.thread35, %bb.k
  %.pn.pn33 = phi { ptr, i32 } [ %i.ah, %.thread35 ], [ %.pn.pn34, %bb.k ]
  resume { ptr, i32 } %.pn.pn33

bb.aa:                                            ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN12rewriter_tplI14label_rewriterE13process_constILb0EEEbP3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref.10, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89, !nonnull !77, !align !78 ; 2 uses
  store ptr %1, ptr %2, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !75
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %bb.a, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !75
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !58   ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.m

bb.c:                                             ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !81   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !81
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc13 unwind label %bb.b

.noexc13:                                         ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %.noexc13, %bb.c
  %i.s = phi i32 [ %.pre2.i.i, %.noexc13 ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.k, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = zext i32 %i.s to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  store ptr %1, ptr %i.w, align 8, !tbaa !74
  %i.x = add i32 %i.s, 1
  store i32 %i.x, ptr %i.u, align 4, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75
  %i.aa = add i32 %i.z, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !75
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull %1)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #16
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI14label_rewriterE11process_varILb0EEEvP3var(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.obj_ref, align 8             ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !116  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !81   ; 4 uses
  %i.h = icmp ult i32 %i.b, %i.g
  br i1 %i.h, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.i = xor i32 %i.b, -1
  %i.j = add i32 %i.g, %i.i
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 8 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48, label %bb.b

bb.b:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.o, 65535
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_Z9is_groundPK4expr.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29

_Z9is_groundPK4expr.exit:                         ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 30
  %i.s = load i8, ptr %i.r, align 2
  %i.t = trunc i8 %i.s to i1
  br i1 %i.t, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29:           ; preds = %bb.b, %_Z9is_groundPK4expr.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.k
  %i.x = load i32, ptr %i.w, align 4, !tbaa !81   ; 2 uses
  %.not24 = icmp eq i32 %i.x, %i.g
  br i1 %.not24, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29
  %i.y = sub i32 %i.g, %i.x                       ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.aa, ptr noundef nonnull %i.m, i32 noundef %i.y) ; 3 uses
  %.not25 = icmp eq ptr %i.ab, null
  br i1 %.not25, label %bb.e, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !81 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !81
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !81
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !74
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !81
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !89, !nonnull !77, !align !78
  store ptr null, ptr %2, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !60
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !59
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !59
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !75
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !81 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !81
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !81
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !74
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !80 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !81 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplI14label_rewriterE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
end_hunk_1
