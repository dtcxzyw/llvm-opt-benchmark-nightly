inline.NumInlined: 3652
inline.NumDeleted: 1163
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2qe10def_vector9normalizeEv:bb.a
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !22
  br label %_ZN11ast_manager7inc_refEP3ast.exit.i24

_ZN11ast_manager7inc_refEP3ast.exit.i24:          ; preds = %bb.n, %bb.m
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !16 ; 3 uses
  %.not.i3.i = icmp eq ptr %i.az, null
  br i1 %.not.i3.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !22
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !22
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.av, ptr noundef nonnull %i.az)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.o, %_ZN11ast_manager7inc_refEP3ast.exit.i24, %bb.p
  store ptr %i.as, ptr %i.au, align 8, !tbaa !16
  %i.be = load ptr, ptr %5, align 8, !tbaa !39    ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.be, null
  br i1 %.not.i.i26, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !61, !nonnull !20, !align !21
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !22
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bf, ptr noundef nonnull %i.be)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %.not.wide = icmp eq i64 %i.o, 0
  br i1 %.not.wide, label %_ZNK2qe10def_vector4sizeEv.exit.thread.thread, label %bb.d, !llvm.loop !83

bb.u:                                             ; preds = %bb.l, %bb.f, %_ZN11ast_manager8mk_constEP9func_decl.exit, %bb.e
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.p
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.k, %bb.v
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.v ], [ %i.bm, %bb.u ], [ %i.am, %bb.k ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN10scoped_ptrI13expr_replacerED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  br label %bb.x

_ZNK2qe10def_vector4sizeEv.exit.thread:           ; preds = %bb.b, %_ZNK2qe10def_vector4sizeEv.exit
  %i.bo = icmp eq ptr %i.b, null
  br i1 %i.bo, label %_ZN10scoped_ptrI13expr_replacerED2Ev.exit, label %_ZNK2qe10def_vector4sizeEv.exit.thread.thread

_ZNK2qe10def_vector4sizeEv.exit.thread.thread:    ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZNK2qe10def_vector4sizeEv.exit.thread
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #24, !inline_history !84
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.b)
          to label %_ZN10scoped_ptrI13expr_replacerED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %_ZNK2qe10def_vector4sizeEv.exit.thread.thread
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  call void @__clang_call_terminate(ptr %i.bs) #25
  unreachable

_ZN10scoped_ptrI13expr_replacerED2Ev.exit:        ; preds = %_ZNK2qe10def_vector4sizeEv.exit.thread, %_ZNK2qe10def_vector4sizeEv.exit.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN17expr_substitutionD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.x:                                             ; preds = %.body, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @_ZN17expr_substitutionD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN17expr_substitutionC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #1

declare noundef ptr @_Z21mk_expr_simp_replacerR11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

declare void @_ZN17expr_substitution6insertEP4exprS1_P3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10scoped_ptrI13expr_replacerED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_Z7deallocI13expr_replacerEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #24, !inline_history !85
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.a)
          to label %_Z7deallocI13expr_replacerEvPT_.exit unwind label %bb.c

_Z7deallocI13expr_replacerEvPT_.exit:             ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN17expr_substitutionD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2qe10def_vector7projectEjPKP3app(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_hashtable.38, align 8    ; 12 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 8, ptr %i.c, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.d, align 4, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !90
  %i.f = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 64) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, i8 0, i64 64, i1 false), !tbaa !91
  store ptr %i.f, ptr %3, align 8, !tbaa !93
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.preheader:                                       ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge, label %_ZNK2qe10def_vector4sizeEv.exit.lr.ph

_ZNK2qe10def_vector4sizeEv.exit.lr.ph:            ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %_ZNK2qe10def_vector4sizeEv.exit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  store ptr %i.o, ptr %i.a, align 8, !tbaa !82
  invoke void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !96

bb.c:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ac

