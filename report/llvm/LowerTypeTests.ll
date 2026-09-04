Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LowerTypeTests?download=true
inline.NumInlined: 12352
inline.NumDeleted: 6356
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET0_T_SU_SU_SU_ST_T1_":bb.a
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !123
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 40 ; 2 uses
  store i64 0, ptr %i.br, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i17, label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i18, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 8 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !122
  store i32 %i.bv, ptr %i.bo, align 8, !tbaa !122
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !100
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 32
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !102
  store <2 x ptr> %i.by, ptr %i.bp, align 8, !tbaa !102
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bo, ptr %i.bz, align 8, !tbaa !527
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 40 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !109
  store i64 %i.cb, ptr %i.br, align 8, !tbaa !109
  store ptr null, ptr %i.bs, align 8, !tbaa !100
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !110
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !123
  store i64 0, ptr %i.ca, align 8, !tbaa !109
  br label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i18

_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i18: ; preds = %bb.h, %.lr.ph.i.i.i.i.i13
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 48 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19, !llvm.loop !44

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit19: ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i18, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ], [ %i.cd, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i18 ]
  ret ptr %.08.lcssa.i.i.i.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET0_T_SU_SU_SU_ST_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.034 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 7 uses
  %.01633 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 7 uses
  %.sroa.0.032 = phi ptr [ %i.ag, %bb.f ], [ %4, %bb.a ] ; 7 uses
  %i.d = getelementptr i8, ptr %.01633, i64 40    ; 3 uses
  %.016.val = load i64, ptr %i.d, align 8, !tbaa !109
  %i.e = getelementptr i8, ptr %.034, i64 40      ; 3 uses
  %.0.val = load i64, ptr %i.e, align 8, !tbaa !109
  %i.f = icmp ult i64 %.016.val, %.0.val
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.032, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 8 ; 6 uses
  store ptr null, ptr %i.g, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 40 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !109
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.01633, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.01633, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !122
  store i32 %i.p, ptr %i.i, align 8, !tbaa !122
  store ptr %i.n, ptr %i.g, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %.01633, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01633, i64 32
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !102
  store <2 x ptr> %i.s, ptr %i.j, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.i, ptr %i.t, align 8, !tbaa !527
  %i.u = load i64, ptr %i.d, align 8, !tbaa !109
  store i64 %i.u, ptr %i.l, align 8, !tbaa !109
  store ptr null, ptr %i.m, align 8, !tbaa !100
  store ptr %i.o, ptr %i.q, align 8, !tbaa !110
  store ptr %i.o, ptr %i.r, align 8, !tbaa !123
  store i64 0, ptr %i.d, align 8, !tbaa !109
  br label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit

_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit:          ; preds = %bb.b, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.01633, i64 48
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.034, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i18 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i18, label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !122
  store i32 %i.z, ptr %i.i, align 8, !tbaa !122
  store ptr %i.x, ptr %i.g, align 8, !tbaa !100
  %i.aa = getelementptr inbounds nuw i8, ptr %.034, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.034, i64 32
  %i.ac = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !102
  store <2 x ptr> %i.ac, ptr %i.j, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.i, ptr %i.ad, align 8, !tbaa !527
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !109
  store i64 %i.ae, ptr %i.l, align 8, !tbaa !109
  store ptr null, ptr %i.w, align 8, !tbaa !100
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !110
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !123
  store i64 0, ptr %i.e, align 8, !tbaa !109
  br label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19

_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19:        ; preds = %bb.d, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.034, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit
  %.117 = phi ptr [ %i.v, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit ], [ %.01633, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19 ] ; 3 uses
  %.1 = phi ptr [ %.034, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit ], [ %i.af, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit19 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 48 ; 2 uses
  %i.ah = icmp ne ptr %.1, %1
  %i.ai = icmp ne ptr %.117, %3
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !2304

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ag, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = ptrtoint ptr %.0.lcssa to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.ao = udiv exact i64 %i.am, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bh, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bg, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i, ptr noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 4 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !100
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !110
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !123
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  store i64 0, ptr %i.au, align 8, !tbaa !109
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !122
  store i32 %i.ay, ptr %i.ar, align 8, !tbaa !122
  store ptr %i.aw, ptr %i.ap, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bb = load <2 x ptr>, ptr %i.az, align 8, !tbaa !102
  store <2 x ptr> %i.bb, ptr %i.as, align 8, !tbaa !102
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ar, ptr %i.bc, align 8, !tbaa !527
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !109
  store i64 %i.be, ptr %i.au, align 8, !tbaa !109
  store ptr null, ptr %i.av, align 8, !tbaa !100
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !110
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !123
  store i64 0, ptr %i.bd, align 8, !tbaa !109
  br label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i

_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.bh = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bi = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !44

_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bg, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i ]
  %i.bj = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.bl ; 3 uses
  %i.bn = ptrtoint ptr %3 to i64
  %i.bo = ptrtoint ptr %.016.lcssa to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = icmp sgt i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.preheader.i.i.i.i.i21, label %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit28

