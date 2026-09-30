Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/opt_preprocess?download=true
inline.NumInlined: 1276
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt11__sort_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_RT0_:bb.a
  br i1 %.not27.old.i.i22, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i25, label %.lr.ph38.i.i18.backedge

.lr.ph38.i.i18.backedge:                          ; preds = %bb.ad, %bb.ac
  %.137.i.i19.be = phi ptr [ %i.fm, %bb.ac ], [ %.old.i.i21, %bb.ad ]
  br label %.lr.ph38.i.i18, !llvm.loop !11

_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i25: ; preds = %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.ab, %.preheader.i.i16
  %.026.i.i26 = phi ptr [ null, %.preheader.i.i16 ], [ %.137.i.i19, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.z ], [ %.035.i.i13, %bb.y ] ; 4 uses
  %i.fn = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !93 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i.i.i27 unwind label %bb.ae

.noexc.i.i.i27:                                   ; preds = %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i25
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.fn, ptr noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit30 unwind label %bb.ae

bb.ae:                                            ; preds = %.noexc.i.i.i27, %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i25
  %i.fo = landingpad { ptr, i32 }
          catch ptr null
  %i.fp = extractvalue { ptr, i32 } %i.fo, 0
  call void @__clang_call_terminate(ptr %i.fp) #23
  unreachable

_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit30: ; preds = %.noexc.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fq = getelementptr inbounds nuw i8, ptr %.026.i.i26, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %i.r, ptr %6, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.o, align 8, !tbaa !90
  store ptr null, ptr %i.p, align 8, !tbaa !91
  %i.fr = load i32, ptr %i.ek, align 4, !tbaa !98 ; 3 uses
  %i.fs = load i32, ptr %i.ej, align 8, !tbaa !126 ; 3 uses
  %i.ft = add i32 %i.fs, -1
  %i.fu = and i32 %i.ft, %i.fr                    ; 3 uses
  %i.fv = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !125 ; 3 uses
  %i.fw = zext i32 %i.fu to i64
  %.idx.i.i = mul nuw nsw i64 %i.fw, 40
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 %.idx.i.i ; 3 uses
  %i.fy = zext i32 %i.fs to i64
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fv, i64 %i.fy
  %.not34.i.i = icmp eq i32 %i.fu, %i.fs
  br i1 %.not34.i.i, label %.preheader.i.i, label %.lr.ph.i.i9

.preheader.i.i:                                   ; preds = %bb.ah, %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit30
  %.not2736.i.i = icmp eq i32 %i.fu, 0
  br i1 %.not2736.i.i, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %.lr.ph38.i.i

.lr.ph.i.i9:                                      ; preds = %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit30, %bb.ah
  %.035.i.i = phi ptr [ %i.gh, %bb.ah ], [ %i.fx, %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit30 ] ; 3 uses
  %i.ga = load ptr, ptr %.035.i.i, align 8, !tbaa !128 ; 4 uses
  %i.gb = icmp ult ptr %i.ga, inttoptr (i64 2 to ptr)
  br i1 %i.gb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i9
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !98
  %i.ge = icmp eq i32 %i.gd, %i.fr
  %i.gf = icmp eq ptr %i.ga, %i.r
  %or.cond.i.i = and i1 %i.gf, %i.ge
  br i1 %or.cond.i.i, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i.i9
  %i.gg = icmp eq ptr %i.ga, null
  br i1 %i.gg, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gh, %i.fz
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i9, !llvm.loop !10

.lr.ph38.i.i:                                     ; preds = %.preheader.i.i, %.lr.ph38.i.i.backedge
  %.137.i.i = phi ptr [ %.137.i.i.be, %.lr.ph38.i.i.backedge ], [ %i.fv, %.preheader.i.i ] ; 4 uses
  %i.gi = load ptr, ptr %.137.i.i, align 8, !tbaa !128 ; 4 uses
  %i.gj = icmp ult ptr %i.gi, inttoptr (i64 2 to ptr)
  br i1 %i.gj, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph38.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !98
  %i.gm = icmp eq i32 %i.gl, %i.fr
  %i.gn = icmp eq ptr %i.gi, %i.r
  %or.cond31.i.i = and i1 %i.gn, %i.gm
  br i1 %or.cond31.i.i, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph38.i.i
  %i.go = icmp eq ptr %i.gi, null
  %i.gp = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 40 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.gp, %i.fx
  %or.cond43.i.i = select i1 %i.go, i1 true, i1 %.not27.i.i
  br i1 %or.cond43.i.i, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %.lr.ph38.i.i.backedge

bb.ak:                                            ; preds = %bb.ai
  %.old.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i, i64 40 ; 2 uses
  %.not27.old.i.i = icmp eq ptr %.old.i.i, %i.fx
  br i1 %.not27.old.i.i, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i, label %.lr.ph38.i.i.backedge

.lr.ph38.i.i.backedge:                            ; preds = %bb.ak, %bb.aj
  %.137.i.i.be = phi ptr [ %i.gp, %bb.aj ], [ %.old.i.i, %bb.ak ]
  br label %.lr.ph38.i.i, !llvm.loop !11

_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i: ; preds = %bb.ag, %bb.af, %bb.ak, %bb.aj, %bb.ai, %.preheader.i.i
  %.026.i.i = phi ptr [ null, %.preheader.i.i ], [ %.137.i.i, %bb.ai ], [ null, %bb.aj ], [ null, %bb.ak ], [ null, %bb.ag ], [ %.035.i.i, %bb.af ] ; 4 uses
  %i.gq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !93 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gq, ptr noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %.noexc.i.i.i unwind label %bb.al

.noexc.i.i.i:                                     ; preds = %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.gq, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit unwind label %bb.al

bb.al:                                            ; preds = %.noexc.i.i.i, %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #23
  unreachable

_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit: ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.gt = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8 ; 3 uses
  %i.gu = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !93 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 28
  %i.gx = load i8, ptr %i.gw, align 4
  %i.gy = and i8 %i.gx, 1
  %i.gz = icmp eq i8 %i.gy, 0
  %i.ha = load i32, ptr %i.gv, align 8
  %i.hb = icmp eq i32 %i.ha, 1
  %i.hc = select i1 %i.gz, i1 %i.hb, i1 false
  br i1 %i.hc, label %bb.am, label %.split

bb.am:                                            ; preds = %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %.026.i.i26, i64 24
  %i.he = getelementptr inbounds nuw i8, ptr %.026.i.i26, i64 28
  %i.hf = load i8, ptr %i.he, align 4
  %i.hg = and i8 %i.hf, 1
  %i.hh = icmp eq i8 %i.hg, 0
  %i.hi = load i32, ptr %i.hd, align 8
  %i.hj = icmp eq i32 %i.hi, 1
  %i.hk = select i1 %i.hh, i1 %i.hj, i1 false
  br i1 %i.hk, label %bb.an, label %.split

bb.an:                                            ; preds = %bb.am
  %i.hl = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 12
  %i.hm = load i8, ptr %i.hl, align 4
  %i.hn = and i8 %i.hm, 1
  %i.ho = icmp eq i8 %i.hn, 0
  br i1 %i.ho, label %bb.ao, label %.split77

