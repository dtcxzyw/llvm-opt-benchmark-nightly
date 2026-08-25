Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smtfd_solver?download=true
inline.NumInlined: 2545
inline.NumDeleted: 890
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5smtfd9uf_plugin12term_coveredEP4expr:bb.a
bb.g:                                             ; preds = %.lr.ph38.i.i.i
  %i.am = icmp eq ptr %i.ag, null
  %i.an = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i = icmp eq ptr %i.an, %i.w
  %or.cond43.i.i.i = select i1 %i.am, i1 true, i1 %.not27.i.i.i
  br i1 %or.cond43.i.i.i, label %.loopexit, label %.lr.ph38.i.i.i.backedge

bb.h:                                             ; preds = %bb.f
  %.old.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i = icmp eq ptr %.old.i.i.i, %i.w
  br i1 %.not27.old.i.i.i, label %.loopexit, label %.lr.ph38.i.i.i.backedge

.lr.ph38.i.i.i.backedge:                          ; preds = %bb.h, %bb.g
  %.137.i.i.i.be = phi ptr [ %i.an, %bb.g ], [ %.old.i.i.i, %bb.h ]
  br label %.lr.ph38.i.i.i, !llvm.loop !366

.loopexit:                                        ; preds = %bb.d, %bb.g, %bb.h, %.preheader.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !42
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !42
  br label %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.i, %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !295 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 -4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !13 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %_ZN15ref_vector_coreI3ast19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3astLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.k
  %.pre.i.i = load ptr, ptr %i.ar, align 8, !tbaa !295 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  %.pre = load ptr, ptr %3, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.j
  %i.az = phi ptr [ %.pre, %.noexc ], [ %i.n, %bb.j ]
  %i.ba = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.av, %bb.j ] ; 2 uses
  %i.bb = phi ptr [ %.pre.i.i, %.noexc ], [ %i.as, %bb.j ] ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = zext i32 %i.ba to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bd
  store ptr %i.n, ptr %i.be, align 8, !tbaa !296
  %i.bf = add i32 %i.ba, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %i.az, ptr %2, align 8, !tbaa !368
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.bg, align 8, !tbaa !367
  invoke void @_ZN14core_hashtableIN7obj_mapI4exprPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pre23 = load ptr, ptr %3, align 8, !tbaa !56
  br label %_ZNK7obj_mapI4exprPS0_E8containsES1_.exit

bb.n:                                             ; preds = %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK7obj_mapI4exprPS0_E8containsES1_.exit:        ; preds = %bb.c, %bb.f, %bb.m
  %i.bj = phi ptr [ %i.n, %bb.f ], [ %.pre23, %bb.m ], [ %i.n, %bb.c ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNK7obj_mapI4exprPS0_E8containsES1_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !42
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !42
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bl, ptr noundef nonnull %i.bj)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZNK7obj_mapI4exprPS0_E8containsES1_.exit, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.t

bb.s:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.o ], [ %i.bh, %bb.n ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.a
  %i.bs = load ptr, ptr %0, align 8, !tbaa !16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull %1, i32 noundef 0)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = and i32 %i.bw, 65535
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.u, label %_Z17is_uninterp_constPK4expr.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !319
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !320 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_Z17is_uninterp_constPK4expr.exit.thread18, label %_ZNK3app13get_family_idEv.exit.i

_ZNK3app13get_family_idEv.exit.i:                 ; preds = %bb.u
  %i.ce = load i32, ptr %i.cc, align 8, !tbaa !323
  %i.cf = icmp eq i32 %i.ce, -1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !84
  %.not36 = icmp eq i32 %i.ch, 0                  ; 2 uses
  br i1 %i.cf, label %_ZN5smtfd9uf_plugin5is_ufEP4expr.exit.thread, label %.thread17

_ZN5smtfd9uf_plugin5is_ufEP4expr.exit.thread:     ; preds = %_ZNK3app13get_family_idEv.exit.i
  br i1 %.not36, label %_Z17is_uninterp_constPK4expr.exit, label %_Z17is_uninterp_constPK4expr.exit.thread18

.thread17:                                        ; preds = %_ZNK3app13get_family_idEv.exit.i
  br i1 %.not36, label %_Z17is_uninterp_constPK4expr.exit, label %_Z17is_uninterp_constPK4expr.exit.thread

_Z17is_uninterp_constPK4expr.exit:                ; preds = %.thread17, %_ZN5smtfd9uf_plugin5is_ufEP4expr.exit.thread
  %i.ci = load i32, ptr %i.cc, align 8, !tbaa !323
  %i.cj = icmp eq i32 %i.ci, -1
  br i1 %i.cj, label %_Z17is_uninterp_constPK4expr.exit.thread18, label %_Z17is_uninterp_constPK4expr.exit.thread

_Z17is_uninterp_constPK4expr.exit.thread:         ; preds = %bb.t, %.thread17, %_Z17is_uninterp_constPK4expr.exit
  %i.ck = load ptr, ptr %0, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %i.a)
  br label %_Z17is_uninterp_constPK4expr.exit.thread18

