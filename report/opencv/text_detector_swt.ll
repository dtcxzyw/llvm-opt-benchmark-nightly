Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/text_detector_swt?download=true
inline.NumInlined: 2496
inline.NumDeleted: 1038
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEET0_T_SJ_SJ_SJ_SI_T1_:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.az, ptr noundef nonnull align 8 dereferenceable(13) %i.ba, i64 13, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit, !llvm.loop !14

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.bc, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i ] ; 2 uses
  %i.bf = ptrtoint ptr %3 to i64
  %i.bg = ptrtoint ptr %.sroa.027.0.lcssa to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.preheader.i.i.i.i.i18, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit25

.lr.ph.preheader.i.i.i.i.i18:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  %i.bj = udiv exact i64 %i.bh, 48
  br label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i18
  %.012.i.i.i.i.i20 = phi i64 [ %i.ca, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24 ], [ %i.bj, %.lr.ph.preheader.i.i.i.i.i18 ] ; 2 uses
  %.0811.i.i.i.i.i21 = phi ptr [ %i.bz, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i18 ] ; 5 uses
  %.0910.i.i.i.i.i22 = phi ptr [ %i.by, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24 ], [ %.sroa.027.0.lcssa, %.lr.ph.preheader.i.i.i.i.i18 ] ; 5 uses
  %i.bk = load i64, ptr %.0910.i.i.i.i.i22, align 8
  store i64 %i.bk, ptr %.0811.i.i.i.i.i21, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !98 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 24 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !107
  %i.bq = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !93
  store <2 x ptr> %i.bq, ptr %i.bl, align 8, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !107
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.bn, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i23, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i19
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bv) #24
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24: ; preds = %bb.h, %.lr.ph.i.i.i.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bw, ptr noundef nonnull align 8 dereferenceable(13) %i.bx, i64 13, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21, i64 48 ; 2 uses
  %i.ca = add nsw i64 %.012.i.i.i.i.i20, -1
  %i.cb = icmp sgt i64 %.012.i.i.i.i.i20, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i19, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit25, !llvm.loop !14

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit25: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i17 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit ], [ %i.bz, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i24 ]
  ret ptr %.08.lcssa.i.i.i.i.i17
}

; Function Attrs: mustprogress uwtable
define internal fastcc ptr @_ZSt12__move_mergeIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterIPFbRKS3_SE_EEEET0_T_SJ_SJ_SJ_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr nofree readonly captures(none) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.035 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 7 uses
  %.01634 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 7 uses
  %.sroa.031.033 = phi ptr [ %i.ag, %bb.f ], [ %4, %bb.a ] ; 7 uses
  %i.d = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(45) %.01634, ptr noundef nonnull align 8 dereferenceable(45) %.035), !inline_history !383
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.031.033, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.031.033, i64 24 ; 4 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.g = load i64, ptr %.01634, align 8
  store i64 %i.g, ptr %.sroa.031.033, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.01634, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !98   ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !93
  store <2 x ptr> %i.k, ptr %i.e, align 8, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %.01634, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  store ptr %i.m, ptr %i.f, align 8, !tbaa !107
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #24
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit: ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.031.033, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %.01634, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.q, ptr noundef nonnull align 8 dereferenceable(13) %i.r, i64 13, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.01634, i64 48
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.t = load i64, ptr %.035, align 8
  store i64 %i.t, ptr %.sroa.031.033, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !98   ; 3 uses
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !93
  store <2 x ptr> %i.x, ptr %i.e, align 8, !tbaa !93
  %i.y = getelementptr inbounds nuw i8, ptr %.035, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  store ptr %i.z, ptr %i.f, align 8, !tbaa !107
  %.not.i.i.i.i.i.i20 = icmp eq ptr %i.v, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i20, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.v to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ac) #24
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21: ; preds = %bb.d, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.033, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ad, ptr noundef nonnull align 8 dereferenceable(13) %i.ae, i64 13, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.035, i64 48
  br label %bb.f

bb.f:                                             ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit
  %.117 = phi ptr [ %i.s, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit ], [ %.01634, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21 ] ; 3 uses
  %.1 = phi ptr [ %.035, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit ], [ %i.af, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit21 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.033, i64 48 ; 2 uses
  %i.ah = icmp ne ptr %.1, %1
  %i.ai = icmp ne ptr %.117, %3
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !384

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.031.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ag, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = ptrtoint ptr %.0.lcssa to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.ao = udiv exact i64 %i.am, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bf, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.be, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i ], [ %.sroa.031.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bd, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.ap = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ap, ptr %.0811.i.i.i.i.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !98 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !107
  %i.av = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !93
  store <2 x ptr> %i.av, ptr %i.aq, align 8, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !107
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.ba) #24
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bb, ptr noundef nonnull align 8 dereferenceable(13) %i.bc, i64 13, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bg = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit, !llvm.loop !14

