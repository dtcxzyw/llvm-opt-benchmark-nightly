Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/linemod?download=true
inline.NumInlined: 3000
inline.NumDeleted: 1203
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK2cv7linemod8Detector10matchClassERKSt6vectorIS2_IS2_INS_3MatESaIS3_EESaIS5_EESaIS7_EERKS2_INS_5Size_IiEESaISD_EEfRS2_INS0_5MatchESaISI_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IS2_INS0_8TemplateESaISU_EESaISW_EE:bb.a
  %i.ly = getelementptr inbounds i8, ptr %i.lu, i64 %i.lx
  invoke void @_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEvS9_T_SA_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ly, ptr %.sroa.0320.0.lcssa, ptr %.sroa.15.3.lcssa)
          to label %bb.bl unwind label %bb.bo

bb.ag:                                            ; preds = %.lr.ph504, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit
  %indvars.iv585 = phi i64 [ %i.hq, %.lr.ph504 ], [ %indvars.iv.next586, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 6 uses
  %.sroa.15.3501 = phi ptr [ %.sroa.15.0.lcssa, %.lr.ph504 ], [ %.sroa.15.6, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ] ; 10 uses
  %i.lz = load ptr, ptr %1, align 8, !tbaa !215
  %i.ma = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %indvars.iv585
  %i.mb = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv585
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !55 ; 17 uses
  %i.me = load ptr, ptr %i.g, align 8, !tbaa !168 ; 2 uses
  %i.mf = load ptr, ptr %0, align 8, !tbaa !169   ; 2 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = ashr exact i64 %i.mi, 4                 ; 5 uses
  %i.mk = mul i64 %indvars.iv585, %i.mj
  %i.ml = load ptr, ptr %2, align 8, !tbaa !221
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %indvars.iv585 ; 2 uses
  %.sroa.039.0.copyload = load i32, ptr %i.mm, align 4, !tbaa !55 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !55 ; 2 uses
  %i.mn = shl nsw i32 %i.md, 3                    ; 4 uses
  %i.mo = sdiv i32 %i.md, 2
  %i.mp = srem i32 %i.md, 2
  %i.mq = add nsw i32 %i.mp, -1
  %i.mr = add nsw i32 %i.mq, %i.mo                ; 2 uses
  %sext660 = shl i64 %i.mk, 32
  %i.ms = ashr exact i64 %sext660, 32             ; 2 uses
  %i.mt = load ptr, ptr %i.an, align 8, !tbaa !235
  %i.mu = getelementptr inbounds nuw [40 x i8], ptr %i.mt, i64 %i.ms ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !65
  %i.mw = add i32 %i.mn, %i.mv
  %i.mx = sub i32 %.sroa.039.0.copyload, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !66
  %i.na = add i32 %i.mn, %i.mz
  %i.nb = sub i32 %.sroa.6.0.copyload, %i.na
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  %i.nc = icmp ugt i64 %i.mj, 44343134792571037
  br i1 %i.nc, label %bb.ah, label %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i172

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #29
          to label %.noexc182 unwind label %.loopexit.split-lp348

.noexc182:                                        ; preds = %bb.ah
  unreachable

_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i172: ; preds = %bb.ag
  %.not.i.i.i.i173 = icmp eq ptr %i.me, %i.mf
  br i1 %.not.i.i.i.i173, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i181, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i174

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i181: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  br label %.loopexit

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i174: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i172
  %i.nd = mul nuw nsw i64 %i.mj, 208
  %i.ne = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nd) #31
          to label %.noexc183 unwind label %.loopexit347 ; 4 uses

.noexc183:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i174
  store ptr %i.ne, ptr %15, align 8, !tbaa !199
  %i.nf = getelementptr inbounds nuw [208 x i8], ptr %i.ne, i64 %i.mj
  store ptr %i.nf, ptr %i.ad, align 8, !tbaa !200
  br label %.lr.ph.i.i.i.i.i175

.lr.ph.i.i.i.i.i175:                              ; preds = %.lr.ph.i.i.i.i.i175, %.noexc183
  %.08.i.i.i.i.i176 = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i175 ], [ %i.ne, %.noexc183 ] ; 2 uses
  %.057.i.i.i.i.i177 = phi i64 [ %i.ng, %.lr.ph.i.i.i.i.i175 ], [ %i.mj, %.noexc183 ]
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i176) #28
  %i.ng = add i64 %.057.i.i.i.i.i177, -1          ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i176, i64 208 ; 2 uses
  %.not.i.i.i.i.i178 = icmp eq i64 %i.ng, 0
  br i1 %.not.i.i.i.i.i178, label %.loopexit, label %.lr.ph.i.i.i.i.i175, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i175, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i181
  %i.ni = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i181 ], [ %i.ne, %.lr.ph.i.i.i.i.i175 ]
  %.0.lcssa.i.i.i.i.i180 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i181 ], [ %i.nh, %.lr.ph.i.i.i.i.i175 ]
  store ptr %.0.lcssa.i.i.i.i.i180, ptr %i.ac, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %16) #28
  %i.nj = ptrtoint ptr %.sroa.15.3501 to i64      ; 2 uses
  %i.nk = sub i64 %i.nj, %i.hp                    ; 2 uses
  %i.nl = sdiv exact i64 %i.nk, 56                ; 3 uses
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = icmp sgt i32 %i.nm, 0
  br i1 %i.nn, label %.lr.ph495, label %._crit_edge496

.lr.ph495:                                        ; preds = %.loopexit
  %wide.trip.count583 = and i64 %i.nl, 2147483647
  br label %bb.az

._crit_edge496:                                   ; preds = %._crit_edge487, %.loopexit
  %i.no = ashr i64 %i.nl, 2                       ; 3 uses
  %i.np = icmp sgt i64 %i.no, 0
  br i1 %i.np, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i264

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge496
  %i.nq = mul nuw nsw i64 %i.no, 224
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0320.0.lcssa, i64 %i.nq ; 2 uses
  br label %.lr.ph.i.i.i270