.lr.ph.preheader.i.i.i.i.i21:                     ; preds = %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %i.br = udiv exact i64 %i.bp, 48
  br label %.lr.ph.i.i.i.i.i22

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i21
  %.012.i.i.i.i.i23 = phi i64 [ %i.ck, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27 ], [ %i.br, %.lr.ph.preheader.i.i.i.i.i21 ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.cj, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27 ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i21 ] ; 7 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.ci, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i21 ] ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.0811.i.i.i.i.i24, ptr noundef %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 8 ; 4 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !100
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 24 ; 2 uses
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !110
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 32
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !123
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 40 ; 2 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !109
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 16 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i26, label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i22
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 8 ; 3 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !122
  store i32 %i.cb, ptr %i.bu, align 8, !tbaa !122
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 32
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !102
  store <2 x ptr> %i.ce, ptr %i.bv, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bu, ptr %i.cf, align 8, !tbaa !527
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !109
  store i64 %i.ch, ptr %i.bx, align 8, !tbaa !109
  store ptr null, ptr %i.by, align 8, !tbaa !100
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !110
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !123
  store i64 0, ptr %i.cg, align 8, !tbaa !109
  br label %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27

_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27: ; preds = %bb.h, %.lr.ph.i.i.i.i.i22
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 48 ; 2 uses
  %i.ck = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.cl = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit28, !llvm.loop !44

_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit28: ; preds = %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27, %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i20 = phi ptr [ %i.bm, %_ZSt4moveIPSt3setImSt4lessImESaImEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %i.cj, %_ZNSt3setImSt4lessImESaImEEaSEOS3_.exit.i.i.i.i.i27 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i20 to i64
  %i.cm = sub i64 %5, %i.bj
  %i.cn = getelementptr inbounds i8, ptr %i.bm, i64 %i.cm
  ret ptr %i.cn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEEvT_ST_ST_T0_SU_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.cc, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.cb, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 15 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.ca, %tailrecurse ] ; 15 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr7785, i64 40   ; 4 uses
  %.val.i = load i64, ptr %i.f, align 8, !tbaa !109 ; 3 uses
  %i.g = getelementptr i8, ptr %.tr84, i64 40     ; 4 uses
  %.val1.i = load i64, ptr %i.g, align 8, !tbaa !109 ; 3 uses
  %i.h = icmp ult i64 %.val.i, %.val1.i
  br i1 %i.h, label %bb.d, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.tr84, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !102  ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %.tr7785, i64 16 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !102  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null          ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.tr84, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr7785, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !122
  store i32 %i.p, ptr %i.n, align 8, !tbaa !122
  store ptr %i.m, ptr %i.i, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %.tr7785, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.tr84, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.tr7785, i64 32
  %i.t = load <2 x ptr>, ptr %i.q, align 8, !tbaa !102
  store <2 x ptr> %i.t, ptr %i.r, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.u, align 8, !tbaa !527
  store i64 %.val.i, ptr %i.g, align 8, !tbaa !109
  store ptr null, ptr %i.l, align 8, !tbaa !100
  store ptr %i.o, ptr %i.q, align 8, !tbaa !110
  store ptr %i.o, ptr %i.s, align 8, !tbaa !123
  store i64 0, ptr %i.f, align 8, !tbaa !109
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.tr7785, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.tr84, i64 8 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !122
  store i32 %i.x, ptr %i.v, align 8, !tbaa !122
  store ptr %i.j, ptr %i.l, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %.tr84, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.tr7785, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr84, i64 32
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !tbaa !102
  store <2 x ptr> %i.ab, ptr %i.z, align 8, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.v, ptr %i.ac, align 8, !tbaa !527
  store i64 %.val1.i, ptr %i.f, align 8, !tbaa !109
  store ptr null, ptr %i.i, align 8, !tbaa !100
  store ptr %i.w, ptr %i.y, align 8, !tbaa !110
  store ptr %i.w, ptr %i.aa, align 8, !tbaa !123
  store i64 0, ptr %i.g, align 8, !tbaa !109
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit

bb.i:                                             ; preds = %bb.g
  store ptr %i.m, ptr %i.i, align 8, !tbaa !102
  store ptr %i.j, ptr %i.l, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr84, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr7785, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !102
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !102
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !102
  %i.ah = getelementptr inbounds nuw i8, ptr %.tr84, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr7785, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !102
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !102
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !102
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %.tr84, i64 8
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.an, align 8, !tbaa !527
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr7785, i64 8
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !527
  store i64 %.val.i, ptr %i.g, align 8, !tbaa !101
  store i64 %.val1.i, ptr %i.f, align 8, !tbaa !101
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEESB_EvT_T0_.exit

bb.j:                                             ; preds = %bb.b
  %i.ar = icmp sgt i64 %.tr7987, %.tr8088
  %i.as = ptrtoint ptr %.tr7785 to i64            ; 4 uses
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.j
  %i.at = sdiv i64 %.tr7987, 2                    ; 2 uses
  %i.au = getelementptr inbounds [48 x i8], ptr %.tr84, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 40
  %.val = load i64, ptr %i.av, align 8
  %i.aw = sub i64 %i.c, %i.as                     ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ay = udiv exact i64 %i.aw, 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.ay, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.az = lshr i64 %.07.i, 1                      ; 3 uses
  %i.ba = getelementptr inbounds nuw [48 x i8], ptr %.sroa.02.06.i, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 40
  %.val.i.i = load i64, ptr %i.bb, align 8, !tbaa !109
  %i.bc = icmp ult i64 %.val.i.i, %.val           ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.be = xor i64 %i.az, -1
  %i.bf = add nsw i64 %.07.i, %i.be
  %.sroa.02.1.i = select i1 %i.bc, ptr %i.bd, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.bc, i64 %i.bf, i64 %i.az   ; 2 uses
  %i.bg = icmp sgt i64 %.1.i, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit", !llvm.loop !46

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit" ], [ %i.as, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit" ], [ %.tr7785, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bh = sub i64 %.pre-phi, %i.as
  %i.bi = sdiv exact i64 %i.bh, 48
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54: ; preds = %bb.j
  %i.bj = sdiv i64 %.tr8088, 2                    ; 2 uses
  %i.bk = getelementptr inbounds [48 x i8], ptr %.tr7785, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %.val50 = load i64, ptr %i.bl, align 8
  %i.bm = ptrtoint ptr %.tr84 to i64              ; 3 uses
  %i.bn = sub i64 %i.as, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %i.bp = udiv exact i64 %i.bn, 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56
  %.07.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.bp, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %.sroa.02.06.i59 = phi ptr [ %.sroa.02.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i56 ] ; 2 uses
  %i.bq = lshr i64 %.07.i58, 1                    ; 3 uses
  %i.br = getelementptr inbounds nuw [48 x i8], ptr %.sroa.02.06.i59, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %.val2.i.i = load i64, ptr %i.bs, align 8, !tbaa !109
  %i.bt = icmp ult i64 %.val50, %.val2.i.i        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bv = xor i64 %i.bq, -1
  %i.bw = add nsw i64 %.07.i58, %i.bv
  %.sroa.02.1.i62 = select i1 %i.bt, ptr %.sroa.02.06.i59, ptr %i.bu ; 3 uses
  %.1.i63 = select i1 %i.bt, i64 %i.bq, i64 %i.bw ; 2 uses
  %i.bx = icmp sgt i64 %.1.i63, 0
  br i1 %i.bx, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit", !llvm.loop !47

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre91 = ptrtoint ptr %.sroa.02.1.i62 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54
  %.pre-phi92 = phi i64 [ %.pre91, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit" ], [ %i.bm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %.sroa.02.0.lcssa.i55 = phi ptr [ %.sroa.02.1.i62, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120LowerTypeTestsModule27buildBitSetsFromDisjointSetEN4llvm8ArrayRefIPNSG_8MetadataEEENSH_IPNSE_16GlobalTypeMemberEEENSH_IPNSE_17ICallBranchFunnelEEEE3$_0EEET_ST_ST_RKT0_T1_.exit.loopexit" ], [ %.tr84, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt3setImSt4lessImESaImEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit54 ]
  %i.by = sub i64 %.pre-phi92, %i.bm
  %i.bz = sdiv exact i64 %i.by, 48
  br label %tailrecurse
end_hunk_0
begin_hunk_1_@"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET0_T_SF_SF_SF_SE_T1_":bb.a
  store ptr %i.bz, ptr %i.bs, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21, i64 24 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21, i64 32
  %i.ce = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !102
  store <2 x ptr> %i.ce, ptr %i.bv, align 8, !tbaa !102
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bu, ptr %i.cf, align 8, !tbaa !527
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !109
  store i64 %i.ch, ptr %i.bx, align 8, !tbaa !109
  store ptr null, ptr %i.by, align 8, !tbaa !100
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !110
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !123
  store i64 0, ptr %i.cg, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i23

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i23: ; preds = %bb.h, %.lr.ph.i.i.i.i.i18
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i20, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.cj, i64 32, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i21, i64 80
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i20, i64 80 ; 2 uses
  %i.cm = add nsw i64 %.012.i.i.i.i.i19, -1
  %i.cn = icmp sgt i64 %.012.i.i.i.i.i19, 1
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i18, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24, !llvm.loop !54

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit24: ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i23, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i16 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.cl, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i23 ]
  ret ptr %.08.lcssa.i.i.i.i.i16
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @"_ZSt12__move_mergeIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIZNS0_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET0_T_SF_SF_SF_SE_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.033 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 8 uses
  %.01632 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 8 uses
  %.sroa.0.031 = phi ptr [ %i.ak, %bb.f ], [ %4, %bb.a ] ; 9 uses
  %i.d = getelementptr i8, ptr %.01632, i64 48    ; 2 uses
  %.016.val = load i64, ptr %i.d, align 8, !tbaa !532
  %i.e = getelementptr i8, ptr %.033, i64 48      ; 2 uses
  %.0.val = load i64, ptr %i.e, align 8, !tbaa !532
  %i.f = icmp ugt i64 %.016.val, %.0.val
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.031, ptr noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 8 ; 6 uses
  store ptr null, ptr %i.g, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 32
  store ptr %i.i, ptr %i.k, align 8, !tbaa !123
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 40 ; 3 uses
  store i64 0, ptr %i.l, align 8, !tbaa !109
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %.01632, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.01632, i64 8 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !122
  store i32 %i.p, ptr %i.i, align 8, !tbaa !122
  store ptr %i.n, ptr %i.g, align 8, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %.01632, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01632, i64 32
  %i.s = load <2 x ptr>, ptr %i.q, align 8, !tbaa !102
  store <2 x ptr> %i.s, ptr %i.j, align 8, !tbaa !102
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.i, ptr %i.t, align 8, !tbaa !527
  %i.u = getelementptr inbounds nuw i8, ptr %.01632, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109
  store i64 %i.v, ptr %i.l, align 8, !tbaa !109
  store ptr null, ptr %i.m, align 8, !tbaa !100
  store ptr %i.o, ptr %i.q, align 8, !tbaa !110
  store ptr %i.o, ptr %i.r, align 8, !tbaa !123
  store i64 0, ptr %i.u, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit:     ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %.01632, i64 80
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.033, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102  ; 3 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i19, label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.033, i64 8 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !122
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !122
  store ptr %i.z, ptr %i.g, align 8, !tbaa !100
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.033, i64 32
  %i.ae = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !102
  store <2 x ptr> %i.ae, ptr %i.j, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.i, ptr %i.af, align 8, !tbaa !527
  %i.ag = getelementptr inbounds nuw i8, ptr %.033, i64 40 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !109
  store i64 %i.ah, ptr %i.l, align 8, !tbaa !109
  store ptr null, ptr %i.y, align 8, !tbaa !100
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !110
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !123
  store i64 0, ptr %i.ag, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20:   ; preds = %bb.d, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.033, i64 80
  br label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit
  %.117 = phi ptr [ %i.x, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit ], [ %.01632, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.033, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit ], [ %i.aj, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit20 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 80 ; 2 uses
  %i.al = icmp ne ptr %.1, %1
  %i.am = icmp ne ptr %.117, %3
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !2483

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ak, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = ptrtoint ptr %.0.lcssa to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.as = udiv exact i64 %i.aq, 80
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bn, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i ], [ %i.as, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bm, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bl, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i, ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 4 uses
  store ptr null, ptr %i.at, align 8, !tbaa !100
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !110
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !123
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40 ; 2 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !109
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !122
  store i32 %i.bc, ptr %i.av, align 8, !tbaa !122
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !100
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.bf = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !102
  store <2 x ptr> %i.bf, ptr %i.aw, align 8, !tbaa !102
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.av, ptr %i.bg, align 8, !tbaa !527
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !109
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !109
  store ptr null, ptr %i.az, align 8, !tbaa !100
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !110
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !123
  store i64 0, ptr %i.bh, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bo = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !54

_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.bm, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i ]
  %i.bp = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.bq = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.br ; 3 uses
  %i.bt = ptrtoint ptr %3 to i64
  %i.bu = ptrtoint ptr %.016.lcssa to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i22, label %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29

