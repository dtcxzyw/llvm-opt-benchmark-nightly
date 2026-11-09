Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/install_tactic?download=true
inline.NumInlined: 9911
inline.NumDeleted: 2159
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv:bb.a
.lr.ph37.i:                                       ; preds = %.preheader.i, %bb.f
  %.136.i = phi ptr [ %i.z, %bb.f ], [ %i.f, %.preheader.i ] ; 3 uses
  %i.x = load ptr, ptr %.136.i, align 8, !tbaa !369
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph37.i
  store i64 %i.o, ptr %.136.i, align 8, !tbaa !163
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph37.i
  %i.z = getelementptr inbounds nuw i8, ptr %.136.i, i64 8 ; 2 uses
  %.not30.i = icmp eq ptr %i.z, %i.t
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph37.i, !llvm.loop !664

._crit_edge.i:                                    ; preds = %bb.f, %.preheader.i
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.347, i32 noundef 213, ptr noundef nonnull @.str.344)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.e, %bb.c, %.lr.ph41.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.02839.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, %i.k
  br i1 %.not.i, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit, label %.lr.ph41.i, !llvm.loop !665

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit: ; preds = %bb.g
  %.pre = load ptr, ptr %0, align 8, !tbaa !366
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit: ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit
  %i.ab = phi ptr [ %.pre, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit.loopexit ], [ %i.g, %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE11alloc_tableEj.exit ] ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ab)
  br label %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit

_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12delete_tableEv.exit: ; preds = %_ZN14core_hashtableI14obj_hash_entryI4exprE12obj_ptr_hashIS1_E6ptr_eqIS1_EE10move_tableEPS2_jS8_j.exit, %bb.h
  store ptr %i.f, ptr %0, align 8, !tbaa !366
  store i32 %i.c, ptr %i.a, align 8, !tbaa !367
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.ad, align 8, !tbaa !377
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN13rewriter_core5frameELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !337    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !162
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !162
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !337
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !162  ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not27 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not27
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.338, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !191
  %i.p = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !194  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !193
  %i.w = load i64, ptr %i.q, align 8, !tbaa !192
  store i64 %i.w, ptr %i.o, align 8, !tbaa !192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !194
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !194
  store ptr %i.q, ptr %1, align 8, !tbaa !193
  store i64 0, ptr %i.y, align 8, !tbaa !194
  store i8 0, ptr %i.q, align 8, !tbaa !192
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #28
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !193   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !192
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @__cxa_free_exception(ptr %i.m) #24
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn32 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn32

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ah) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.aj, ptr %0, align 8, !tbaa !337
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef zeroext i1 @_ZN23bvarray2uf_rewriter_cfg10reduce_varEP3varR7obj_refI4expr11ast_managerERS2_I3appS4_E(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156), ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.dc
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !666

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !334, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN23bvarray2uf_rewriter_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(128) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_0
begin_hunk_1_@_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.um, label %bb.eg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.eg:                                            ; preds = %bb.ef, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.si)
  %.pre.i.i238 = load ptr, ptr %i.si, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.ef, %bb.eg
  %i.un = phi i32 [ %.pre2.i.i240, %bb.eg ], [ %i.uj, %bb.ef ] ; 2 uses
  %i.uo = phi ptr [ %.pre.i.i238, %bb.eg ], [ %i.ug, %bb.ef ] ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -4
  %i.uq = zext i32 %i.un to i64
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.uq
  store ptr %i.uc, ptr %i.ur, align 8, !tbaa !163
  %i.us = add i32 %i.un, 1
  store i32 %i.us, ptr %i.up, align 4, !tbaa !162
  %i.ut = load i32, ptr %i.a, align 8
  %i.uu = trunc i32 %i.ut to i1
  br i1 %i.uu, label %bb.eh, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.eh:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.uv = load ptr, ptr %i.qu, align 8, !tbaa !293
  %i.uw = load ptr, ptr %i.sr, align 8, !tbaa !233
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.uw, ptr noundef %i.uv)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.eh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !337 ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -4 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !162 ; 2 uses
  %i.vb = add i32 %i.va, -1                       ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !162
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.vd = add i32 %i.va, -2
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8
  %i.vi = or i32 %i.vh, 2
  store i32 %i.vi, ptr %i.vg, align 8
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245

bb.ei:                                            ; preds = %bb.dq, %bb.dm, %bb.di, %bb.dg, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.vj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.el

bb.ej:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 515, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245

bb.ek:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245

default.unreachable341:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ek, %bb.ej
  ret void

bb.el:                                            ; preds = %bb.ei, %.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %.loopexit.split-lp ], [ %i.vj, %bb.ei ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.478, align 8         ; 6 uses
  %8 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !667

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !668

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE11process_varILb0EEEvP3var:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !141
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !161 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162 ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !162
  %i.cc = icmp eq i32 %i.bz, %i.cb
  br i1 %i.cc, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.k:                                             ; preds = %bb.j, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
  %.pre.i.i34 = load ptr, ptr %i.bv, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.j, %bb.k
  %i.cd = phi i32 [ %.pre2.i.i36, %bb.k ], [ %i.bz, %bb.j ] ; 2 uses
  %i.ce = phi ptr [ %.pre.i.i34, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.cg = zext i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cg
  store ptr %i.br, ptr %i.ch, align 8, !tbaa !163
  %i.ci = add i32 %i.cd, 1
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !162
  br label %bb.r

bb.l:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !75
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.cm, ptr noundef nonnull %i.bc, i32 noundef 0, i32 noundef %i.bo, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.o

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %2, align 8, !tbaa !233
  %i.cp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef %i.co)
          to label %bb.m unwind label %bb.o       ; 0 uses

bb.m:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.cq = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.bc, i32 noundef %i.bo, ptr noundef %i.cq)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.r

bb.o:                                             ; preds = %bb.l, %bb.m, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.cr

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !141
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !141
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !161 ; 4 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.cy = getelementptr inbounds i8, ptr %i.cw, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !162 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !162
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.q, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.q:                                             ; preds = %bb.p, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cv)
  %.pre.i.i40 = load ptr, ptr %i.cv, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.p, %bb.q
  %i.dd = phi i32 [ %.pre2.i.i42, %bb.q ], [ %i.cz, %bb.p ] ; 2 uses
  %i.de = phi ptr [ %.pre.i.i40, %bb.q ], [ %i.cw, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dg = zext i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  store ptr %i.bc, ptr %i.dh, align 8, !tbaa !163
  %i.di = add i32 %i.dd, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !162
  br label %bb.r

bb.r:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !337 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.r
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !162 ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.dp = add i32 %i.dn, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = or i32 %i.dt, 2
  store i32 %i.du, ptr %i.ds, align 8
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.h, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !141
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !161 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.eb = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162 ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !162
  %i.ef = icmp eq i32 %i.ec, %i.ee
  br i1 %i.ef, label %bb.t, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.t:                                             ; preds = %bb.s, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
  %.pre.i.i49 = load ptr, ptr %i.dy, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.s, %bb.t
  %i.eg = phi i32 [ %.pre2.i.i51, %bb.t ], [ %i.ec, %bb.s ] ; 2 uses
  %i.eh = phi ptr [ %.pre.i.i49, %bb.t ], [ %i.dz, %bb.s ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -4
  %i.ej = zext i32 %i.eg to i64
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ej
  store ptr %1, ptr %i.ek, align 8, !tbaa !163
  %i.el = add i32 %i.eg, 1
  store i32 %i.el, ptr %i.ei, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.r, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52, %_ZN7obj_refI4expr11ast_managerEaSEPS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !672

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !334, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN23bvarray2uf_rewriter_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(128) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !337 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !162
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.ck = add i32 %i.ch, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.q, %bb.al
  %i.cx = phi ptr [ %i.go, %bb.al ], [ %i.cs, %bb.q ]
  %i.cy = phi ptr [ %i.gm, %bb.al ], [ %i.cq, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.cy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.cz = and i32 %i.cb, -13
  %i.da = or disjoint i32 %i.cz, 4
  store i32 %i.da, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.ao, 3
end_hunk_2
begin_hunk_3_@_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.nk = zext i32 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nk
  store ptr %i.mx, ptr %i.nl, align 8, !tbaa !163
  %i.nm = add i32 %i.nh, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !162
  %i.nn = load i32, ptr %i.a, align 8
  %i.no = trunc i32 %i.nn to i1
  br i1 %i.no, label %bb.bs, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.bs:                                            ; preds = %bb.br
  %i.np = load ptr, ptr %i.ky, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.np)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.bs, %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !337 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !162 ; 2 uses
  %i.nu = add i32 %i.nt, -1                       ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !162
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.nw = add i32 %i.nt, -2
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8
  %i.ob = or i32 %i.oa, 2
  store i32 %i.ob, ptr %i.nz, align 8
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.oc = load ptr, ptr %4, align 8, !tbaa !233   ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit200
  %i.od = load ptr, ptr %i.jw, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !141
  %i.og = add i32 %i.of, -1                       ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !141
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.bu, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.od, ptr noundef nonnull %i.oc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit200, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit162

bb.bw:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit162

default.unreachable263:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bx:                                            ; preds = %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !673

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI23bvarray2uf_rewriter_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !674

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_3
begin_hunk_4_@_ZN25blast_term_ite_simplifier6rw_cfg11mk_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE:bb.a
  %i.do = load ptr, ptr %6, align 8, !tbaa !233   ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.do, null
  br i1 %.not.i.i52, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.dp = load ptr, ptr %i.as, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !141
  %i.ds = add i32 %i.dr, -1                       ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !141
  %i.dt = icmp eq i32 %i.ds, 0
  br i1 %i.dt, label %bb.ah, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dp, ptr noundef nonnull %i.do)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.not.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.dw = load ptr, ptr %i.ar, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !141
  %i.dz = add i32 %i.dy, -1                       ; 2 uses
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !141
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dw, ptr noundef nonnull %i.bk)
          to label %bb.an unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  call void @__clang_call_terminate(ptr %i.ec) #25
  unreachable