.lr.ph.i.i.i270:                                  ; preds = %bb.al, %.lr.ph.preheader.i.i.i
  %.052.i.i.i = phi i64 [ %i.oe, %bb.al ], [ %i.no, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.od, %bb.al ], [ %.sroa.0320.0.lcssa, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ns = load float, ptr %i.nr, align 8, !tbaa !239
  %i.nt = fcmp olt float %i.ns, %3
  br i1 %i.nt, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i270
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 64
  %i.nv = load float, ptr %i.nu, align 8, !tbaa !239
  %i.nw = fcmp olt float %i.nv, %3
  br i1 %i.nw, label %.loopexit.split.loop.exit42.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.ny = load float, ptr %i.nx, align 8, !tbaa !239
  %i.nz = fcmp olt float %i.ny, %3
  br i1 %i.nz, label %.loopexit.split.loop.exit44.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 176
  %i.ob = load float, ptr %i.oa, align 8, !tbaa !239
  %i.oc = fcmp olt float %i.ob, %3
  br i1 %i.oc, label %.loopexit.split.loop.exit46.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 224
  %i.oe = add nsw i64 %.052.i.i.i, -1
  %i.of = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.of, label %.lr.ph.i.i.i270, label %._crit_edge.loopexit.i.i.i, !llvm.loop !411

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.al
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre57.i.i.i = sub i64 %i.nj, %.pre.i.i.i
  br label %._crit_edge.i.i.i264

._crit_edge.i.i.i264:                             ; preds = %._crit_edge.loopexit.i.i.i, %._crit_edge496
  %.pre-phi58.i.i.i = phi i64 [ %.pre57.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.nk, %._crit_edge496 ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.0320.0.lcssa, %._crit_edge496 ] ; 5 uses
  %i.og = sdiv exact i64 %.pre-phi58.i.i.i, 56
  switch i64 %i.og, label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit [
    i64 3, label %bb.am
    i64 2, label %bb.ao
    i64 1, label %bb.aq
  ]

bb.am:                                            ; preds = %._crit_edge.i.i.i264
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !239
  %i.oj = fcmp olt float %i.oi, %3
  br i1 %i.oj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 56
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge.i.i.i264
  %.sroa.032.1.i.i.i = phi ptr [ %i.ok, %bb.an ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i264 ] ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  %i.om = load float, ptr %i.ol, align 8, !tbaa !239
  %i.on = fcmp olt float %i.om, %3
  br i1 %i.on, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 56
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i264
  %.sroa.032.2.i.i.i = phi ptr [ %i.oo, %bb.ap ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i264 ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.032.2.i.i.i, i64 8
  %i.oq = load float, ptr %i.op, align 8, !tbaa !239
  %i.or = fcmp olt float %i.oq, %3
  %spec.select.i.i.i = select i1 %i.or, ptr %.sroa.032.2.i.i.i, ptr %.sroa.15.3501
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i

.loopexit.split.loop.exit42.i.i.i:                ; preds = %bb.ai
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 56
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i

.loopexit.split.loop.exit44.i.i.i:                ; preds = %bb.aj
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 112
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i

.loopexit.split.loop.exit46.i.i.i:                ; preds = %bb.ak
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 168
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i: ; preds = %.lr.ph.i.i.i270, %.loopexit.split.loop.exit46.i.i.i, %.loopexit.split.loop.exit44.i.i.i, %.loopexit.split.loop.exit42.i.i.i, %bb.aq, %bb.ao, %bb.am
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.ao ], [ %spec.select.i.i.i, %bb.aq ], [ %i.ou, %.loopexit.split.loop.exit46.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.am ], [ %i.ot, %.loopexit.split.loop.exit44.i.i.i ], [ %i.os, %.loopexit.split.loop.exit42.i.i.i ], [ %.sroa.032.051.i.i.i, %.lr.ph.i.i.i270 ] ; 5 uses
  %i.ov = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %.sroa.15.3501
  %.sroa.08.023.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 56 ; 2 uses
  %.not24.i = icmp eq ptr %.sroa.08.023.i, %.sroa.15.3501
  %or.cond.i = select i1 %i.ov, i1 true, i1 %.not24.i
  br i1 %or.cond.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit, label %.lr.ph.i265

.lr.ph.i265:                                      ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i, %bb.ay
  %.sroa.08.027.i = phi ptr [ %.sroa.08.0.i, %bb.ay ], [ %.sroa.08.023.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i ] ; 4 uses
  %.sroa.014.026.i = phi ptr [ %.sroa.014.1.i, %bb.ay ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i ] ; 10 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn25.i = phi ptr [ %.sroa.08.027.i, %bb.ay ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i ] ; 8 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 64
  %i.ox = load float, ptr %i.ow, align 8, !tbaa !239
  %i.oy = fcmp olt float %i.ox, %3
  br i1 %i.oy, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.014.026.i, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.08.027.i, i64 12, i1 false)
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 16 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 72 ; 4 uses
  %i.pb = load ptr, ptr %i.oz, align 8, !tbaa !53 ; 6 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 32 ; 4 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  %i.pe = load ptr, ptr %i.pa, align 8, !tbaa !53 ; 6 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 88 ; 6 uses
  %i.pg = icmp eq ptr %i.pe, %i.pf                ; 2 uses
  br i1 %i.pd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269: ; preds = %bb.ar
  br i1 %i.pg, label %bb.as, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i266: ; preds = %bb.ar
  br i1 %i.pg, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269
  %i.ph = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 80 ; 2 uses
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !58 ; 3 uses
  %i.pj = icmp ult i64 %i.pi, 16
  call void @llvm.assume(i1 %i.pj)
  %.not21.i.i.i = icmp eq ptr %.sroa.08.027.i, %.sroa.014.026.i
  br i1 %.not21.i.i.i, label %_ZN2cv7linemod5MatchaSEOS1_.exit.i, label %bb.at, !prof !85