.lr.ph.preheader.i.i.i.i.i22:                     ; preds = %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.bx = udiv exact i64 %i.bv, 80
  br label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28, %.lr.ph.preheader.i.i.i.i.i22
  %.012.i.i.i.i.i24 = phi i64 [ %i.cs, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28 ], [ %i.bx, %.lr.ph.preheader.i.i.i.i.i22 ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.cr, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28 ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i22 ] ; 8 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.cq, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i22 ] ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !100
  tail call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(80) %.0811.i.i.i.i.i25, ptr noundef %i.bz)
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 4 uses
  store ptr null, ptr %i.by, align 8, !tbaa !100
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 24 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !110
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 32
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !123
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 40 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !109
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i23
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !122
  store i32 %i.ch, ptr %i.ca, align 8, !tbaa !122
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !100
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 24 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 32
  %i.ck = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !102
  store <2 x ptr> %i.ck, ptr %i.cb, align 8, !tbaa !102
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ca, ptr %i.cl, align 8, !tbaa !527
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !109
  store i64 %i.cn, ptr %i.cd, align 8, !tbaa !109
  store ptr null, ptr %i.ce, align 8, !tbaa !100
  store ptr %i.cg, ptr %i.ci, align 8, !tbaa !110
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !123
  store i64 0, ptr %i.cm, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28: ; preds = %bb.h, %.lr.ph.i.i.i.i.i23
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 80 ; 2 uses
  %i.cs = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ct = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29, !llvm.loop !54