bb.am:                                            ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.t ], [ %i.cg, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn

_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread: ; preds = %bb.f, %bb.e, %_ZNK11ast_manager6is_iteEPK4expr.exit.i, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !692

bb.an:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread, %bb.d, %bb.an, %bb.c, %_ZNK11ast_manager6is_iteEPK9func_decl.exit
  %.4 = phi i32 [ 5, %bb.c ], [ 5, %_ZNK11ast_manager6is_iteEPK9func_decl.exit ], [ %.127, %bb.an ], [ 5, %bb.d ], [ 5, %_ZNK11ast_manager6is_iteEPK4exprRPS0_S4_S4_.exit.thread ]
  ret i32 %.4
}

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_S1_(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE15check_max_stepsEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !407, !nonnull !165, !align !166
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load i32, ptr %i.c, align 8, !tbaa !406
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !404
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN11common_msgs15g_max_steps_msgE, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.g, align 8, !tbaa !45
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !191
  %i.j = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !194  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.j, ptr %i.h, align 8, !tbaa !193
  %i.q = load i64, ptr %i.k, align 8, !tbaa !192
  store i64 %i.q, ptr %i.i, align 8, !tbaa !192
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !194
  br label %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.r = phi i64 [ %i.n, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.r, ptr %i.t, align 8, !tbaa !194
  store ptr %i.k, ptr %1, align 8, !tbaa !193
  store i64 0, ptr %i.s, align 8, !tbaa !194
  store i8 0, ptr %i.k, align 8, !tbaa !192
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18rewriter_exception, i64 16), ptr %i.g, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI18rewriter_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #28
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %1, align 8, !tbaa !193    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.k
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.x = load i64, ptr %i.k, align 8, !tbaa !192
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  call void @__cxa_free_exception(ptr %i.g) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.z, %bb.f ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %_ZN18rewriter_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable342 [
    i32 0, label %bb.b
    i32 1, label %bb.db
    i32 2, label %bb.ei
    i32 3, label %bb.ej
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit246, !llvm.loop !696

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !407, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %i.cc = invoke noundef i32 @_ZN25blast_term_ite_simplifier6rw_cfg11mk_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca)
          to label %_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit: ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.bx, label %bb.t

bb.t:                                             ; preds = %_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.t
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.v, %bb.u, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_4
begin_hunk_5_@_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.al
    i32 2, label %bb.aw
    i32 3, label %bb.bv
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162, !llvm.loop !699

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !407, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = invoke noundef i32 @_ZN25blast_term_ite_simplifier6rw_cfg11mk_app_coreEP9func_decljPKP4exprR7obj_refIS3_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.an, 5
  br i1 %.not, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %_ZN25blast_term_ite_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E.exit
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !162 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = icmp ugt i32 %i.as, %i.ao
  br i1 %i.av, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.aw = zext i32 %i.ao to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aw
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.be, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ax, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ay = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.az = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !141
  %i.bc = add i32 %i.bb, -1                       ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !141
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.az, ptr noundef nonnull %i.ay)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bf = icmp ult ptr %i.be, %i.au
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bg = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.ap, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  store i32 %i.ao, ptr %i.bh, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.g
  %i.bi = phi ptr [ %i.bg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.g ] ; 4 uses
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !141
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.j, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bn = icmp eq ptr %i.bi, null
  br i1 %i.bn, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bo = getelementptr inbounds i8, ptr %i.bi, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !162 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !162
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.m

bb.m:                                             ; preds = %.noexc92, %bb.k
  %i.bt = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bp, %bb.k ] ; 2 uses
  %i.bu = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bi, %bb.k ] ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bw = zext i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bw
  store ptr %i.bj, ptr %i.bx, align 8, !tbaa !163
  %i.by = add i32 %i.bt, 1
  store i32 %i.by, ptr %i.bv, align 4, !tbaa !162
  %i.bz = icmp eq i32 %i.an, 4
  %i.ca = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.bz, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.o, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.o, %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !337 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !162 ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !162
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cj = add i32 %i.cg, -2
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = or i32 %i.cn, 2
  store i32 %i.co, ptr %i.cm, align 8
  br label %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cp = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cp, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.p

bb.p:                                             ; preds = %_ZN12rewriter_tplIN25blast_term_ite_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !141
  %i.cu = add i32 %i.ct, -1                       ; 2 uses
  store i32 %i.cu, ptr %i.cs, align 4, !tbaa !141
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.p, %bb.ak
  %i.cw = phi ptr [ %i.gn, %bb.ak ], [ %i.cr, %bb.p ]
  %i.cx = phi ptr [ %i.gl, %bb.ak ], [ %i.cp, %bb.p ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cw, ptr noundef nonnull %i.cx)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  %i.cy = and i32 %i.ca, -13
  %i.cz = or disjoint i32 %i.cy, 4
  store i32 %i.cz, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.an, 3
  %i.da = add i32 %i.an, 1
end_hunk_5
begin_hunk_6_@_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_varILb1EEEvP3var:bb.a
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN22injectivity_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %2, 2
  br i1 %.not, label %bb.b, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !391  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread, label %_ZNK4decl13get_family_idEv.exit.thread.i.i

_ZNK4decl13get_family_idEv.exit.thread.i.i:       ; preds = %bb.b
  %i.d = load i32, ptr %i.b, align 8, !tbaa !395
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

_ZNK11ast_manager5is_eqEPK9func_decl.exit:        ; preds = %_ZNK4decl13get_family_idEv.exit.thread.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !408
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.c:                                             ; preds = %_ZNK11ast_manager5is_eqEPK9func_decl.exit
  %i.i = load ptr, ptr %3, align 8, !tbaa !163    ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, 65535
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !163  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 65535
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !372  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !372
  %.not16 = icmp eq ptr %i.u, %i.w
  br i1 %.not16, label %bb.f, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !364
  %.not17 = icmp eq i32 %i.y, 1
  br i1 %.not17, label %bb.g, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !364
  %.not18 = icmp eq i32 %i.aa, 1
  br i1 %.not18, label %bb.h, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !753, !nonnull !165, !align !166
  %i.ad = tail call noundef zeroext i1 @_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE8containsEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef %i.u)
  br i1 %i.ad, label %bb.i, label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %0, align 8, !tbaa !754, !nonnull !165, !align !166
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !163
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !163
  %i.aj = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.ae, i32 noundef 0, i32 noundef 2, ptr noundef %i.ag, ptr noundef %i.ai)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.aj) ; 0 uses
  %i.al = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI3app11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null) ; 0 uses
  br label %_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread

_ZNK11ast_manager5is_eqEPK9func_decl.exit.thread: ; preds = %bb.b, %_ZNK4decl13get_family_idEv.exit.thread.i.i, %bb.i, %bb.e, %bb.g, %bb.f, %bb.h, %bb.c, %bb.d, %bb.a, %_ZNK11ast_manager5is_eqEPK9func_decl.exit
  %.1 = phi i32 [ 5, %bb.a ], [ 5, %bb.c ], [ 5, %_ZNK11ast_manager5is_eqEPK9func_decl.exit ], [ 5, %bb.d ], [ 5, %bb.f ], [ 5, %bb.e ], [ 4, %bb.i ], [ 5, %bb.g ], [ 5, %bb.h ], [ 5, %_ZNK4decl13get_family_idEv.exit.thread.i.i ], [ 5, %bb.b ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE8containsEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !374  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !426  ; 3 uses
  %i.e = add i32 %i.d, -1
  %i.f = and i32 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !432    ; 3 uses
  %i.h = zext i32 %i.f to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i ; 3 uses
  %i.j = zext i32 %i.d to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.j
  %.not34.i.i = icmp eq i32 %i.f, %i.d
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.a
  %.not2736.i.i = icmp eq i32 %i.f, 0
  br i1 %.not2736.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %.lr.ph38.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.035.i.i = phi ptr [ %i.r, %bb.d ], [ %i.i, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.035.i.i, align 8, !tbaa !436 ; 4 uses
  %.not.not = icmp uge ptr %i.l, inttoptr (i64 2 to ptr) ; 3 uses
  br i1 %.not.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !374
  %i.o = icmp eq i32 %i.n, %i.b
  %i.p = icmp eq ptr %i.l, %1
  %or.cond.i.i = and i1 %i.p, %i.o
  br i1 %or.cond.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq ptr %i.l, null
  br i1 %i.q, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !19

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.g, %.preheader.i.i ] ; 3 uses
  %i.s = load ptr, ptr %.137.i.i, align 8, !tbaa !436 ; 4 uses
  %i.t = icmp ult ptr %i.s, inttoptr (i64 2 to ptr)
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph38.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !374
  %i.w = icmp eq i32 %i.v, %i.b
  %i.x = icmp eq ptr %i.s, %1
  %or.cond31.i.i = and i1 %i.x, %i.w
  br i1 %or.cond31.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %bb.g

bb.f:                                             ; preds = %.lr.ph38.i.i
  %i.y = icmp eq ptr %i.s, null
  %i.z = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.z, %i.i
  %or.cond43.i.i = select i1 %i.y, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %.lr.ph38.i.i.backedge

bb.g:                                             ; preds = %bb.e
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 16 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.i
  br i1 %.not27.old.i.i, label %_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.g, %bb.f
  %.137.i.i.be = phi ptr [ %i.z, %bb.f ], [ %.old.i.i, %bb.g ]
  br label %.lr.ph38.i.i, !llvm.loop !20

_ZNK7obj_mapI9func_declP13obj_hashtableIS0_EE9find_coreEPS0_.exit: ; preds = %bb.b, %bb.c, %bb.e, %bb.f, %bb.g, %.preheader.i.i
  %.026.i.i = phi i1 [ false, %.preheader.i.i ], [ true, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ %.not.not, %bb.c ], [ %.not.not, %bb.b ]
  ret i1 %.026.i.i
}

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.dc
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245, !llvm.loop !755

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !451, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN22injectivity_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_6
begin_hunk_7_@_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.um, label %bb.eg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.eg:                                            ; preds = %bb.ef, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.si)
  %.pre.i.i238 = load ptr, ptr %i.si, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.ef, %bb.eg
  %i.un = phi i32 [ %.pre2.i.i240, %bb.eg ], [ %i.uj, %bb.ef ] ; 2 uses
  %i.uo = phi ptr [ %.pre.i.i238, %bb.eg ], [ %i.ug, %bb.ef ] ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -4
  %i.uq = zext i32 %i.un to i64
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.uq
  store ptr %i.uc, ptr %i.ur, align 8, !tbaa !163
  %i.us = add i32 %i.un, 1
  store i32 %i.us, ptr %i.up, align 4, !tbaa !162
  %i.ut = load i32, ptr %i.a, align 8
  %i.uu = trunc i32 %i.ut to i1
  br i1 %i.uu, label %bb.eh, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.eh:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.uv = load ptr, ptr %i.qu, align 8, !tbaa !293
  %i.uw = load ptr, ptr %i.sr, align 8, !tbaa !233
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.uw, ptr noundef %i.uv)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.eh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !337 ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -4 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !162 ; 2 uses
  %i.vb = add i32 %i.va, -1                       ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !162
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.vd = add i32 %i.va, -2
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8
  %i.vi = or i32 %i.vh, 2
  store i32 %i.vi, ptr %i.vg, align 8
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245

bb.ei:                                            ; preds = %bb.dq, %bb.dm, %bb.di, %bb.dg, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.vj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.el

bb.ej:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 515, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245

bb.ek:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245

default.unreachable341:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ek, %bb.ej
  ret void

bb.el:                                            ; preds = %bb.ei, %.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %.loopexit.split-lp ], [ %i.vj, %bb.ei ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.478, align 8         ; 6 uses
  %8 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !756

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !757

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_7
begin_hunk_8_@_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162, !llvm.loop !760

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !451, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN22injectivity_simplifier6rw_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS3_11ast_managerERS7_I3appS8_E(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !337 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !162
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.ck = add i32 %i.ch, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.q, %bb.al
  %i.cx = phi ptr [ %i.go, %bb.al ], [ %i.cs, %bb.q ]
  %i.cy = phi ptr [ %i.gm, %bb.al ], [ %i.cq, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.cy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.cz = and i32 %i.cb, -13
  %i.da = or disjoint i32 %i.cz, 4
  store i32 %i.da, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.ao, 3
end_hunk_8
begin_hunk_9_@_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.nk = zext i32 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nk
  store ptr %i.mx, ptr %i.nl, align 8, !tbaa !163
  %i.nm = add i32 %i.nh, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !162
  %i.nn = load i32, ptr %i.a, align 8
  %i.no = trunc i32 %i.nn to i1
  br i1 %i.no, label %bb.bs, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.bs:                                            ; preds = %bb.br
  %i.np = load ptr, ptr %i.ky, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.np)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.bs, %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !337 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !162 ; 2 uses
  %i.nu = add i32 %i.nt, -1                       ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !162
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.nw = add i32 %i.nt, -2
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8
  %i.ob = or i32 %i.oa, 2
  store i32 %i.ob, ptr %i.nz, align 8
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.oc = load ptr, ptr %4, align 8, !tbaa !233   ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit200
  %i.od = load ptr, ptr %i.jw, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !141
  %i.og = add i32 %i.of, -1                       ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !141
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.bu, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.od, ptr noundef nonnull %i.oc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit200, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162

bb.bw:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162

default.unreachable263:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bx:                                            ; preds = %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !761

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplIN22injectivity_simplifier6rw_cfgEE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !762

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_9
begin_hunk_10_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_varILb1EEEvP3var:bb.a
_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39
  %i.am = sub i32 %i.u, %i.al                     ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !338
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !162
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !163
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !162
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !233
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !141
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !163
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !162
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !337 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !162 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !141
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable306 [
    i32 0, label %bb.b
    i32 1, label %bb.av
    i32 2, label %bb.cc
    i32 3, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %6 = and i32 %i.h, -64
  %i.n = add i32 %6, 64
  %7 = and i32 %i.h, 63
  %8 = or disjoint i32 %i.n, %7
  store i32 %8, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !832

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 2 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ah, %bb.aa, %bb.l, %bb.n, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.k, %bb.r, %bb.aq, %bb.an, %bb.ak, %bb.af, %bb.ad, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %lpad.loopexit.split-lp311 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.ce

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 8 uses
  %i.by = load i32, ptr %i.a, align 8
  %i.bz = and i32 %i.by, 2
  %.not67 = icmp eq i32 %i.bz, 0
  br i1 %.not67, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.cb = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.ca, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef %i.cb)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !233
  %i.cf = invoke noundef ptr @_ZN11ast_manager10mk_rewriteEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.cd, ptr noundef nonnull %1, ptr noundef %i.ce)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ch = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI3app11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef %i.cf)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.x:                                             ; preds = %bb.s
  %i.ci = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull %1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cj = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit138, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128

_ZN6vectorIP4exprLb0EjE3endEv.exit.i128:          ; preds = %bb.y
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !162 ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.co
  %i.cq = icmp ugt i32 %i.cn, %i.cj
  br i1 %i.cq, label %.lr.ph.i.i130.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i129

.lr.ph.i.i130.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i128
  %i.cr = zext i32 %i.cj to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cr
  br label %.lr.ph.i.i130