bb.at:                                            ; preds = %bb.as
  switch i64 %i.pi, label %bb.av [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.pk = load i8, ptr %i.pe, align 1, !tbaa !54
  store i8 %i.pk, ptr %i.pb, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pb, ptr align 1 %i.pe, i64 %i.pi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.pl = load i64, ptr %i.ph, align 8, !tbaa !58 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 24
  store i64 %i.pl, ptr %i.pm, align 8, !tbaa !58
  %i.pn = load ptr, ptr %i.oz, align 8, !tbaa !53
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pl
  store i8 0, ptr %i.po, align 1, !tbaa !54
  %.pre.i.i5.i = load ptr, ptr %i.pa, align 8, !tbaa !53
  br label %_ZN2cv7linemod5MatchaSEOS1_.exit.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 24
  store ptr %i.pe, ptr %i.oz, align 8, !tbaa !53
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 80
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !58
  store i64 %i.pr, ptr %i.pp, align 8, !tbaa !58
  %i.ps = load i64, ptr %i.pf, align 8, !tbaa !54
  store i64 %i.ps, ptr %i.pc, align 8, !tbaa !54
  br label %bb.ax

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i266
  %i.pt = load i64, ptr %i.pc, align 8, !tbaa !54
  store ptr %i.pe, ptr %i.oz, align 8, !tbaa !53
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 80
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !58
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 24
  store i64 %i.pv, ptr %i.pw, align 8, !tbaa !58
  %i.px = load i64, ptr %i.pf, align 8, !tbaa !54
  store i64 %i.px, ptr %i.pc, align 8, !tbaa !54
  %.not.i.i.i267 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i267, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.pb, ptr %i.pa, align 8, !tbaa !53
  store i64 %i.pt, ptr %i.pf, align 8, !tbaa !54
  br label %_ZN2cv7linemod5MatchaSEOS1_.exit.i

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.pf, ptr %i.pa, align 8, !tbaa !53
  br label %_ZN2cv7linemod5MatchaSEOS1_.exit.i

_ZN2cv7linemod5MatchaSEOS1_.exit.i:               ; preds = %bb.ax, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.as
  %i.py = phi ptr [ %.pre.i.i5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.pb, %bb.aw ], [ %i.pf, %bb.ax ], [ %i.pe, %bb.as ]
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 80
  store i64 0, ptr %i.pz, align 8, !tbaa !58
  store i8 0, ptr %i.py, align 1, !tbaa !54
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn25.i, i64 104
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !240
  %i.qc = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 48
  store i32 %i.qb, ptr %i.qc, align 8, !tbaa !240
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.014.026.i, i64 56
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN2cv7linemod5MatchaSEOS1_.exit.i, %.lr.ph.i265
  %.sroa.014.1.i = phi ptr [ %.sroa.014.026.i, %.lr.ph.i265 ], [ %i.qd, %_ZN2cv7linemod5MatchaSEOS1_.exit.i ] ; 2 uses
  %.sroa.08.0.i = getelementptr inbounds nuw i8, ptr %.sroa.08.027.i, i64 56 ; 2 uses
  %.not.i268 = icmp eq ptr %.sroa.08.0.i, %.sroa.15.3501
  br i1 %.not.i268, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit, label %.lr.ph.i265, !llvm.loop !412

.loopexit347:                                     ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i174
  %lpad.loopexit349 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220

.loopexit.split-lp348:                            ; preds = %bb.ah
  %lpad.loopexit.split-lp350 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220

bb.az:                                            ; preds = %.lr.ph495, %._crit_edge487
  %indvars.iv580 = phi i64 [ 0, %.lr.ph495 ], [ %indvars.iv.next581, %._crit_edge487 ] ; 2 uses
  %i.qe = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0320.0.lcssa, i64 %indvars.iv580 ; 4 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !237
  %i.qg = shl nsw i32 %i.qf, 1
  %i.qh = or disjoint i32 %i.qg, 1
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 4 ; 2 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !238
  %i.qk = shl nsw i32 %i.qj, 1
  %i.ql = or disjoint i32 %i.qk, 1
  %.sroa.speculated302 = call i32 @llvm.smax.i32(i32 %i.qh, i32 %i.mn)
  %.sroa.speculated289 = call i32 @llvm.smax.i32(i32 %i.ql, i32 %i.mn)
  %.sroa.speculated299 = call i32 @llvm.smin.i32(i32 %i.mx, i32 %.sroa.speculated302) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.nb, i32 %.sroa.speculated289) ; 2 uses
  %i.qm = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.qn = load ptr, ptr %0, align 8, !tbaa !169
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = lshr exact i64 %i.qq, 4
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = icmp sgt i32 %i.qs, 0
  br i1 %i.qt, label %.lr.ph469, label %._crit_edge470

._crit_edge470.loopexit:                          ; preds = %_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit
  %i.qu = shl nsw i32 %i.yg, 2
  %i.qv = sitofp i32 %i.qu to float
  br label %._crit_edge470

._crit_edge470:                                   ; preds = %._crit_edge470.loopexit, %bb.az
  %.0139.lcssa = phi float [ 0.000000e+00, %bb.az ], [ %i.qv, %._crit_edge470.loopexit ]
  invoke fastcc void @_ZN2cv7linemodL15addSimilaritiesERKSt6vectorINS_3MatESaIS2_EERS2_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(208) %16)
          to label %.preheader unwind label %bb.bi

.preheader:                                       ; preds = %._crit_edge470
  %i.qw = load i32, ptr %i.ah, align 8, !tbaa !100 ; 2 uses
  %i.qx = icmp sgt i32 %i.qw, 0
  br i1 %i.qx, label %.lr.ph486, label %._crit_edge487

.lr.ph486:                                        ; preds = %.preheader
  %i.qy = load ptr, ptr %i.ai, align 8, !tbaa !102
  %i.qz = load i64, ptr %i.aj, align 8, !tbaa !57
  %i.ra = load i32, ptr %i.ak, align 4, !tbaa !101 ; 4 uses
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %.lr.ph477.us.preheader, label %._crit_edge487

.lr.ph477.us.preheader:                           ; preds = %.lr.ph486
  %wide.trip.count578 = zext nneg i32 %i.qw to i64
  %wide.trip.count = zext nneg i32 %i.ra to i64   ; 2 uses
  %xtraiter921 = and i64 %wide.trip.count, 1
  %i.rc = icmp eq i32 %i.ra, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod922.not = icmp eq i64 %xtraiter921, 0
  %lcmp.mod926 = trunc i32 %i.ra to i1
  br label %.lr.ph477.us

.lr.ph477.us:                                     ; preds = %.lr.ph477.us.preheader, %._crit_edge478.us
  %indvars.iv575 = phi i64 [ 0, %.lr.ph477.us.preheader ], [ %indvars.iv.next576, %._crit_edge478.us ] ; 3 uses
  %.0129484.us = phi i32 [ -1, %.lr.ph477.us.preheader ], [ %.2131.us.lcssa, %._crit_edge478.us ] ; 2 uses
  %.0132483.us = phi i32 [ -1, %.lr.ph477.us.preheader ], [ %.2134.us.lcssa, %._crit_edge478.us ] ; 2 uses
  %.0135482.us = phi i32 [ 0, %.lr.ph477.us.preheader ], [ %.2137.us.lcssa, %._crit_edge478.us ] ; 2 uses
  %i.rd = mul i64 %i.qz, %indvars.iv575
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.rd ; 3 uses
  %i.rf = trunc nuw nsw i64 %indvars.iv575 to i32 ; 2 uses
  br i1 %i.rc, label %.epil.preheader, label %.lr.ph477.us.new