bb.ao:                                            ; preds = %bb.an
  %i.hp = getelementptr inbounds nuw i8, ptr %.026.i.i26, i64 12
  %i.hq = load i8, ptr %i.hp, align 4
  %i.hr = and i8 %i.hq, 1
  %i.hs = icmp eq i8 %i.hr, 0
  br i1 %i.hs, label %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit, label %.split77

.split77:                                         ; preds = %bb.ao, %bb.an
  %i.ht = call noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
  %i.hu = icmp slt i32 %i.ht, 0
  br i1 %i.hu, label %bb.ap, label %_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit

.split:                                           ; preds = %bb.am, %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit
  %i.hv = call noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.gu, ptr noundef nonnull align 8 dereferenceable(32) %i.gt, ptr noundef nonnull align 8 dereferenceable(32) %i.fq)
  br i1 %i.hv, label %bb.ap, label %_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit

_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit:   ; preds = %bb.ao
  %i.hw = load i32, ptr %i.gt, align 8, !tbaa !90
  %i.hx = load i32, ptr %i.fq, align 8, !tbaa !90
  %i.hy = icmp slt i32 %i.hw, %i.hx
  br i1 %i.hy, label %bb.ap, label %_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit

bb.ap:                                            ; preds = %.split77, %.split, %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit
  %i.hz = load ptr, ptr %i.el, align 8, !tbaa !44
  %i.ia = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !44
  %.not10.i = icmp eq i64 %.018.i.i89.i, 0
  br i1 %.not10.i, label %_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit: ; preds = %.split77, %.split, %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit, %bb.ap, %bb.x
  %.013.lcssa.i.i.i = phi i64 [ 0, %bb.x ], [ %.01317.i.i.i, %.split77 ], [ %.01317.i.i.i, %.split ], [ %.01317.i.i.i, %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit ], [ 0, %bb.ap ]
  %i.ib = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i
  store ptr %i.r, ptr %i.ib, align 8, !tbaa !44
  %i.ic = icmp sgt i64 %i.u, 8
  br i1 %i.ic, label %bb.b, label %._crit_edge, !llvm.loop !223

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_S9_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIPP4exprN9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_S9_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.obj_map<expr, rational>::key_data", align 8 ; 6 uses
  %4 = alloca %"struct.obj_map<expr, rational>::key_data", align 8 ; 6 uses
  %5 = alloca %"struct.obj_map<expr, rational>::key_data", align 8 ; 6 uses
  %6 = alloca %"struct.obj_map<expr, rational>::key_data", align 8 ; 6 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.p = and i64 %i.c, 8
  %i.q = icmp eq i64 %i.p, 0
  %i.r = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %7 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %7
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.r
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPP4exprlS1_N9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_T0_SA_T1_T2_.exit, %bb.b
  %.014 = phi i64 [ %i.g, %bb.b ], [ %i.ia, %_ZSt13__adjust_heapIPP4exprlS1_N9__gnu_cxx5__ops15_Iter_comp_iterIN3opt19maxsmt_compare_softEEEEvT_T0_SA_T1_T2_.exit ] ; 8 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.014
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !145 ; 6 uses
  %i.ac = icmp slt i64 %.014, %i.i
  br i1 %i.ac, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit17
  %.029.i = phi i64 [ %spec.select.i, %_ZNK3opt19maxsmt_compare_softclEP4exprS2_.exit17 ], [ %.014, %.lr.ph.i.preheader ] ; 2 uses
  %i.ae = shl i64 %.029.i, 1                      ; 3 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af
  %i.ah = getelementptr [8 x i8], ptr %0, i64 %i.ae
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !44 ; 4 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !44 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.aj, ptr %3, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.k, align 8, !tbaa !90
  store ptr null, ptr %i.l, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !98 ; 3 uses
  %i.an = load i32, ptr %i.ad, align 8, !tbaa !126 ; 3 uses
  %i.ao = add i32 %i.an, -1
  %i.ap = and i32 %i.ao, %i.am                    ; 3 uses
  %i.aq = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !125 ; 3 uses
  %i.ar = zext i32 %i.ap to i64
  %.idx.i.i61 = mul nuw nsw i64 %i.ar, 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i61 ; 3 uses
  %i.at = zext i32 %i.an to i64
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.at
  %.not34.i.i62 = icmp eq i32 %i.ap, %i.an
  br i1 %.not34.i.i62, label %.preheader.i.i67, label %.lr.ph.i.i63

.preheader.i.i67:                                 ; preds = %bb.f, %.lr.ph.i
  %.not2736.i.i68 = icmp eq i32 %i.ap, 0
  br i1 %.not2736.i.i68, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %.lr.ph38.i.i69

.lr.ph.i.i63:                                     ; preds = %.lr.ph.i, %bb.f
  %.035.i.i64 = phi ptr [ %i.bc, %bb.f ], [ %i.as, %.lr.ph.i ] ; 3 uses
  %i.av = load ptr, ptr %.035.i.i64, align 8, !tbaa !128 ; 4 uses
  %i.aw = icmp ult ptr %i.av, inttoptr (i64 2 to ptr)
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !98
  %i.az = icmp eq i32 %i.ay, %i.am
  %i.ba = icmp eq ptr %i.av, %i.aj
  %or.cond.i.i65 = and i1 %i.ba, %i.az
  br i1 %or.cond.i.i65, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i63
  %i.bb = icmp eq ptr %i.av, null
  br i1 %i.bb, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %.035.i.i64, i64 40 ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.bc, %i.au
  br i1 %.not.i.i66, label %.preheader.i.i67, label %.lr.ph.i.i63, !llvm.loop !10

.lr.ph38.i.i69:                                   ; preds = %.preheader.i.i67, %.lr.ph38.i.i69.backedge
  %.137.i.i70 = phi ptr [ %.137.i.i70.be, %.lr.ph38.i.i69.backedge ], [ %i.aq, %.preheader.i.i67 ] ; 4 uses
  %i.bd = load ptr, ptr %.137.i.i70, align 8, !tbaa !128 ; 4 uses
  %i.be = icmp ult ptr %i.bd, inttoptr (i64 2 to ptr)
  br i1 %i.be, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph38.i.i69
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !98
  %i.bh = icmp eq i32 %i.bg, %i.am
  %i.bi = icmp eq ptr %i.bd, %i.aj
  %or.cond31.i.i71 = and i1 %i.bi, %i.bh
  br i1 %or.cond31.i.i71, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %bb.i

bb.h:                                             ; preds = %.lr.ph38.i.i69
  %i.bj = icmp eq ptr %i.bd, null
  %i.bk = getelementptr inbounds nuw i8, ptr %.137.i.i70, i64 40 ; 2 uses
  %.not27.i.i79 = icmp eq ptr %i.bk, %i.as
  %or.cond43.i.i80 = select i1 %i.bj, i1 true, i1 %.not27.i.i79
  br i1 %or.cond43.i.i80, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %.lr.ph38.i.i69.backedge

bb.i:                                             ; preds = %bb.g
  %.old.i.i72 = getelementptr inbounds nuw i8, ptr %.137.i.i70, i64 40 ; 2 uses
  %.not27.old.i.i73 = icmp eq ptr %.old.i.i72, %i.as
  br i1 %.not27.old.i.i73, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76, label %.lr.ph38.i.i69.backedge