_Z17is_uninterp_constPK4expr.exit.thread18:       ; preds = %bb.u, %_ZN5smtfd9uf_plugin5is_ufEP4expr.exit.thread, %_Z17is_uninterp_constPK4expr.exit.thread, %_Z17is_uninterp_constPK4expr.exit
  %i.co = phi i1 [ true, %_Z17is_uninterp_constPK4expr.exit ], [ true, %_ZN5smtfd9uf_plugin5is_ufEP4expr.exit.thread ], [ %i.cn, %_Z17is_uninterp_constPK4expr.exit.thread ], [ true, %bb.u ]
  ret i1 %i.co
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5smtfd9uf_plugin12sort_coveredEP4sort(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK4decl13get_family_idEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 8, !tbaa !323
  %i.e = icmp eq i32 %i.d, 4
  br label %_ZNK4decl13get_family_idEv.exit

_ZNK4decl13get_family_idEv.exit:                  ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5smtfd9uf_plugin10max_roundsEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5smtfd9uf_plugin14populate_modelER3refI5modelERK10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %class.obj_ref, align 8             ; 5 uses
  %5 = alloca %class.obj_ref, align 8             ; 5 uses
  %6 = alloca %class.obj_ref, align 8             ; 9 uses
  %7 = alloca %class.subterms, align 8            ; 8 uses
  %8 = alloca %"class.subterms::iterator", align 8 ; 10 uses
  %9 = alloca %"class.subterms::iterator", align 8 ; 8 uses
  %10 = alloca %class.obj_ref, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190, !nonnull !40, !align !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %._crit_edge243, label %_ZNK17scoped_ptr_vectorI9hashtableIN5smtfd5f_appENS1_10f_app_hashENS1_8f_app_eqEEE3endEv.exit

_ZNK17scoped_ptr_vectorI9hashtableIN5smtfd5f_appENS1_10f_app_hashENS1_8f_app_eqEEE3endEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not239 = icmp eq i32 %i.g, 0
  br i1 %.not239, label %._crit_edge243, label %.lr.ph242

.lr.ph242:                                        ; preds = %_ZNK17scoped_ptr_vectorI9hashtableIN5smtfd5f_appENS1_10f_app_hashENS1_8f_app_eqEEE3endEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.b

._crit_edge243:                                   ; preds = %bb.aa, %bb.a, %_ZNK17scoped_ptr_vectorI9hashtableIN5smtfd5f_appENS1_10f_app_hashENS1_8f_app_eqEEE3endEv.exit
  %.sroa.7.0.lcssa = phi ptr [ null, %_ZNK17scoped_ptr_vectorI9hashtableIN5smtfd5f_appENS1_10f_app_hashENS1_8f_app_eqEEE3endEv.exit ], [ null, %bb.a ], [ %.sroa.7.1.lcssa, %bb.aa ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  invoke void @_ZN8subtermsC1ERK10ref_vectorI4expr11ast_managerEbP10ptr_vectorIS1_EP8obj_markIS1_10bit_vector14default_t2uintIS1_EE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
          to label %_ZN8subterms6groundERK10ref_vectorI4expr11ast_managerEP10ptr_vectorIS1_EP8obj_markIS1_10bit_vector14default_t2uintIS1_EE.exit unwind label %bb.as

bb.b:                                             ; preds = %.lr.ph242, %bb.aa
  %.056241 = phi ptr [ %i.d, %.lr.ph242 ], [ %i.eq, %bb.aa ] ; 2 uses
  %.sroa.7.0240 = phi ptr [ null, %.lr.ph242 ], [ %.sroa.7.1.lcssa, %bb.aa ] ; 2 uses
  %i.m = load ptr, ptr %.056241, align 8, !tbaa !76 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !257  ; 2 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.r, 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not1.i.i.i, label %.loopexit174, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.w, %bb.c ], [ %i.o, %bb.b ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !258
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %.loopexit174, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.s
  br i1 %.not.i.i.i, label %.loopexit174, label %.lr.ph.i.i.i, !llvm.loop !261

.loopexit174:                                     ; preds = %.lr.ph.i.i.i, %bb.c, %bb.b
  %.sroa.0.1.i = phi ptr [ %i.o, %bb.b ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ], [ %i.s, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %.not172229 = icmp eq ptr %.sroa.0.1.i, %i.x
  br i1 %.not172229, label %._crit_edge235, label %.lr.ph234

._crit_edge235:                                   ; preds = %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit, %.loopexit174
  %.sroa.7.1.lcssa = phi ptr [ %.sroa.7.0240, %.loopexit174 ], [ %.sroa.7.2.lcssa, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 3 uses
  %.037.lcssa = phi ptr [ null, %.loopexit174 ], [ %.1, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ]
  %.036.lcssa = phi ptr [ null, %.loopexit174 ], [ %i.aa, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ]
  %i.y = load ptr, ptr %1, align 8, !tbaa !60
  invoke void @_ZN10model_core13register_declEP9func_declP11func_interp(ptr noundef nonnull align 8 dereferenceable(96) %i.y, ptr noundef %.036.lcssa, ptr noundef %.037.lcssa)
          to label %bb.aa unwind label %bb.ab

.lr.ph234:                                        ; preds = %.loopexit174, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit
  %.037232 = phi ptr [ %.1, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ], [ null, %.loopexit174 ] ; 2 uses
  %.sroa.0153.0231 = phi ptr [ %.sroa.0153.2, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ], [ %.sroa.0.1.i, %.loopexit174 ] ; 3 uses
  %.sroa.7.1230 = phi ptr [ %.sroa.7.2.lcssa, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ], [ %.sroa.7.0240, %.loopexit174 ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0153.0231, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !376
  %.not64 = icmp eq ptr %.037232, null
  br i1 %.not64, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph234
  %i.ad = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 72)
          to label %bb.e unwind label %.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !190, !nonnull !40, !align !41
  invoke void @_ZN11func_interpC1ER11ast_managerj(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(952) %i.ae, i32 noundef %i.ac)
          to label %bb.f unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body133

.loopexit.split-lp:                               ; preds = %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body133

bb.f:                                             ; preds = %bb.e, %.lr.ph234
  %.1 = phi ptr [ %.037232, %.lr.ph234 ], [ %i.ad, %bb.e ] ; 3 uses
  %i.af = icmp eq ptr %.sroa.7.1230, null
  br i1 %i.af, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %bb.f
  %i.ag = getelementptr inbounds i8, ptr %.sroa.7.1230, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13 ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.7.1230, i64 %i.aj
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.aq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %.sroa.7.1230, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.al = load ptr, ptr %.06.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !42
  %i.ao = add i32 %i.an, -1                       ; 2 uses
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !42
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull %i.al)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ar = icmp ult ptr %i.aq, %i.ak
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, !llvm.loop !44

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  store i32 0, ptr %i.ag, align 4, !tbaa !13
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0153.0231, i64 16 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !83 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !84 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.idx = shl nuw nsw i64 %i.ax, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx
  %.not65224 = icmp eq i32 %i.aw, 0
  br i1 %.not65224, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %.sroa.7.2.lcssa = phi ptr [ %.sroa.7.1230, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ], [ %.sroa.7.5, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.az = load ptr, ptr %i.as, align 8, !tbaa !83
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !353, !noalias !378, !nonnull !40, !align !41 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !46, !noalias !381, !nonnull !40, !align !41
  store ptr null, ptr %6, align 8, !tbaa !56, !alias.scope !381
  store ptr %i.bb, ptr %i.l, align 8, !tbaa !58, !alias.scope !381
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8, !noalias !381 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit, label %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i

_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i: ; preds = %._crit_edge
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !13, !noalias !381 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bi
  %.not21.i = icmp eq i32 %i.bg, 0
  br i1 %.not21.i, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i
  %.01422.i = phi ptr [ %i.bp, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i ], [ %i.bd, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i ] ; 2 uses
  %i.bk = load ptr, ptr %.01422.i, align 8, !tbaa !14, !noalias !381 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !381
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16, !noalias !381
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !381
  invoke void %i.bn(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.bk, ptr noundef %i.az)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i unwind label %.split.i, !noalias !381

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i: ; preds = %.lr.ph.split.i
  %i.bo = load ptr, ptr %5, align 8, !tbaa !56, !noalias !381 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !381
  %.not20.i = icmp ne ptr %i.bo, null
  %i.bp = getelementptr inbounds nuw i8, ptr %.01422.i, i64 8 ; 2 uses
  %.not.i121 = icmp eq ptr %i.bp, %i.bj
  %or.cond26.i = select i1 %.not20.i, i1 true, i1 %.not.i121
  br i1 %or.cond26.i, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit.loopexit, label %.lr.ph.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !381
  br label %.body

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %.0226 = phi ptr [ %i.dt, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %i.au, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 2 uses
  %.sroa.7.2225 = phi ptr [ %.sroa.7.5, %_ZN7obj_refI4expr11ast_managerED2Ev.exit ], [ %.sroa.7.1230, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 8 uses
  %i.br = load ptr, ptr %.0226, align 8, !tbaa !37
  %i.bs = load ptr, ptr %i.k, align 8, !tbaa !353, !noalias !384, !nonnull !40, !align !41 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !46, !noalias !387, !nonnull !40, !align !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !8, !noalias !387 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82, label %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122

_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122: ; preds = %.lr.ph
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !13, !noalias !387 ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %.not21.i123 = icmp eq i32 %i.by, 0
  br i1 %.not21.i123, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82, label %.lr.ph.split.i126

.lr.ph.split.i126:                                ; preds = %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129
  %.01422.i127 = phi ptr [ %i.ch, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129 ], [ %i.bv, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122 ] ; 2 uses
  %i.cc = load ptr, ptr %.01422.i127, align 8, !tbaa !14, !noalias !387 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20, !noalias !387
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !16, !noalias !387
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !387
  invoke void %i.cf(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.cc, ptr noundef %i.br)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129 unwind label %_ZN7obj_refI4expr11ast_managerED2Ev.exit143, !noalias !387

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129: ; preds = %.lr.ph.split.i126
  %i.cg = load ptr, ptr %4, align 8, !tbaa !56, !noalias !387 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !387
  %.not20.i130 = icmp ne ptr %i.cg, null
  %i.ch = getelementptr inbounds nuw i8, ptr %.01422.i127, i64 8 ; 2 uses
  %.not.i131 = icmp eq ptr %i.ch, %i.cb
  %or.cond26.i132 = select i1 %.not20.i130, i1 true, i1 %.not.i131
  br i1 %or.cond26.i132, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82, label %.lr.ph.split.i126

_ZN7obj_refI4expr11ast_managerED2Ev.exit143:      ; preds = %.lr.ph.split.i126
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20, !noalias !387
  br label %.body133

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129, %.lr.ph, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122
  %.sroa.0.1 = phi ptr [ null, %.lr.ph ], [ null, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i122 ], [ %i.cg, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i129 ] ; 4 uses
  %i.cj = icmp eq ptr %.sroa.7.2225, null
  br i1 %i.cj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82
  %i.ck = getelementptr inbounds i8, ptr %.sroa.7.2225, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !13 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.7.2225, i64 -8 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !13
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.j:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit82
  %i.cp = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc138 unwind label %bb.q  ; 3 uses

.noexc138:                                        ; preds = %bb.j
  store i32 2, ptr %i.cp, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 0, ptr %i.cq, align 4, !tbaa !13
  br label %.noexc83

bb.k:                                             ; preds = %bb.i
  %i.cr = mul i32 %i.cl, 3
  %i.cs = add i32 %i.cr, 1
  %i.ct = lshr i32 %i.cs, 1                       ; 3 uses
  %i.cu = shl i32 %i.ct, 3
  %i.cv = add i32 %i.cu, 8                        ; 2 uses
  %.not.i136 = icmp ugt i32 %i.ct, %i.cl
  br i1 %.not.i136, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.cw = shl i32 %i.cl, 3
  %i.cx = add i32 %i.cw, 8
  %.not27.i = icmp ugt i32 %i.cv, %i.cx
  br i1 %.not27.i, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.l, %bb.k
  %i.cy = call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.cz, ptr %3, align 8, !tbaa !195
  %i.da = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #24
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.n ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 0, ptr %i.cz, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.da, ptr noundef nonnull align 1 dereferenceable(42) @.str.6, i64 42, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 42
  store i8 0, ptr %i.dc, align 1, !tbaa !197
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cy, align 8, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store ptr %i.da, ptr %i.dd, align 8, !tbaa !252
  store i64 42, ptr %i.de, align 8, !tbaa !197
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 42, ptr %i.df, align 8, !tbaa !196
  store ptr %i.cz, ptr %3, align 8, !tbaa !252
  store i64 0, ptr %i.db, align 8, !tbaa !196
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.cz
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.m
  %i.dj = load i64, ptr %i.cz, align 8, !tbaa !197
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body139

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @__cxa_free_exception(ptr %i.cy) #20
  br label %.body139

bb.o:                                             ; preds = %bb.l
  %i.dm = zext i32 %i.cv to i64
  %i.dn = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cm, i64 noundef %i.dm)
          to label %.noexc141 unwind label %bb.q  ; 3 uses

.noexc141:                                        ; preds = %bb.o
  store i32 %i.ct, ptr %i.dn, align 4, !tbaa !13
  %.phi.trans.insert.i.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.pre2.i.i.pre = load i32, ptr %.phi.trans.insert.i.i.phi.trans.insert, align 4, !tbaa !13
  br label %.noexc83

bb.p:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc83:                                         ; preds = %.noexc141, %.noexc138
  %.pre2.i.i = phi i32 [ 0, %.noexc138 ], [ %.pre2.i.i.pre, %.noexc141 ]
  %.pn173 = phi ptr [ %i.cp, %.noexc138 ], [ %i.dn, %.noexc141 ]
  %.sroa.7.6 = getelementptr inbounds nuw i8, ptr %.pn173, i64 8
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.i, %.noexc83
  %.sroa.7.5 = phi ptr [ %.sroa.7.6, %.noexc83 ], [ %.sroa.7.2225, %bb.i ] ; 4 uses
  %i.do = phi i32 [ %.pre2.i.i, %.noexc83 ], [ %i.cl, %bb.i ] ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.sroa.7.5, i64 -4
  %i.dq = zext i32 %i.do to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.5, i64 %i.dq
  store ptr %.sroa.0.1, ptr %i.dr, align 8, !tbaa !37
  %i.ds = add i32 %i.do, 1
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.0226, i64 8 ; 2 uses
  %.not65 = icmp eq ptr %i.dt, %i.ay
  br i1 %.not65, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %bb.o, %bb.j
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.body139:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.n, %bb.q
  %eh.lpad-body140 = phi { ptr, i32 } [ %i.du, %bb.q ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dl, %bb.n ] ; 3 uses
  %.not.i.i85 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i85, label %.body133, label %bb.r

bb.r:                                             ; preds = %.body139
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !42
  %i.dx = add i32 %i.dw, -1                       ; 2 uses
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !42
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.s, label %.body133

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bt, ptr noundef nonnull %.sroa.0.1)
          to label %.body133 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #21
  unreachable

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit.loopexit: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i
  store ptr %i.bo, ptr %6, align 8
  br label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit: ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit.loopexit, %._crit_edge, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i
  %i.eb = phi ptr [ %i.bo, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit.loopexit ], [ null, %._crit_edge ], [ null, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i ]
  invoke void @_ZN11func_interp16insert_new_entryEPKP4exprS1_(ptr noundef nonnull align 8 dereferenceable(72) %.1, ptr noundef %.sroa.7.2.lcssa, ptr noundef %i.eb)
          to label %bb.u unwind label %bb.z

bb.u:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit
  %i.ec = load ptr, ptr %6, align 8, !tbaa !56    ; 3 uses
  %.not.i.i87 = icmp eq ptr %i.ec, null
  br i1 %.not.i.i87, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = load ptr, ptr %i.l, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !42
  %i.eg = add i32 %i.ef, -1                       ; 2 uses
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !42
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.w, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ed, ptr noundef nonnull %i.ec)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit88 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ei = landingpad { ptr, i32 }
          catch ptr null
  %i.ej = extractvalue { ptr, i32 } %i.ei, 0
  call void @__clang_call_terminate(ptr %i.ej) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit88:       ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0153.0231, i64 40 ; 3 uses
  %.not1.i.i = icmp eq ptr %i.ek, %i.s
  br i1 %.not1.i.i, label %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit88, %bb.y
  %.sroa.0153.1 = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %_ZN7obj_refI4expr11ast_managerED2Ev.exit88 ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0153.1, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !258
  %i.en = icmp eq i32 %i.em, 2
  br i1 %i.en, label %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i89
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0153.1, i64 40 ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.eo, %i.s
  br i1 %.not.i.i90, label %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit, label %.lr.ph.i.i89, !llvm.loop !261

_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit: ; preds = %.lr.ph.i.i89, %bb.y, %_ZN7obj_refI4expr11ast_managerED2Ev.exit88
  %.sroa.0153.2 = phi ptr [ %i.ek, %_ZN7obj_refI4expr11ast_managerED2Ev.exit88 ], [ %i.eo, %bb.y ], [ %.sroa.0153.1, %.lr.ph.i.i89 ] ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0153.2, %i.x
  br i1 %.not172, label %._crit_edge235, label %.lr.ph234

bb.z:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.split.i, %bb.z
  %.pn66 = phi { ptr, i32 } [ %i.ep, %bb.z ], [ %i.bq, %.split.i ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body133

bb.aa:                                            ; preds = %._crit_edge235
  %i.eq = getelementptr inbounds nuw i8, ptr %.056241, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.eq, %i.j
  br i1 %.not, label %._crit_edge243, label %bb.b

bb.ab:                                            ; preds = %._crit_edge235
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body133

_ZN8subterms6groundERK10ref_vectorI4expr11ast_managerEP10ptr_vectorIS1_EP8obj_markIS1_10bit_vector14default_t2uintIS1_EE.exit: ; preds = %._crit_edge243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZNK8subterms5beginEv(ptr dead_on_unwind nonnull writable sret(%"class.subterms::iterator") align 8 %8, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.ac unwind label %bb.at

bb.ac:                                            ; preds = %_ZN8subterms6groundERK10ref_vectorI4expr11ast_managerEP10ptr_vectorIS1_EP8obj_markIS1_10bit_vector14default_t2uintIS1_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  invoke void @_ZNK8subterms3endEv(ptr dead_on_unwind nonnull writable sret(%"class.subterms::iterator") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %.preheader unwind label %bb.au

.preheader:                                       ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader, %_Z17is_uninterp_constPK4expr.exit.thread
  %i.eu = invoke noundef zeroext i1 @_ZNK8subterms8iteratorneERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %9)
          to label %bb.ae unwind label %bb.av

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.eu, label %bb.aw, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !18 ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ew)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #21
  unreachable

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i: ; preds = %bb.ag, %bb.af
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i91 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i91, label %_ZN8subterms8iteratorD2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fc)
          to label %_ZN8subterms8iteratorD2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fd = landingpad { ptr, i32 }
          catch ptr null
  %i.fe = extractvalue { ptr, i32 } %i.fd, 0
  call void @__clang_call_terminate(ptr %i.fe) #21
  unreachable

_ZN8subterms8iteratorD2Ev.exit:                   ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i92, label %bb.ak

bb.ak:                                            ; preds = %_ZN8subterms8iteratorD2Ev.exit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fg)
          to label %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i92 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #21
  unreachable

_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i92: ; preds = %bb.ak, %_ZN8subterms8iteratorD2Ev.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i93, label %_ZN8subterms8iteratorD2Ev.exit94, label %bb.am

bb.am:                                            ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i92
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fm)
          to label %_ZN8subterms8iteratorD2Ev.exit94 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #21
  unreachable

_ZN8subterms8iteratorD2Ev.exit94:                 ; preds = %_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev.exit.i92, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN8subtermsD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.fp = icmp eq ptr %.sroa.7.0.lcssa, null
  br i1 %i.fp, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i95

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i95:         ; preds = %_ZN8subterms8iteratorD2Ev.exit94
  %i.fq = getelementptr inbounds i8, ptr %.sroa.7.0.lcssa, i64 -4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !13 ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 3
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 %i.ft
  %.not.i96 = icmp eq i32 %i.fr, 0
  br i1 %.not.i96, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i104, label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i95, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100
  %.06.i.i98 = phi ptr [ %i.ga, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100 ], [ %.sroa.7.0.lcssa, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i95 ] ; 2 uses
  %i.fv = load ptr, ptr %.06.i.i98, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i.i99, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i.i97
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !42
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !42
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.ap, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull %i.fv)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100 unwind label %bb.ar

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i100: ; preds = %bb.ap, %bb.ao, %.lr.ph.i.i97
end_hunk_0
begin_hunk_1_@_ZN5smtfd9ar_plugin10mk_eq_idxsEP3appS2_:bb.a
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %.lr.ph, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  br label %bb.c

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8, !tbaa !39, !noalias !560 ; 2 uses
  %.pre17 = load ptr, ptr %i.d, align 8, !tbaa !21, !noalias !560 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.j = icmp eq ptr %.pre17, null
  br i1 %i.j, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds i8, ptr %.pre17, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13, !noalias !560
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %bb.a, %bb.b, %._crit_edge
  %i.m = phi ptr [ %.pre, %bb.b ], [ %.pre, %._crit_edge ], [ %i.b, %bb.a ]
  %i.n = phi ptr [ %.pre17, %bb.b ], [ null, %._crit_edge ], [ null, %bb.a ]
  %.0.i.i.i = phi i32 [ %i.l, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.a ]
  %i.o = invoke noundef ptr @_Z6mk_andR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.m, i32 noundef %.0.i.i.i, ptr noundef %i.n)
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.p = load ptr, ptr %4, align 8, !tbaa !39, !noalias !560, !nonnull !40, !align !41
  store ptr %i.o, ptr %0, align 8, !tbaa !56, !alias.scope !560
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !58, !alias.scope !560
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42, !noalias !560
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !42, !noalias !560
  br label %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !190, !nonnull !40, !align !41
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37
  %i.z = invoke noundef ptr @_ZN11ast_manager6mk_appEiiP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952) %i.u, i32 noundef 0, i32 noundef 2, ptr noundef %i.w, ptr noundef %i.y)
          to label %_ZN11ast_manager5mk_eqEP4exprS1_.exit unwind label %bb.h ; 3 uses