.lr.ph477.us.new:                                 ; preds = %.lr.ph477.us, %.lr.ph477.us.new
  %indvars.iv572 = phi i64 [ %indvars.iv.next573.1, %.lr.ph477.us.new ], [ 0, %.lr.ph477.us ] ; 4 uses
  %.1130474.us = phi i32 [ %.2131.us.1, %.lr.ph477.us.new ], [ %.0129484.us, %.lr.ph477.us ]
  %.1133473.us = phi i32 [ %.2134.us.1, %.lr.ph477.us.new ], [ %.0132483.us, %.lr.ph477.us ]
  %.1136472.us = phi i32 [ %.2137.us.1, %.lr.ph477.us.new ], [ %.0135482.us, %.lr.ph477.us ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph477.us.new ], [ 0, %.lr.ph477.us ]
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv572
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !127
  %i.ri = zext i16 %i.rh to i32                   ; 2 uses
  %i.rj = icmp samesign ult i32 %.1136472.us, %i.ri ; 2 uses
  %.2137.us = call i32 @llvm.umax.i32(i32 %.1136472.us, i32 %i.ri) ; 2 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv572 to i32
  %.2131.us = select i1 %i.rj, i32 %i.rk, i32 %.1130474.us
  %indvars.iv.next573 = or disjoint i64 %indvars.iv572, 1 ; 2 uses
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv.next573
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !127
  %i.rn = zext i16 %i.rm to i32                   ; 2 uses
  %i.ro = icmp samesign ult i32 %.2137.us, %i.rn  ; 2 uses
  %.2137.us.1 = call i32 @llvm.umax.i32(i32 %.2137.us, i32 %i.rn) ; 3 uses
  %i.rp = select i1 %i.ro, i1 true, i1 %i.rj
  %.2134.us.1 = select i1 %i.rp, i32 %i.rf, i32 %.1133473.us ; 3 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv.next573 to i32
  %.2131.us.1 = select i1 %i.ro, i32 %i.rq, i32 %.2131.us ; 3 uses
  %indvars.iv.next573.1 = add nuw nsw i64 %indvars.iv572, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge478.us.unr-lcssa, label %.lr.ph477.us.new, !llvm.loop !413

._crit_edge478.us.unr-lcssa:                      ; preds = %.lr.ph477.us.new
  br i1 %lcmp.mod922.not, label %._crit_edge478.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge478.us.unr-lcssa, %.lr.ph477.us
  %indvars.iv572.epil.init = phi i64 [ 0, %.lr.ph477.us ], [ %indvars.iv.next573.1, %._crit_edge478.us.unr-lcssa ] ; 2 uses
  %.1130474.us.epil.init = phi i32 [ %.0129484.us, %.lr.ph477.us ], [ %.2131.us.1, %._crit_edge478.us.unr-lcssa ]
  %.1133473.us.epil.init = phi i32 [ %.0132483.us, %.lr.ph477.us ], [ %.2134.us.1, %._crit_edge478.us.unr-lcssa ]
  %.1136472.us.epil.init = phi i32 [ %.0135482.us, %.lr.ph477.us ], [ %.2137.us.1, %._crit_edge478.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod926)
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.re, i64 %indvars.iv572.epil.init
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !127
  %i.rt = zext i16 %i.rs to i32                   ; 2 uses
  %i.ru = icmp samesign ult i32 %.1136472.us.epil.init, %i.rt ; 2 uses
  %.2137.us.epil = call i32 @llvm.umax.i32(i32 %.1136472.us.epil.init, i32 %i.rt)
  %.2134.us.epil = select i1 %i.ru, i32 %i.rf, i32 %.1133473.us.epil.init
  %i.rv = trunc nuw nsw i64 %indvars.iv572.epil.init to i32
  %.2131.us.epil = select i1 %i.ru, i32 %i.rv, i32 %.1130474.us.epil.init
  br label %._crit_edge478.us

._crit_edge478.us:                                ; preds = %._crit_edge478.us.unr-lcssa, %.epil.preheader
  %.2137.us.lcssa = phi i32 [ %.2137.us.1, %._crit_edge478.us.unr-lcssa ], [ %.2137.us.epil, %.epil.preheader ] ; 2 uses
  %.2134.us.lcssa = phi i32 [ %.2134.us.1, %._crit_edge478.us.unr-lcssa ], [ %.2134.us.epil, %.epil.preheader ] ; 2 uses
  %.2131.us.lcssa = phi i32 [ %.2131.us.1, %._crit_edge478.us.unr-lcssa ], [ %.2131.us.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next576 = add nuw nsw i64 %indvars.iv575, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next576, %wide.trip.count578
  br i1 %exitcond579.not, label %._crit_edge487.loopexit, label %.lr.ph477.us, !llvm.loop !414

.lr.ph469:                                        ; preds = %bb.az, %_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit
  %indvars.iv569 = phi i64 [ %indvars.iv.next570, %_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit ], [ 0, %bb.az ] ; 4 uses
  %.0139466 = phi i32 [ %i.yg, %_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit ], [ 0, %bb.az ]
  %i.rw = load ptr, ptr %i.an, align 8, !tbaa !235
  %i.rx = getelementptr [40 x i8], ptr %i.rw, i64 %indvars.iv569
  %i.ry = getelementptr [40 x i8], ptr %i.rx, i64 %i.ms ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 3 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 24 ; 3 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !68
  %i.sc = load ptr, ptr %i.rz, align 8, !tbaa !69
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = ptrtoint ptr %i.sc to i64
  %i.sf = sub i64 %i.sd, %i.se
  %i.sg = sdiv exact i64 %i.sf, 12                ; 2 uses
  %i.sh = load ptr, ptr %i.ma, align 8, !tbaa !208
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %i.sh, i64 %indvars.iv569
  %i.sj = getelementptr inbounds nuw [208 x i8], ptr %i.ni, i64 %indvars.iv569 ; 2 uses
  %i.sk = icmp ult i64 %i.sg, 64
  br i1 %i.sk, label %bb.bd, label %.noexc.i

.noexc.i:                                         ; preds = %.lr.ph469
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.sl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.sl, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 27, ptr %i.a, align 8, !tbaa !57
  %i.sm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc271 unwind label %bb.bb ; 2 uses

.noexc271:                                        ; preds = %.noexc.i
  store ptr %i.sm, ptr %7, align 8, !tbaa !53
  %i.sn = load i64, ptr %i.a, align 8, !tbaa !57  ; 3 uses
  store i64 %i.sn, ptr %i.sl, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.sm, ptr noundef nonnull align 1 dereferenceable(27) @.str.47, i64 27, i1 false)
  %i.so = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.sn, ptr %i.so, align 8, !tbaa !58
  %i.sp = load ptr, ptr %7, align 8, !tbaa !53
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sn
  store i8 0, ptr %i.sq, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE, ptr noundef nonnull @.str.11, i32 noundef 1264) #29
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %.noexc271
  unreachable

bb.bb:                                            ; preds = %.noexc.i
  %i.sr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