end_hunk_10
begin_hunk_11_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.ml, label %bb.bz, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.bz:                                            ; preds = %bb.by, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kh)
  %.pre.i.i238 = load ptr, ptr %i.kh, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.by, %bb.bz
  %i.mm = phi i32 [ %.pre2.i.i240, %bb.bz ], [ %i.mi, %bb.by ] ; 2 uses
  %i.mn = phi ptr [ %.pre.i.i238, %bb.bz ], [ %i.mf, %bb.by ] ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -4
  %i.mp = zext i32 %i.mm to i64
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %i.mp
  store ptr %i.mb, ptr %i.mq, align 8, !tbaa !163
  %i.mr = add i32 %i.mm, 1
  store i32 %i.mr, ptr %i.mo, align 4, !tbaa !162
  %i.ms = load i32, ptr %i.a, align 8
  %i.mt = trunc i32 %i.ms to i1
  br i1 %i.mt, label %bb.ca, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.ca:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mu = load ptr, ptr %i.it, align 8, !tbaa !293
  %i.mv = load ptr, ptr %i.kq, align 8, !tbaa !233
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.mv, ptr noundef %i.mu)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.ca, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !337 ; 2 uses
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 -4 ; 2 uses
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !162 ; 2 uses
  %i.na = add i32 %i.mz, -1                       ; 2 uses
  store i32 %i.na, ptr %i.my, align 4, !tbaa !162
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.nc = add i32 %i.mz, -2
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.mx, i64 %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 8
  %i.nh = or i32 %i.ng, 2
  store i32 %i.nh, ptr %i.nf, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

bb.cb:                                            ; preds = %bb.bj, %bb.bf, %bb.bb, %bb.az, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.ni = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ce

bb.cc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 515, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

bb.cd:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245

default.unreachable306:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.cd, %bb.cc
  ret void

bb.ce:                                            ; preds = %bb.cb, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp311, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ni, %bb.cb ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.478, align 8         ; 6 uses
  %8 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !833

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !834

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_11
begin_hunk_12_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable250 [
    i32 0, label %bb.b
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %bb.bc
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 2 uses
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !837

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %.invoke, %bb.r, %bb.p, %bb.n, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bd

bb.g:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ai = and i32 %i.h, 2
  %.not83 = icmp eq i32 %i.ai, 0
  br i1 %.not83, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i32 %i.ad to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.aj
  %i.al = sub i32 %.0.i.i, %i.ad
  %i.am = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.v, i32 noundef %i.al, ptr noundef %i.ak)
          to label %.invoke unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %1, %bb.g ]
  %i.ao = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7obj_refI4expr11ast_managerEaSEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.invoke
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111

_ZN6vectorIP4exprLb0EjE3endEv.exit.i111:          ; preds = %bb.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i113.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

.lr.ph.i.i113.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %.lr.ph.i.i113.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.06.i.i114 = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 ], [ %i.ay, %.lr.ph.i.i113.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i114, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i115 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i115, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i113
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.k, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116: ; preds = %bb.k, %bb.j, %.lr.ph.i.i113
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i114, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i113, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i116
  %.pre.i118 = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i119 = icmp eq ptr %.pre.i118, null
  br i1 %.not.i.i119, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111
  %i.bh = phi ptr [ %.pre.i118, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i111 ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117, %bb.i
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i112 ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i117 ], [ null, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i122 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i122, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123: ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit121
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i123
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc127 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc127:                                        ; preds = %bb.n
  %.pre.i.i124 = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i125 = getelementptr inbounds i8, ptr %.pre.i.i124, i64 -4
  %.pre2.i.i126 = load i32, ptr %.phi.trans.insert.i.i125, align 4, !tbaa !162
  br label %bb.o

bb.o:                                             ; preds = %.noexc127, %bb.m
  %i.bu = phi i32 [ %.pre2.i.i126, %.noexc127 ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i124, %.noexc127 ], [ %i.bj, %bb.m ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = trunc i32 %i.ca to i1
  br i1 %i.cb, label %bb.p, label %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130

bb.p:                                             ; preds = %bb.o
  %i.cc = load ptr, ptr %i.ah, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cc)
          to label %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130: ; preds = %bb.o, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !337 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !162 ; 2 uses
  %i.ch = add i32 %i.cg, -1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !162
  %i.ci = load ptr, ptr %i.ah, align 8, !tbaa !233 ; 2 uses
  %.not.i131 = icmp eq ptr %1, %i.ci
  %i.cj = icmp eq i32 %i.ch, 0
  %or.cond = select i1 %.not.i131, i1 true, i1 %i.cj
  br i1 %or.cond, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i: ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.ck = add i32 %i.cg, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  %.pr = load ptr, ptr %i.ah, align 8, !tbaa !233
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i, %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130
  %i.cq = phi ptr [ %.pr, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i.i ], [ %i.ci, %_ZN12rewriter_tplI15elim_bounds_cfgE12cache_resultILb0EEEvP4exprS4_P3appb.exit130 ] ; 3 uses
  %.not.i4.i132 = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i132, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4exprS3_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.r, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.r:                                             ; preds = %bb.q
end_hunk_12
begin_hunk_13_@_ZN12rewriter_tplI15elim_bounds_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.jn = getelementptr inbounds i8, ptr %i.jm, i64 -4
  %i.jo = zext i32 %i.jl to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jo
  store ptr %i.jb, ptr %i.jp, align 8, !tbaa !163
  %i.jq = add i32 %i.jl, 1
  store i32 %i.jq, ptr %i.jn, align 4, !tbaa !162
  %i.jr = load i32, ptr %i.a, align 8
  %i.js = trunc i32 %i.jr to i1
  br i1 %i.js, label %bb.ay, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.ay:                                            ; preds = %bb.ax
  %i.jt = load ptr, ptr %i.hc, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.jt)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.ay, %bb.ax
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !337 ; 2 uses
  %i.jw = getelementptr inbounds i8, ptr %i.jv, i64 -4 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !162 ; 2 uses
  %i.jy = add i32 %i.jx, -1                       ; 2 uses
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !162
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.ka = add i32 %i.jx, -2
  %i.kb = zext i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %i.jv, i64 %i.kb
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8 ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = or i32 %i.ke, 2
  store i32 %i.kf, ptr %i.kd, align 8
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.kg = load ptr, ptr %4, align 8, !tbaa !233   ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit200
  %i.kh = load ptr, ptr %i.ga, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !141
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 4, !tbaa !141
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.ba, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, ptr noundef nonnull %i.kg)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.km = landingpad { ptr, i32 }
          catch ptr null
  %i.kn = extractvalue { ptr, i32 } %i.km, 0
  call void @__clang_call_terminate(ptr %i.kn) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit200, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162

bb.bc:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162

default.unreachable250:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI15elim_bounds_cfgE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bc, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bd:                                            ; preds = %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp259, %.loopexit.split-lp209.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI15elim_bounds_cfgE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !838

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI15elim_bounds_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !839

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 10 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_13
begin_hunk_14_@_ZN12rewriter_tplI17elim_term_ite_cfgE11process_varILb1EEEvP3var:bb.a
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !162
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !163
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !162
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !233
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !141
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !163
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !162
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !337 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !162 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !141
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

declare noundef i32 @_ZN17elim_term_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI17elim_term_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.dc
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI17elim_term_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !851

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !506, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN17elim_term_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(40) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_14
begin_hunk_15_@_ZN12rewriter_tplI17elim_term_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE:bb.a
  br i1 %i.um, label %bb.eg, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

bb.eg:                                            ; preds = %bb.ef, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i237
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.si)
  %.pre.i.i238 = load ptr, ptr %i.si, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i239 = getelementptr inbounds i8, ptr %.pre.i.i238, i64 -4
  %.pre2.i.i240 = load i32, ptr %.phi.trans.insert.i.i239, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241: ; preds = %bb.ef, %bb.eg
  %i.un = phi i32 [ %.pre2.i.i240, %bb.eg ], [ %i.uj, %bb.ef ] ; 2 uses
  %i.uo = phi ptr [ %.pre.i.i238, %bb.eg ], [ %i.ug, %bb.ef ] ; 2 uses
  %i.up = getelementptr inbounds i8, ptr %i.uo, i64 -4
  %i.uq = zext i32 %i.un to i64
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.uq
  store ptr %i.uc, ptr %i.ur, align 8, !tbaa !163
  %i.us = add i32 %i.un, 1
  store i32 %i.us, ptr %i.up, align 4, !tbaa !162
  %i.ut = load i32, ptr %i.a, align 8
  %i.uu = trunc i32 %i.ut to i1
  br i1 %i.uu, label %bb.eh, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