_ZN11ast_manager5mk_eqEP4exprS1_.exit:            ; preds = %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !42
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.d, %_ZN11ast_manager5mk_eqEP4exprS1_.exit
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !21  ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !13 ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %.noexc13, %bb.e
  %i.ak = phi i32 [ %.pre2.i.i, %.noexc13 ], [ %i.ag, %bb.e ] ; 2 uses
  %i.al = phi ptr [ %.pre.i.i, %.noexc13 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = zext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.an
  store ptr %i.z, ptr %i.ao, align 8, !tbaa !37
  %i.ap = add i32 %i.ak, 1
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !84
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp samesign ult i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.c, label %._crit_edge, !llvm.loop !563

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !21  ; 5 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !13 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.az
  %.not.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.bh, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.au, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.bb = load ptr, ptr %.06.i.i, align 8, !tbaa !37 ; 3 uses
  %i.bc = load ptr, ptr %4, align 8, !tbaa !39, !nonnull !40, !align !41
  %.not.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !42
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !42
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bc, ptr noundef nonnull %i.bb)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.l

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.bi = icmp ult ptr %i.bh, %i.ba
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !44

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i14, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.bj = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.au, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bk)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_Z6mk_andRK10ref_vectorI4expr11ast_managerE.exit, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.m:                                             ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.h
  %.pn = phi { ptr, i32 } [ %i.at, %bb.h ], [ %i.bp, %bb.m ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5smtfd9ar_plugin14mk_array_valueER9hashtableINS_5f_appENS_10f_app_hashENS_8f_app_eqEE(ptr dead_on_unwind noalias writable sret(%class.obj_ref) align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %class.obj_ref, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %class.parameter, align 8           ; 8 uses
  %7 = alloca %class.obj_ref, align 8             ; 8 uses
  %8 = alloca %class.ref_vector, align 8          ; 9 uses
  %9 = alloca %class.obj_ref, align 8             ; 11 uses
  %10 = alloca %class.obj_ref, align 8            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !190, !nonnull !40, !align !41 ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store ptr null, ptr %7, align 8, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.f = ptrtoint ptr %i.c to i64
  store i64 %i.f, ptr %8, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 12 uses
  store ptr null, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !254  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !257  ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.l, 40
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i ; 4 uses
  %.not1.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i.i.i, label %.loopexit93, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.b ], [ %i.i, %bb.a ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !258
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %.loopexit93, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.m
  br i1 %.not.i.i.i, label %.loopexit93, label %.lr.ph.i.i.i, !llvm.loop !261

.loopexit93:                                      ; preds = %.lr.ph.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i = phi ptr [ %i.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %.not96 = icmp eq ptr %.sroa.0.1.i, %i.r
  br i1 %.not96, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.thread, label %.lr.ph99

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.thread: ; preds = %.loopexit93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

.lr.ph99:                                         ; preds = %.loopexit93
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.j

._crit_edge100:                                   ; preds = %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit
  %.pre105 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 5 uses
  %i.y = icmp eq ptr %.pre105, null
  br i1 %i.y, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %._crit_edge100
  %i.z = getelementptr inbounds i8, ptr %.pre105, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !13  ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre105, i64 %i.ac
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ak, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %.pre105, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %.06.i.i, align 8, !tbaa !37 ; 3 uses
  %i.af = load ptr, ptr %8, align 8, !tbaa !39, !nonnull !40, !align !41
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !42
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.af, ptr noundef nonnull %i.ae)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %bb.f

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.al = icmp ult ptr %i.ak, %i.ad
  br i1 %i.al, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !44

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i33, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.am = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %.pre105, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ]
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.an)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i._ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit_crit_edge unwind label %bb.e

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i._ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit_crit_edge: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %.pre106 = load ptr, ptr %7, align 8, !tbaa !56
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit

bb.e:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #21
  unreachable

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i._ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit_crit_edge, %._crit_edge100, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i
  %i.as = phi ptr [ %.pre106, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i._ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit_crit_edge ], [ %i.id, %._crit_edge100 ], [ %i.id, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !42
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.at, ptr noundef nonnull %i.as)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #21
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit.thread, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.j:                                             ; preds = %.lr.ph99, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit
  %i.ba = phi ptr [ null, %.lr.ph99 ], [ %i.id, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 5 uses
  %i.bb = phi ptr [ null, %.lr.ph99 ], [ %i.ie, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 8 uses
  %i.bc = phi ptr [ null, %.lr.ph99 ], [ %i.if, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 5 uses
  %i.bd = phi ptr [ null, %.lr.ph99 ], [ %i.ig, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 5 uses
  %.sroa.089.097 = phi ptr [ %.sroa.0.1.i, %.lr.ph99 ], [ %.sroa.089.2, %_ZN14core_hashtableI18default_hash_entryIN5smtfd5f_appEENS1_10f_app_hashENS1_8f_app_eqEE8iteratorppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.089.097, i64 16 ; 4 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !353, !noalias !564, !nonnull !40, !align !41
  invoke void @_ZN5smtfd14plugin_context11model_valueEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %9, ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef %i.bf)
          to label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit unwind label %bb.u

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit: ; preds = %bb.j
  %i.bh = icmp eq ptr %i.bd, null
  br i1 %i.bh, label %bb.k, label %bb.w

bb.k:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !83
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !37
  %i.bl = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bk)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %9, align 8, !tbaa !56    ; 3 uses
  %.not.i34 = icmp eq ptr %i.bb, %i.bm
  br i1 %.not.i34, label %_ZN7obj_refI4expr11ast_managerEaSERKS2_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i.i35 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i35, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.e, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !42
  %i.bq = add i32 %i.bp, -1                       ; 2 uses
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !42
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.o, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.bn, ptr noundef nonnull %i.bb)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.o
  %.pr.pre.i = load ptr, ptr %9, align 8, !tbaa !56
end_hunk_1
begin_hunk_2_@_ZN5smtfd9ar_plugin14mk_array_valueER9hashtableINS_5f_appENS_10f_app_hashENS_8f_app_eqEE:bb.a
  br i1 %.not.i4.i, label %thread-pre-split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !42
  %i.ci = add i32 %i.ch, -1                       ; 2 uses
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !42
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.t, label %thread-pre-split

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cf, ptr noundef nonnull %i.ce)
          to label %thread-pre-split unwind label %bb.v

bb.u:                                             ; preds = %bb.j
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit:                                        ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ab, %bb.ad, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.t, %bb.o, %bb.k
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit
  %i.cm = load ptr, ptr %9, align 8, !tbaa !56    ; 2 uses
  %.not92 = icmp eq ptr %i.cm, %i.bc
  br i1 %.not92, label %bb.as, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !21  ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39:         ; preds = %bb.x
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !13 ; 2 uses
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %.not.i40 = icmp eq i32 %i.cq, 0
  br i1 %.not.i40, label %bb.aa, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44
  %.06.i.i42 = phi ptr [ %i.da, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44 ], [ %i.cn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39 ] ; 2 uses
  %i.cu = load ptr, ptr %.06.i.i42, align 8, !tbaa !37 ; 3 uses
  %i.cv = load ptr, ptr %8, align 8, !tbaa !39, !nonnull !40, !align !41
  %.not.i.i.i.i.i43 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i.i.i43, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !42
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !42
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.z, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cv, ptr noundef nonnull %i.cu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44 unwind label %.loopexit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44: ; preds = %bb.z, %bb.y, %.lr.ph.i.i41
  %i.da = getelementptr inbounds nuw i8, ptr %.06.i.i42, i64 8 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.ct
  br i1 %i.db, label %.lr.ph.i.i41, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i45, !llvm.loop !44

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i45: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i44
  %.pre.i46 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %.not.i.i47 = icmp eq ptr %.pre.i46, null
  br i1 %.not.i.i47, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, label %bb.aa

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i45, %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !42
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !42
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i45, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39
  %i.df = phi ptr [ %.pre.i46, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i45 ], [ %i.cn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i39 ] ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 0, ptr %i.dg, align 4, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !42
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !42
  %i.dk = getelementptr inbounds i8, ptr %i.df, i64 -4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !13 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.ab, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.ab:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.thread, %bb.aa
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !13
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.aa, %.noexc50
  %i.dp = phi i32 [ %.pre2.i.i, %.noexc50 ], [ %i.dl, %bb.aa ] ; 2 uses
  %i.dq = phi ptr [ %.pre.i.i, %.noexc50 ], [ %i.df, %bb.aa ] ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  %i.ds = zext i32 %i.dp to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds
  store ptr %i.bd, ptr %i.dt, align 8, !tbaa !37
  %i.du = add i32 %i.dp, 1
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !13
  %i.dv = load ptr, ptr %i.be, align 8, !tbaa !83 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !84
  %i.dy = icmp ugt i32 %i.dx, 1
  br i1 %i.dy, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit66, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit
  %i.dz = phi ptr [ %i.dq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.gw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit66 ] ; 3 uses
  %i.ea = load ptr, ptr %9, align 8, !tbaa !56    ; 3 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i51, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !42
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !42
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52: ; preds = %._crit_edge, %bb.ac
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 -4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !13 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !13
  %i.ei = icmp eq i32 %i.ef, %i.eh
  br i1 %i.ei, label %bb.ad, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

bb.ad:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ad
  %.pre.i.i53 = load ptr, ptr %i.g, align 8, !tbaa !21 ; 2 uses
  %.phi.trans.insert.i.i54 = getelementptr inbounds i8, ptr %.pre.i.i53, i64 -4
  %.pre2.i.i55 = load i32, ptr %.phi.trans.insert.i.i54, align 4, !tbaa !13
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

.lr.ph:                                           ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %_ZN7obj_refI4expr11ast_managerED2Ev.exit66
  %i.ej = phi ptr [ %i.gw, %_ZN7obj_refI4expr11ast_managerED2Ev.exit66 ], [ %i.dq, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7obj_refI4expr11ast_managerED2Ev.exit66 ], [ 1, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ] ; 2 uses
  %i.ek = phi ptr [ %i.hc, %_ZN7obj_refI4expr11ast_managerED2Ev.exit66 ], [ %i.dv, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !37
  %i.eo = load ptr, ptr %i.s, align 8, !tbaa !353, !noalias !567, !nonnull !40, !align !41 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46, !noalias !570, !nonnull !40, !align !41
  store ptr null, ptr %10, align 8, !tbaa !56, !alias.scope !570
  store ptr %i.ep, ptr %i.t, align 8, !tbaa !58, !alias.scope !570
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8, !noalias !570 ; 4 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread, label %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i

_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i: ; preds = %.lr.ph
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !13, !noalias !570 ; 2 uses
  %i.ev = zext i32 %i.eu to i64
  %i.ew = shl nuw nsw i64 %i.ev, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ew
  %.not21.i = icmp eq i32 %i.eu, 0
  br i1 %.not21.i, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i
  %.01422.i = phi ptr [ %i.fd, %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i ], [ %i.er, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i ] ; 2 uses
  %i.ey = load ptr, ptr %.01422.i, align 8, !tbaa !14, !noalias !570 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20, !noalias !570
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !16, !noalias !570
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !570
  invoke void %i.fb(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %i.ey, ptr noundef %i.en)
          to label %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i unwind label %.split.i, !noalias !570

_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i: ; preds = %.lr.ph.split.i
  %i.fc = load ptr, ptr %5, align 8, !tbaa !56, !noalias !570 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !570
  %.not20.i = icmp ne ptr %i.fc, null
  %i.fd = getelementptr inbounds nuw i8, ptr %.01422.i, i64 8 ; 2 uses
  %.not.i80 = icmp eq ptr %i.fd, %i.ex
  %or.cond26.i = select i1 %.not20.i, i1 true, i1 %.not.i80
  br i1 %or.cond26.i, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59, label %.lr.ph.split.i

.split.i:                                         ; preds = %.lr.ph.split.i
  %i.fe = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %10, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !570
  br label %.body81

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59: ; preds = %_ZN7obj_refI4expr11ast_managerEaSEOS2_.exit.thread.i
  store ptr %i.fc, ptr %10, align 8
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !21  ; 2 uses
  %i.ff = icmp eq ptr %.pre, null
  br i1 %i.ff, label %bb.ae, label %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread

_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread: ; preds = %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i, %.lr.ph, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59
  %i.fg = phi ptr [ %i.fc, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59 ], [ null, %.lr.ph ], [ null, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i ] ; 2 uses
  %i.fh = phi ptr [ %.pre, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59 ], [ %i.ej, %.lr.ph ], [ %i.ej, %_ZN6vectorIPN5smtfd13theory_pluginELb0EjE3endEv.exit.i ] ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !13 ; 5 uses
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 -8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !13
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.af, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit66

bb.ae:                                            ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59
  %i.fn = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc85 unwind label %bb.ao  ; 3 uses

.noexc85:                                         ; preds = %bb.ae
  store i32 2, ptr %i.fn, align 4, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i32 0, ptr %i.fo, align 4, !tbaa !13
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  store ptr %i.fp, ptr %i.g, align 8, !tbaa !21
  br label %.noexc63

bb.af:                                            ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread
  %i.fq = mul i32 %i.fj, 3
  %i.fr = add i32 %i.fq, 1
  %i.fs = lshr i32 %i.fr, 1                       ; 3 uses
  %i.ft = shl i32 %i.fs, 3
  %i.fu = add i32 %i.ft, 8                        ; 2 uses
  %.not.i83 = icmp ugt i32 %i.fs, %i.fj
  br i1 %.not.i83, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fv = shl i32 %i.fj, 3
  %i.fw = add i32 %i.fv, 8
  %.not27.i = icmp ugt i32 %i.fu, %i.fw
  br i1 %.not27.i, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fx = call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.fx, align 8, !tbaa !16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24 ; 3 uses
  store ptr %i.fz, ptr %i.fy, align 8, !tbaa !195
  %i.ga = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !196 ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 16
  call void @llvm.assume(i1 %i.gf)
  %i.gg = add nuw nsw i64 %i.ge, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, ptr noundef nonnull align 8 dereferenceable(1) %i.gb, i64 %i.gg, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ai
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !252
  %i.gh = load i64, ptr %i.gb, align 8, !tbaa !197
  store i64 %i.gh, ptr %i.fz, align 8, !tbaa !197
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i84 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !196
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.aj
  %i.gi = phi i64 [ %i.ge, %bb.aj ], [ %.pre.i84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.gi, ptr %i.gk, align 8, !tbaa !196
  store ptr %i.gb, ptr %3, align 8, !tbaa !252
  store i64 0, ptr %i.gj, align 8, !tbaa !196
  store i8 0, ptr %i.gb, align 8, !tbaa !197
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.an unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %3, align 8, !tbaa !252   ; 2 uses
  %i.gn = icmp eq ptr %i.gm, %i.gb
  br i1 %i.gn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.ak
  %i.go = load i64, ptr %i.gb, align 8, !tbaa !197
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.body81

bb.al:                                            ; preds = %bb.ah
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @__cxa_free_exception(ptr %i.fx) #20
  br label %.body81

bb.am:                                            ; preds = %bb.ag
  %i.gr = zext i32 %i.fu to i64
  %i.gs = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gr)
          to label %.noexc88 unwind label %bb.ao  ; 2 uses

.noexc88:                                         ; preds = %bb.am
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  store ptr %i.gt, ptr %i.g, align 8, !tbaa !21
  store i32 %i.fs, ptr %i.gs, align 4, !tbaa !13
  br label %.noexc63

bb.an:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc63:                                         ; preds = %.noexc88, %.noexc85
  %i.gu = phi ptr [ %i.fg, %.noexc88 ], [ %i.fc, %.noexc85 ]
  %.pre.i.i60 = phi ptr [ %i.gt, %.noexc88 ], [ %i.fp, %.noexc85 ] ; 2 uses
  %.phi.trans.insert.i.i61 = getelementptr inbounds i8, ptr %.pre.i.i60, i64 -4
  %.pre2.i.i62 = load i32, ptr %.phi.trans.insert.i.i61, align 4, !tbaa !13
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit66

_ZN7obj_refI4expr11ast_managerED2Ev.exit66:       ; preds = %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread, %.noexc63
  %i.gv = phi ptr [ %i.gu, %.noexc63 ], [ %i.fg, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread ]
  %i.gw = phi ptr [ %.pre.i.i60, %.noexc63 ], [ %i.fh, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread ] ; 4 uses
  %i.gx = phi i32 [ %.pre2.i.i62, %.noexc63 ], [ %i.fj, %_ZN5smtfd13theory_plugin11model_valueEP4expr.exit59.thread ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.gz = zext i32 %i.gx to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %i.gz
  store ptr %i.gv, ptr %i.ha, align 8, !tbaa !37
  %i.hb = add i32 %i.gx, 1
  store i32 %i.hb, ptr %i.gy, align 4, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hc = load ptr, ptr %i.be, align 8, !tbaa !83 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 24
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !84
  %i.hf = zext i32 %i.he to i64
  %i.hg = icmp samesign ult i64 %indvars.iv.next, %i.hf
  br i1 %i.hg, label %.lr.ph, label %._crit_edge, !llvm.loop !573

bb.ao:                                            ; preds = %bb.am, %bb.ae
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body81

.body81:                                          ; preds = %bb.ao, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %.split.i
  %.pn = phi { ptr, i32 } [ %i.fe, %.split.i ], [ %i.hh, %bb.ao ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.gq, %bb.al ]
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %.body

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %.noexc56, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52
  %i.hi = phi i32 [ %.pre2.i.i55, %.noexc56 ], [ %i.ef, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52 ] ; 2 uses
  %i.hj = phi ptr [ %.pre.i.i53, %.noexc56 ], [ %i.dz, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i52 ] ; 3 uses
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -4
  %i.hl = zext i32 %i.hi to i64
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hl
  store ptr %i.ea, ptr %i.hm, align 8, !tbaa !37
  %i.hn = add i32 %i.hi, 1                        ; 2 uses
  store i32 %i.hn, ptr %i.hk, align 4, !tbaa !13
  %i.ho = load ptr, ptr %i.v, align 8, !tbaa !484, !nonnull !40, !align !41
  %i.hp = load i32, ptr %i.u, align 8, !tbaa !467
  %i.hq = invoke noundef ptr @_ZN11ast_manager6mk_appEiijPK9parameterjPKP4exprP4sort(ptr noundef nonnull align 8 dereferenceable(952) %i.ho, i32 noundef %i.hp, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %i.hn, ptr noundef nonnull %i.hj, ptr noundef null)
          to label %_ZNK10array_util8mk_storeERK10ref_vectorI4expr11ast_managerE.exit unwind label %.loopexit.split-lp ; 5 uses

_ZNK10array_util8mk_storeERK10ref_vectorI4expr11ast_managerE.exit: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %.not.i68 = icmp eq ptr %i.hq, null
  br i1 %.not.i68, label %bb.ap, label %_ZN11ast_manager7inc_refEP3ast.exit.i69

_ZN11ast_manager7inc_refEP3ast.exit.i69:          ; preds = %_ZNK10array_util8mk_storeERK10ref_vectorI4expr11ast_managerE.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !42
  %i.ht = add i32 %i.hs, 1
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !42
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i69, %_ZNK10array_util8mk_storeERK10ref_vectorI4expr11ast_managerE.exit
  %i.hu = load ptr, ptr %0, align 8, !tbaa !56    ; 3 uses
  %.not.i4.i70 = icmp eq ptr %i.hu, null
  br i1 %.not.i4.i70, label %thread-pre-split, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hv = load ptr, ptr %i.d, align 8, !tbaa !59, !nonnull !40, !align !41
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !42
  %i.hy = add i32 %i.hx, -1                       ; 2 uses
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !42
  %i.hz = icmp eq i32 %i.hy, 0
end_hunk_2
