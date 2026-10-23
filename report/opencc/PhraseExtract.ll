Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/PhraseExtract?download=true
inline.NumInlined: 1948
inline.NumDeleted: 493
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !42, !alias.scope !476
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !477 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !39, !alias.scope !477 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !478
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !40, !alias.scope !476
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !41, !alias.scope !477
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !41, !alias.scope !476
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !39, !alias.scope !477
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !39, !alias.scope !476
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !477
  store i64 0, ptr %i.bc, align 8, !tbaa !39, !alias.scope !477
  store i8 0, ptr %i.au, align 8, !tbaa !41, !alias.scope !477
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !123
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #28
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !36
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !122
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !123
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN5TCLAP10XorHandler5checkEPKNS_3ArgE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !85     ; 3 uses
  %.not101 = icmp eq ptr %i.b, %i.c
  br i1 %.not101, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90   ; 6 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = ashr i64 %i.n, 5                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.q = and i64 %i.n, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.ac, %bb.f ] ; 9 uses
  %i.r = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !78
  %i.s = icmp eq ptr %i.r, %1
  br i1 %i.s, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !78
  %i.y = icmp eq ptr %i.x, %1
  br i1 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = icmp eq ptr %i.aa, %1
  br i1 %i.ab, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit134, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.ad = add nsw i64 %.052.i.i.i, -1
  %i.ae = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !479

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.f
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.l, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.n, %.lr.ph ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.i, %.lr.ph ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.af, label %.thread [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.ag = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !78
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.h
  %.sroa.032.1.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !78
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.al, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !78
  %i.an = icmp eq ptr %i.am, %1
  %spec.select.i.i.i = select i1 %i.an, ptr %.sroa.032.2.i.i.i, ptr %i.k
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit134: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit134, %bb.g, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.g ], [ %i.aq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit134 ], [ %i.ap, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit132 ], [ %i.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.b ] ; 2 uses
  %.not77 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.k
  br i1 %.not77, label %.thread, label %.preheader80

.preheader80:                                     ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit
  %.not7894 = icmp eq ptr %i.i, %i.k
  br i1 %.not7894, label %._crit_edge100, label %.lr.ph96

.lr.ph96:                                         ; preds = %.preheader80, %bb.r
  %.sroa.042.095 = phi ptr [ %i.bu, %bb.r ], [ %i.i, %.preheader80 ] ; 3 uses
  %i.ar = load ptr, ptr %.sroa.042.095, align 8, !tbaa !78 ; 3 uses
  %.not29 = icmp eq ptr %1, %i.ar
  br i1 %.not29, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph96
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 145
  %i.at = load i8, ptr %i.as, align 1, !tbaa !45, !range !31, !noundef !32
  %.not.i = icmp ne i8 %i.at, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 161
  %i.av = load i8, ptr %i.au, align 1, !range !31
  %.not4.i = icmp eq i8 %i.av, 0
  %i.aw = select i1 %.not.i, i1 %.not4.i, i1 false
  br i1 %i.aw, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.ax = tail call ptr @__cxa_allocate_exception(i64 104) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.l unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ay = load ptr, ptr %.sroa.042.095, align 8, !tbaa !78 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(163) %i.ay)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5TCLAP21CmdLineParseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN5TCLAP21CmdLineParseExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #27
          to label %bb.u unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread: ; preds = %bb.k
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.020 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !41
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bj = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.bn = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !41
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #28
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !41
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bt) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.020, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br i1 %.020, label %bb.p, label %bb.q

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread
  %.pn.pn59.ph = phi { ptr, i32 } [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn.pn59 = phi { ptr, i32 } [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %.pn.pn59.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ax) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %.pn.pn58 = phi { ptr, i32 } [ %.pn.pn59, %bb.p ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ]
  resume { ptr, i32 } %.pn.pn58

bb.r:                                             ; preds = %.lr.ph96, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.042.095, i64 8 ; 2 uses
  %.not78 = icmp eq ptr %i.bu, %i.k
  br i1 %.not78, label %.lr.ph99, label %.lr.ph96, !llvm.loop !480

._crit_edge100:                                   ; preds = %bb.t, %.preheader80
  %i.bv = load ptr, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, align 8, !tbaa !78 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !38
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(163) %i.bv)
  br i1 %i.bz, label %.thread72, label %.split