.lr.ph38.i.i69.backedge:                          ; preds = %bb.i, %bb.h
  %.137.i.i70.be = phi ptr [ %i.bk, %bb.h ], [ %.old.i.i72, %bb.i ]
  br label %.lr.ph38.i.i69, !llvm.loop !11

_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76: ; preds = %bb.e, %bb.d, %bb.i, %bb.h, %bb.g, %.preheader.i.i67
  %.026.i.i77 = phi ptr [ null, %.preheader.i.i67 ], [ %.137.i.i70, %bb.g ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ], [ %.035.i.i64, %bb.d ] ; 4 uses
  %i.bl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !93 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %.noexc.i.i.i78 unwind label %bb.j

.noexc.i.i.i78:                                   ; preds = %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit81 unwind label %bb.j

bb.j:                                             ; preds = %.noexc.i.i.i78, %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i76
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #23
  unreachable

_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit81: ; preds = %.noexc.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i.i77, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %i.ak, ptr %4, align 8, !tbaa !97
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  store i32 1, ptr %i.n, align 8, !tbaa !90
  store ptr null, ptr %i.o, align 8, !tbaa !91
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !98 ; 3 uses
  %i.br = load i32, ptr %i.ad, align 8, !tbaa !126 ; 3 uses
  %i.bs = add i32 %i.br, -1
  %i.bt = and i32 %i.bs, %i.bq                    ; 3 uses
  %i.bu = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !125 ; 3 uses
  %i.bv = zext i32 %i.bt to i64
  %.idx.i.i40 = mul nuw nsw i64 %i.bv, 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx.i.i40 ; 3 uses
  %i.bx = zext i32 %i.br to i64
  %i.by = getelementptr inbounds nuw [40 x i8], ptr %i.bu, i64 %i.bx
  %.not34.i.i41 = icmp eq i32 %i.bt, %i.br
  br i1 %.not34.i.i41, label %.preheader.i.i46, label %.lr.ph.i.i42

.preheader.i.i46:                                 ; preds = %bb.m, %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit81
  %.not2736.i.i47 = icmp eq i32 %i.bt, 0
  br i1 %.not2736.i.i47, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %.lr.ph38.i.i48

.lr.ph.i.i42:                                     ; preds = %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit81, %bb.m
  %.035.i.i43 = phi ptr [ %i.cg, %bb.m ], [ %i.bw, %_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_.exit81 ] ; 3 uses
  %i.bz = load ptr, ptr %.035.i.i43, align 8, !tbaa !128 ; 4 uses
  %i.ca = icmp ult ptr %i.bz, inttoptr (i64 2 to ptr)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i42
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !98
  %i.cd = icmp eq i32 %i.cc, %i.bq
  %i.ce = icmp eq ptr %i.bz, %i.ak
  %or.cond.i.i44 = and i1 %i.ce, %i.cd
  br i1 %or.cond.i.i44, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i42
  %i.cf = icmp eq ptr %i.bz, null
  br i1 %i.cf, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %.035.i.i43, i64 40 ; 2 uses
  %.not.i.i45 = icmp eq ptr %i.cg, %i.by
  br i1 %.not.i.i45, label %.preheader.i.i46, label %.lr.ph.i.i42, !llvm.loop !10

.lr.ph38.i.i48:                                   ; preds = %.preheader.i.i46, %.lr.ph38.i.i48.backedge
  %.137.i.i49 = phi ptr [ %.137.i.i49.be, %.lr.ph38.i.i48.backedge ], [ %i.bu, %.preheader.i.i46 ] ; 4 uses
  %i.ch = load ptr, ptr %.137.i.i49, align 8, !tbaa !128 ; 4 uses
  %i.ci = icmp ult ptr %i.ch, inttoptr (i64 2 to ptr)
  br i1 %i.ci, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph38.i.i48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !98
  %i.cl = icmp eq i32 %i.ck, %i.bq
  %i.cm = icmp eq ptr %i.ch, %i.ak
  %or.cond31.i.i50 = and i1 %i.cm, %i.cl
  br i1 %or.cond31.i.i50, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %bb.p

bb.o:                                             ; preds = %.lr.ph38.i.i48
  %i.cn = icmp eq ptr %i.ch, null
  %i.co = getelementptr inbounds nuw i8, ptr %.137.i.i49, i64 40 ; 2 uses
  %.not27.i.i58 = icmp eq ptr %i.co, %i.bw
  %or.cond43.i.i59 = select i1 %i.cn, i1 true, i1 %.not27.i.i58
  br i1 %or.cond43.i.i59, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %.lr.ph38.i.i48.backedge

bb.p:                                             ; preds = %bb.n
  %.old.i.i51 = getelementptr inbounds nuw i8, ptr %.137.i.i49, i64 40 ; 2 uses
  %.not27.old.i.i52 = icmp eq ptr %.old.i.i51, %i.bw
  br i1 %.not27.old.i.i52, label %_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55, label %.lr.ph38.i.i48.backedge

.lr.ph38.i.i48.backedge:                          ; preds = %bb.p, %bb.o
  %.137.i.i49.be = phi ptr [ %i.co, %bb.o ], [ %.old.i.i51, %bb.p ]
  br label %.lr.ph38.i.i48, !llvm.loop !11