_ZNK2qe10def_vector4sizeEv.exit:                  ; preds = %_ZNK2qe10def_vector4sizeEv.exit.lr.ph, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit
  %i.q = phi ptr [ %i.h, %_ZNK2qe10def_vector4sizeEv.exit.lr.ph ], [ %i.do, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit ] ; 4 uses
  %.01954 = phi i32 [ 0, %_ZNK2qe10def_vector4sizeEv.exit.lr.ph ], [ %.1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit ] ; 6 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !15
  %i.t = icmp ult i32 %.01954, %i.s
  br i1 %i.t, label %bb.g, label %.critedge

.critedge:                                        ; preds = %_ZNK2qe10def_vector4sizeEv.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, %.preheader
  %i.u = load ptr, ptr %3, align 8, !tbaa !93     ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.critedge
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.u)
          to label %_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev.exit: ; preds = %.critedge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %bb.ab, %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.g:                                             ; preds = %_ZNK2qe10def_vector4sizeEv.exit
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !79
  %i.aa = zext i32 %.01954 to i64                 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62 ; 3 uses
  %i.af = load i32, ptr %i.c, align 8, !tbaa !86  ; 3 uses
  %i.ag = add i32 %i.af, -1
  %i.ah = and i32 %i.ag, %i.ae                    ; 3 uses
  %i.ai = load ptr, ptr %3, align 8, !tbaa !93    ; 3 uses
  %i.aj = zext i32 %i.ah to i64
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i.i ; 3 uses
  %i.al = zext i32 %i.af to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.al
  %.not34.i.i = icmp eq i32 %i.ah, %i.af
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.j, %bb.g
  %.not2736.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not2736.i.i, label %_ZNK2qe10def_vector4sizeEv.exit31.preheader, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.j
  %.035.i.i = phi ptr [ %i.at, %bb.j ], [ %i.ak, %bb.g ] ; 2 uses
  %i.an = load ptr, ptr %.035.i.i, align 8, !tbaa !91 ; 4 uses
  %.not.i = icmp ult ptr %i.an, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !62
  %i.aq = icmp eq i32 %i.ap, %i.ae
  %i.ar = icmp eq ptr %i.an, %i.ac
  %or.cond.i.i = and i1 %i.ar, %i.aq
  br i1 %or.cond.i.i, label %.loopexit, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.as = icmp eq ptr %i.an, null
  br i1 %i.as, label %_ZNK2qe10def_vector4sizeEv.exit31.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %i.am
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !97

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.ai, %.preheader.i.i ] ; 3 uses
  %i.au = load ptr, ptr %.137.i.i, align 8, !tbaa !91 ; 4 uses
  %i.av = icmp ult ptr %i.au, inttoptr (i64 2 to ptr)
  br i1 %i.av, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph38.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !62
  %i.ay = icmp eq i32 %i.ax, %i.ae
  %i.az = icmp eq ptr %i.au, %i.ac
  %or.cond31.i.i = and i1 %i.az, %i.ay
  br i1 %or.cond31.i.i, label %.loopexit, label %bb.m

bb.l:                                             ; preds = %.lr.ph38.i.i
  %i.ba = icmp eq ptr %i.au, null
  %i.bb = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.bb, %i.ak
  %or.cond43.i.i = select i1 %i.ba, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK2qe10def_vector4sizeEv.exit31.preheader, label %.lr.ph38.i.i.backedge

bb.m:                                             ; preds = %bb.k
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 8 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.ak
  br i1 %.not27.old.i.i, label %_ZNK2qe10def_vector4sizeEv.exit31.preheader, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.m, %bb.l
  %.137.i.i.be = phi ptr [ %i.bb, %bb.l ], [ %.old.i.i, %bb.m ]
  br label %.lr.ph38.i.i, !llvm.loop !98

_ZNK2qe10def_vector4sizeEv.exit31.preheader:      ; preds = %bb.i, %bb.l, %bb.m, %.preheader.i.i
  %indvars.iv.next5991 = add nuw nsw i64 %i.aa, 1 ; 2 uses
  %indvars92 = trunc i64 %indvars.iv.next5991 to i32
  %i.bc = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !15
  %4 = icmp ugt i32 %i.bd, %indvars92
  %.pre58.pre6089 = load ptr, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  br i1 %4, label %.lr.ph93, label %_ZNK2qe10def_vector4sizeEv.exit31.thread