.lr.ph99:                                         ; preds = %bb.r, %bb.t
  %.sroa.036.098 = phi ptr [ %i.cd, %bb.t ], [ %i.i, %bb.r ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.036.098, align 8, !tbaa !78 ; 3 uses
  %.not = icmp eq ptr %1, %i.ca
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph99
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 145
  store i8 1, ptr %i.cb, align 1, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 161
  store i8 1, ptr %i.cc, align 1, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph99, %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.036.098, i64 8 ; 2 uses
  %.not79 = icmp eq ptr %i.cd, %i.k
  br i1 %.not79, label %._crit_edge100, label %.lr.ph99, !llvm.loop !481

.split:                                           ; preds = %._crit_edge100
  %i.ce = load ptr, ptr %0, align 8, !tbaa !85
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !131
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !92
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = lshr exact i64 %i.cl, 3
  %i.cn = trunc i64 %i.cm to i32
  br label %.thread72

.thread:                                          ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5TCLAP3ArgESt6vectorIS4_SaIS4_EEEEPKS3_ET_SC_SC_RKT0_.exit
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !482

._crit_edge:                                      ; preds = %.thread, %bb.a
  %i.co = load ptr, ptr %1, align 8, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(163) %1)
  %. = zext i1 %i.cr to i32
  br label %.thread72

.thread72:                                        ; preds = %._crit_edge100, %.split, %._crit_edge
  %.3 = phi i32 [ %., %._crit_edge ], [ %i.cn, %.split ], [ 0, %._crit_edge100 ]
  ret i32 %.3

bb.u:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5TCLAP7CmdLine20missingArgsExceptionEv(ptr noundef nonnull align 8 dereferenceable(220) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store i64 0, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.b, align 8, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.040.050 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.040.050, %i.d
  br i1 %.not51, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load i64, ptr %i.c, align 8, !tbaa !39
  %.pre55 = load ptr, ptr %1, align 8, !tbaa !40, !noalias !486
  %i.e = icmp sgt i32 %.16, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %i.b, %bb.a ], [ %.pre55, %._crit_edge.loopexit ] ; 2 uses
  %i.g = phi i64 [ 0, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.05.lcssa = phi i1 [ false, %bb.a ], [ %i.e, %._crit_edge.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = add i64 %i.g, -2
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !42, !alias.scope !486
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.h, i64 %i.g) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26, !noalias !486
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !49, !noalias !486
  %i.j = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.j, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %._crit_edge
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.n     ; 2 uses

.noexc:                                           ; preds = %.noexc10.i.i
  store ptr %i.k, ptr %2, align 8, !tbaa !40, !alias.scope !486
  %i.l = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !486
  store i64 %i.l, ptr %i.i, align 8, !tbaa !41, !alias.scope !486
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %._crit_edge
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.i, %._crit_edge ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.h
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !41
  store i8 %i.n, ptr %i.m, align 1, !tbaa !41
  br label %bb.h

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.f, i64 %spec.select.i.i.i, i1 false)
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.sroa.040.053 = phi ptr [ %.sroa.040.0, %bb.g ], [ %.sroa.040.050, %bb.a ] ; 2 uses
  %.0552 = phi i32 [ %.16, %bb.g ], [ 0, %bb.a ]  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.040.053, i64 16 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !78   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(163) %i.p)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !78   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 145
  %i.w = load i8, ptr %i.v, align 1, !tbaa !45, !range !31, !noundef !32
  %.not.i = icmp ne i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 161
  %i.y = load i8, ptr %i.x, align 1, !range !31
  %.not4.i = icmp eq i8 %i.y, 0
  %i.z = select i1 %.not.i, i1 %.not4.i, i1 false
  br i1 %i.z, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39 ; 2 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !39
  %i.ad = sub i64 4611686018427387903, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.ah = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ag, i64 noundef %i.ab)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ai = load i64, ptr %i.c, align 8, !tbaa !39
  %i.aj = and i64 %i.ai, -2
  %i.ak = icmp eq i64 %i.aj, 4611686018427387902
  br i1 %i.ak, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