_ZNK14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE9find_coreERKS6_.exit.i55: ; preds = %bb.l, %bb.k, %bb.p, %bb.o, %bb.n, %.preheader.i.i46
  %.026.i.i56 = phi ptr [ null, %.preheader.i.i46 ], [ %.137.i.i49, %bb.n ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.l ], [ %.035.i.i43, %bb.k ] ; 4 uses
  %i.cp = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !93 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN8uint_set8iterator4scanEv:bb.a

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1:             ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit.thread, %_ZN8uint_set8iterator8scan_idxEv.exit
  %i.ap = phi i32 [ %i.aj, %_ZN8uint_set8iterator8scan_idxEv.exit.thread ], [ %i.an, %_ZN8uint_set8iterator8scan_idxEv.exit ] ; 4 uses
  %i.aq = phi i32 [ %i.y, %_ZN8uint_set8iterator8scan_idxEv.exit.thread ], [ %i.am, %_ZN8uint_set8iterator8scan_idxEv.exit ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.pre26, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  %i.at = icmp ult i32 %i.ap, %i.as
  br i1 %i.at, label %_ZNK8uint_set8iterator8containsEv.exit, label %_ZNK8uint_set8iterator8containsEv.exit.thread

_ZNK8uint_set8iterator8containsEv.exit:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre26, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !42
  %i.ax = and i32 %i.aq, 31
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = and i32 %i.aw, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = icmp eq i32 %i.aq, %i.c
  %or.cond = or i1 %i.ba, %i.bb
  br i1 %or.cond, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %.lr.ph.i4

_ZNK8uint_set8iterator8containsEv.exit.thread:    ; preds = %_ZN8uint_set8iterator8scan_idxEv.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1
  %i.bc = phi i1 [ true, %_ZN8uint_set8iterator8scan_idxEv.exit ], [ false, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1 ]
  %i.bd = phi i32 [ %i.an, %_ZN8uint_set8iterator8scan_idxEv.exit ], [ %i.ap, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1 ]
  %i.be = phi i32 [ %i.am, %_ZN8uint_set8iterator8scan_idxEv.exit ], [ %i.aq, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i1 ] ; 2 uses
  %.old = icmp eq i32 %i.be, %i.c
  br i1 %.old, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %_ZNK8uint_set8iterator8containsEv.exit, %_ZNK8uint_set8iterator8containsEv.exit.thread
  %i.bf = phi i1 [ false, %_ZNK8uint_set8iterator8containsEv.exit ], [ %i.bc, %_ZNK8uint_set8iterator8containsEv.exit.thread ]
  %i.bg = phi i32 [ %i.ap, %_ZNK8uint_set8iterator8containsEv.exit ], [ %i.bd, %_ZNK8uint_set8iterator8containsEv.exit.thread ]
  %i.bh = phi i32 [ %i.aq, %_ZNK8uint_set8iterator8containsEv.exit ], [ %i.be, %_ZNK8uint_set8iterator8containsEv.exit.thread ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i4
  %indvar = phi i32 [ %indvar.next, %bb.e ], [ 0, %.lr.ph.i4 ] ; 2 uses
  %.02.i = phi i32 [ %i.bm, %bb.e ], [ %i.bg, %.lr.ph.i4 ] ; 2 uses
  %i.bi = phi i32 [ %i.bn, %bb.e ], [ %i.bh, %.lr.ph.i4 ] ; 8 uses
  %i.bj = zext i32 %.02.i to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.pre26, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !42
  %.not.i5 = icmp eq i32 %i.bl, 0
  br i1 %.not.i5, label %bb.e, label %_ZN8uint_set8iterator9scan_wordEv.exit

bb.e:                                             ; preds = %bb.d
  %i.bm = add i32 %.02.i, 1
  %i.bn = add i32 %i.bi, 32                       ; 3 uses
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !117
  %i.bo = icmp eq i32 %i.bn, %i.c
  %indvar.next = add i32 %indvar, 1
  br i1 %i.bo, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %bb.d, !llvm.loop !4

_ZN8uint_set8iterator9scan_wordEv.exit:           ; preds = %bb.d
  %i.bp = icmp eq i32 %i.bi, %i.c
  br i1 %i.bp, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %bb.f

bb.f:                                             ; preds = %_ZN8uint_set8iterator9scan_wordEv.exit
  %i.bq = lshr i32 %i.bi, 5                       ; 2 uses
  br i1 %i.bf, label %.thread44, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6:             ; preds = %bb.f
  %i.br = getelementptr inbounds i8, ptr %.pre26, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42
  %i.bt = icmp ult i32 %i.bq, %i.bs
  br i1 %i.bt, label %_ZNK8uint_set8iterator8containsEv.exit8, label %bb.g

_ZNK8uint_set8iterator8containsEv.exit8:          ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6
  %i.bu = zext nneg i32 %i.bq to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.pre26, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !42
  %i.bx = and i32 %i.bi, 31
  %i.by = shl nuw i32 1, %i.bx
  %i.bz = and i32 %i.bw, %i.by
  %.not = icmp eq i32 %i.bz, 0
  br i1 %.not, label %bb.g, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.preheader

bb.g:                                             ; preds = %_ZNK8uint_set8iterator8containsEv.exit8, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i6
  %i.ca = add i32 %i.bi, 1                        ; 3 uses
  store i32 %i.ca, ptr %i.a, align 8, !tbaa !117
  %i.cb = icmp eq i32 %i.ca, %i.c
  br i1 %i.cb, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.preheader

.thread44:                                        ; preds = %bb.f
  %i.cc = add i32 %i.bi, 1                        ; 4 uses
  store i32 %i.cc, ptr %i.a, align 8, !tbaa !117
  %i.cd = icmp eq i32 %i.cc, %i.c
  br i1 %i.cd, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.preheader:  ; preds = %bb.g, %_ZNK8uint_set8iterator8containsEv.exit8
  %.promoted.i94143 = phi i32 [ %i.bi, %_ZNK8uint_set8iterator8containsEv.exit8 ], [ %i.ca, %bb.g ]
  %i.ce = getelementptr inbounds i8, ptr %.pre26, i64 -4
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11

_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader: ; preds = %.thread44
  %i.cf = add i32 %i.c, -2
  %i.cg = shl i32 %indvar, 5
  %i.ch = add i32 %i.bh, %i.cg
  %i.ci = sub i32 %i.cf, %i.ch
  %i.cj = and i32 %i.bh, 31
  %i.ck = xor i32 %i.cj, 31
  %i.cl = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 %i.ck) ; 2 uses
  %min.iters.check63 = icmp samesign ult i32 %i.cl, 8
  br i1 %min.iters.check63, label %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader77, label %vector.ph64

vector.ph64:                                      ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader
  %i.cm = add nuw nsw i32 %i.cl, 1                ; 2 uses
  %i.cn = and i32 %i.cm, 7                        ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = select i1 %i.co, i32 8, i32 %i.cn
  %n.vec65 = sub nsw i32 %i.cm, %i.cp             ; 2 uses
  %i.cq = add i32 %i.cc, %n.vec65
  %i.cr = add i32 %i.bi, 4
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph64
  %index70 = phi i32 [ 0, %vector.ph64 ], [ %index.next73, %vector.body69 ]
  %i.cs = phi i32 [ %i.cr, %vector.ph64 ], [ %i.ct, %vector.body69 ] ; 2 uses
  %index.next73 = add nuw i32 %index70, 8         ; 2 uses
  %i.ct = add i32 %i.cs, 8
  %i.cu = icmp eq i32 %index.next73, %n.vec65
  br i1 %i.cu, label %middle.block75, label %vector.body69, !llvm.loop !257

middle.block75:                                   ; preds = %vector.body69
  %i.cv = add i32 %i.cs, 5
  store i32 %i.cv, ptr %i.a, align 8, !tbaa !117
  br label %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader77

_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader77: ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader, %middle.block75
  %.ph = phi i32 [ %i.cc, %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader ], [ %i.cq, %middle.block75 ]
  br label %_ZNK8uint_set8containsEj.exit.thread.us.i18

_ZNK8uint_set8containsEj.exit.thread.us.i18:      ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader77, %bb.h
  %i.cw = phi i32 [ %i.cx, %bb.h ], [ %.ph, %_ZNK8uint_set8containsEj.exit.thread.us.i18.preheader77 ] ; 2 uses
  %.old.us.i19 = and i32 %i.cw, 31
  %.not.old.us.i20 = icmp eq i32 %.old.us.i19, 0
  br i1 %.not.old.us.i20, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %bb.h

bb.h:                                             ; preds = %_ZNK8uint_set8containsEj.exit.thread.us.i18
  %i.cx = add i32 %i.cw, 1                        ; 3 uses
  store i32 %i.cx, ptr %i.a, align 8, !tbaa !117
  %i.cy = icmp eq i32 %i.cx, %i.c
  br i1 %i.cy, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %_ZNK8uint_set8containsEj.exit.thread.us.i18, !llvm.loop !258

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11:            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.preheader, %bb.i
  %i.cz = phi i32 [ %i.dk, %bb.i ], [ %.promoted.i94143, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11.preheader ] ; 4 uses
  %i.da = lshr i32 %i.cz, 5                       ; 2 uses
  %i.db = load i32, ptr %i.ce, align 4, !tbaa !42
  %i.dc = icmp ult i32 %i.da, %i.db
  br i1 %i.dc, label %_ZNK8uint_set8containsEj.exit.i15, label %_ZNK8uint_set8containsEj.exit.thread.i12

_ZNK8uint_set8containsEj.exit.i15:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11
  %i.dd = zext nneg i32 %i.da to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.pre26, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !42
  %i.dg = and i32 %i.cz, 31                       ; 2 uses
  %i.dh = shl nuw i32 1, %i.dg
  %i.di = and i32 %i.df, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %.not.i16 = icmp eq i32 %i.dg, 0
  %or.cond.i17 = or i1 %.not.i16, %i.dj
  br i1 %or.cond.i17, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %bb.i

_ZNK8uint_set8containsEj.exit.thread.i12:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11
  %.old.i13 = and i32 %i.cz, 31
  %.not.old.i14 = icmp eq i32 %.old.i13, 0
  br i1 %.not.old.i14, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %bb.i

bb.i:                                             ; preds = %_ZNK8uint_set8containsEj.exit.thread.i12, %_ZNK8uint_set8containsEj.exit.i15
  %i.dk = add i32 %i.cz, 1                        ; 3 uses
  store i32 %i.dk, ptr %i.a, align 8, !tbaa !117
  %i.dl = icmp eq i32 %i.dk, %i.c
  br i1 %i.dl, label %_ZN8uint_set8iterator8scan_idxEv.exit21, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i11, !llvm.loop !3

_ZN8uint_set8iterator8scan_idxEv.exit21:          ; preds = %bb.e, %bb.i, %_ZNK8uint_set8containsEj.exit.thread.i12, %_ZNK8uint_set8containsEj.exit.i15, %bb.h, %_ZNK8uint_set8containsEj.exit.thread.us.i18, %.thread44, %_ZN8uint_set8iterator9scan_wordEv.exit, %bb.g, %_ZNK8uint_set8iterator8containsEv.exit, %_ZNK8uint_set8iterator8containsEv.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEEvT_SR_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEEvT_SR_SR_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.f = getelementptr i8, ptr %3, i64 8          ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph231

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPjN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEET_SR_SR_T0_.exit
  %i.h = icmp eq i64 %i.nm, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph231, !llvm.loop !259

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa227 = phi i64 [ %i.c, %.lr.ph ], [ %i.tt, %bb.b ] ; 2 uses
  %.060.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.i = lshr exact i64 %.lcssa227, 2             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.lcssa227, 4
  %i.o = icmp eq i64 %i.n, 0
  %4 = or disjoint i64 %i.j, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEEvT_T0_SS_T1_T2_.exit.i.i.i, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.gh, %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEEvT_T0_SS_T1_T2_.exit.i.i.i ] ; 8 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !42   ; 6 uses
  %i.t = icmp slt i64 %.014.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !87 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %.014.i.i.i, %.lr.ph.i.i.i.i ], [ %i.cz, %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i ] ; 2 uses
  %i.u = shl i64 %.035.i.i.i.i, 1                 ; 3 uses
  %i.v = add i64 %i.u, 2                          ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.val29.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !42 ; 7 uses
  %.val30.i.i.i.i = load i32, ptr %i.y, align 4, !tbaa !42 ; 5 uses
  %.val.val31.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !77 ; 4 uses
  %i.z = add i32 %.val.val31.i.i.i.i, -1          ; 2 uses
  %i.aa = and i32 %i.z, %.val29.i.i.i.i           ; 2 uses
  %i.ab = zext i32 %.val.val31.i.i.i.i to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i.i.i.i, i64 %i.ab ; 2 uses
  %.not30.i.i.i.i.i17.i.i.i = icmp eq i32 %i.aa, %.val.val31.i.i.i.i
  br i1 %.not30.i.i.i.i.i17.i.i.i, label %.lr.ph34.i.i.i.i.i24.i.i.i.preheader, label %.lr.ph.i.i.i.i.i18.i.i.i.preheader