.loopexit:                                        ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !82
  store ptr %i.be, ptr %i.b, align 8, !tbaa !82
  invoke void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6removeERKPS1_(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bf = add i32 %.01954, 1
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.o:                                             ; preds = %.loopexit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.ac

_ZNK2qe10def_vector4sizeEv.exit31.thread:         ; preds = %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit, %_ZNK2qe10def_vector4sizeEv.exit31.preheader
  %.lcssa = phi ptr [ %i.q, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ], [ %i.cx, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ] ; 2 uses
  %.pre58.pre60.lcssa = phi ptr [ %.pre58.pre6089, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ], [ %.pre58.pre60, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ] ; 4 uses
  %i.bh = icmp eq ptr %.pre58.pre60.lcssa, null
  br i1 %i.bh, label %._ZN6vectorIP9func_declLb0EjE4backEv.exit_crit_edge.i, label %bb.p

._ZN6vectorIP9func_declLb0EjE4backEv.exit_crit_edge.i: ; preds = %_ZNK2qe10def_vector4sizeEv.exit31.thread
  %.pre.i = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !15
  %.pre2.i = add i32 %.pre.i, -1
  br label %_ZN6vectorIP9func_declLb0EjE4backEv.exit.i

bb.p:                                             ; preds = %_ZNK2qe10def_vector4sizeEv.exit31.thread
  %i.bi = getelementptr inbounds i8, ptr %.pre58.pre60.lcssa, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !15
  %i.bk = add i32 %i.bj, -1                       ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  br label %_ZN6vectorIP9func_declLb0EjE4backEv.exit.i

_ZN6vectorIP9func_declLb0EjE4backEv.exit.i:       ; preds = %bb.p, %._ZN6vectorIP9func_declLb0EjE4backEv.exit_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre2.i, %._ZN6vectorIP9func_declLb0EjE4backEv.exit_crit_edge.i ], [ %i.bk, %bb.p ]
  %.0.i.i.i32 = phi i64 [ 4294967295, %._ZN6vectorIP9func_declLb0EjE4backEv.exit_crit_edge.i ], [ %i.bl, %bb.p ]
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.pre58.pre60.lcssa, i64 %.0.i.i.i32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !82 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.pre58.pre60.lcssa, i64 -4
  store i32 %.pre-phi.i, ptr %i.bo, align 4, !tbaa !15
  %i.bp = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !20, !align !21
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread, label %bb.q

bb.q:                                             ; preds = %_ZN6vectorIP9func_declLb0EjE4backEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.bs = add i32 %i.br, -1                       ; 2 uses
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !22
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.r, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bp, ptr noundef nonnull %i.bn)
          to label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit unwind label %bb.f

bb.s:                                             ; preds = %bb.z, %bb.v
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

.lr.ph93:                                         ; preds = %_ZNK2qe10def_vector4sizeEv.exit31.preheader, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit
  %.pre58.pre6092 = phi ptr [ %.pre58.pre60, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ], [ %.pre58.pre6089, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ] ; 4 uses
  %indvars.iv.next5995 = phi i64 [ %indvars.iv.next59, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ], [ %indvars.iv.next5991, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ] ; 3 uses
  %indvars.iv5894 = phi i64 [ %indvars.iv.next5995, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ], [ %i.aa, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ] ; 4 uses
  %i.bv = phi ptr [ %i.cx, %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit ], [ %i.q, %_ZNK2qe10def_vector4sizeEv.exit31.preheader ] ; 2 uses
  %5 = and i64 %indvars.iv.next5995, 4294967295   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.pre58.pre6092, i64 %5
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !82 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph93
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !22
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !22
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.t, %.lr.ph93
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.pre58.pre6092, i64 %indvars.iv5894
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !82 ; 3 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !68, !nonnull !20, !align !21
  %.not.i.i.i4.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i4.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !22
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !22
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, ptr noundef nonnull %i.cc)
          to label %.noexc33 unwind label %bb.s