_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29: ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28, %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i21 = phi ptr [ %i.bs, %_ZSt4moveIPN12_GLOBAL__N_113ByteArrayInfoEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.cr, %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i.i.i.i28 ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21 to i64
  %i.cu = sub i64 %5, %i.bp
  %i.cv = getelementptr inbounds i8, ptr %i.bs, i64 %i.cu
  ret ptr %i.cv
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEEvT_SE_SE_T0_SF_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"struct.(anonymous namespace)::ByteArrayInfo", align 8 ; 10 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond88 = or i1 %i.a, %i.b
  br i1 %or.cond88, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8592 = phi i64 [ %4, %.lr.ph ], [ %i.ck, %tailrecurse ] ; 4 uses
  %.tr8491 = phi i64 [ %3, %.lr.ph ], [ %i.cj, %tailrecurse ] ; 4 uses
  %.tr8290 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 16 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %tailrecurse ] ; 15 uses
  %i.d = add nsw i64 %.tr8592, %.tr8491
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.tr8290, i64 48   ; 3 uses
  %.val2.i = load i64, ptr %i.f, align 8, !tbaa !532
  %i.g = getelementptr i8, ptr %.tr89, i64 48     ; 3 uses
  %.val3.i = load i64, ptr %i.g, align 8, !tbaa !532
  %i.h = icmp ugt i64 %.val2.i, %.val3.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr89, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.tr89, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !122
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %i.n, align 8, !tbaa !100
  %i.o = getelementptr inbounds nuw i8, ptr %.tr89, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %.tr89, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.i, ptr %i.s, align 8, !tbaa !527
  %i.t = getelementptr inbounds nuw i8, ptr %.tr89, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoC2EOS0_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !100
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoC2EOS0_.exit.i.i