.lr.ph.i.i.i.i.i18.i.i.i.preheader:               ; preds = %bb.d
  %i.ad = zext i32 %i.aa to i64
  %.idx.i.i.i.i.i16.i.i.i = mul nuw nsw i64 %i.ad, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i, i64 %.idx.i.i.i.i.i16.i.i.i
  br label %.lr.ph.i.i.i.i.i18.i.i.i

.lr.ph.i.i.i.i.i18.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i18.i.i.i.preheader, %bb.g
  %.031.i.i.i.i.i19.i.i.i = phi ptr [ %i.am, %bb.g ], [ %i.ae, %.lr.ph.i.i.i.i.i18.i.i.i.preheader ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i19.i.i.i, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !86
  %cond.i.i.i20.i.i.i = icmp eq i32 %i.ag, 2
  br i1 %cond.i.i.i20.i.i.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i18.i.i.i
  %i.ah = load i32, ptr %.031.i.i.i.i.i19.i.i.i, align 8, !tbaa !85
  %i.ai = icmp eq i32 %i.ah, %.val29.i.i.i.i
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i19.i.i.i, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !113
  %i.al = icmp eq i32 %i.ak, %.val29.i.i.i.i
  br i1 %i.al, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i18.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i19.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i21.i.i.i = icmp eq ptr %i.am, %i.ac
  br i1 %.not.i.i.i.i.i21.i.i.i, label %.lr.ph34.i.i.i.i.i24.i.i.i.preheader, label %.lr.ph.i.i.i.i.i18.i.i.i, !llvm.loop !1

.lr.ph34.i.i.i.i.i24.i.i.i.preheader:             ; preds = %bb.g, %bb.d
  br label %.lr.ph34.i.i.i.i.i24.i.i.i

.lr.ph34.i.i.i.i.i24.i.i.i:                       ; preds = %.lr.ph34.i.i.i.i.i24.i.i.i.preheader, %bb.j
  %.133.i.i.i.i.i26.i.i.i = phi ptr [ %i.au, %bb.j ], [ %.val.val.i.i.i.i, %.lr.ph34.i.i.i.i.i24.i.i.i.preheader ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i26.i.i.i, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !86
  %cond4.i.i.i27.i.i.i = icmp eq i32 %i.ao, 2
  br i1 %cond4.i.i.i27.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph34.i.i.i.i.i24.i.i.i
  %i.ap = load i32, ptr %.133.i.i.i.i.i26.i.i.i, align 8, !tbaa !85
  %i.aq = icmp eq i32 %i.ap, %.val29.i.i.i.i
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i26.i.i.i, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !113
  %i.at = icmp eq i32 %i.as, %.val29.i.i.i.i
  br i1 %i.at, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph34.i.i.i.i.i24.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i26.i.i.i, i64 24
  br label %.lr.ph34.i.i.i.i.i24.i.i.i

_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i: ; preds = %bb.f, %bb.i
  %.026.i.i.i.i.i30.i.i.i = phi ptr [ %.133.i.i.i.i.i26.i.i.i, %bb.i ], [ %.031.i.i.i.i.i19.i.i.i, %bb.f ]
  %i.av = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i30.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74 ; 4 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i31.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i31.i.i.i: ; preds = %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !42 ; 3 uses
  %.not.i.i32.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i32.i.i.i, label %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i31.i.i.i
  %wide.trip.count.i.i34.i.i.i = zext i32 %i.az to i64 ; 3 uses
  %min.iters.check332 = icmp ult i32 %i.az, 8
  br i1 %min.iters.check332, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader, label %vector.ph333

vector.ph333:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i
  %n.vec334 = and i64 %wide.trip.count.i.i34.i.i.i, 4294967288 ; 3 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %vec.phi337 = phi <4 x i32> [ zeroinitializer, %vector.ph333 ], [ %i.be, %vector.body335 ]
  %vec.phi338 = phi <4 x i32> [ zeroinitializer, %vector.ph333 ], [ %i.bf, %vector.body335 ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index336 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load339 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !42
  %wide.load340 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !42
  %i.bc = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load339)
  %i.bd = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load340)
  %i.be = add <4 x i32> %i.bc, %vec.phi337        ; 2 uses
  %i.bf = add <4 x i32> %i.bd, %vec.phi338        ; 2 uses
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.bg, label %middle.block342, label %vector.body335, !llvm.loop !260

middle.block342:                                  ; preds = %vector.body335
  %bin.rdx343 = add <4 x i32> %i.bf, %i.be
  %i.bh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx343) ; 2 uses
  %cmp.n344 = icmp eq i64 %n.vec334, %wide.trip.count.i.i34.i.i.i
  br i1 %cmp.n344, label %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i, %middle.block342
  %indvars.iv.i.i36.i.i.i.ph = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i ], [ %n.vec334, %middle.block342 ]
  %.05611.i.i37.i.i.i.ph = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i33.i.i.i ], [ %i.bh, %middle.block342 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i:      ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i
  %indvars.iv.i.i36.i.i.i = phi i64 [ %indvars.iv.next.i.i38.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i ], [ %indvars.iv.i.i36.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader ] ; 2 uses
  %.05611.i.i37.i.i.i = phi i32 [ %i.bl, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i ], [ %.05611.i.i37.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i.i36.i.i.i
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42
  %i.bk = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.bj)
  %i.bl = add i32 %i.bk, %.05611.i.i37.i.i.i      ; 2 uses
  %indvars.iv.next.i.i38.i.i.i = add nuw nsw i64 %indvars.iv.i.i36.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i39.i.i.i = icmp eq i64 %indvars.iv.next.i.i38.i.i.i, %wide.trip.count.i.i34.i.i.i
  br i1 %exitcond.not.i.i39.i.i.i, label %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i, !llvm.loop !261

_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i:         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i, %middle.block342, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i31.i.i.i, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i
  %.05.lcssa.i.i41.i.i.i = phi i32 [ 0, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i29.i.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i31.i.i.i ], [ %i.bh, %middle.block342 ], [ %i.bl, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i35.i.i.i ]
  %i.bm = and i32 %i.z, %.val30.i.i.i.i           ; 2 uses
  %.not30.i.i.i.i2.i43.i.i.i = icmp eq i32 %i.bm, %.val.val31.i.i.i.i
  br i1 %.not30.i.i.i.i2.i43.i.i.i, label %.lr.ph34.i.i.i.i9.i50.i.i.i.preheader, label %.lr.ph.i.i.i.i3.i44.i.i.i.preheader

.lr.ph.i.i.i.i3.i44.i.i.i.preheader:              ; preds = %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i
  %i.bn = zext i32 %i.bm to i64
  %.idx.i.i.i.i1.i42.i.i.i = mul nuw nsw i64 %i.bn, 24
  %i.bo = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i, i64 %.idx.i.i.i.i1.i42.i.i.i
  br label %.lr.ph.i.i.i.i3.i44.i.i.i

.lr.ph.i.i.i.i3.i44.i.i.i:                        ; preds = %.lr.ph.i.i.i.i3.i44.i.i.i.preheader, %bb.m
  %.031.i.i.i.i4.i45.i.i.i = phi ptr [ %i.bw, %bb.m ], [ %i.bo, %.lr.ph.i.i.i.i3.i44.i.i.i.preheader ] ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i45.i.i.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !86
  %cond.i.i5.i46.i.i.i = icmp eq i32 %i.bq, 2
  br i1 %cond.i.i5.i46.i.i.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i.i.i3.i44.i.i.i
  %i.br = load i32, ptr %.031.i.i.i.i4.i45.i.i.i, align 8, !tbaa !85
  %i.bs = icmp eq i32 %i.br, %.val30.i.i.i.i
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i45.i.i.i, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !113
  %i.bv = icmp eq i32 %i.bu, %.val30.i.i.i.i
  br i1 %i.bv, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.lr.ph.i.i.i.i3.i44.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i45.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i6.i47.i.i.i = icmp eq ptr %i.bw, %i.ac
  br i1 %.not.i.i.i.i6.i47.i.i.i, label %.lr.ph34.i.i.i.i9.i50.i.i.i.preheader, label %.lr.ph.i.i.i.i3.i44.i.i.i, !llvm.loop !1

.lr.ph34.i.i.i.i9.i50.i.i.i.preheader:            ; preds = %bb.m, %_ZNK8uint_set9num_elemsEv.exit.i40.i.i.i
  br label %.lr.ph34.i.i.i.i9.i50.i.i.i

.lr.ph34.i.i.i.i9.i50.i.i.i:                      ; preds = %.lr.ph34.i.i.i.i9.i50.i.i.i.preheader, %bb.p
  %.133.i.i.i.i11.i52.i.i.i = phi ptr [ %i.ce, %bb.p ], [ %.val.val.i.i.i.i, %.lr.ph34.i.i.i.i9.i50.i.i.i.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i52.i.i.i, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !86
  %cond4.i.i12.i53.i.i.i = icmp eq i32 %i.by, 2
  br i1 %cond4.i.i12.i53.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph34.i.i.i.i9.i50.i.i.i
  %i.bz = load i32, ptr %.133.i.i.i.i11.i52.i.i.i, align 8, !tbaa !85
  %i.ca = icmp eq i32 %i.bz, %.val30.i.i.i.i
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i52.i.i.i, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !113
  %i.cd = icmp eq i32 %i.cc, %.val30.i.i.i.i
  br i1 %i.cd, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph34.i.i.i.i9.i50.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i52.i.i.i, i64 24
  br label %.lr.ph34.i.i.i.i9.i50.i.i.i

_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i: ; preds = %bb.l, %bb.o
  %.026.i.i.i.i14.i56.i.i.i = phi ptr [ %.133.i.i.i.i11.i52.i.i.i, %bb.o ], [ %.031.i.i.i.i4.i45.i.i.i, %bb.l ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i14.i56.i.i.i, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !74 ; 4 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i: ; preds = %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !42 ; 3 uses
  %.not.i17.i58.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i17.i58.i.i.i, label %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i
  %wide.trip.count.i19.i60.i.i.i = zext i32 %i.cj to i64 ; 3 uses
  %min.iters.check316 = icmp ult i32 %i.cj, 8
  br i1 %min.iters.check316, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader, label %vector.ph317

vector.ph317:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i
  %n.vec318 = and i64 %wide.trip.count.i19.i60.i.i.i, 4294967288 ; 3 uses
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph317
  %index320 = phi i64 [ 0, %vector.ph317 ], [ %index.next325, %vector.body319 ] ; 2 uses
  %vec.phi321 = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.co, %vector.body319 ]
  %vec.phi322 = phi <4 x i32> [ zeroinitializer, %vector.ph317 ], [ %i.cp, %vector.body319 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index320 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load323 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !42
  %wide.load324 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !42
  %i.cm = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load323)
  %i.cn = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load324)
  %i.co = add <4 x i32> %i.cm, %vec.phi321        ; 2 uses
  %i.cp = add <4 x i32> %i.cn, %vec.phi322        ; 2 uses
  %index.next325 = add nuw i64 %index320, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next325, %n.vec318
  br i1 %i.cq, label %middle.block326, label %vector.body319, !llvm.loop !262

middle.block326:                                  ; preds = %vector.body319
  %bin.rdx327 = add <4 x i32> %i.cp, %i.co
  %i.cr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx327) ; 2 uses
  %cmp.n328 = icmp eq i64 %n.vec318, %wide.trip.count.i19.i60.i.i.i
  br i1 %cmp.n328, label %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i, %middle.block326
  %indvars.iv.i21.i62.i.i.i.ph = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i ], [ %n.vec318, %middle.block326 ]
  %.05611.i22.i63.i.i.i.ph = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i18.i59.i.i.i ], [ %i.cr, %middle.block326 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i:    ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i
  %indvars.iv.i21.i62.i.i.i = phi i64 [ %indvars.iv.next.i23.i64.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i ], [ %indvars.iv.i21.i62.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader ] ; 2 uses
  %.05611.i22.i63.i.i.i = phi i32 [ %i.cv, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i ], [ %.05611.i22.i63.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i.preheader ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i21.i62.i.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !42
  %i.cu = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ct)
  %i.cv = add i32 %i.cu, %.05611.i22.i63.i.i.i    ; 2 uses
  %indvars.iv.next.i23.i64.i.i.i = add nuw nsw i64 %indvars.iv.i21.i62.i.i.i, 1 ; 2 uses
  %exitcond.not.i24.i65.i.i.i = icmp eq i64 %indvars.iv.next.i23.i64.i.i.i, %wide.trip.count.i19.i60.i.i.i
  br i1 %exitcond.not.i24.i65.i.i.i, label %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i, !llvm.loop !263

_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i, %middle.block326
  %.lcssa212 = phi i32 [ %i.cr, %middle.block326 ], [ %i.cv, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i20.i61.i.i.i ]
  %i.cw = icmp ult i32 %.05.lcssa.i.i41.i.i.i, %.lcssa212
  %i.cx = or disjoint i64 %i.u, 1
  %cond.fr.i.i.i = freeze i1 %i.cw
  %spec.select.i.i.i = select i1 %cond.fr.i.i.i, i64 %i.cx, i64 %i.v ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !42
  br label %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i

_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i: ; preds = %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i
  %i.cy = phi i32 [ %.val29.i.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i ], [ %.pre.i.i.i, %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i ], [ %.val29.i.i.i.i, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i ]
  %i.cz = phi i64 [ %i.v, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i16.i57.i.i.i ], [ %spec.select.i.i.i, %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.i.i.i ], [ %i.v, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i55.i.i.i ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.035.i.i.i.i
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !42
  %i.db = icmp slt i64 %i.cz, %i.m
  br i1 %i.db, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !264

._crit_edge.i.i.i.i:                              ; preds = %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.014.i.i.i, %bb.c ], [ %i.cz, %_ZZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS0_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS2_ISB_Lb1EjEENKUljjE_clEjj.exit68.thread.i.i.i ] ; 2 uses
  %i.dc = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.dc, i1 false
  br i1 %or.cond.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dd = load i32, ptr %i.p, align 4, !tbaa !42
  store i32 %i.dd, ptr %i.q, align 4, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i
  %.128.i.i.i.i = phi i64 [ %4, %bb.q ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.de = icmp samesign ugt i64 %.128.i.i.i.i, %.014.i.i.i
  br i1 %i.de, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIPjljN9__gnu_cxx5__ops15_Iter_comp_iterIZN11max_cliquesIZN3opt10preprocess12prop_mutexesER6vectorINS5_4softELb1EjER8rationalE11neg_literalE7cliquesERK7svectorIjjER5u_mapI8uint_setERS7_ISG_Lb1EjEEUljjE_EEEvT_T0_SS_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.r
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !87 ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.af, %.lr.ph.i.i.i.i.i
  %.0134.i.i.i.i.i = phi i64 [ %.128.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.059.i.i.i.i.i, %bb.af ] ; 5 uses
  %.05.in.i.i.i.i.i = add nsw i64 %.0134.i.i.i.i.i, -1
  %.059.i.i.i.i.i = lshr i64 %.05.in.i.i.i.i.i, 1 ; 4 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.059.i.i.i.i.i
  %.val14.i.i.i.i.i = load i32, ptr %i.df, align 4, !tbaa !42 ; 6 uses
  %.val.val16.i.i.i.i.i = load i32, ptr %i.f, align 8, !tbaa !77 ; 4 uses
  %i.dg = add i32 %.val.val16.i.i.i.i.i, -1       ; 2 uses
  %i.dh = and i32 %i.dg, %.val14.i.i.i.i.i        ; 2 uses
  %i.di = zext i32 %.val.val16.i.i.i.i.i to i64
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.di ; 2 uses
  %.not30.i.i.i.i.i.i.i.i = icmp eq i32 %i.dh, %.val.val16.i.i.i.i.i
  br i1 %.not30.i.i.i.i.i.i.i.i, label %.lr.ph34.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.s
  %i.dk = zext i32 %i.dh to i64
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dk, 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %bb.v
  %.031.i.i.i.i.i.i.i.i = phi ptr [ %i.dt, %bb.v ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i.i.i.i, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !86
  %cond.i.i.i.i.i.i = icmp eq i32 %i.dn, 2
  br i1 %cond.i.i.i.i.i.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.do = load i32, ptr %.031.i.i.i.i.i.i.i.i, align 8, !tbaa !85
  %i.dp = icmp eq i32 %i.do, %.val14.i.i.i.i.i
  br i1 %i.dp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i.i.i.i, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !113
  %i.ds = icmp eq i32 %i.dr, %.val14.i.i.i.i.i
  br i1 %i.ds, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, %i.dj
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph34.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

.lr.ph34.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.v, %bb.s
  br label %.lr.ph34.i.i.i.i.i.i.i.i

.lr.ph34.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph34.i.i.i.i.i.i.i.i.preheader, %bb.y
  %.133.i.i.i.i.i.i.i.i = phi ptr [ %i.eb, %bb.y ], [ %.val.val.i.i.i.i.i, %.lr.ph34.i.i.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i.i.i.i, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !86
  %cond4.i.i.i.i.i.i = icmp eq i32 %i.dv, 2
  br i1 %cond4.i.i.i.i.i.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph34.i.i.i.i.i.i.i.i
  %i.dw = load i32, ptr %.133.i.i.i.i.i.i.i.i, align 8, !tbaa !85
  %i.dx = icmp eq i32 %i.dw, %.val14.i.i.i.i.i
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i.i.i.i, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !113
  %i.ea = icmp eq i32 %i.dz, %.val14.i.i.i.i.i
  br i1 %i.ea, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph34.i.i.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i.i.i.i.i, i64 24
  br label %.lr.ph34.i.i.i.i.i.i.i.i

_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i: ; preds = %bb.u, %bb.x
  %.026.i.i.i.i.i.i.i.i = phi ptr [ %.133.i.i.i.i.i.i.i.i, %bb.x ], [ %.031.i.i.i.i.i.i.i.i, %bb.u ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i.i.i.i, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !74 ; 4 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i.i.i.i:  ; preds = %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !42 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i.i.i.i
  %wide.trip.count.i.i.i.i.i = zext i32 %i.eg to i64 ; 3 uses
  %min.iters.check300 = icmp ult i32 %i.eg, 8
  br i1 %min.iters.check300, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader, label %vector.ph301

vector.ph301:                                     ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i
  %n.vec302 = and i64 %wide.trip.count.i.i.i.i.i, 4294967288 ; 3 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph301
  %index304 = phi i64 [ 0, %vector.ph301 ], [ %index.next309, %vector.body303 ] ; 2 uses
  %vec.phi305 = phi <4 x i32> [ zeroinitializer, %vector.ph301 ], [ %i.el, %vector.body303 ]
  %vec.phi306 = phi <4 x i32> [ zeroinitializer, %vector.ph301 ], [ %i.em, %vector.body303 ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index304 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load307 = load <4 x i32>, ptr %i.eh, align 4, !tbaa !42
  %wide.load308 = load <4 x i32>, ptr %i.ei, align 4, !tbaa !42
  %i.ej = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load307)
  %i.ek = tail call range(i32 0, 33) <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %wide.load308)
  %i.el = add <4 x i32> %i.ej, %vec.phi305        ; 2 uses
  %i.em = add <4 x i32> %i.ek, %vec.phi306        ; 2 uses
  %index.next309 = add nuw i64 %index304, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next309, %n.vec302
  br i1 %i.en, label %middle.block310, label %vector.body303, !llvm.loop !265

middle.block310:                                  ; preds = %vector.body303
  %bin.rdx311 = add <4 x i32> %i.em, %i.el
  %i.eo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx311) ; 2 uses
  %cmp.n312 = icmp eq i64 %n.vec302, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n312, label %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i, %middle.block310
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i ], [ %n.vec302, %middle.block310 ]
  %.05611.i.i.i.i.i.ph = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.preheader.i.i.i.i.i ], [ %i.eo, %middle.block310 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i:        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.05611.i.i.i.i.i = phi i32 [ %i.es, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i ], [ %.05611.i.i.i.i.i.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i.preheader ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.i.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !42
  %i.er = tail call noundef range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.eq)
  %i.es = add i32 %i.er, %.05611.i.i.i.i.i        ; 2 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i, !llvm.loop !266

_ZNK8uint_set9num_elemsEv.exit.i.i.i.i:           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i, %middle.block310, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i.i.i.i, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i
  %.05.lcssa.i.i.i.i.i = phi i32 [ 0, %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit.i.i.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph.i.i.i.i.i ], [ %i.eo, %middle.block310 ], [ %i.es, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.i.i.i ]
  %i.et = and i32 %i.dg, %i.s                     ; 2 uses
  %.not30.i.i.i.i2.i.i.i.i = icmp eq i32 %i.et, %.val.val16.i.i.i.i.i
  br i1 %.not30.i.i.i.i2.i.i.i.i, label %.lr.ph34.i.i.i.i9.i.i.i.i.preheader, label %.lr.ph.i.i.i.i3.i.i.i.i.preheader

.lr.ph.i.i.i.i3.i.i.i.i.preheader:                ; preds = %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i
  %i.eu = zext i32 %i.et to i64
  %.idx.i.i.i.i1.i.i.i.i = mul nuw nsw i64 %i.eu, 24
  %i.ev = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i, i64 %.idx.i.i.i.i1.i.i.i.i
  br label %.lr.ph.i.i.i.i3.i.i.i.i

.lr.ph.i.i.i.i3.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i3.i.i.i.i.preheader, %bb.ab
  %.031.i.i.i.i4.i.i.i.i = phi ptr [ %i.fd, %bb.ab ], [ %i.ev, %.lr.ph.i.i.i.i3.i.i.i.i.preheader ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i.i.i.i, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !86
  %cond.i.i5.i.i.i.i = icmp eq i32 %i.ex, 2
  br i1 %cond.i.i5.i.i.i.i, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph.i.i.i.i3.i.i.i.i
  %i.ey = load i32, ptr %.031.i.i.i.i4.i.i.i.i, align 8, !tbaa !85
  %i.ez = icmp eq i32 %i.ey, %i.s
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i.i.i.i, i64 8
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !113
  %i.fc = icmp eq i32 %i.fb, %i.s
  br i1 %i.fc, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i.i.i.i3.i.i.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.031.i.i.i.i4.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i6.i.i.i.i = icmp eq ptr %i.fd, %i.dj
  br i1 %.not.i.i.i.i6.i.i.i.i, label %.lr.ph34.i.i.i.i9.i.i.i.i.preheader, label %.lr.ph.i.i.i.i3.i.i.i.i, !llvm.loop !1

.lr.ph34.i.i.i.i9.i.i.i.i.preheader:              ; preds = %bb.ab, %_ZNK8uint_set9num_elemsEv.exit.i.i.i.i
  br label %.lr.ph34.i.i.i.i9.i.i.i.i

.lr.ph34.i.i.i.i9.i.i.i.i:                        ; preds = %.lr.ph34.i.i.i.i9.i.i.i.i.preheader, %bb.ae
  %.133.i.i.i.i11.i.i.i.i = phi ptr [ %i.fl, %bb.ae ], [ %.val.val.i.i.i.i.i, %.lr.ph34.i.i.i.i9.i.i.i.i.preheader ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i.i.i.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !86
  %cond4.i.i12.i.i.i.i = icmp eq i32 %i.ff, 2
  br i1 %cond4.i.i12.i.i.i.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph34.i.i.i.i9.i.i.i.i
  %i.fg = load i32, ptr %.133.i.i.i.i11.i.i.i.i, align 8, !tbaa !85
  %i.fh = icmp eq i32 %i.fg, %i.s
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fi = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i.i.i.i, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !113
  %i.fk = icmp eq i32 %i.fj, %i.s
  br i1 %i.fk, label %_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.lr.ph34.i.i.i.i9.i.i.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.133.i.i.i.i11.i.i.i.i, i64 24
  br label %.lr.ph34.i.i.i.i9.i.i.i.i

_ZN9table2mapI17default_map_entryIj8uint_setE6u_hash4u_eqEixERKj.exit15.i.i.i.i: ; preds = %bb.aa, %bb.ad
  %.026.i.i.i.i14.i.i.i.i = phi ptr [ %.133.i.i.i.i11.i.i.i.i, %bb.ad ], [ %.031.i.i.i.i4.i.i.i.i, %bb.aa ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i14.i.i.i.i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !74 ; 4 uses
  %i.fo = icmp eq ptr %i.fn, null
end_hunk_1