.noexc33:                                         ; preds = %bb.v
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !79
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %.noexc33, %bb.u, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ci = phi ptr [ %i.bv, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.bv, %bb.u ], [ %.pre, %.noexc33 ] ; 4 uses
  %i.cj = phi ptr [ %.pre58.pre6092, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %.pre58.pre6092, %bb.u ], [ %.pre.i.i, %.noexc33 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv5894
  store ptr %i.bx, ptr %i.ck, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %5
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16 ; 3 uses
  %.not.i.i.i.i.i34 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i.i34, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !22
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !22
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.x, %bb.w
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv5894
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !16 ; 3 uses
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !18, !nonnull !20, !align !21
  %.not.i.i.i4.i.i35 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i4.i.i35, label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit, label %bb.y

bb.y:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !22
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.z, label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cs, ptr noundef nonnull %i.cr)
          to label %.noexc37 unwind label %bb.s

.noexc37:                                         ; preds = %bb.z
  %.pre.i.i36 = load ptr, ptr %i.g, align 8, !tbaa !11
  br label %_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit

_ZN10ref_vectorI4expr11ast_managerE3setEjPS0_.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, %bb.y, %.noexc37
  %i.cx = phi ptr [ %i.ci, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i ], [ %i.ci, %bb.y ], [ %.pre.i.i36, %.noexc37 ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv5894
  store ptr %i.cm, ptr %i.cy, align 8, !tbaa !16
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv.next5995, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next59 to i32
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !15
  %6 = icmp ugt i32 %i.da, %indvars
  %.pre58.pre60 = load ptr, ptr %i.j, align 8, !tbaa !79 ; 2 uses
  br i1 %6, label %.lr.ph93, label %_ZNK2qe10def_vector4sizeEv.exit31.thread

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %bb.r
  %.pre59 = load ptr, ptr %i.g, align 8, !tbaa !11, !nonnull !20, !noundef !20
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread: ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, %_ZN6vectorIP9func_declLb0EjE4backEv.exit.i, %bb.q
  %i.db = phi ptr [ %.pre59, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit ], [ %.lcssa, %bb.q ], [ %.lcssa, %_ZN6vectorIP9func_declLb0EjE4backEv.exit.i ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !15
  %i.de = add i32 %i.dd, -1                       ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !16 ; 3 uses
  %i.di = getelementptr inbounds i8, ptr %i.db, i64 -4
  store i32 %i.de, ptr %i.di, align 4, !tbaa !15
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !18, !nonnull !20, !align !21
  %.not.i.i.i.i40 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i40, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.dm = add i32 %i.dl, -1                       ; 2 uses
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !22
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ab, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dj, ptr noundef nonnull %i.dh)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit unwind label %bb.f

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit: ; preds = %bb.aa, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread, %bb.ab, %bb.n
  %.1 = phi i32 [ %i.bf, %bb.n ], [ %.01954, %bb.ab ], [ %.01954, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit.thread ], [ %.01954, %bb.aa ]
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !11  ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %.critedge, label %_ZNK2qe10def_vector4sizeEv.exit, !llvm.loop !99

bb.ac:                                            ; preds = %bb.f, %bb.o, %bb.s, %bb.c
  %.pn26 = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.bg, %bb.o ], [ %i.bu, %bb.s ], [ %i.y, %bb.f ]
  call void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn26
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !90
  %i.e = add i32 %i.d, %i.b
  %i.f = shl i32 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86   ; 2 uses
  %i.i = mul i32 %i.h, 3
  %i.j = icmp ugt i32 %i.f, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(20) %0)
  %.pre = load i32, ptr %i.g, align 8, !tbaa !86
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i32 [ %.pre, %bb.b ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !82     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62   ; 3 uses
  %i.o = add i32 %i.k, -1
  %i.p = and i32 %i.o, %i.n                       ; 3 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %i.r = zext i32 %i.p to i64
  %.idx = shl nuw nsw i64 %i.r, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx ; 2 uses
  %i.t = zext i32 %i.k to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.t
  %.not62 = icmp eq i32 %i.p, %i.k
  br i1 %.not62, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.j, %bb.c
  %.044.lcssa = phi ptr [ null, %bb.c ], [ %.1, %bb.j ]
  %.not4765 = icmp eq i32 %i.p, 0
  br i1 %.not4765, label %._crit_edge, label %.lr.ph68

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %.04464 = phi ptr [ %.1, %bb.j ], [ null, %bb.c ] ; 3 uses
  %.04563 = phi ptr [ %i.ag, %bb.j ], [ %i.s, %bb.c ] ; 5 uses
  %i.v = load ptr, ptr %.04563, align 8, !tbaa !91 ; 4 uses
  %i.w = icmp ult ptr %i.v, inttoptr (i64 2 to ptr)
  br i1 %i.w, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62
  %i.z = icmp eq i32 %i.y, %i.n
  %i.aa = icmp eq ptr %i.v, %i.l
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %.04563, align 8, !tbaa !91
  br label %bb.r

bb.f:                                             ; preds = %.lr.ph
  %i.ab = icmp eq ptr %i.v, null
  br i1 %i.ab, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not49 = icmp eq ptr %.04464, null
  br i1 %.not49, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !90
  %i.ad = add i32 %i.ac, -1
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !90
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.043 = phi ptr [ %.04464, %bb.h ], [ %.04563, %bb.g ]
  store ptr %i.l, ptr %.043, align 8, !tbaa !91
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !89
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.a, align 4, !tbaa !89
  br label %bb.r

bb.j:                                             ; preds = %bb.f, %bb.d
  %.1 = phi ptr [ %.04563, %bb.f ], [ %.04464, %bb.d ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.04563, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.u
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !100

.lr.ph68:                                         ; preds = %.preheader, %bb.q
  %.267 = phi ptr [ %.3, %bb.q ], [ %.044.lcssa, %.preheader ] ; 3 uses
  %.14666 = phi ptr [ %i.as, %bb.q ], [ %i.q, %.preheader ] ; 5 uses
  %i.ah = load ptr, ptr %.14666, align 8, !tbaa !91 ; 4 uses
  %i.ai = icmp ult ptr %i.ah, inttoptr (i64 2 to ptr)
  br i1 %i.ai, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph68
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !62
  %i.al = icmp eq i32 %i.ak, %i.n
  %i.am = icmp eq ptr %i.ah, %i.l
  %or.cond53 = and i1 %i.am, %i.al
  br i1 %or.cond53, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  store ptr %i.l, ptr %.14666, align 8, !tbaa !91
  br label %bb.r

bb.m:                                             ; preds = %.lr.ph68
  %i.an = icmp eq ptr %i.ah, null
  br i1 %i.an, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not48 = icmp eq ptr %.267, null
  br i1 %.not48, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !90
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !90
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.0 = phi ptr [ %.267, %bb.o ], [ %.14666, %bb.n ]
  store ptr %i.l, ptr %.0, align 8, !tbaa !91
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !89
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.a, align 4, !tbaa !89
  br label %bb.r

bb.q:                                             ; preds = %bb.m, %bb.k
  %.3 = phi ptr [ %.14666, %bb.m ], [ %.267, %bb.k ]
  %i.as = getelementptr inbounds nuw i8, ptr %.14666, i64 8 ; 2 uses
  %.not47 = icmp eq ptr %i.as, %i.s
  br i1 %.not47, label %._crit_edge, label %.lr.ph68, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.q, %.preheader
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.20, i32 noundef 390, ptr noundef nonnull @.str.11)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.p, %bb.l, %bb.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6removeERKPS1_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !82     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !62   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %i.f = add i32 %i.e, -1
  %i.g = and i32 %i.f, %i.c                       ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !93     ; 4 uses
  %i.i = zext i32 %i.g to i64
end_hunk_0
