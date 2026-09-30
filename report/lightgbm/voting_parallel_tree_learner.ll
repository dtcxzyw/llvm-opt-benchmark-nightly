Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/voting_parallel_tree_learner?download=true
inline.NumInlined: 16168
inline.NumDeleted: 5419
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.q, ptr noundef nonnull align 8 dereferenceable(122) %2, i64 96, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !248  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %i.z = icmp ugt i64 %i.y, 9223372036854775804
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !250

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #35
          to label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !251 ; 2 uses
  %.pre42 = load ptr, ptr %i.t, align 8, !tbaa !251
  %.pre43 = ptrtoint ptr %.pre42 to i64
  %.pre44 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi45 = phi i64 [ %.pre44, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.x, %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre43, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.w, %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.ab = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ %i.v, %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.ac = phi ptr [ %i.aa, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIN8LightGBM9SplitInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !249
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !248
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 112
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !329
  %i.ag = sub i64 %.pre-phi, %.pre-phi45          ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 4
  br i1 %i.ah, label %bb.d, label %bb.e, !prof !252

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ac, ptr align 4 %i.ab, i64 %i.ag, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.ai = icmp eq i64 %i.ag, 4
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.ab, align 4, !tbaa !177
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !177
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ak = getelementptr inbounds i8, ptr %i.ac, i64 %i.ag
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !248
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.an = load i16, ptr %i.am, align 8
  store i16 %i.an, ptr %i.al, align 8
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %i.p, %bb.g ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1992)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(122) %.0911.i.i.i, i64 96, i1 false), !alias.scope !1993
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 96
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 96 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !251, !alias.scope !1992, !noalias !1991
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !251, !alias.scope !1991, !noalias !1992
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !329, !alias.scope !1992, !noalias !1991
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !329, !alias.scope !1991, !noalias !1992
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false), !alias.scope !1992, !noalias !1991
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 120
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 120
  %i.aw = load i16, ptr %i.av, align 8, !alias.scope !1992, !noalias !1991
  store i16 %i.aw, ptr %i.au, align 8, !alias.scope !1991, !noalias !1992
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 128 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1987

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.g ], [ %i.ay, %.lr.ph.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 128 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.bk, %.lr.ph.i.i.i28 ], [ %i.az, %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i30 = phi ptr [ %i.bj, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1995)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %.012.i.i.i29, ptr noundef nonnull align 8 dereferenceable(122) %.0911.i.i.i30, i64 96, i1 false), !alias.scope !1996
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 96 ; 2 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !251, !alias.scope !1995, !noalias !1994
  store <2 x ptr> %i.bc, ptr %i.ba, align 8, !tbaa !251, !alias.scope !1994, !noalias !1995
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !329, !alias.scope !1995, !noalias !1994
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !329, !alias.scope !1994, !noalias !1995
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false), !alias.scope !1995, !noalias !1994
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 120
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 120
  %i.bi = load i16, ptr %i.bh, align 8, !alias.scope !1995, !noalias !1994
  store i16 %i.bi, ptr %i.bg, align 8, !alias.scope !1994, !noalias !1995
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 128 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 128 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !1987

_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.az, %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bk, %.lr.ph.i.i.i28 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !308
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #34
  br label %_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8LightGBM9SplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !307
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !313
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !308
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  %i.bt = tail call ptr @__cxa_begin_catch(ptr %i.bs) #19 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #34
  invoke void @__cxa_rethrow() #37
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bq

bb.l:                                             ; preds = %bb.i
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  tail call void @__clang_call_terminate(ptr %i.bv) #36
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM9ArrayArgsINS_9SplitInfoEE9PartitionEPSt6vectorIS1_SaIS1_EEiiPiS7_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i106 = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %.sroa.0.i103 = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %.sroa.0.i100 = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %.sroa.0.i97 = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %.sroa.0.i90 = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %.sroa.0.i = alloca <{ i32, i32, i32, i32, i32, [4 x i8], double, double, double, double, double, i64, double, double, i64 }>, align 8 ; 4 uses
  %i.a = add nsw i32 %1, -1                       ; 3 uses
  %i.b = add nsw i32 %2, -1                       ; 4 uses
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.a, ptr %3, align 4, !tbaa !177
  store i32 %2, ptr %4, align 4, !tbaa !177
  br label %_ZN8LightGBM9SplitInfoD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !307
  %i.e = getelementptr inbounds nuw [128 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8 ; 4 uses
  %.sroa.7112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7112.0.copyload = load double, ptr %.sroa.7112.0..sroa_idx, align 8 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !248  ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !249  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.l, 9223372036854775804
  br i1 %i.m, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !250

.noexc.i.i.i:                                     ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #37
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #35
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !251 ; 2 uses
  %.pre163 = load ptr, ptr %i.g, align 8, !tbaa !251
  %.pre165.a = ptrtoint ptr %.pre163 to i64
  %.pre166 = ptrtoint ptr %.pre to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.c
  %.pre-phi167 = phi i64 [ %.pre166, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.k, %bb.c ]
  %.pre-phi = phi i64 [ %.pre165.a, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.j, %bb.c ]
  %i.o = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.n, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.c ] ; 4 uses
  %i.q = sub i64 %.pre-phi, %.pre-phi167          ; 3 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.f, label %bb.g, !prof !252

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.o, i64 %i.q, i1 false)
  br label %_ZN8LightGBM9SplitInfoC2ERKS0_.exit

bb.g:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.h, label %_ZN8LightGBM9SplitInfoC2ERKS0_.exit

bb.h:                                             ; preds = %bb.g
  %i.t = load i32, ptr %i.o, align 4, !tbaa !177
  store i32 %i.t, ptr %i.p, align 4, !tbaa !177
  br label %_ZN8LightGBM9SplitInfoC2ERKS0_.exit

_ZN8LightGBM9SplitInfoC2ERKS0_.exit:              ; preds = %bb.f, %bb.g, %bb.h
  %5 = icmp eq i32 %.sroa.0.0.copyload, -1
  %spec.store.select3.i = select i1 %5, i32 2147483647, i32 %.sroa.0.0.copyload ; 3 uses
  %6 = icmp ne i32 %.sroa.0.0.copyload, -1
  %i.u = sext i32 %i.b to i64
  br label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer

_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer: ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99, %_ZN8LightGBM9SplitInfoC2ERKS0_.exit
  %.072.ph = phi i32 [ %i.ah, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99 ], [ %i.a, %_ZN8LightGBM9SplitInfoC2ERKS0_.exit ]
  %.070.ph = phi i64 [ %indvars.iv.next144, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99 ], [ %i.u, %_ZN8LightGBM9SplitInfoC2ERKS0_.exit ]
  %.068.ph = phi i32 [ %.169, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99 ], [ %i.a, %_ZN8LightGBM9SplitInfoC2ERKS0_.exit ]
  %.067.ph = phi i32 [ %i.ck, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99 ], [ %i.b, %_ZN8LightGBM9SplitInfoC2ERKS0_.exit ] ; 3 uses
  br label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread

_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread:    ; preds = %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer
  %.072 = phi i32 [ %.072.ph, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer ], [ %i.ah, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge ] ; 2 uses
  %.070 = phi i64 [ %.070.ph, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer ], [ %indvars.iv.next144, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge ]
  %.068 = phi i32 [ %.068.ph, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer ], [ %.169, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge ] ; 5 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !307    ; 3 uses
  %i.w = sext i32 %.072 to i64
  %i.x = add i32 %.072, 2
  br label %bb.i

bb.i:                                             ; preds = %.backedge, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread
  %indvars.iv156 = phi i32 [ %indvars.iv.next157, %.backedge ], [ %i.x, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ %i.w, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.y = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %indvars.iv.next ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !311 ; 2 uses
  %i.ab = fcmp une double %i.aa, %.sroa.7112.0.copyload
  br i1 %i.ab, label %.split, label %_ZNK8LightGBM9SplitInfogtERKS0_.exit

.split:                                           ; preds = %bb.i
  %i.ac = fcmp ogt double %i.aa, %.sroa.7112.0.copyload
  br i1 %i.ac, label %.backedge, label %.preheader

_ZNK8LightGBM9SplitInfogtERKS0_.exit:             ; preds = %bb.i
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !310 ; 2 uses
  %i.ae = icmp ne i32 %i.ad, -1
  %i.af = icmp slt i32 %i.ad, %spec.store.select3.i
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.backedge, label %.preheader

.backedge:                                        ; preds = %_ZNK8LightGBM9SplitInfogtERKS0_.exit, %.split
  %indvars.iv.next157 = add i32 %indvars.iv156, 1
  br label %bb.i, !llvm.loop !1997

.preheader:                                       ; preds = %_ZNK8LightGBM9SplitInfogtERKS0_.exit, %.split
  %i.ah = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %_ZNK8LightGBM9SplitInfogtERKS0_.exit87
  %indvars.iv143 = phi i64 [ %.070, %.preheader ], [ %indvars.iv.next144, %_ZNK8LightGBM9SplitInfogtERKS0_.exit87 ]
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 7 uses
  %i.ai = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %indvars.iv.next144 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !311 ; 2 uses
  %i.al = fcmp une double %.sroa.7112.0.copyload, %i.ak
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = fcmp ogt double %.sroa.7112.0.copyload, %i.ak
  br label %_ZNK8LightGBM9SplitInfogtERKS0_.exit87

bb.l:                                             ; preds = %bb.j
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !310 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  %spec.store.select3.i85 = select i1 %i.ao, i32 2147483647, i32 %i.an
  %i.ap = icmp slt i32 %.sroa.0.0.copyload, %spec.store.select3.i85
  %i.aq = select i1 %6, i1 %i.ap, i1 false
  br label %_ZNK8LightGBM9SplitInfogtERKS0_.exit87

_ZNK8LightGBM9SplitInfogtERKS0_.exit87:           ; preds = %bb.k, %bb.l
  %.0.i86 = phi i1 [ %i.am, %bb.k ], [ %i.aq, %bb.l ]
  %i.ar = trunc nsw i64 %indvars.iv.next144 to i32
  %i.as = icmp ne i32 %1, %i.ar
  %or.cond.not = and i1 %i.as, %.0.i86
  br i1 %or.cond.not, label %bb.j, label %bb.m, !llvm.loop !1998

bb.m:                                             ; preds = %_ZNK8LightGBM9SplitInfogtERKS0_.exit87
  %.not81 = icmp slt i64 %indvars.iv.next, %indvars.iv.next144
  br i1 %.not81, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit102

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(122) %i.y, i64 96, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !329
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 112 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 120 ; 2 uses
  %i.ba = load <2 x ptr>, ptr %i.at, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.bb = load i16, ptr %i.aw, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.y, ptr noundef nonnull align 8 dereferenceable(122) %i.ai, i64 96, i1 false)
  %i.bc = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !251
  store <2 x ptr> %i.bc, ptr %i.at, align 8, !tbaa !251
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !329
  store ptr %i.bd, ptr %i.au, align 8, !tbaa !329
  %i.be = load i16, ptr %i.az, align 8
  store i16 %i.be, ptr %i.aw, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.ai, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i, i64 96, i1 false)
  store <2 x ptr> %i.ba, ptr %i.ax, align 8, !tbaa !251
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !329
  store i16 %i.bb, ptr %i.az, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  %i.bg = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %indvars.iv.next ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !311
  %i.bj = fcmp une double %i.bi, %.sroa.7112.0.copyload
  br i1 %i.bj, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit

_ZNK8LightGBM9SplitInfoeqERKS0_.exit:             ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit
  %i.bk = load i32, ptr %i.bg, align 8, !tbaa !310 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, -1
  %spec.store.select1.i = select i1 %i.bl, i32 2147483647, i32 %i.bk
  %i.bm = icmp eq i32 %spec.store.select1.i, %spec.store.select3.i
  br i1 %i.bm, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit92, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit92: ; preds = %_ZNK8LightGBM9SplitInfoeqERKS0_.exit
  %i.bn = add nsw i32 %.068, 1                    ; 2 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr %i.bf, i64 %i.bo ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i90)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i90, ptr noundef nonnull align 8 dereferenceable(122) %i.bp, i64 96, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 96 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !329
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 120 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 96 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 112 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 120 ; 2 uses
  %i.bx = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %i.by = load i16, ptr %i.bt, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.bp, ptr noundef nonnull align 8 dereferenceable(122) %i.bg, i64 96, i1 false)
  %i.bz = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !251
  store <2 x ptr> %i.bz, ptr %i.bq, align 8, !tbaa !251
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !329
  store ptr %i.ca, ptr %i.br, align 8, !tbaa !329
  %i.cb = load i16, ptr %i.bw, align 8
  store i16 %i.cb, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.bg, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i90, i64 96, i1 false)
  store <2 x ptr> %i.bx, ptr %i.bu, align 8, !tbaa !251
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !329
  store i16 %i.by, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i90)
  %.pre164 = load ptr, ptr %0, align 8, !tbaa !307
  br label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread

_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread:      ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit92, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit
  %i.cc = phi ptr [ %.pre164, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit92 ], [ %i.bf, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit ], [ %i.bf, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ] ; 2 uses
  %.169 = phi i32 [ %i.bn, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit92 ], [ %.068, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit ], [ %.068, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr %i.cc, i64 %indvars.iv.next144 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !311
  %i.cg = fcmp une double %.sroa.7112.0.copyload, %i.cf
  br i1 %i.cg, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96

_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge: ; preds = %_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread, %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96
  br label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread, !llvm.loop !1999

_ZNK8LightGBM9SplitInfoeqERKS0_.exit96:           ; preds = %_ZNK8LightGBM9SplitInfoeqERKS0_.exit.thread
  %i.ch = load i32, ptr %i.cd, align 8, !tbaa !310 ; 2 uses
  %i.ci = icmp eq i32 %i.ch, -1
  %spec.store.select3.i94 = select i1 %i.ci, i32 2147483647, i32 %i.ch
  %i.cj = icmp eq i32 %spec.store.select3.i, %spec.store.select3.i94
  br i1 %i.cj, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99, label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.backedge

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit99: ; preds = %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96
  %i.ck = add nsw i32 %.067.ph, -1                ; 2 uses
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [128 x i8], ptr %i.cc, i64 %i.cl ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i97)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i97, ptr noundef nonnull align 8 dereferenceable(122) %i.cd, i64 96, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 96 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 112 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !329
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 120 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 96 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 112 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 120 ; 2 uses
  %i.cu = load <2 x ptr>, ptr %i.cn, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.cv = load i16, ptr %i.cq, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.cd, ptr noundef nonnull align 8 dereferenceable(122) %i.cm, i64 96, i1 false)
  %i.cw = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !251
  store <2 x ptr> %i.cw, ptr %i.cn, align 8, !tbaa !251
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !329
  store ptr %i.cx, ptr %i.co, align 8, !tbaa !329
  %i.cy = load i16, ptr %i.ct, align 8
  store i16 %i.cy, ptr %i.cq, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.cm, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i97, i64 96, i1 false)
  store <2 x ptr> %i.cu, ptr %i.cr, align 8, !tbaa !251
  store ptr %i.cp, ptr %i.cs, align 8, !tbaa !329
  store i16 %i.cv, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i97)
  br label %_ZNK8LightGBM9SplitInfoeqERKS0_.exit96.thread.outer, !llvm.loop !1999

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit102: ; preds = %bb.m
  %i.cz = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.da = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %i.c ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i100)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i100, ptr noundef nonnull align 8 dereferenceable(122) %i.y, i64 96, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !329
  %i.de = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 112 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.db, align 8, !tbaa !251
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dj = load i16, ptr %i.de, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.y, ptr noundef nonnull align 8 dereferenceable(122) %i.da, i64 96, i1 false)
  %i.dk = load <2 x ptr>, ptr %i.df, align 8, !tbaa !251
  store <2 x ptr> %i.dk, ptr %i.db, align 8, !tbaa !251
  %i.dl = load ptr, ptr %i.dg, align 8, !tbaa !329
  store ptr %i.dl, ptr %i.dc, align 8, !tbaa !329
  %i.dm = load i16, ptr %i.dh, align 8
  store i16 %i.dm, ptr %i.de, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(122) %i.da, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i100, i64 96, i1 false)
  store <2 x ptr> %i.di, ptr %i.df, align 8, !tbaa !251
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !329
  store i16 %i.dj, ptr %i.dh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i100)
  %i.dn = add nsw i32 %i.cz, 2
  %.not82126 = icmp sgt i32 %1, %.068
  br i1 %.not82126, label %._crit_edge, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105.preheader

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105.preheader: ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit102
  %i.do = sext i32 %1 to i64
  %i.dp = add i32 %.068, 1
  br label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105

._crit_edge.loopexit:                             ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105
  %i.dq = trunc nsw i64 %indvars.iv.next149 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit102
  %.2.lcssa = phi i32 [ %i.cz, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit102 ], [ %i.dq, %._crit_edge.loopexit ]
  %i.dr = add nsw i32 %2, -2                      ; 2 uses
  %.not83129 = icmp slt i32 %i.dr, %.067.ph
  br i1 %.not83129, label %._crit_edge132, label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit108.preheader

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit108.preheader: ; preds = %._crit_edge
  %i.ds = sext i32 %i.dr to i64
  %i.dt = sext i32 %.067.ph to i64
  %i.du = sext i32 %indvars.iv156 to i64
  br label %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit108

_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105: ; preds = %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105.preheader, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105
  %indvars.iv148 = phi i64 [ %indvars.iv, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105.preheader ], [ %indvars.iv.next149, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105 ] ; 2 uses
  %indvars.iv146 = phi i64 [ %i.do, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105.preheader ], [ %indvars.iv.next147, %_ZSt4swapIN8LightGBM9SplitInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit105 ] ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !307   ; 2 uses
  %i.dw = getelementptr inbounds nuw [128 x i8], ptr %i.dv, i64 %indvars.iv146 ; 5 uses
  %i.dx = getelementptr inbounds nuw [128 x i8], ptr %i.dv, i64 %indvars.iv148 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i103)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.i103, ptr noundef nonnull align 8 dereferenceable(122) %i.dw, i64 96, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 96 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 112 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !329
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 120 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 96 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 112 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 120 ; 2 uses
  %i.ef = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !251
end_hunk_0
begin_hunk_1_@_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE4MaxKERKSt6vectorIS1_SaIS1_EEiPS5_:bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !421    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !421  ; 2 uses
  %.not2526 = icmp eq ptr %i.f, %i.h
  br i1 %.not2526, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !323
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !325
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %i.ap, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  %i.k = phi ptr [ %.pre28, %._crit_edge.loopexit ], [ %i.f, %bb.b ]
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.f, %bb.b ]
  %i.m = zext nneg i32 %1 to i64                  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %.not = icmp ugt i64 %i.q, %i.m
  br i1 %.not, label %bb.h, label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit
  %i.r = phi ptr [ %i.d, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.022.027 = phi ptr [ %i.f, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.027, i64 24, i1 false), !tbaa.struct !326
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !324
  %.not.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.022.027, i64 24, i1 false)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !323
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  store ptr %i.u, ptr %i.b, align 8, !tbaa !323
  br label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %2, align 8, !tbaa !325    ; 5 uses
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.f, label %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #37
  unreachable

_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aa = sdiv exact i64 %i.y, 24                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 384307168202282325)
  %i.ae = select i1 %i.ac, i64 384307168202282325, i64 %i.ad ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.af = mul nuw nsw i64 %i.ae, 24
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #35 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !326
  %.not10.i.i.i.i.i = icmp eq ptr %i.v, %i.r
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.v, %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !326, !alias.scope !2005
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !2