bb.eh:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.uv = load ptr, ptr %i.qu, align 8, !tbaa !293
  %i.uw = load ptr, ptr %i.sr, align 8, !tbaa !233
  tail call void @_ZN13rewriter_core12cache_resultEP4exprS1_P3app(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef %i.uw, ptr noundef %i.uv)
  br label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243: ; preds = %bb.eh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit241
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !337 ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.uy, i64 -4 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !162 ; 2 uses
  %i.vb = add i32 %i.va, -1                       ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 4, !tbaa !162
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243
  %i.vd = add i32 %i.va, -2
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [16 x i8], ptr %i.uy, i64 %i.ve
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load i32, ptr %i.vg, align 8
  %i.vi = or i32 %i.vh, 2
  store i32 %i.vi, ptr %i.vg, align 8
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245

bb.ei:                                            ; preds = %bb.dq, %bb.dm, %bb.di, %bb.dg, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE8pop_backEv.exit200
  %i.vj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.el

bb.ej:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 515, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245

bb.ek:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245

default.unreachable341:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit245: ; preds = %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i244, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i243, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.ek, %bb.ej
  ret void

bb.el:                                            ; preds = %bb.ei, %.loopexit.split-lp
  %.pn70.pn.pn = phi { ptr, i32 } [ %.pn70.pn, %.loopexit.split-lp ], [ %i.vj, %bb.ei ]
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI17elim_term_ite_cfgE18process_quantifierILb1EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %7 = alloca %class.obj_ref.478, align 8         ; 6 uses
  %8 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not305 = icmp eq i32 %i.b, 0
  br i1 %.not305, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.075295 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i110 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds i8, ptr %.pre.i110, i64 -4
  %.pre2.i112 = load i32, ptr %.phi.trans.insert.i111, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i112, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i110, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.075295, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !852

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i113 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %9 = and i32 %i.ba, -64
  %i.bu = add i32 %9, 64
  %10 = and i32 %i.ba, 63
  %11 = or disjoint i32 %i.bu, %10
  store i32 %11, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI17elim_term_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i113, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit288, !llvm.loop !853

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit287, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit287.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn105.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit287.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre330 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre333 = zext i32 %.pre330 to i64
  %.pre334 = ptrtoint ptr %.pre to i64
  br label %.loopexit287

.loopexit287:                                     ; preds = %.loopexit287.loopexit, %bb.o
  %.pre-phi335 = phi i64 [ %.pre334, %.loopexit287.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre333, %.loopexit287.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi335, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i114 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i114
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

.lr.ph.i.i115:                                    ; preds = %.loopexit287, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ null, %.loopexit287 ] ; 4 uses
  %.sroa.04.09.i.i116 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119 ], [ %i.do, %.loopexit287 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i116, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i117 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i117, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118: ; preds = %bb.t, %.lr.ph.i.i115
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i118
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i120:                                      ; preds = %bb.v
  %.pre.i.i.i.i121 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i122 = getelementptr inbounds i8, ptr %.pre.i.i.i.i121, i64 -4
  %.pre2.i.i.i.i123 = load i32, ptr %.phi.trans.insert.i.i.i.i122, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119: ; preds = %.noexc.i120, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i121, %.noexc.i120 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i123, %.noexc.i120 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i116, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124, label %.lr.ph.i.i115

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i119, %.loopexit287
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge299, label %.lr.ph298

.lr.ph298:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge299:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124
  %.077.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit124 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge299
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.077.lcssa
  br i1 %i.ex, label %.lr.ph.i.i125.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i125.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.077.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i125

.lr.ph.i.i125:                                    ; preds = %.lr.ph.i.i125.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i125.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_15
begin_hunk_16_@_ZN12rewriter_tplI17elim_term_ite_cfgE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI17elim_term_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI17elim_term_ite_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI17elim_term_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !857

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !506, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN17elim_term_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(40) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !337 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !162
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.ck = add i32 %i.ch, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.q, %bb.al
  %i.cx = phi ptr [ %i.go, %bb.al ], [ %i.cs, %bb.q ]
  %i.cy = phi ptr [ %i.gm, %bb.al ], [ %i.cq, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.cy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.cz = and i32 %i.cb, -13
  %i.da = or disjoint i32 %i.cz, 4
  store i32 %i.da, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.ao, 3
end_hunk_16
begin_hunk_17_@_ZN12rewriter_tplI17elim_term_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE:bb.a
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 -4
  %i.nk = zext i32 %i.nh to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nk
  store ptr %i.mx, ptr %i.nl, align 8, !tbaa !163
  %i.nm = add i32 %i.nh, 1
  store i32 %i.nm, ptr %i.nj, align 4, !tbaa !162
  %i.nn = load i32, ptr %i.a, align 8
  %i.no = trunc i32 %i.nn to i1
  br i1 %i.no, label %bb.bs, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198

bb.bs:                                            ; preds = %bb.br
  %i.np = load ptr, ptr %i.ky, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.np)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198 unwind label %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198: ; preds = %bb.bs, %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !337 ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %i.nr, i64 -4 ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !162 ; 2 uses
  %i.nu = add i32 %i.nt, -1                       ; 2 uses
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !162
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit200, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.nw = add i32 %i.nt, -2
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 8
  %i.ob = or i32 %i.oa, 2
  store i32 %i.ob, ptr %i.nz, align 8
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit200

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit200: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i199, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i198
  %i.oc = load ptr, ptr %4, align 8, !tbaa !233   ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i201, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit200
  %i.od = load ptr, ptr %i.jw, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !141
  %i.og = add i32 %i.of, -1                       ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !141
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.bu, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.od, ptr noundef nonnull %i.oc)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #25
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit200, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit162

bb.bw:                                            ; preds = %bb.a
  tail call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.346, i32 noundef 520, ptr noundef nonnull @.str.348)
  tail call void @_Z18invoke_exit_actionj(i32 noundef 107)
  br label %_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit162

default.unreachable263:                           ; preds = %bb.a
  unreachable

_ZN12rewriter_tplI17elim_term_ite_cfgE18set_new_child_flagEP4expr.exit162: ; preds = %bb.e, %bb.d, %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i161, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i160, %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.bw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  ret void