.invoke:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #27
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.67, i64 noundef 2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.am = add nsw i32 %.0552, 1
  br label %bb.g

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %.lr.ph, %.invoke
  %lpad.loopexit.split-lp75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.d, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %.16 = phi i32 [ %.0552, %bb.e ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit ], [ %.0552, %bb.d ] ; 2 uses
  %.sroa.040.0 = load ptr, ptr %.sroa.040.053, align 8, !tbaa !74 ; 2 uses
  %.not = icmp eq ptr %.sroa.040.0, %i.d
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !485

bb.h:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !49, !noalias !486 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !39, !alias.scope !486
  %i.ap = load ptr, ptr %2, align 8, !tbaa !40, !alias.scope !486
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26, !noalias !486
  %i.ar = load ptr, ptr %1, align 8, !tbaa !40    ; 6 uses
  %i.as = icmp eq ptr %i.ar, %i.b
  %i.at = load ptr, ptr %2, align 8, !tbaa !40    ; 5 uses
  %i.au = icmp eq ptr %i.at, %i.i                 ; 2 uses
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.au, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.au, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.av = load i64, ptr %i.ao, align 8, !tbaa !39 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  switch i64 %i.av, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.at, align 1, !tbaa !41
  store i8 %i.ax, ptr %i.ar, align 1, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ay = load i64, ptr %i.ao, align 8, !tbaa !39 ; 2 uses
  store i64 %i.ay, ptr %i.c, align 8, !tbaa !39
  %i.az = load ptr, ptr %1, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !41
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.at, ptr %1, align 8, !tbaa !40
  %i.bb = load <2 x i64>, ptr %i.ao, align 8, !tbaa !41
  store <2 x i64> %i.bb, ptr %i.c, align 8, !tbaa !41
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !41
  store ptr %i.at, ptr %1, align 8, !tbaa !40
  %i.bd = load <2 x i64>, ptr %i.ao, align 8, !tbaa !41
  store <2 x i64> %i.bd, ptr %i.c, align 8, !tbaa !41
  %.not.i.a = icmp eq ptr %i.ar, null
  br i1 %.not.i.a, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ar, ptr %2, align 8, !tbaa !40
  store i64 %i.bc, ptr %i.i, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %2, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.be = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ar, %bb.l ], [ %i.i, %bb.m ]
  store i64 0, ptr %i.ao, align 8, !tbaa !39
  store i8 0, ptr %i.be, align 1, !tbaa !41
  %i.bf = load ptr, ptr %2, align 8, !tbaa !40    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.i
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bh = load i64, ptr %i.i, align 8, !tbaa !41
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !42
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !39
  store i8 0, ptr %i.bj, align 8, !tbaa !41
  %i.bl = select i1 %.05.lcssa, ptr @.str.68, ptr @.str.69
  %i.bm = select i1 %.05.lcssa, i64 28, i64 27
  %i.bn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.bl, i64 noundef %i.bm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.o ; 0 uses

bb.n:                                             ; preds = %.noexc10.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.loopexit.split-lp

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23, %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.br = load i64, ptr %i.bk, align 8, !tbaa !39
  %i.bs = sub i64 4611686018427387903, %i.br
  %i.bt = icmp ult i64 %i.bs, %i.bq
  br i1 %i.bt, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #27
          to label %.noexc24 unwind label %bb.o

.noexc24:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.bu = load ptr, ptr %1, align 8, !tbaa !40
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.bu, i64 noundef %i.bq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26 unwind label %bb.o ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i23
  %i.bw = call ptr @__cxa_allocate_exception(i64 104) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.bx, ptr %4, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bx, ptr noundef nonnull align 1 dereferenceable(9) @.str.64, i64 9, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 9, ptr %i.by, align 8, !tbaa !39
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 25
  store i8 0, ptr %i.bz, align 1, !tbaa !41
  invoke void @_ZN5TCLAP21CmdLineParseExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(104) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26
  invoke void @__cxa_throw(ptr nonnull %i.bw, ptr nonnull @_ZTIN5TCLAP21CmdLineParseExceptionE, ptr nonnull @_ZN5TCLAP12ArgExceptionD2Ev) #27
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26
  %.0 = phi i1 [ false, %bb.q ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit26 ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bx
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.r
end_hunk_0