_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.031.0.lcssa, %._crit_edge ], [ %i.be, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i ]
  %i.bh = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.bi = ptrtoint ptr %.sroa.031.0.lcssa to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.sroa.031.0.lcssa, i64 %i.bj ; 2 uses
  %i.bl = ptrtoint ptr %3 to i64
  %i.bm = ptrtoint ptr %.016.lcssa to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %i.bp = udiv exact i64 %i.bn, 48
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.cg, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29 ], [ %i.bp, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.cf, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29 ], [ %i.bk, %.lr.ph.preheader.i.i.i.i.i23 ] ; 5 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.ce, %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i23 ] ; 5 uses
  %i.bq = load i64, ptr %.0910.i.i.i.i.i27, align 8
  store i64 %i.bq, ptr %.0811.i.i.i.i.i26, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 8 ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !98 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !107
  %i.bw = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !93
  store <2 x ptr> %i.bw, ptr %i.br, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !107
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !107
  %.not.i.i.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.bt, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i28, label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i24
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.bt to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cb) #24
  br label %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29

_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29: ; preds = %bb.h, %.lr.ph.i.i.i.i.i24
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.cc, ptr noundef nonnull align 8 dereferenceable(13) %i.cd, i64 13, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 48 ; 2 uses
  %i.cg = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.ch = icmp sgt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30.loopexit, !llvm.loop !14

_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30.loopexit: ; preds = %_ZN2cv4text12_GLOBAL__N_116ChainedComponentaSEOS2_.exit.i.i.i.i.i29
  %6 = ptrtoint ptr %i.cf to i64
  br label %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30