bb.bc:                                            ; preds = %.noexc271
  %i.ss = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.st = load ptr, ptr %7, align 8, !tbaa !53    ; 2 uses
  %i.su = icmp eq ptr %i.st, %i.sl
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194: ; preds = %bb.bc
  %i.sv = load i64, ptr %i.sl, align 8, !tbaa !54
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.st, i64 noundef %i.sw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194, %bb.bb
  %.pn.i193 = phi { ptr, i32 } [ %i.sr, %bb.bb ], [ %i.ss, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i194 ], [ %i.ss, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body209
end_hunk_0
begin_hunk_1_@_ZNK2cv7linemod8Detector10matchClassERKSt6vectorIS2_IS2_INS_3MatESaIS3_EESaIS5_EESaIS7_EERKS2_INS_5Size_IiEESaISD_EEfRS2_INS0_5MatchESaISI_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IS2_INS0_8TemplateESaISU_EESaISW_EE:bb.a
bb.bg:                                            ; preds = %bb.bf
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !55
  %.val.i204 = load ptr, ptr %i.si, align 8, !tbaa !199
  %i.ua = sext i32 %.sroa.9.0.copyload.i to i64
  %i.ub = getelementptr inbounds nuw [208 x i8], ptr %.val.i204, i64 %i.ua ; 2 uses
  %i.uc = srem i32 %i.tw, %i.md
  %i.ud = srem i32 %i.tx, %i.md
  %i.ue = mul nsw i32 %i.ud, %i.md
  %i.uf = add nsw i32 %i.ue, %i.uc
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !102
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ub, i64 128
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !57
  %i.uk = sext i32 %i.uf to i64
  %i.ul = mul i64 %i.uj, %i.uk
  %i.um = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ul
  %i.un = sdiv i32 %i.tw, %i.md
  %i.uo = sdiv i32 %i.tx, %i.md
  %i.up = mul nsw i32 %i.uo, %i.sx
  %i.uq = add nsw i32 %i.up, %i.un
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds i8, ptr %i.um, i64 %i.ur
  %i.ut = load ptr, ptr %i.tq, align 8, !tbaa !102
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.bg
  %.03659.i = phi i32 [ 0, %bb.bg ], [ %i.xw, %.preheader.i ]
  %.03758.i = phi ptr [ %i.ut, %bb.bg ], [ %i.xu, %.preheader.i ] ; 18 uses
  %.03857.i = phi ptr [ %i.us, %bb.bg ], [ %i.xv, %.preheader.i ] ; 17 uses
  %i.uu = load i8, ptr %.03758.i, align 1, !tbaa !54
  %i.uv = load i8, ptr %.03857.i, align 1, !tbaa !54
  %i.uw = add i8 %i.uv, %i.uu
  store i8 %i.uw, ptr %.03758.i, align 1, !tbaa !54
  %i.ux = getelementptr inbounds nuw i8, ptr %.03758.i, i64 1 ; 2 uses
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !54
  %i.uz = getelementptr inbounds nuw i8, ptr %.03857.i, i64 1
  %i.va = load i8, ptr %i.uz, align 1, !tbaa !54
  %i.vb = add i8 %i.va, %i.uy
  store i8 %i.vb, ptr %i.ux, align 1, !tbaa !54
  %i.vc = getelementptr inbounds nuw i8, ptr %.03758.i, i64 2 ; 2 uses
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !54
  %i.ve = getelementptr inbounds nuw i8, ptr %.03857.i, i64 2
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !54
  %i.vg = add i8 %i.vf, %i.vd
  store i8 %i.vg, ptr %i.vc, align 1, !tbaa !54
  %i.vh = getelementptr inbounds nuw i8, ptr %.03758.i, i64 3 ; 2 uses
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !54
  %i.vj = getelementptr inbounds nuw i8, ptr %.03857.i, i64 3
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !54
  %i.vl = add i8 %i.vk, %i.vi
  store i8 %i.vl, ptr %i.vh, align 1, !tbaa !54
  %i.vm = getelementptr inbounds nuw i8, ptr %.03758.i, i64 4 ; 2 uses
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !54
  %i.vo = getelementptr inbounds nuw i8, ptr %.03857.i, i64 4
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !54
  %i.vq = add i8 %i.vp, %i.vn
  store i8 %i.vq, ptr %i.vm, align 1, !tbaa !54
  %i.vr = getelementptr inbounds nuw i8, ptr %.03758.i, i64 5 ; 2 uses
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !54
  %i.vt = getelementptr inbounds nuw i8, ptr %.03857.i, i64 5
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !54
  %i.vv = add i8 %i.vu, %i.vs
  store i8 %i.vv, ptr %i.vr, align 1, !tbaa !54
  %i.vw = getelementptr inbounds nuw i8, ptr %.03758.i, i64 6 ; 2 uses
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !54
  %i.vy = getelementptr inbounds nuw i8, ptr %.03857.i, i64 6
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !54
  %i.wa = add i8 %i.vz, %i.vx
  store i8 %i.wa, ptr %i.vw, align 1, !tbaa !54
  %i.wb = getelementptr inbounds nuw i8, ptr %.03758.i, i64 7 ; 2 uses
  %i.wc = load i8, ptr %i.wb, align 1, !tbaa !54
  %i.wd = getelementptr inbounds nuw i8, ptr %.03857.i, i64 7
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !54
  %i.wf = add i8 %i.we, %i.wc
  store i8 %i.wf, ptr %i.wb, align 1, !tbaa !54
  %i.wg = getelementptr inbounds nuw i8, ptr %.03758.i, i64 8 ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !54
  %i.wi = getelementptr inbounds nuw i8, ptr %.03857.i, i64 8
  %i.wj = load i8, ptr %i.wi, align 1, !tbaa !54
  %i.wk = add i8 %i.wj, %i.wh
  store i8 %i.wk, ptr %i.wg, align 1, !tbaa !54
  %i.wl = getelementptr inbounds nuw i8, ptr %.03758.i, i64 9 ; 2 uses
  %i.wm = load i8, ptr %i.wl, align 1, !tbaa !54
  %i.wn = getelementptr inbounds nuw i8, ptr %.03857.i, i64 9
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !54
  %i.wp = add i8 %i.wo, %i.wm
  store i8 %i.wp, ptr %i.wl, align 1, !tbaa !54
  %i.wq = getelementptr inbounds nuw i8, ptr %.03758.i, i64 10 ; 2 uses
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !54
  %i.ws = getelementptr inbounds nuw i8, ptr %.03857.i, i64 10
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !54
  %i.wu = add i8 %i.wt, %i.wr
  store i8 %i.wu, ptr %i.wq, align 1, !tbaa !54
  %i.wv = getelementptr inbounds nuw i8, ptr %.03758.i, i64 11 ; 2 uses
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !54
  %i.wx = getelementptr inbounds nuw i8, ptr %.03857.i, i64 11
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !54
  %i.wz = add i8 %i.wy, %i.ww
  store i8 %i.wz, ptr %i.wv, align 1, !tbaa !54
  %i.xa = getelementptr inbounds nuw i8, ptr %.03758.i, i64 12 ; 2 uses
  %i.xb = load i8, ptr %i.xa, align 1, !tbaa !54
  %i.xc = getelementptr inbounds nuw i8, ptr %.03857.i, i64 12
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !54
  %i.xe = add i8 %i.xd, %i.xb
  store i8 %i.xe, ptr %i.xa, align 1, !tbaa !54
  %i.xf = getelementptr inbounds nuw i8, ptr %.03758.i, i64 13 ; 2 uses
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !54
  %i.xh = getelementptr inbounds nuw i8, ptr %.03857.i, i64 13
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !54
  %i.xj = add i8 %i.xi, %i.xg
  store i8 %i.xj, ptr %i.xf, align 1, !tbaa !54
  %i.xk = getelementptr inbounds nuw i8, ptr %.03758.i, i64 14 ; 2 uses
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !54
  %i.xm = getelementptr inbounds nuw i8, ptr %.03857.i, i64 14
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !54
  %i.xo = add i8 %i.xn, %i.xl
  store i8 %i.xo, ptr %i.xk, align 1, !tbaa !54
  %i.xp = getelementptr inbounds nuw i8, ptr %.03758.i, i64 15 ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !54
  %i.xr = getelementptr inbounds nuw i8, ptr %.03857.i, i64 15
  %i.xs = load i8, ptr %i.xr, align 1, !tbaa !54
  %i.xt = add i8 %i.xs, %i.xq
  store i8 %i.xt, ptr %i.xp, align 1, !tbaa !54
  %i.xu = getelementptr inbounds nuw i8, ptr %.03758.i, i64 16
  %i.xv = getelementptr inbounds i8, ptr %.03857.i, i64 %i.tr
  %i.xw = add nuw nsw i32 %.03659.i, 1            ; 2 uses
  %exitcond.not.i205 = icmp eq i32 %i.xw, 16
  br i1 %exitcond.not.i205, label %.loopexit.loopexit.i206, label %.preheader.i, !llvm.loop !415

.loopexit.loopexit.i206:                          ; preds = %.preheader.i
  %.pre.i207 = load ptr, ptr %i.sa, align 8, !tbaa !68
  %.pre63.i = load ptr, ptr %i.rz, align 8, !tbaa !69
  br label %.loopexit.i201

.loopexit.i201:                                   ; preds = %.loopexit.loopexit.i206, %bb.bf
  %i.xx = phi ptr [ %.pre63.i, %.loopexit.loopexit.i206 ], [ %i.tt, %bb.bf ] ; 2 uses
  %i.xy = phi ptr [ %.pre.i207, %.loopexit.loopexit.i206 ], [ %i.tu, %bb.bf ] ; 2 uses
  %indvars.iv.next.i202 = add nuw nsw i64 %indvars.iv.i198, 1 ; 2 uses
  %i.xz = ptrtoint ptr %i.xy to i64
  %i.ya = ptrtoint ptr %i.xx to i64
  %i.yb = sub i64 %i.xz, %i.ya
  %i.yc = sdiv exact i64 %i.yb, 12
  %sext.i203 = shl i64 %i.yc, 32
  %i.yd = ashr exact i64 %sext.i203, 32
  %i.ye = icmp slt i64 %indvars.iv.next.i202, %i.yd
  br i1 %i.ye, label %bb.bf, label %_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit, !llvm.loop !416

_ZN2cv7linemodL15similarityLocalERKSt6vectorINS_3MatESaIS2_EERKNS0_8TemplateERS2_NS_5Size_IiEEiNS_6Point_IiEE.exit: ; preds = %.loopexit.i201, %_ZN2cv3MataSERKNS_7MatExprE.exit.i196
  %i.yf = trunc nuw nsw i64 %i.sg to i32
  %i.yg = add nuw nsw i32 %.0139466, %i.yf        ; 2 uses
  %indvars.iv.next570 = add nuw nsw i64 %indvars.iv569, 1 ; 2 uses
  %i.yh = load ptr, ptr %i.g, align 8, !tbaa !168
  %i.yi = load ptr, ptr %0, align 8, !tbaa !169
  %i.yj = ptrtoint ptr %i.yh to i64
  %i.yk = ptrtoint ptr %i.yi to i64
  %i.yl = sub i64 %i.yj, %i.yk
  %sext661 = shl i64 %i.yl, 28
  %i.ym = ashr i64 %sext661, 32
  %i.yn = icmp slt i64 %indvars.iv.next570, %i.ym
  br i1 %i.yn, label %.lr.ph469, label %._crit_edge470.loopexit, !llvm.loop !417

bb.bh:                                            ; preds = %bb.bd
  %i.yo = landingpad { ptr, i32 }
          cleanup
  br label %.body209

._crit_edge487.loopexit:                          ; preds = %._crit_edge478.us
  %i.yp = add i32 %.2131.us.lcssa, -8
  %i.yq = add i32 %.2134.us.lcssa, -8
  %i.yr = uitofp nneg i32 %.2137.us.lcssa to float
  %i.ys = fmul nnan float %i.yr, 1.000000e+02
  br label %._crit_edge487

._crit_edge487:                                   ; preds = %.lr.ph486, %._crit_edge487.loopexit, %.preheader
  %.0135.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ys, %._crit_edge487.loopexit ], [ 0.000000e+00, %.lr.ph486 ]
  %.0132.lcssa = phi i32 [ -9, %.preheader ], [ %i.yq, %._crit_edge487.loopexit ], [ -9, %.lr.ph486 ]
  %.0129.lcssa = phi i32 [ -9, %.preheader ], [ %i.yp, %._crit_edge487.loopexit ], [ -9, %.lr.ph486 ]
  %i.yt = sdiv i32 %.sroa.speculated299, %i.md
  %i.yu = add i32 %.0129.lcssa, %i.yt
  %i.yv = mul nsw i32 %i.yu, %i.md
  %i.yw = add nsw i32 %i.yv, %i.mr
  store i32 %i.yw, ptr %i.qe, align 8, !tbaa !237
  %i.yx = sdiv i32 %.sroa.speculated, %i.md
  %i.yy = add i32 %.0132.lcssa, %i.yx
  %i.yz = mul nsw i32 %i.yy, %i.md
  %i.za = add nsw i32 %i.yz, %i.mr
  store i32 %i.za, ptr %i.qi, align 4, !tbaa !238
  %i.zb = fdiv float %.0135.lcssa, %.0139.lcssa
  %i.zc = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  store float %i.zb, ptr %i.zc, align 8, !tbaa !239
  %indvars.iv.next581 = add nuw nsw i64 %indvars.iv580, 1 ; 2 uses
  %exitcond584.not = icmp eq i64 %indvars.iv.next581, %wide.trip.count583
  br i1 %exitcond584.not, label %._crit_edge496, label %bb.az, !llvm.loop !418