bb.bx:                                            ; preds = %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn87.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp212.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %.pn87.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI17elim_term_ite_cfgE18process_quantifierILb0EEEvP10quantifierRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ref_vector.355, align 8      ; 10 uses
  %4 = alloca %class.ref_vector.355, align 8      ; 9 uses
  %5 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %6 = alloca %struct.mk_ismt2_pp, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !381  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp ult i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN13rewriter_core11begin_scopeEv(ptr noundef nonnull align 8 dereferenceable(536) %0)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !382
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.g, ptr %i.h, align 8, !tbaa !358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !162
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]
  %.not253 = icmp eq i32 %i.b, 0
  br i1 %.not253, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !359
  %i.q = add i32 %i.p, %i.b
  store i32 %i.q, ptr %i.o, align 8, !tbaa !359
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZN6vectorIjLb0EjE9push_backERKj.exit
  %.072243 = phi i32 [ 0, %.lr.ph ], [ %i.ar, %_ZN6vectorIjLb0EjE9push_backERKj.exit ]
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !161  ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !162
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !162
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %.pre2.i, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.z = phi ptr [ %.pre.i, %bb.f ], [ %i.r, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr null, ptr %i.ac, align 8, !tbaa !163
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !162
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !172 ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !162 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN6vectorIjLb0EjE9push_backERKj.exit

bb.h:                                             ; preds = %bb.g, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %.pre.i101 = load ptr, ptr %i.n, align 8, !tbaa !172 ; 2 uses
  %.phi.trans.insert.i102 = getelementptr inbounds i8, ptr %.pre.i101, i64 -4
  %.pre2.i103 = load i32, ptr %.phi.trans.insert.i102, align 4, !tbaa !162
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit

_ZN6vectorIjLb0EjE9push_backERKj.exit:            ; preds = %bb.g, %bb.h
  %i.al = phi i32 [ %.pre2.i103, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.am = phi ptr [ %.pre.i101, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = zext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  store i32 %.0.i, ptr %i.ap, align 4, !tbaa !162
  %i.aq = add i32 %i.al, 1
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !162
  %i.ar = add nuw i32 %.072243, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !858

bb.i:                                             ; preds = %._crit_edge, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !383
  %i.au = add i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !384
  %i.ax = add i32 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.j

bb.j:                                             ; preds = %_ZNK10quantifier9get_childEj.exit, %bb.i
  %i.ba = load i32, ptr %i.c, align 8             ; 4 uses
  %i.bb = lshr i32 %i.ba, 6                       ; 5 uses
  %i.bc = icmp ult i32 %i.bb, %i.ax
  br i1 %i.bc, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %_ZNK10quantifier9get_childEj.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %.not.i = icmp ugt i32 %i.bb, %i.be
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %1, i64 %i.bg
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bg
  %i.bj = zext nneg i32 %i.bb to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 72
  br label %_ZNK10quantifier9get_childEj.exit

bb.n:                                             ; preds = %bb.l
  %i.bm = xor i32 %i.be, -1
  %i.bn = add nsw i32 %i.bb, %i.bm
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !381
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bp
  %i.bs = zext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs
  br label %_ZNK10quantifier9get_childEj.exit

_ZNK10quantifier9get_childEj.exit:                ; preds = %bb.k, %bb.m, %bb.n
  %.0.in.i = phi ptr [ %i.bt, %bb.n ], [ %i.bl, %bb.m ], [ %i.az, %bb.k ]
  %.0.i104 = load ptr, ptr %.0.in.i, align 8, !tbaa !163
  %7 = and i32 %i.ba, -64
  %i.bu = add i32 %7, 64
  %8 = and i32 %i.ba, 63
  %9 = or disjoint i32 %i.bu, %8
  store i32 %9, ptr %i.c, align 8
  %i.bv = lshr i32 %i.ba, 4
  %i.bw = and i32 %i.bv, 3
  %i.bx = tail call noundef zeroext i1 @_ZN12rewriter_tplI17elim_term_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %.0.i104, i32 noundef %i.bw)
  br i1 %i.bx, label %bb.j, label %.loopexit236, !llvm.loop !859

bb.o:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !378
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cd ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !163
  %i.cg = load i32, ptr %i.as, align 8, !tbaa !383 ; 2 uses
  %i.ch = load i32, ptr %i.av, align 4, !tbaa !384 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.ck = load i32, ptr %i.a, align 4, !tbaa !381
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = ptrtoint ptr %i.cj to i64               ; 2 uses
  store i64 %i.co, ptr %3, align 8, !tbaa !75
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.cp, align 8, !tbaa !161
  %i.cq = zext i32 %i.cg to i64                   ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.cq, 3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i.i
  %i.cs = icmp eq i32 %i.cg, 0                    ; 2 uses
  br i1 %i.cs, label %.loopexit235, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %i.ct = phi ptr [ %i.de, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ null, %bb.o ] ; 4 uses
  %.sroa.04.09.i.i = phi ptr [ %i.dk, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i ], [ %i.cn, %bb.o ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.04.09.i.i, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !141
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.p, %.lr.ph.i.i
  %i.cy = icmp eq ptr %i.ct, null
  br i1 %i.cy, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.cz = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.r, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

bb.r:                                             ; preds = %bb.q, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cp)
          to label %.noexc.i unwind label %bb.s

.noexc.i:                                         ; preds = %bb.r
  %.pre.i.i.i.i = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i: ; preds = %.noexc.i, %bb.q
  %i.de = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.ct, %bb.q ] ; 3 uses
  %i.df = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.da, %bb.q ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dh = zext i32 %i.df to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dh
  store ptr %i.cu, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.df, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i, i64 8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.cr
  br i1 %i.dl, label %.loopexit235.loopexit, label %.lr.ph.i.i

common.resume:                                    ; preds = %.body, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.dm, %bb.s ], [ %.pn96.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.s:                                             ; preds = %bb.r
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #24
  br label %common.resume

.loopexit235.loopexit:                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i
  %.pre = load ptr, ptr %i.ci, align 8, !tbaa !356
  %.pre274 = load i32, ptr %i.a, align 4, !tbaa !381
  %.pre277 = zext i32 %.pre274 to i64
  %.pre278 = ptrtoint ptr %.pre to i64
  br label %.loopexit235

.loopexit235:                                     ; preds = %.loopexit235.loopexit, %bb.o
  %.pre-phi279 = phi i64 [ %.pre278, %.loopexit235.loopexit ], [ %i.co, %bb.o ]
  %.pre-phi = phi i64 [ %.pre277, %.loopexit235.loopexit ], [ %i.cl, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.pre-phi
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %.pre-phi ; 2 uses
  store i64 %.pre-phi279, ptr %4, align 8, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store ptr null, ptr %i.dp, align 8, !tbaa !161
  %i.dq = zext i32 %i.ch to i64                   ; 2 uses
  %.idx.i.i105 = shl nuw nsw i64 %i.dq, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i105
  %i.ds = icmp eq i32 %i.ch, 0                    ; 2 uses
  br i1 %i.ds, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.loopexit235, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110
  %i.dt = phi ptr [ %i.ee, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ null, %.loopexit235 ] ; 4 uses
  %.sroa.04.09.i.i107 = phi ptr [ %i.ek, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110 ], [ %i.do, %.loopexit235 ] ; 2 uses
  %i.du = load ptr, ptr %.sroa.04.09.i.i107, align 8, !tbaa !163 ; 3 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i108, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i106
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !141
  %i.dx = add i32 %i.dw, 1
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109: ; preds = %bb.t, %.lr.ph.i.i106
  %i.dy = icmp eq ptr %i.dt, null
  br i1 %i.dy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  %i.dz = getelementptr inbounds i8, ptr %i.dt, i64 -4
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !162 ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !162
  %i.ed = icmp eq i32 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

bb.v:                                             ; preds = %bb.u, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i109
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dp)
          to label %.noexc.i111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.i111:                                      ; preds = %bb.v
  %.pre.i.i.i.i112 = load ptr, ptr %i.dp, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i.i.i113 = getelementptr inbounds i8, ptr %.pre.i.i.i.i112, i64 -4
  %.pre2.i.i.i.i114 = load i32, ptr %.phi.trans.insert.i.i.i.i113, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110: ; preds = %.noexc.i111, %bb.u
  %i.ee = phi ptr [ %.pre.i.i.i.i112, %.noexc.i111 ], [ %i.dt, %bb.u ] ; 3 uses
  %i.ef = phi i32 [ %.pre2.i.i.i.i114, %.noexc.i111 ], [ %i.ea, %bb.u ] ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -4
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  store ptr %i.du, ptr %i.ei, align 8, !tbaa !163
  %i.ej = add i32 %i.ef, 1
  store i32 %i.ej, ptr %i.eg, align 4, !tbaa !162
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i107, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dr
  br i1 %i.el, label %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115, label %.lr.ph.i.i106

_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i.i110, %.loopexit235
  %i.em = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.cq
  br i1 %i.cs, label %._crit_edge247, label %.lr.ph246

.lr.ph246:                                        ; preds = %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.y

._crit_edge247:                                   ; preds = %bb.bc, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115
  %.074.lcssa = phi i32 [ 0, %_ZN10ref_vectorI4expr11ast_managerEC2ERS1_jPKPS0_.exit115 ], [ %.1, %bb.bc ] ; 4 uses
  %i.er = load ptr, ptr %i.cp, align 8, !tbaa !161 ; 5 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %._crit_edge247
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !162 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ev
  %i.ex = icmp ugt i32 %i.eu, %.074.lcssa
  br i1 %i.ex, label %.lr.ph.i.i116.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i116.preheader:                          ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ey = zext i32 %.074.lcssa to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ey
  br label %.lr.ph.i.i116

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i116.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.fg, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ez, %.lr.ph.i.i116.preheader ] ; 2 uses
  %i.fa = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.fb = load ptr, ptr %3, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.w

end_hunk_17
begin_hunk_18_@_ZN12rewriter_tplI16push_app_ite_cfgE11process_varILb1EEEvP3var:bb.a
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !162
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !163
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !162
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !233
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !141
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !163
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !162
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !337 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !162 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !141
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

declare noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16push_app_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.dc
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !866

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !512, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_18
begin_hunk_19_@_ZN12rewriter_tplI16push_app_ite_cfgE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI16push_app_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI16push_app_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !870

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !512, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !337 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !162
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.ck = add i32 %i.ch, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  br label %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI16push_app_ite_cfgE18set_new_child_flagEP4expr.exit96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.q, %bb.al
  %i.cx = phi ptr [ %i.go, %bb.al ], [ %i.cs, %bb.q ]
  %i.cy = phi ptr [ %i.gm, %bb.al ], [ %i.cq, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.cy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.cz = and i32 %i.cb, -13
  %i.da = or disjoint i32 %i.cz, 4
  store i32 %i.da, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.ao, 3
end_hunk_19
begin_hunk_20_@_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_varILb1EEEvP3var:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !338
  %i.ap = tail call noundef ptr @_ZN9act_cache4findEP4exprj(ptr noundef nonnull align 8 dereferenceable(92) %i.ao, ptr noundef nonnull %i.aa, i32 noundef %i.am) ; 3 uses
  %.not25 = icmp eq ptr %i.ap, null
  br i1 %.not25, label %bb.g, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !141
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !161 ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !162
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i43
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.pre.i.i44 = load ptr, ptr %i.at, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i45 = getelementptr inbounds i8, ptr %.pre.i.i44, i64 -4
  %.pre2.i.i46 = load i32, ptr %.phi.trans.insert.i.i45, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47: ; preds = %bb.e, %bb.f
  %i.bb = phi i32 [ %.pre2.i.i46, %bb.f ], [ %i.ax, %bb.e ] ; 2 uses
  %i.bc = phi ptr [ %.pre.i.i44, %bb.f ], [ %i.au, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4
  %i.be = zext i32 %i.bb to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store ptr %i.ap, ptr %i.bf, align 8, !tbaa !163
  %i.bg = add i32 %i.bb, 1
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !162
  br label %bb.m

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !75
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.bk, ptr noundef nonnull %i.aa, i32 noundef 0, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.j

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %2, align 8, !tbaa !233
  %i.bn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef %i.bm)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bo = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.aa, i32 noundef %i.am, ptr noundef %i.bo)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.m