_ZN12_GLOBAL__N_113ByteArrayInfoC2EOS0_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sink7.i.i = phi ptr [ %i.i, %bb.f ], [ %i.p, %bb.e ]
  %.sink6.i.i = phi ptr [ %i.i, %bb.f ], [ %i.r, %bb.e ]
  %.sink.i.i = phi i64 [ 0, %bb.f ], [ %i.u, %bb.e ]
  %.sink.i.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.m, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %.sink7.i.i, ptr %i.w, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %.sink6.i.i, ptr %i.x, align 8, !tbaa !123
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  store i64 %.sink.i.i, ptr %i.y, align 8, !tbaa !109
  store i32 %.sink.i.i.i.i.i.i.i, ptr %i.i, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr89, i64 8 ; 4 uses
  store ptr null, ptr %i.j, align 8, !tbaa !100
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr89, i64 24 ; 2 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !110
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr89, i64 32
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !123
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr89, i64 40 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr8290, i64 16 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoC2EOS0_.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr8290, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !122
  store i32 %i.ah, ptr %i.aa, align 8, !tbaa !122
  store ptr %i.af, ptr %i.j, align 8, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr8290, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr8290, i64 32
  %i.ak = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !102
  store <2 x ptr> %i.ak, ptr %i.ab, align 8, !tbaa !102
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !527
  %i.am = getelementptr inbounds nuw i8, ptr %.tr8290, i64 40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !109
  store i64 %i.an, ptr %i.ad, align 8, !tbaa !109
  store ptr null, ptr %i.ae, align 8, !tbaa !100
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !110
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !123
  store i64 0, ptr %i.am, align 8, !tbaa !109
  br label %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i

_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i: ; preds = %bb.g, %_ZN12_GLOBAL__N_113ByteArrayInfoC2EOS0_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !100
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(80) %.tr8290, ptr noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr8290, i64 8 ; 4 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !100
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr8290, i64 24 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !110
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr8290, i64 32
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !123
  %i.as = getelementptr inbounds nuw i8, ptr %.tr8290, i64 40 ; 2 uses
  store i64 0, ptr %i.as, align 8, !tbaa !109
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !102 ; 3 uses
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i
  %i.av = load i32, ptr %i.i, align 8, !tbaa !122
  store i32 %i.av, ptr %i.ap, align 8, !tbaa !122
  store ptr %i.au, ptr %i.ae, align 8, !tbaa !100
  %i.aw = load <2 x ptr>, ptr %i.w, align 8, !tbaa !102
  store <2 x ptr> %i.aw, ptr %i.aq, align 8, !tbaa !102
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ap, ptr %i.ax, align 8, !tbaa !527
  %i.ay = load i64, ptr %i.y, align 8, !tbaa !109
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !109
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES8_EvT_T0_.exit: ; preds = %_ZN12_GLOBAL__N_113ByteArrayInfoaSEOS0_.exit.i.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.az = icmp sgt i64 %.tr8491, %.tr8592
  %i.ba = ptrtoint ptr %.tr8290 to i64            ; 4 uses
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.i
  %i.bb = sdiv i64 %.tr8491, 2                    ; 2 uses
  %i.bc = getelementptr inbounds [80 x i8], ptr %.tr89, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %.val55 = load i64, ptr %i.bd, align 8
  %i.be = sub i64 %i.c, %i.ba                     ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = udiv exact i64 %i.be, 80
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.07.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.bg, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.02.06.i = phi ptr [ %.sroa.02.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8290, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.bh = lshr i64 %.07.i, 1                      ; 3 uses
  %i.bi = getelementptr inbounds nuw [80 x i8], ptr %.sroa.02.06.i, i64 %i.bh ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 48
  %.val2.i.i = load i64, ptr %i.bj, align 8, !tbaa !532
  %i.bk = icmp ugt i64 %.val2.i.i, %.val55        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.bm = xor i64 %i.bh, -1
  %i.bn = add nsw i64 %.07.i, %i.bm
  %.sroa.02.1.i = select i1 %i.bk, ptr %i.bl, ptr %.sroa.02.06.i ; 3 uses
  %.1.i = select i1 %i.bk, i64 %i.bn, i64 %i.bh   ; 2 uses
  %i.bo = icmp sgt i64 %.1.i, 0
  br i1 %i.bo, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", !llvm.loop !56

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.02.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %i.ba, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.02.0.lcssa.i = phi ptr [ %.sroa.02.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit.loopexit" ], [ %.tr8290, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bp = sub i64 %.pre-phi, %i.ba
  %i.bq = sdiv exact i64 %i.bp, 80
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit61: ; preds = %bb.i
  %i.br = sdiv i64 %.tr8592, 2                    ; 2 uses
  %i.bs = getelementptr inbounds [80 x i8], ptr %.tr8290, i64 %i.br ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 48
  %.val56 = load i64, ptr %i.bt, align 8
  %i.bu = ptrtoint ptr %.tr89 to i64              ; 3 uses
  %i.bv = sub i64 %i.ba, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIZNS2_20LowerTypeTestsModule18allocateByteArraysEvE3$_0EEET_SE_SE_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_113ByteArrayInfoESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit61
  %i.bx = udiv exact i64 %i.bv, 80
end_hunk_1