bb.bi:                                            ; preds = %._crit_edge470
  %i.zd = landingpad { ptr, i32 }
          cleanup
  br label %.body209

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit: ; preds = %bb.ay, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i
  %.sroa.014.2.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predINS3_14MatchPredicateEEEET_SE_SE_T0_.exit.i ], [ %.sroa.014.1.i, %bb.ay ] ; 2 uses
  %.not.i272 = icmp eq ptr %.sroa.014.2.i, %.sroa.15.3501
  br i1 %.not.i272, label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit
  %i.ze = ptrtoint ptr %.sroa.014.2.i to i64
  %i.zf = sub i64 %i.ze, %i.hp
  %i.zg = getelementptr inbounds i8, ptr %.sroa.0320.0.lcssa, i64 %i.zf ; 2 uses
  br label %.lr.ph.i.i.i.i274

.lr.ph.i.i.i.i274:                                ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.zn, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i ], [ %i.zg, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i ] ; 3 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !53 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %i.zk = icmp eq ptr %i.zi, %i.zj
  br i1 %i.zk, label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5.i: ; preds = %.lr.ph.i.i.i.i274
  %i.zl = load i64, ptr %i.zj, align 8, !tbaa !54
  %i.zm = add i64 %i.zl, 1
  call void @_ZdlPvm(ptr noundef %i.zi, i64 noundef %i.zm) #30
  br label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i5.i
  %i.zn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i275 = icmp eq ptr %i.zn, %.sroa.15.3501
  br i1 %.not.i.i.i.i275, label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %.lr.ph.i.i.i.i274, !llvm.loop !6