_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ag, %_ZNKSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !324
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.an) #34
  br label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ag, ptr %2, align 8, !tbaa !325
  store ptr %i.ak, ptr %i.b, align 8, !tbaa !323
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.ao, ptr %i.i, align 8, !tbaa !324
  br label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.d, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ap = phi ptr [ %i.u, %bb.d ], [ %i.ak, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 24 ; 2 uses
  %.not25 = icmp eq ptr %i.aq, %i.h
  br i1 %.not25, label %._crit_edge.loopexit, label %bb.c

bb.h:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %2, align 8, !tbaa !325
  %i.as = ptrtoint ptr %i.j to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = sdiv exact i64 %i.au, 24
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add nsw i32 %1, -1
  %i.ay = tail call noundef i32 @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9ArgMaxAtKEPSt6vectorIS1_SaIS1_EEiii(ptr noundef nonnull %2, i32 noundef 0, i32 noundef %i.aw, i32 noundef %i.ax) ; 0 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !421
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.m ; 2 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !421
  %.not.i.i15 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i15, label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIPN8LightGBM14LightSplitInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN8LightGBM14LightSplitInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.h
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !323
  br label %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZSt8_DestroyIPN8LightGBM14LightSplitInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.h, %._crit_edge, %_ZNSt6vectorIN8LightGBM14LightSplitInfoESaIS1_EE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9ArgMaxAtKEPSt6vectorIS1_SaIS1_EEiii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = add nsw i32 %2, -1                       ; 3 uses
  %.not = icmp slt i32 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 %1, ptr %i.a, align 4, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.c, ptr %i.b, align 4, !tbaa !177
  call void @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9PartitionEPSt6vectorIS1_SaIS1_EEiiPiS7_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !177  ; 3 uses
  %i.e = icmp sgt i32 %3, %i.d                    ; 2 uses
  %i.f = load i32, ptr %i.b, align 4              ; 3 uses
  %i.g = icmp slt i32 %3, %i.f
  %or.cond = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add nsw i32 %1, -1
  %i.i = icmp eq i32 %i.d, %i.h
  %i.j = icmp eq i32 %i.f, %i.c
  %or.cond29 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond29, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nsw i32 %i.d, 1
  %i.l = call noundef i32 @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9ArgMaxAtKEPSt6vectorIS1_SaIS1_EEiii(ptr noundef %0, i32 noundef %1, i32 noundef %i.k, i32 noundef %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = call noundef i32 @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9ArgMaxAtKEPSt6vectorIS1_SaIS1_EEiii(ptr noundef %0, i32 noundef %i.f, i32 noundef %2, i32 noundef %3)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.f, %bb.e
  %.0 = phi i32 [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ %3, %bb.c ], [ %3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  %.1 = phi i32 [ %.0, %bb.g ], [ %1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM9ArrayArgsINS_14LightSplitInfoEE9PartitionEPSt6vectorIS1_SaIS1_EEiiPiS7_(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %6 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %7 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %8 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %9 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %10 = alloca %"struct.LightGBM::LightSplitInfo", align 8 ; 4 uses
  %i.a = add nsw i32 %1, -1                       ; 3 uses
  %i.b = add nsw i32 %2, -1                       ; 4 uses
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !325    ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.e, align 8, !tbaa !177 ; 4 uses
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.797.0.copyload = load double, ptr %.sroa.797.0..sroa_idx, align 8, !tbaa !295 ; 6 uses
  %11 = icmp eq i32 %.sroa.0.0.copyload, -1
  %spec.store.select3.i = select i1 %11, i32 2147483647, i32 %.sroa.0.0.copyload ; 3 uses
  %12 = icmp ne i32 %.sroa.0.0.copyload, -1
  %i.f = sext i32 %i.b to i64
  br label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer: ; preds = %bb.j, %bb.b
  %.ph = phi ptr [ %.pre.pre, %bb.j ], [ %i.d, %bb.b ]
  %.072.ph = phi i32 [ %i.s, %bb.j ], [ %i.a, %bb.b ]
  %.070.ph = phi i64 [ %indvars.iv.next130, %bb.j ], [ %i.f, %bb.b ]
  %.068.ph = phi i32 [ %.169, %bb.j ], [ %i.a, %bb.b ]
  %.067.ph = phi i32 [ %i.ax, %bb.j ], [ %i.b, %bb.b ] ; 3 uses
  br label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread: ; preds = %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer
  %i.g = phi ptr [ %.ph, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer ], [ %i.ap, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge ] ; 3 uses
  %.072 = phi i32 [ %.072.ph, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer ], [ %i.s, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge ] ; 2 uses
  %.070 = phi i64 [ %.070.ph, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer ], [ %indvars.iv.next130, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge ]
  %.068 = phi i32 [ %.068.ph, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer ], [ %.169, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge ] ; 5 uses
  %i.h = sext i32 %.072 to i64
  %i.i = add i32 %.072, 2
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread
  %indvars.iv142 = phi i32 [ %indvars.iv.next143, %.backedge ], [ %i.i, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ %i.h, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv.next ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !315 ; 2 uses
  %i.m = fcmp une double %i.l, %.sroa.797.0.copyload
  br i1 %i.m, label %.split, label %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit

.split:                                           ; preds = %bb.c
  %i.n = fcmp ogt double %i.l, %.sroa.797.0.copyload
  br i1 %i.n, label %.backedge, label %.preheader

_ZNK8LightGBM14LightSplitInfogtERKS0_.exit:       ; preds = %bb.c
  %i.o = load i32, ptr %i.j, align 8, !tbaa !319  ; 2 uses
  %i.p = icmp ne i32 %i.o, -1
  %i.q = icmp slt i32 %i.o, %spec.store.select3.i
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.backedge, label %.preheader

.backedge:                                        ; preds = %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit, %.split
  %indvars.iv.next143 = add i32 %indvars.iv142, 1
  br label %bb.c, !llvm.loop !2006

.preheader:                                       ; preds = %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit, %.split
  %i.s = trunc nsw i64 %indvars.iv.next to i32    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87
  %indvars.iv129 = phi i64 [ %.070, %.preheader ], [ %indvars.iv.next130, %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87 ]
  %indvars.iv.next130 = add nsw i64 %indvars.iv129, -1 ; 7 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv.next130 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load double, ptr %i.u, align 8, !tbaa !315 ; 2 uses
  %i.w = fcmp une double %.sroa.797.0.copyload, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fcmp ogt double %.sroa.797.0.copyload, %i.v
  br label %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87

bb.f:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.t, align 8, !tbaa !319  ; 2 uses
  %i.z = icmp eq i32 %i.y, -1
  %spec.store.select3.i85 = select i1 %i.z, i32 2147483647, i32 %i.y
  %i.aa = icmp slt i32 %.sroa.0.0.copyload, %spec.store.select3.i85
  %i.ab = select i1 %12, i1 %i.aa, i1 false
  br label %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87

_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87:     ; preds = %bb.e, %bb.f
  %.0.i86 = phi i1 [ %i.x, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = trunc nsw i64 %indvars.iv.next130 to i32
  %i.ad = icmp ne i32 %1, %i.ac
  %or.cond.not = and i1 %i.ad, %.0.i86
  br i1 %or.cond.not, label %bb.d, label %bb.g, !llvm.loop !2007

bb.g:                                             ; preds = %_ZNK8LightGBM14LightSplitInfogtERKS0_.exit87
  %.not81 = icmp slt i64 %indvars.iv.next, %indvars.iv.next130
  br i1 %.not81, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.ae = load ptr, ptr %0, align 8, !tbaa !325   ; 4 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv.next ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !315
  %i.ai = fcmp une double %i.ah, %.sroa.797.0.copyload
  br i1 %i.ai, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit:       ; preds = %bb.h
  %i.aj = load i32, ptr %i.af, align 8, !tbaa !319 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, -1
  %spec.store.select1.i = select i1 %i.ak, i32 2147483647, i32 %i.aj
  %i.al = icmp eq i32 %spec.store.select1.i, %spec.store.select3.i
  br i1 %i.al, label %bb.i, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread

bb.i:                                             ; preds = %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit
  %i.am = add nsw i32 %.068, 1                    ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.an ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.pre149 = load ptr, ptr %0, align 8, !tbaa !325
  br label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread: ; preds = %bb.h, %bb.i, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit
  %i.ap = phi ptr [ %.pre149, %bb.i ], [ %i.ae, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit ], [ %i.ae, %bb.h ] ; 3 uses
  %.169 = phi i32 [ %i.am, %bb.i ], [ %.068, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit ], [ %.068, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %indvars.iv.next130 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !315
  %i.at = fcmp une double %.sroa.797.0.copyload, %i.as
  br i1 %i.at, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge: ; preds = %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread, %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93
  br label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread, !llvm.loop !2008

_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93:     ; preds = %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit.thread
  %i.au = load i32, ptr %i.aq, align 8, !tbaa !319 ; 2 uses
  %i.av = icmp eq i32 %i.au, -1
  %spec.store.select3.i91 = select i1 %i.av, i32 2147483647, i32 %i.au
  %i.aw = icmp eq i32 %spec.store.select3.i, %spec.store.select3.i91
  br i1 %i.aw, label %bb.j, label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.backedge

bb.j:                                             ; preds = %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93
  %i.ax = add nsw i32 %.067.ph, -1                ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !325
  br label %_ZNK8LightGBM14LightSplitInfoeqERKS0_.exit93.thread.outer, !llvm.loop !2008

bb.k:                                             ; preds = %bb.g
  %i.ba = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.c ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bc = add nsw i32 %i.ba, 2
  %.not82111 = icmp sgt i32 %1, %.068
  br i1 %.not82111, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bd = sext i32 %1 to i64
  %i.be = add i32 %.068, 1
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bf = trunc nsw i64 %indvars.iv.next135 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %.2.lcssa = phi i32 [ %i.ba, %bb.k ], [ %i.bf, %._crit_edge.loopexit ] ; 2 uses
  %i.bg = add nsw i32 %2, -2                      ; 2 uses
  %.not83114 = icmp slt i32 %i.bg, %.067.ph
  br i1 %.not83114, label %.loopexit, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %._crit_edge
  %i.bh = sext i32 %i.bg to i64
  %i.bi = sext i32 %.067.ph to i64
  %i.bj = sext i32 %indvars.iv142 to i64
  br label %.lr.ph118

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv134 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next135, %.lr.ph ] ; 2 uses
  %indvars.iv132 = phi i64 [ %i.bd, %.lr.ph.preheader ], [ %indvars.iv.next133, %.lr.ph ] ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !325   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv132 ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %indvars.iv134 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, 1 ; 2 uses
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next133 to i32
  %exitcond.not = icmp eq i32 %i.be, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !2009

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv144 = phi i64 [ %i.bj, %.lr.ph118.preheader ], [ %indvars.iv.next145, %.lr.ph118 ] ; 2 uses
  %indvars.iv140 = phi i64 [ %i.bh, %.lr.ph118.preheader ], [ %indvars.iv.next141, %.lr.ph118 ] ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !325   ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv144 ; 2 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %indvars.iv140 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 2 uses
  %.not83.not = icmp sgt i64 %indvars.iv140, %i.bi
  br i1 %.not83.not, label %.lr.ph118, label %.loopexit.loopexit, !llvm.loop !2010

.loopexit.loopexit:                               ; preds = %.lr.ph118
  %i.bq = trunc nsw i64 %indvars.iv.next145 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge, %bb.a
  %storemerge103 = phi i32 [ %i.a, %bb.a ], [ %.2.lcssa, %._crit_edge ], [ %.2.lcssa, %.loopexit.loopexit ]
  %storemerge = phi i32 [ %2, %bb.a ], [ %i.bc, %._crit_edge ], [ %i.bq, %.loopexit.loopexit ]
  store i32 %storemerge103, ptr %3, align 4, !tbaa !177
  store i32 %storemerge, ptr %4, align 4, !tbaa !177
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sdiv exact i64 %i.d, 24
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.d, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = mul nuw nsw i64 %.010.i.i, 24            ; 2 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #39 ; 7 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit, label %.lr.ph.i.i, !llvm.loop !2011

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !326
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPN8LightGBM14LightSplitInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEEvT_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i, %.lr.ph.i.i.i ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.019.i.i.i, i64 24, i1 false), !tbaa.struct !326
  %i.o = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 24 ; 2 uses
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.013.i.i.i, %i.n
end_hunk_1
begin_hunk_2_@_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_:bb.a
.lr.ph66.preheader.i.i.new:                       ; preds = %.lr.ph66.preheader.i.i
  %unroll_iter67 = and i64 %i.at, 9223372036854775806
  br label %.lr.ph66.i.i

._crit_edge67.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph66.i.i
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %._crit_edge67.i.i, label %.lr.ph66.i.i.epil.preheader

.lr.ph66.i.i.epil.preheader:                      ; preds = %._crit_edge67.i.i.loopexit.unr-lcssa, %.lr.ph66.preheader.i.i
  %.sroa.025.063.i.i.epil.init = phi ptr [ %i.aw, %.lr.ph66.preheader.i.i ], [ %i.bd, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.162.i.i.epil.init = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i ], [ %i.bc, %._crit_edge67.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.162.i.i.epil.init, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.162.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.063.i.i.epil.init, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.063.i.i.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i.epil.init, i64 24
  br label %._crit_edge67.i.i

._crit_edge67.i.i:                                ; preds = %.lr.ph66.i.i.epil.preheader, %._crit_edge67.i.i.loopexit.unr-lcssa, %bb.ad
  %.sroa.026.1.lcssa.i.i = phi ptr [ %.sroa.026.0.i.i, %bb.ad ], [ %i.bc, %._crit_edge67.i.i.loopexit.unr-lcssa ], [ %i.ay, %.lr.ph66.i.i.epil.preheader ]
  %i.az = srem i64 %.056.i.i, %.0.i.i             ; 2 uses
  %.not21.i.i = icmp eq i64 %i.az, 0
  br i1 %.not21.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %bb.ae

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i, %.lr.ph66.preheader.i.i.new
  %.sroa.025.063.i.i = phi ptr [ %i.aw, %.lr.ph66.preheader.i.i.new ], [ %i.bd, %.lr.ph66.i.i ] ; 4 uses
  %.sroa.026.162.i.i = phi ptr [ %.sroa.026.0.i.i, %.lr.ph66.preheader.i.i.new ], [ %i.bc, %.lr.ph66.i.i ] ; 4 uses
  %niter68 = phi i64 [ 0, %.lr.ph66.preheader.i.i.new ], [ %niter68.next.1, %.lr.ph66.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.162.i.i, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.026.162.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.063.i.i, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.025.063.i.i, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.026.162.i.i, i64 48 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.025.063.i.i, i64 48 ; 2 uses
  %niter68.next.1 = add i64 %niter68, 2           ; 2 uses
  %niter68.ncmp.1 = icmp eq i64 %niter68.next.1, %unroll_iter67
  br i1 %niter68.ncmp.1, label %._crit_edge67.i.i.loopexit.unr-lcssa, label %.lr.ph66.i.i, !llvm.loop !16

bb.ae:                                            ; preds = %._crit_edge67.i.i
  %i.be = sub nsw i64 %.0.i.i, %i.az
  br label %.backedge

bb.af:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds [24 x i8], ptr %.sroa.026.0.i.i, i64 %.056.i.i ; 3 uses
  %i.bg = sub i64 0, %i.at
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bg ; 3 uses
  %i.bi = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bi, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %bb.af
  %xtraiter = and i64 %.0.i.i, 1
  %i.bj = icmp eq i64 %.0.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.0.i.i, 9223372036854775806
  br label %.lr.ph.i.i

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.sroa.0.060.i.i.epil.init = phi ptr [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bq, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.sroa.026.259.i.i.epil.init = phi ptr [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bp, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod62 = trunc i64 %.0.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bk = getelementptr inbounds i8, ptr %.sroa.026.259.i.i.epil.init, i64 -24 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.060.i.i.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.af
  %.sroa.026.2.lcssa.i.i = phi ptr [ %i.bh, %bb.af ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %.sroa.026.0.i.i, %.lr.ph.i.i.epil.preheader ]
  %i.bm = srem i64 %.056.i.i, %i.at               ; 2 uses
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i, %bb.ae
  %.056.i.i.be = phi i64 [ %.0.i.i, %bb.ae ], [ %i.at, %._crit_edge.i.i ]
  %.0.i.i.be = phi i64 [ %i.be, %bb.ae ], [ %i.bm, %._crit_edge.i.i ]
  %.sroa.026.0.i.i.be = phi ptr [ %.sroa.026.1.lcssa.i.i, %bb.ae ], [ %.sroa.026.2.lcssa.i.i, %._crit_edge.i.i ]
  br label %bb.ac, !llvm.loop !17

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.060.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.preheader.new ], [ %i.bq, %.lr.ph.i.i ] ; 2 uses
  %.sroa.026.259.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.preheader.new ], [ %i.bp, %.lr.ph.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -24 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.bp = getelementptr inbounds i8, ptr %.sroa.026.259.i.i, i64 -48 ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.060.i.i, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !tbaa.struct !326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !326
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN8LightGBM14LightSplitInfoESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_.exit: ; preds = %._crit_edge.i.i, %._crit_edge67.i.i, %.lr.ph.i.i.i, %bb.z, %bb.y, %bb.n, %bb.b, %_ZSt13move_backwardIPN8LightGBM14LightSplitInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %_ZSt4moveIPN8LightGBM14LightSplitInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.sroa.032.0 = phi ptr [ %i.n, %_ZSt4moveIPN8LightGBM14LightSplitInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %2, %bb.n ], [ %i.ad, %_ZSt13move_backwardIPN8LightGBM14LightSplitInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %0, %bb.b ], [ %0, %bb.z ], [ %2, %bb.y ], [ %1, %.lr.ph.i.i.i ], [ %i.as, %._crit_edge67.i.i ], [ %i.as, %._crit_edge.i.i ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM10ColSampler9GetByNodeEPKNS_4TreeEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.40") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %6 = alloca %"class.std::unordered_set", align 8 ; 23 uses
  %7 = alloca %"class.std::unordered_set", align 8 ; 15 uses
  %8 = alloca %"class.std::vector.40", align 16   ; 21 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %9 = alloca %"class.std::vector.35", align 8    ; 12 uses
  %10 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %11 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %12 = alloca %"class.std::vector.35", align 8   ; 12 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !423
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 1, ptr %i.i, align 8, !tbaa !424
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.k, align 8, !tbaa !2030
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2031
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2031
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.s = sext i32 %3 to i64
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !369, !noalias !2032
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.s ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !203, !noalias !2032 ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !173, !noalias !2032 ; 3 uses
  %i.y = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp ugt i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !250

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #35
          to label %.noexc60 unwind label %bb.j

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !251, !noalias !2032 ; 2 uses
  %.pre1.i = load ptr, ptr %i.v, align 8, !tbaa !251, !noalias !2032
  %.pre2.i = ptrtoint ptr %.pre1.i to i64
  %.pre3.i = ptrtoint ptr %.pre.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.noexc60, %bb.b
  %.pre-phi4.i = phi i64 [ %.pre3.i, %.noexc60 ], [ %i.z, %bb.b ] ; 3 uses
  %.pre-phi.i = phi i64 [ %.pre2.i, %.noexc60 ], [ %i.y, %bb.b ] ; 3 uses
  %i.ad = phi ptr [ %.pre.i, %.noexc60 ], [ %i.x, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %.noexc60 ], [ null, %bb.b ] ; 10 uses
  %i.af = sub i64 %.pre-phi.i, %.pre-phi4.i       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 4
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !252

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ad, i64 %i.af, i1 false), !noalias !2032
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, 4
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !177, !noalias !2032
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !177, !noalias !2032
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %6, ptr %5, align 8, !tbaa !2034
  %.not6.i.i.i = icmp eq i64 %.pre-phi.i, %.pre-phi4.i ; 2 uses
  br i1 %.not6.i.i.i, label %.loopexit279, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.noexc61
  %.sroa.03.07.i.i.i = phi ptr [ %i.al, %.noexc61 ], [ %i.ae, %bb.h ] ; 3 uses
  %i.ak = invoke { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRiSE_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.03.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc61 unwind label %bb.k   ; 0 uses

.noexc61:                                         ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %i.aj
  br i1 %.not.i.i.i, label %.loopexit279, label %.lr.ph.i.i.i, !llvm.loop !2025

.loopexit279:                                     ; preds = %.noexc61, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !2031 ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !2031 ; 2 uses
  %.not285 = icmp eq ptr %i.am, %i.an
  br i1 %.not285, label %._crit_edge, label %.lr.ph287

.lr.ph287:                                        ; preds = %.loopexit279
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.at = lshr exact i64 %i.af, 2
  %13 = icmp ne i64 %.pre-phi.i, %.pre-phi4.i
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br label %bb.l

._crit_edge:                                      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %.loopexit279
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aa) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit78

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.l:                                             ; preds = %.lr.ph287, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %.sroa.0221.0286 = phi ptr [ %i.am, %.lr.ph287 ], [ %i.fg, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !423
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !424
  store i64 %i.az, ptr %i.ao, align 8, !tbaa !424
  store ptr null, ptr %i.ap, align 8, !tbaa !425
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 24
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !426
  store i64 %i.bb, ptr %i.aq, align 8, !tbaa !426
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0221.0286, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !tbaa.struct !2035
  store ptr null, ptr %i.as, align 8, !tbaa !427
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %7, ptr %4, align 8, !tbaa !2034
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_assignIRKSC_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0221.0286, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bd = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not6.i.i.i64 = icmp eq ptr %i.bd, null
  %or.cond = select i1 %13, i1 true, i1 %.not6.i.i.i64
  br i1 %or.cond, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %bb.m, %.noexc68
  %.sroa.03.07.i.i.i66 = phi ptr [ %i.ck, %.noexc68 ], [ %i.bd, %bb.m ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i66, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.au, align 8, !tbaa !426
  %.not.not.i = icmp eq i64 %i.bf, 0
  %i.bg = load i32, ptr %i.be, align 4            ; 5 uses
  br i1 %.not.not.i, label %.preheader426, label %.thread34.i

.thread34.i:                                      ; preds = %.lr.ph.i.i.i65
  %i.bh = sext i32 %i.bg to i64                   ; 4 uses
  %i.bi = load i64, ptr %i.i, align 8, !tbaa !424 ; 2 uses
  %i.bj = urem i64 %i.bh, %i.bi                   ; 5 uses
  %i.bk = load ptr, ptr %6, align 8, !tbaa !423
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i158, label %.critedge.i, label %bb.p

.preheader426:                                    ; preds = %.lr.ph.i.i.i65, %bb.n
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.n ], [ %i.j, %.lr.ph.i.i.i65 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !425 ; 3 uses
  %.not.i160 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i160, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.preheader426
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !177
  %i.bp = icmp eq i32 %i.bg, %i.bo
  br i1 %i.bp, label %.noexc68, label %.preheader426, !llvm.loop !2026

bb.o:                                             ; preds = %.preheader426
  %i.bq = sext i32 %i.bg to i64                   ; 2 uses
  %i.br = load i64, ptr %i.i, align 8, !tbaa !424
  %i.bs = urem i64 %i.bq, %i.br
  br label %.critedge.i

bb.p:                                             ; preds = %.thread34.i
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !425 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !177
  %i.bw = icmp eq i32 %i.bg, %i.bv
  br i1 %i.bw, label %.noexc68, label %.lr.ph.i.i.i159

bb.q:                                             ; preds = %bb.r
  %i.bx = icmp eq i32 %i.bg, %i.ca
  br i1 %i.bx, label %.noexc68, label %.lr.ph.i.i.i159, !llvm.loop !19

.lr.ph.i.i.i159:                                  ; preds = %bb.p, %bb.q
  %.020.i.i.i = phi ptr [ %i.by, %bb.q ], [ %i.bt, %bb.p ]
  %i.by = load ptr, ptr %.020.i.i.i, align 8, !tbaa !425 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i159
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !177 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = urem i64 %i.cb, %i.bi
  %.not19.i.i.i = icmp eq i64 %i.cc, %i.bj
  br i1 %.not19.i.i.i, label %bb.q, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !19

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.r
  br label %.critedge.i, !llvm.loop !19

.critedge.i:                                      ; preds = %.lr.ph.i.i.i159, %..loopexit_crit_edge21.i.i.i, %bb.o, %.thread34.i
  %i.cd = phi i64 [ %i.bs, %bb.o ], [ %i.bj, %.thread34.i ], [ %i.bj, %..loopexit_crit_edge21.i.i.i ], [ %i.bj, %.lr.ph.i.i.i159 ]
  %i.ce = phi i64 [ %i.bq, %bb.o ], [ %i.bh, %.thread34.i ], [ %i.bh, %..loopexit_crit_edge21.i.i.i ], [ %i.bh, %.lr.ph.i.i.i159 ]
  %i.cf = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35
          to label %.noexc161 unwind label %bb.t  ; 4 uses

.noexc161:                                        ; preds = %.critedge.i
  store ptr null, ptr %i.cf, align 8, !tbaa !425
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i32, ptr %i.be, align 4, !tbaa !177
  store i32 %i.ch, ptr %i.cg, align 8, !tbaa !177
  %i.ci = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.cd, i64 noundef %i.ce, ptr noundef nonnull %i.cf, i64 noundef 1)
          to label %.noexc68 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc161
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 16) #34
  br label %.body

.noexc68:                                         ; preds = %bb.q, %bb.n, %.noexc161, %bb.p
  %i.ck = load ptr, ptr %.sroa.03.07.i.i.i66, align 8, !tbaa !425 ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i67, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, label %.lr.ph.i.i.i65, !llvm.loop !2027

bb.s:                                             ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.t:                                             ; preds = %.critedge.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit: ; preds = %.noexc68, %bb.m
  br i1 %.not6.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit
  %i.cn = load i64, ptr %i.aq, align 8, !tbaa !426
  %.not.not.i.i.i = icmp eq i64 %i.cn, 0
  %i.co = load i64, ptr %i.ao, align 8            ; 2 uses
  %i.cp = load ptr, ptr %7, align 8
  br i1 %.not.not.i.i.i, label %.preheader272.us, label %.lr.ph.split

.preheader272.us:                                 ; preds = %.lr.ph, %bb.u
  %.039283.us = phi i32 [ %i.cv, %bb.u ], [ 0, %.lr.ph ]
  %.sroa.0217.0282.us = phi ptr [ %i.cr, %bb.u ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.cq = load i32, ptr %.sroa.0217.0282.us, align 4, !tbaa !177
  br label %bb.v

bb.u:                                             ; preds = %.loopexit273.us
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0217.0282.us, i64 4 ; 2 uses
  %.not254.us = icmp eq ptr %i.cr, %i.aj
  br i1 %.not254.us, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.preheader272.us

bb.v:                                             ; preds = %.preheader272.us, %bb.w
  %.sroa.06.0.in.i.i.i.us = phi ptr [ %.sroa.06.0.i.i.i.us, %bb.w ], [ %i.ap, %.preheader272.us ]
  %.sroa.06.0.i.i.i.us = load ptr, ptr %.sroa.06.0.in.i.i.i.us, align 8, !tbaa !425 ; 3 uses
  %.not.i.i.i70.us = icmp eq ptr %.sroa.06.0.i.i.i.us, null
  br i1 %.not.i.i.i70.us, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us, i64 8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !177
  %i.cu = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cu, label %.loopexit273.us, label %bb.v, !llvm.loop !2028

.loopexit273.us:                                  ; preds = %bb.w
  %i.cv = add nuw nsw i32 %.039283.us, 1          ; 2 uses
  %i.cw = icmp eq i32 %i.cv, %i.av
  br i1 %i.cw, label %.split.us, label %bb.u

bb.x:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0217.0282, i64 4 ; 2 uses
  %.not254 = icmp eq ptr %i.cx, %i.aj
  br i1 %.not254, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.x
  %.039283 = phi i32 [ %i.do, %bb.x ], [ 0, %.lr.ph ]
  %.sroa.0217.0282 = phi ptr [ %i.cx, %bb.x ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.cy = load i32, ptr %.sroa.0217.0282, align 4, !tbaa !177 ; 3 uses
  %i.cz = sext i32 %i.cy to i64
  %i.da = urem i64 %i.cz, %i.co                   ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i69, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.y

bb.y:                                             ; preds = %.lr.ph.split
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !425 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !177
  %i.dg = icmp eq i32 %i.cy, %i.df
  br i1 %i.dg, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, label %.lr.ph.i.i.i.i.i

bb.z:                                             ; preds = %bb.aa
  %i.dh = icmp eq i32 %i.cy, %i.dk
  br i1 %i.dh, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, label %.lr.ph.i.i.i.i.i, !llvm.loop !2029

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %bb.z
  %.020.i.i.i.i.i = phi ptr [ %i.di, %bb.z ], [ %i.dd, %bb.y ]
  %i.di = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !425 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not18.i.i.i.i.i, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !177 ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %i.dm = urem i64 %i.dl, %i.co
  %.not19.i.i.i.i.i = icmp eq i64 %i.dm, %i.da
  br i1 %.not19.i.i.i.i.i, label %bb.z, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !2029

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.aa
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, !llvm.loop !2029

bb.ab:                                            ; preds = %.critedge.i170
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76: ; preds = %bb.z, %bb.y
  %i.do = add nuw nsw i32 %.039283, 1             ; 2 uses
  %i.dp = icmp eq i32 %i.do, %i.av
  br i1 %i.dp, label %.split.us, label %bb.x

.split.us:                                        ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76, %.loopexit273.us
  %i.dq = load ptr, ptr %i.ap, align 8, !tbaa !429 ; 2 uses
  %.not6.i.i.i71 = icmp eq ptr %i.dq, null
  br i1 %.not6.i.i.i71, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i72

.lr.ph.i.i.i72:                                   ; preds = %.split.us, %.noexc75
  %.sroa.03.07.i.i.i73 = phi ptr [ %i.ex, %.noexc75 ], [ %i.dq, %.split.us ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i.i.i73, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.au, align 8, !tbaa !426
  %.not.not.i162 = icmp eq i64 %i.ds, 0
  %i.dt = load i32, ptr %i.dr, align 4            ; 5 uses
  br i1 %.not.not.i162, label %.preheader423, label %.thread34.i163

.thread34.i163:                                   ; preds = %.lr.ph.i.i.i72
  %i.du = sext i32 %i.dt to i64                   ; 4 uses
  %i.dv = load i64, ptr %i.i, align 8, !tbaa !424 ; 2 uses
  %i.dw = urem i64 %i.du, %i.dv                   ; 5 uses
  %i.dx = load ptr, ptr %6, align 8, !tbaa !423
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !428 ; 2 uses
  %.not.i.i.i164 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i164, label %.critedge.i170, label %bb.ae

.preheader423:                                    ; preds = %.lr.ph.i.i.i72, %bb.ac
  %.sroa.028.0.in.i176 = phi ptr [ %.sroa.028.0.i177, %bb.ac ], [ %i.j, %.lr.ph.i.i.i72 ]
  %.sroa.028.0.i177 = load ptr, ptr %.sroa.028.0.in.i176, align 8, !tbaa !425 ; 3 uses
  %.not.i178 = icmp eq ptr %.sroa.028.0.i177, null
  br i1 %.not.i178, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.preheader423
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i177, i64 8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !177
  %i.ec = icmp eq i32 %i.dt, %i.eb
  br i1 %i.ec, label %.noexc75, label %.preheader423, !llvm.loop !2026

bb.ad:                                            ; preds = %.preheader423
  %i.ed = sext i32 %i.dt to i64                   ; 2 uses
  %i.ee = load i64, ptr %i.i, align 8, !tbaa !424
  %i.ef = urem i64 %i.ed, %i.ee
  br label %.critedge.i170

bb.ae:                                            ; preds = %.thread34.i163
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !425 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !177
  %i.ej = icmp eq i32 %i.dt, %i.ei
  br i1 %i.ej, label %.noexc75, label %.lr.ph.i.i.i165

bb.af:                                            ; preds = %bb.ag
  %i.ek = icmp eq i32 %i.dt, %i.en
  br i1 %i.ek, label %.noexc75, label %.lr.ph.i.i.i165, !llvm.loop !19

.lr.ph.i.i.i165:                                  ; preds = %bb.ae, %bb.af
  %.020.i.i.i166 = phi ptr [ %i.el, %bb.af ], [ %i.eg, %bb.ae ]
  %i.el = load ptr, ptr %.020.i.i.i166, align 8, !tbaa !425 ; 3 uses
  %.not18.i.i.i167 = icmp eq ptr %i.el, null
  br i1 %.not18.i.i.i167, label %.critedge.i170, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i165
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !177 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = urem i64 %i.eo, %i.dv
  %.not19.i.i.i168 = icmp eq i64 %i.ep, %i.dw
  br i1 %.not19.i.i.i168, label %bb.af, label %..loopexit_crit_edge21.i.i.i169, !llvm.loop !19

..loopexit_crit_edge21.i.i.i169:                  ; preds = %bb.ag
  br label %.critedge.i170, !llvm.loop !19

.critedge.i170:                                   ; preds = %.lr.ph.i.i.i165, %..loopexit_crit_edge21.i.i.i169, %bb.ad, %.thread34.i163
  %i.eq = phi i64 [ %i.ef, %bb.ad ], [ %i.dw, %.thread34.i163 ], [ %i.dw, %..loopexit_crit_edge21.i.i.i169 ], [ %i.dw, %.lr.ph.i.i.i165 ]
  %i.er = phi i64 [ %i.ed, %bb.ad ], [ %i.du, %.thread34.i163 ], [ %i.du, %..loopexit_crit_edge21.i.i.i169 ], [ %i.du, %.lr.ph.i.i.i165 ]
  %i.es = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #35
          to label %.noexc179 unwind label %bb.ab ; 4 uses

.noexc179:                                        ; preds = %.critedge.i170
  store ptr null, ptr %i.es, align 8, !tbaa !425
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load i32, ptr %i.dr, align 4, !tbaa !177
  store i32 %i.eu, ptr %i.et, align 8, !tbaa !177
  %i.ev = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.eq, i64 noundef %i.er, ptr noundef nonnull %i.es, i64 noundef 1)
          to label %.noexc75 unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171 ; 0 uses

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i171: ; preds = %.noexc179
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef 16) #34
  br label %.body

.noexc75:                                         ; preds = %bb.af, %bb.ac, %.noexc179, %bb.ae
  %i.ex = load ptr, ptr %.sroa.03.07.i.i.i73, align 8, !tbaa !425 ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i74, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, label %.lr.ph.i.i.i72, !llvm.loop !2027

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread: ; preds = %bb.x, %.lr.ph.split, %bb.u, %.noexc75, %.lr.ph.i.i.i.i.i, %bb.v, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit, %..loopexit_crit_edge21.i.i.i.i.i
  %.pr252 = load ptr, ptr %i.ap, align 8, !tbaa !429 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pr252, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i ], [ %.pr252, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread ] ; 2 uses
  %i.ey = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !425 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #34
  %.not.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %.split.us, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE6insertINSt8__detail14_Node_iteratorIiLb1ELb0EEEEEvT_SA_.exit76.thread
  %i.ez = load ptr, ptr %7, align 8, !tbaa !423
  %i.fa = load i64, ptr %i.ao, align 8, !tbaa !424
  %i.fb = shl i64 %i.fa, 3
end_hunk_2