_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30: ; preds = %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30.loopexit, %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit
  %.08.lcssa.i.i.i.i.i22 = phi i64 [ %i.bh, %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit ], [ %6, %_ZSt4moveIPN2cv4text12_GLOBAL__N_116ChainedComponentEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit30.loopexit ]
  %i.ci = sub i64 %.08.lcssa.i.i.i.i.i22, %i.bh
  %i.cj = getelementptr inbounds i8, ptr %i.bk, i64 %i.ci
  ret ptr %i.cj
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_SJ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.13.i.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond90 = or i1 %i.a, %i.b
  br i1 %or.cond90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8694 = phi i64 [ %4, %.lr.ph ], [ %i.be, %tailrecurse ] ; 4 uses
  %.tr8593 = phi i64 [ %3, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr8392 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 11 uses
  %.tr91 = phi ptr [ %0, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 11 uses
  %i.d = add nsw i64 %.tr8694, %.tr8593
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(45) %.tr8392, ptr noundef nonnull align 8 dereferenceable(45) %.tr91), !inline_history !13
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i)
  %i.g = load i64, ptr %.tr91, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.tr91, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.tr91, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %.tr91, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr8392, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.tr8392, i64 24 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr8392, i64 32 ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.h, align 8, !tbaa !93
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %.sroa.13.i.i, ptr noundef nonnull align 8 dereferenceable(13) %i.k, i64 13, i1 false)
  %i.p = load i64, ptr %.tr8392, align 8
  store i64 %i.p, ptr %.tr91, align 8
  %i.q = load <2 x ptr>, ptr %i.l, align 8, !tbaa !93
  store <2 x ptr> %i.q, ptr %i.h, align 8, !tbaa !93
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !107
  store ptr %i.r, ptr %i.i, align 8, !tbaa !107
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.k, ptr noundef nonnull align 8 dereferenceable(13) %i.n, i64 13, i1 false)
  store i64 %i.g, ptr %.tr8392, align 8
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !98   ; 3 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !107
  store <2 x ptr> %i.o, ptr %i.l, align 8, !tbaa !93
  store ptr %i.j, ptr %i.m, align 8, !tbaa !107
  %.not.i.i.i.i.i.i5.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i5.i.i, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #24
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.n, ptr noundef nonnull align 8 dereferenceable(13) %.sroa.13.i.i, i64 13, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i)
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.x = icmp sgt i64 %.tr8593, %.tr8694
  %i.y = ptrtoint ptr %.tr8392 to i64             ; 4 uses
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.f
  %i.z = sdiv i64 %.tr8593, 2                     ; 2 uses
  %i.aa = getelementptr inbounds [48 x i8], ptr %.tr91, i64 %i.z ; 2 uses
  %i.ab = sub i64 %i.c, %i.y                      ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ad = udiv exact i64 %i.ab, 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.019.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.014.018.i = phi ptr [ %.sroa.014.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.ae = lshr i64 %.019.i, 1                     ; 3 uses
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.018.i, i64 %i.ae ; 2 uses
  %i.ag = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(45) %i.af, ptr noundef nonnull align 8 dereferenceable(45) %i.aa), !inline_history !15 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ai = xor i64 %i.ae, -1
  %i.aj = add nsw i64 %.019.i, %i.ai
  %.sroa.014.1.i = select i1 %i.ag, ptr %i.ah, ptr %.sroa.014.018.i ; 3 uses
  %.1.i = select i1 %i.ag, i64 %i.aj, i64 %i.ae   ; 2 uses
  %i.ak = icmp sgt i64 %.1.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit, !llvm.loop !16

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.014.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %i.y, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.014.0.lcssa.i = phi ptr [ %.sroa.014.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.al = sub i64 %.pre-phi, %i.y
  %i.am = sdiv exact i64 %i.al, 48
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61: ; preds = %bb.f
  %i.an = sdiv i64 %.tr8694, 2                    ; 2 uses
  %i.ao = getelementptr inbounds [48 x i8], ptr %.tr8392, i64 %i.an ; 2 uses
  %i.ap = ptrtoint ptr %.tr91 to i64              ; 3 uses
  %i.aq = sub i64 %i.y, %i.ap                     ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61
  %i.as = udiv exact i64 %i.aq, 48
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63
  %.019.i65 = phi i64 [ %.1.i70, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.as, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63 ] ; 2 uses
  %.sroa.014.018.i66 = phi ptr [ %.sroa.014.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i63 ] ; 2 uses
  %i.at = lshr i64 %.019.i65, 1                   ; 3 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %.sroa.014.018.i66, i64 %i.at ; 2 uses
  %i.av = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(45) %i.ao, ptr noundef nonnull align 8 dereferenceable(45) %i.au), !inline_history !17 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.ax = xor i64 %i.at, -1
  %i.ay = add nsw i64 %.019.i65, %i.ax
  %.sroa.014.1.i69 = select i1 %i.av, ptr %.sroa.014.018.i66, ptr %i.aw ; 3 uses
  %.1.i70 = select i1 %i.av, i64 %i.at, i64 %i.ay ; 2 uses
  %i.az = icmp sgt i64 %.1.i70, 0
  br i1 %i.az, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit, !llvm.loop !18

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre97 = ptrtoint ptr %.sroa.014.1.i69 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %i.ap, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ]
  %.sroa.014.0.lcssa.i62 = phi ptr [ %.sroa.014.1.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit.loopexit ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit61 ]
  %i.ba = sub i64 %.pre-phi98, %i.ap
  %i.bb = sdiv exact i64 %i.ba, 48
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit
  %.sroa.072.0 = phi ptr [ %i.aa, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ], [ %.sroa.014.0.lcssa.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.014.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ], [ %i.ao, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.am, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ], [ %i.an, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.z, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Iter_comp_valIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEES5_NS0_5__ops14_Val_comp_iterIPFbRKS5_SE_EEEET_SI_SI_RKT0_T1_.exit ] ; 2 uses
  %i.bc = tail call fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_(ptr %.sroa.072.0, ptr %.tr8392, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS5_SE_EEEEvT_SI_SI_T0_SJ_T1_(ptr %.tr91, ptr %.sroa.072.0, ptr %i.bc, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.bd = sub nsw i64 %.tr8593, %.0               ; 2 uses
  %i.be = sub nsw i64 %.tr8694, %.049             ; 2 uses
  %i.bf = icmp eq i64 %i.bd, 0
  %i.bg = icmp eq i64 %i.be, 0
  %or.cond = or i1 %i.bf, %i.bg
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc ptr @_ZNSt3_V26rotateIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_(ptr %0, ptr %1, ptr %2) unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.13.i.i37.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %.sroa.13.i.i.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %.sroa.13.i.i.i.i = alloca <{ float, %"struct.cv::text::(anonymous namespace)::Direction", i8 }>, align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS6_SaIS6_EEEEEET_SC_SC_SC_St26random_access_iterator_tag.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 48                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 48                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %bb.e

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.ad, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i ], [ %1, %bb.c ] ; 6 uses
  %.sroa.05.07.i.i = phi ptr [ %i.ac, %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPN2cv4text12_GLOBAL__N_116ChainedComponentESt6vectorIS5_SaIS5_EEEESA_EvT_T0_.exit.i.i ], [ %0, %bb.c ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i.i)
  %i.l = load i64, ptr %.sroa.05.07.i.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !107
end_hunk_0