_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit: ; preds = %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i, %._crit_edge.i.i.i264, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit
  %.sroa.15.6 = phi ptr [ %.sroa.15.3501, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPN2cv7linemod5MatchESt6vectorIS4_SaIS4_EEEENS3_14MatchPredicateEET_SB_SB_T0_.exit ], [ %.sroa.15.3501, %._crit_edge.i.i.i264 ], [ %i.zg, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i.i ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.zo = load ptr, ptr %15, align 8, !tbaa !199  ; 5 uses
  %i.zp = load ptr, ptr %i.ac, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.zo, %i.zp
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.zq, %.lr.ph.i.i.i ], [ %i.zo, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i) #28
  %i.zq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.zq, %i.zp
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit
  %.not.i.i1.i = icmp eq ptr %i.zo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i
  %i.zr = load ptr, ptr %i.ad, align 8, !tbaa !200
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = ptrtoint ptr %i.zo to i64
  %i.zu = sub i64 %i.zs, %i.zt
  call void @_ZdlPvm(ptr noundef nonnull %i.zo, i64 noundef %i.zu) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, -1
  %i.zv = icmp sgt i64 %indvars.iv585, 0
  br i1 %i.zv, label %bb.ag, label %._crit_edge505, !llvm.loop !419

.body209:                                         ; preds = %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192, %bb.be, %bb.bh
  %.pn149.pn = phi { ptr, i32 } [ %.pn.i193, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i192 ], [ %i.zd, %bb.bi ], [ %i.yo, %bb.bh ], [ %i.ts, %bb.be ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.zw = load ptr, ptr %15, align 8, !tbaa !199  ; 5 uses
  %i.zx = load ptr, ptr %i.ac, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i212 = icmp eq ptr %i.zw, %i.zx
  br i1 %.not4.i.i.i212, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218, label %.lr.ph.i.i.i213

.lr.ph.i.i.i213:                                  ; preds = %.body209, %.lr.ph.i.i.i213
  %.05.i.i.i214 = phi ptr [ %i.zy, %.lr.ph.i.i.i213 ], [ %i.zw, %.body209 ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i214) #28
  %i.zy = getelementptr inbounds nuw i8, ptr %.05.i.i.i214, i64 208 ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.zy, %i.zx
  br i1 %.not.i.i.i215, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218, label %.lr.ph.i.i.i213, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218: ; preds = %.lr.ph.i.i.i213, %.body209
  %.not.i.i1.i219 = icmp eq ptr %i.zw, null
  br i1 %.not.i.i1.i219, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220, label %bb.bk

bb.bk:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218
  %i.zz = load ptr, ptr %i.ad, align 8, !tbaa !200
  %i.aaa = ptrtoint ptr %i.zz to i64
  %i.aab = ptrtoint ptr %i.zw to i64
  %i.aac = sub i64 %i.aaa, %i.aab
  call void @_ZdlPvm(ptr noundef nonnull %i.zw, i64 noundef %i.aac) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220:       ; preds = %.loopexit347, %.loopexit.split-lp348, %bb.bk, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218
  %.pn149.pn.pn = phi { ptr, i32 } [ %.pn149.pn, %bb.bk ], [ %.pn149.pn, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i218 ], [ %lpad.loopexit349, %.loopexit347 ], [ %lpad.loopexit.split-lp350, %.loopexit.split-lp348 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.bp

bb.bl:                                            ; preds = %._crit_edge505
  %.not4.i.i.i221 = icmp eq ptr %.sroa.0320.0.lcssa, %.sroa.15.3.lcssa
  br i1 %.not4.i.i.i221, label %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i222

.lr.ph.i.i.i222:                                  ; preds = %bb.bl, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i
  %.05.i.i.i223 = phi ptr [ %i.aaj, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i ], [ %.sroa.0320.0.lcssa, %bb.bl ] ; 3 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !53 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 32 ; 2 uses
  %i.aag = icmp eq ptr %i.aae, %i.aaf
  br i1 %i.aag, label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i222
  %i.aah = load i64, ptr %i.aaf, align 8, !tbaa !54
  %i.aai = add i64 %i.aah, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aai) #30
  br label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i222, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %.05.i.i.i223, i64 56 ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.aaj, %.sroa.15.3.lcssa
  br i1 %.not.i.i.i224, label %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i222, !llvm.loop !6

_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i, %bb.bl
  %.not.i.i1.i226 = icmp eq ptr %.sroa.0320.0.lcssa, null
  br i1 %.not.i.i1.i226, label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i
  %i.aak = ptrtoint ptr %.sroa.29.0.lcssa to i64
  %i.aal = ptrtoint ptr %.sroa.0320.0.lcssa to i64
  %i.aam = sub i64 %i.aak, %i.aal
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0320.0.lcssa, i64 noundef %i.aam) #30
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i, %bb.bm
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.aan = load ptr, ptr %12, align 8, !tbaa !199 ; 5 uses
  %i.aao = load ptr, ptr %i.h, align 8, !tbaa !198 ; 2 uses
  %.not4.i.i.i227 = icmp eq ptr %i.aan, %i.aao
  br i1 %.not4.i.i.i227, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i233, label %.lr.ph.i.i.i228