bb.j:                                             ; preds = %bb.g, %bb.h, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit39, %_Z9is_groundPK4expr.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !141
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !141
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

bb.l:                                             ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i49
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bt)
  %.pre.i.i50 = load ptr, ptr %i.bt, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i51 = getelementptr inbounds i8, ptr %.pre.i.i50, i64 -4
  %.pre2.i.i52 = load i32, ptr %.phi.trans.insert.i.i51, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53: ; preds = %bb.k, %bb.l
  %i.cb = phi i32 [ %.pre2.i.i52, %bb.l ], [ %i.bx, %bb.k ] ; 2 uses
  %i.cc = phi ptr [ %.pre.i.i50, %bb.l ], [ %i.bu, %bb.k ] ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  %i.ce = zext i32 %i.cb to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.ce
  store ptr %i.aa, ptr %i.cf, align 8, !tbaa !163
  %i.cg = add i32 %i.cb, 1
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !162
  br label %bb.m

bb.m:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit47, %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit53
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !337 ; 3 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54: ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !162 ; 2 uses
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54
  %i.cn = add i32 %i.cl, -1
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %i.cs = or i32 %i.cr, 2
  store i32 %i.cs, ptr %i.cq, align 8
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit35, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit37, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !141
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  %i.cz = getelementptr inbounds i8, ptr %i.cx, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !162 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !162
  %i.dd = icmp eq i32 %i.da, %i.dc
  br i1 %i.dd, label %bb.o, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

bb.o:                                             ; preds = %bb.n, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i58
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %.pre.i.i59 = load ptr, ptr %i.cw, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i60 = getelementptr inbounds i8, ptr %.pre.i.i59, i64 -4
  %.pre2.i.i61 = load i32, ptr %.phi.trans.insert.i.i60, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62: ; preds = %bb.n, %bb.o
  %i.de = phi i32 [ %.pre2.i.i61, %bb.o ], [ %i.da, %bb.n ] ; 2 uses
  %i.df = phi ptr [ %.pre.i.i59, %bb.o ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dh = zext i32 %i.de to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dh
  store ptr %1, ptr %i.di, align 8, !tbaa !163
  %i.dj = add i32 %i.de, 1
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56

_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit56: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i55, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i54, %bb.m, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit62
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_appILb1EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %4 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %5 = alloca %class.obj_ref.439, align 8         ; 9 uses
  %6 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %7 = alloca %class.obj_ref.439, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable341 [
    i32 0, label %bb.b
    i32 1, label %bb.dc
    i32 2, label %bb.ej
    i32 3, label %bb.ek
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.h = load i32, ptr %i.a, align 8              ; 4 uses
  %i.i = lshr i32 %i.h, 6                         ; 2 uses
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !163
  %8 = and i32 %i.h, -64
  %i.n = add i32 %8, 64
  %9 = and i32 %i.h, 63
  %10 = or disjoint i32 %i.n, %9
  store i32 %10, ptr %i.a, align 8
  %i.o = lshr i32 %i.h, 4
  %i.p = and i32 %i.o, 3
  %i.q = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE5visitILb1EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.m, i32 noundef %i.p)
  br i1 %i.q, label %bb.c, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit245, !llvm.loop !876

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !372  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !161  ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 7 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ab = sub i32 %.0.i.i, %i.aa                  ; 3 uses
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ac ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  invoke void @_ZN13rewriter_core15elim_reflex_prsEj(ptr noundef nonnull align 8 dereferenceable(144) %0, i32 noundef %i.aa)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 13 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !341 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.g, %bb.h
  %.0.i.i74 = phi i32 [ %i.am, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.an = load i32, ptr %i.z, align 4, !tbaa !378 ; 2 uses
  %i.ao = sub i32 %.0.i.i74, %i.an
  %i.ap = icmp eq i32 %.0.i.i74, %i.an
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !141
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !141
  store ptr %1, ptr %3, align 8, !tbaa !293
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i75 = icmp eq ptr %i.au, null
  br i1 %.not.i4.i75, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !141
  %i.az = add i32 %i.ay, -1                       ; 2 uses
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !141
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aw, ptr noundef nonnull %i.au)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77:     ; preds = %bb.k, %bb.i, %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !293
  br label %bb.s

bb.l:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bb = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bc = invoke noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.m:                                             ; preds = %bb.l
  %.not.i78 = icmp eq ptr %i.bc, null
  br i1 %.not.i78, label %bb.n, label %_ZN11ast_manager7inc_refEP3ast.exit.i79

_ZN11ast_manager7inc_refEP3ast.exit.i79:          ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !141
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !141
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN11ast_manager7inc_refEP3ast.exit.i79
  store ptr %i.bc, ptr %3, align 8, !tbaa !293
  %i.bg = load ptr, ptr %i.ae, align 8, !tbaa !356, !nonnull !165, !align !166
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !341
  %i.bi = load i32, ptr %i.z, align 4, !tbaa !378
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = invoke noundef ptr @_ZN11ast_manager13mk_congruenceEP3appS1_jPKS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.bg, ptr noundef nonnull %1, ptr noundef %i.bc, i32 noundef %i.ao, ptr noundef %i.bk)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %.not.i83 = icmp eq ptr %i.bl, null
  br i1 %.not.i83, label %bb.p, label %_ZN11ast_manager7inc_refEP3ast.exit.i84

_ZN11ast_manager7inc_refEP3ast.exit.i84:          ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !141
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !141
  br label %bb.p

bb.p:                                             ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i84, %bb.o
  %i.bq = load ptr, ptr %i.bm, align 8, !tbaa !293 ; 3 uses
  %.not.i4.i85 = icmp eq ptr %i.bq, null
  br i1 %.not.i4.i85, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !294, !nonnull !165, !align !166
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !141
  %i.bv = add i32 %i.bu, -1                       ; 2 uses
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !141
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bs, ptr noundef nonnull %i.bq)
          to label %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87:     ; preds = %bb.r, %bb.p, %bb.q
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !293
  br label %bb.s

bb.s:                                             ; preds = %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77
  %i.bx = phi ptr [ %i.bc, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit87 ], [ %1, %_ZN7obj_refI3app11ast_managerEaSEPS0_.exit77 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !516, !nonnull !165, !align !166
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 6 uses
  %i.cc = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.bz, ptr noundef %i.s, i32 noundef %i.ab, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.t:                                             ; preds = %bb.s
  %.not = icmp eq i32 %i.cc, 5
  br i1 %.not, label %bb.by, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = load i32, ptr %i.z, align 4, !tbaa !378 ; 3 uses
  %i.ce = load ptr, ptr %i.u, align 8, !tbaa !161 ; 5 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.u
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ci
  %i.ck = icmp ugt i32 %i.ch, %i.cd
  br i1 %i.ck, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.cl = zext i32 %i.cd to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cl
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ct, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.cm, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cn = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.co = load ptr, ptr %i.t, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !141
  %i.cr = add i32 %i.cq, -1                       ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !141
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.w, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.cn)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.w, %bb.v, %.lr.ph.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.cu = icmp ult ptr %i.ct, %i.cj
  br i1 %i.cu, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