.lr.ph.i.i.i228:                                  ; preds = %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit, %.lr.ph.i.i.i228
  %.05.i.i.i229 = phi ptr [ %i.aap, %.lr.ph.i.i.i228 ], [ %i.aan, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i229) #28
  %i.aap = getelementptr inbounds nuw i8, ptr %.05.i.i.i229, i64 208 ; 2 uses
  %.not.i.i.i230 = icmp eq ptr %i.aap, %i.aao
  br i1 %.not.i.i.i230, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i233, label %.lr.ph.i.i.i228, !llvm.loop !9

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i233: ; preds = %.lr.ph.i.i.i228, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit
  %.not.i.i1.i234 = icmp eq ptr %i.aan, null
  br i1 %.not.i.i1.i234, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i233
  %i.aaq = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.aar = ptrtoint ptr %i.aaq to i64
  %i.aas = ptrtoint ptr %i.aan to i64
  %i.aat = sub i64 %i.aar, %i.aas
  call void @_ZdlPvm(ptr noundef nonnull %i.aan, i64 noundef %i.aat) #30
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit235:       ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i233, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aau = add nuw i64 %.0507, 1                  ; 2 uses
  %i.aav = load ptr, ptr %i.c, align 8, !tbaa !231
  %i.aaw = load ptr, ptr %6, align 8, !tbaa !232  ; 2 uses
  %i.aax = ptrtoint ptr %i.aav to i64
  %i.aay = ptrtoint ptr %i.aaw to i64
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = sdiv exact i64 %i.aaz, 24
  %i.abb = icmp ult i64 %i.aau, %i.aba
  br i1 %i.abb, label %bb.b, label %._crit_edge510, !llvm.loop !420

bb.bo:                                            ; preds = %._crit_edge505
  %i.abc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220, %_ZN2cv7linemod5MatchD2Ev.exit170
  %.sroa.29.3 = phi ptr [ %.sroa.29.1446517, %_ZN2cv7linemod5MatchD2Ev.exit170 ], [ %.sroa.29.0.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220 ], [ %.sroa.29.0.lcssa, %bb.bo ]
  %.sroa.15.4 = phi ptr [ %.sroa.15.1447, %_ZN2cv7linemod5MatchD2Ev.exit170 ], [ %.sroa.15.3501, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220 ], [ %.sroa.15.3.lcssa, %bb.bo ] ; 2 uses
  %.sroa.0320.3 = phi ptr [ %.sroa.0320.1448, %_ZN2cv7linemod5MatchD2Ev.exit170 ], [ %.sroa.0320.0.lcssa, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220 ], [ %.sroa.0320.0.lcssa, %bb.bo ] ; 5 uses
  %.pn153.pn = phi { ptr, i32 } [ %.pn153, %_ZN2cv7linemod5MatchD2Ev.exit170 ], [ %.pn149.pn.pn, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit220 ], [ %i.abc, %bb.bo ] ; 2 uses
  %.not4.i.i.i236 = icmp eq ptr %.sroa.0320.3, %.sroa.15.4
  br i1 %.not4.i.i.i236, label %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244, label %.lr.ph.i.i.i237

.lr.ph.i.i.i237:                                  ; preds = %bb.bp, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240
  %.05.i.i.i238 = phi ptr [ %i.abj, %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240 ], [ %.sroa.0320.3, %bb.bp ] ; 3 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.05.i.i.i238, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !53 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.05.i.i.i238, i64 32 ; 2 uses
  %i.abg = icmp eq ptr %i.abe, %i.abf
  br i1 %i.abg, label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i239: ; preds = %.lr.ph.i.i.i237
  %i.abh = load i64, ptr %i.abf, align 8, !tbaa !54
  %i.abi = add i64 %i.abh, 1
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abi) #30
  br label %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240

_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240: ; preds = %.lr.ph.i.i.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i239
  %i.abj = getelementptr inbounds nuw i8, ptr %.05.i.i.i238, i64 56 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %i.abj, %.sroa.15.4
  br i1 %.not.i.i.i241, label %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244, label %.lr.ph.i.i.i237, !llvm.loop !6

_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244: ; preds = %_ZSt8_DestroyIN2cv7linemod5MatchEEvPT_.exit.i.i.i240, %bb.bp
  %.not.i.i1.i245 = icmp eq ptr %.sroa.0320.3, null
  br i1 %.not.i.i1.i245, label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244
  %i.abk = ptrtoint ptr %.sroa.29.3 to i64
  %i.abl = ptrtoint ptr %.sroa.0320.3 to i64
  %i.abm = sub i64 %i.abk, %i.abl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0320.3, i64 noundef %i.abm) #30
  br label %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247

_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247: ; preds = %bb.bq, %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244, %bb.p
  %.pn153.pn.pn = phi { ptr, i32 } [ %i.hr, %bb.p ], [ %.pn153.pn, %_ZSt8_DestroyIPN2cv7linemod5MatchES2_EvT_S4_RSaIT0_E.exit.i244 ], [ %.pn153.pn, %bb.bq ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %.pre594 = load ptr, ptr %12, align 8, !tbaa !199
  %.pre595 = load ptr, ptr %i.h, align 8, !tbaa !198
  br label %.body

.body:                                            ; preds = %bb.n, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247
  %i.abn = phi ptr [ %.pre595, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247 ], [ %.0.lcssa.i.i.i.i.i, %bb.n ], [ %.0.lcssa.i.i.i.i.i, %bb.j ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.abo = phi ptr [ %.pre594, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247 ], [ %i.bc, %bb.n ], [ %i.bc, %bb.j ], [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 5 uses
  %.pn157 = phi { ptr, i32 } [ %.pn153.pn.pn, %_ZNSt6vectorIN2cv7linemod5MatchESaIS2_EED2Ev.exit247 ], [ %i.gx, %bb.n ], [ %i.dt, %bb.j ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.not4.i.i.i248 = icmp eq ptr %i.abo, %i.abn
  br i1 %.not4.i.i.i248, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i254, label %.lr.ph.i.i.i249

.lr.ph.i.i.i249:                                  ; preds = %.body, %.lr.ph.i.i.i249
  %.05.i.i.i250 = phi ptr [ %i.abp, %.lr.ph.i.i.i249 ], [ %i.abo, %.body ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i250) #28
  %i.abp = getelementptr inbounds nuw i8, ptr %.05.i.i.i250, i64 208 ; 2 uses
end_hunk_1