end_hunk_20
begin_hunk_21_@_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_varILb0EEEvP3var:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !141
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !141
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !161 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !162
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i33
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %.pre.i.i34 = load ptr, ptr %i.af, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i35 = getelementptr inbounds i8, ptr %.pre.i.i34, i64 -4
  %.pre2.i.i36 = load i32, ptr %.phi.trans.insert.i.i35, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37: ; preds = %bb.c, %bb.d
  %i.an = phi i32 [ %.pre2.i.i36, %bb.d ], [ %i.aj, %bb.c ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i.i34, %bb.d ], [ %i.ag, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ab, ptr %i.ar, align 8, !tbaa !163
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !162
  br label %bb.k

bb.e:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %2, align 8, !tbaa !233
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_ZN11var_shifterclEP4exprjjjR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %i.aw, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef %i.y, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit unwind label %bb.h

_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %2, align 8, !tbaa !233
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef %i.ay)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.m, i32 noundef %i.y, ptr noundef %i.ba)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.f, %_ZN11var_shifterclEP4exprjR7obj_refIS0_11ast_managerE.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.bb

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39: ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit29, %_Z9is_groundPK4expr.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !141
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !141
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 4 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !162 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !162
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i39
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %.pre.i.i40 = load ptr, ptr %i.bf, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i41 = getelementptr inbounds i8, ptr %.pre.i.i40, i64 -4
  %.pre2.i.i42 = load i32, ptr %.phi.trans.insert.i.i41, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43: ; preds = %bb.i, %bb.j
  %i.bn = phi i32 [ %.pre2.i.i42, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i.i40, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bq
  store ptr %i.m, ptr %i.br, align 8, !tbaa !163
  %i.bs = add i32 %i.bn, 1
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !162
  br label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit37, %bb.g, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit43
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !337 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44: ; preds = %bb.k
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !162 ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit46, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44
  %i.bz = add i32 %i.bx, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = or i32 %i.cd, 2
  store i32 %i.ce, ptr %i.cc, align 8
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48: ; preds = %bb.a, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit27, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !141
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !141
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 4 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !162 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !162
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.m, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i48
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
  %.pre.i.i49 = load ptr, ptr %i.ci, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i50 = getelementptr inbounds i8, ptr %.pre.i.i49, i64 -4
  %.pre2.i.i51 = load i32, ptr %.phi.trans.insert.i.i50, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52: ; preds = %bb.l, %bb.m
  %i.cq = phi i32 [ %.pre2.i.i51, %bb.m ], [ %i.cm, %bb.l ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i49, %bb.m ], [ %i.cj, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -4
  %i.ct = zext i32 %i.cq to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  store ptr %1, ptr %i.cu, align 8, !tbaa !163
  %i.cv = add i32 %i.cq, 1
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !162
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit46

_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit46: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i45, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i44, %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN12rewriter_tplI19ng_push_app_ite_cfgE11process_appILb0EEEvP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.obj_ref.439, align 8         ; 6 uses
  %4 = alloca %class.obj_ref.375, align 8         ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = lshr i32 %i.b, 2
  %i.d = and i32 %i.c, 3
  switch i32 %i.d, label %default.unreachable263 [
    i32 0, label %bb.b
    i32 1, label %bb.am
    i32 2, label %bb.ax
    i32 3, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !364
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.h = load i32, ptr %i.a, align 8
  %i.i = lshr i32 %i.h, 6
  %i.j = icmp ult i32 %i.i, %i.f
  br i1 %i.j, label %bb.d, label %_ZNK9func_decl14is_associativeEv.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE13constant_foldEP3appRN13rewriter_core5frameE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.k, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.a, align 8              ; 4 uses
  %i.m = lshr i32 %i.l, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !163
  %5 = and i32 %i.l, -64
  %i.q = add i32 %5, 64
  %6 = and i32 %i.l, 63
  %7 = or disjoint i32 %i.q, %6
  store i32 %7, ptr %i.a, align 8
  %i.r = lshr i32 %i.l, 4
  %i.s = and i32 %i.r, 3
  %i.t = tail call noundef zeroext i1 @_ZN12rewriter_tplI19ng_push_app_ite_cfgE5visitILb0EEEbP4exprj(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef %i.p, i32 noundef %i.s)
  br i1 %i.t, label %bb.c, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit162, !llvm.loop !880

_ZNK9func_decl14is_associativeEv.exit.thread:     ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !372  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !161  ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !162
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZNK9func_decl14is_associativeEv.exit.thread, %bb.f
  %.0.i.i = phi i32 [ %i.ab, %bb.f ], [ 0, %_ZNK9func_decl14is_associativeEv.exit.thread ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !378 ; 2 uses
  %i.ae = sub i32 %.0.i.i, %i.ad                  ; 2 uses
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.af ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !356, !nonnull !165, !align !166
  store ptr null, ptr %3, align 8, !tbaa !293
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !516, !nonnull !165, !align !166
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 15 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ao = invoke noundef i32 @_ZN16push_app_ite_cfg10reduce_appEP9func_decljPKP4exprR7obj_refIS2_11ast_managerERS6_I3appS7_E(ptr noundef nonnull align 8 dereferenceable(17) %i.al, ptr noundef nonnull %i.v, i32 noundef %i.ae, ptr noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.g:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %.not = icmp eq i32 %i.ao, 5
  br i1 %.not, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.ac, align 4, !tbaa !378 ; 3 uses
  %i.aq = load ptr, ptr %i.x, align 8, !tbaa !161 ; 5 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN6vectorIP4exprLb0EjE3endEv.exit.i

_ZN6vectorIP4exprLb0EjE3endEv.exit.i:             ; preds = %bb.h
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !162 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = icmp ugt i32 %i.at, %i.ap
  br i1 %i.aw, label %.lr.ph.i.i.preheader, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

.lr.ph.i.i.preheader:                             ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.ax = zext i32 %i.ap to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bf, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.ay, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = load ptr, ptr %.06.i.i, align 8, !tbaa !163 ; 3 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !164, !nonnull !165, !align !166
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !141
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !141
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ba, ptr noundef nonnull %i.az)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.av
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i
  %i.bh = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.aq, %_ZN6vectorIP4exprLb0EjE3endEv.exit.i ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.ap, ptr %i.bi, align 4, !tbaa !162
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %bb.h
  %i.bj = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %bb.h ] ; 4 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !141
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !141
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.k, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE6shrinkEj.exit
  %i.bo = icmp eq ptr %i.bj, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bp = getelementptr inbounds i8, ptr %i.bj, i64 -4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = icmp eq i32 %i.bq, %i.bs
  br i1 %i.bt, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc92:                                         ; preds = %bb.m
  %.pre.i.i = load ptr, ptr %i.x, align 8, !tbaa !161 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !162
  br label %bb.n

bb.n:                                             ; preds = %.noexc92, %bb.l
  %i.bu = phi i32 [ %.pre2.i.i, %.noexc92 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bv = phi ptr [ %.pre.i.i, %.noexc92 ], [ %i.bj, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  store ptr %i.bk, ptr %i.by, align 8, !tbaa !163
  %i.bz = add i32 %i.bu, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !162
  %i.ca = icmp eq i32 %i.ao, 4
  %i.cb = load i32, ptr %i.a, align 8             ; 2 uses
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cc = trunc i32 %i.cb to i1
  br i1 %i.cc, label %bb.p, label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94

bb.p:                                             ; preds = %bb.o
  %i.cd = load ptr, ptr %i.am, align 8, !tbaa !233
  invoke void @_ZN13rewriter_core20cache_shifted_resultEP4exprjS1_(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %1, i32 noundef 0, ptr noundef %i.cd)
          to label %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94: ; preds = %bb.p, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !337 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !162 ; 2 uses
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !162
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96, label %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95

_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95: ; preds = %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.ck = add i32 %i.ch, -2
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.cn, align 8
  br label %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96

_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96: ; preds = %_ZN6vectorIN13rewriter_core5frameELb0EjE4backEv.exit.i95, %_ZNK6vectorIN13rewriter_core5frameELb0EjE5emptyEv.exit.i94
  %i.cq = load ptr, ptr %i.am, align 8, !tbaa !233 ; 3 uses
  %.not.i4.i = icmp eq ptr %i.cq, null
  br i1 %.not.i4.i, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split, label %bb.q

bb.q:                                             ; preds = %_ZN12rewriter_tplI19ng_push_app_ite_cfgE18set_new_child_flagEP4expr.exit96
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !234, !nonnull !165, !align !166
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !141
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !141
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %.invoke264, label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split

.invoke264:                                       ; preds = %bb.q, %bb.al
  %i.cx = phi ptr [ %i.go, %bb.al ], [ %i.cs, %bb.q ]
  %i.cy = phi ptr [ %i.gm, %bb.al ], [ %i.cq, %bb.q ]
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cx, ptr noundef nonnull %i.cy)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit.sink.split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.n
  %i.cz = and i32 %i.cb, -13
  %i.da = or disjoint i32 %i.cz, 4
  store i32 %i.da, ptr %i.a, align 8
  %.not86 = icmp eq i32 %i.ao, 3
end_hunk_21
