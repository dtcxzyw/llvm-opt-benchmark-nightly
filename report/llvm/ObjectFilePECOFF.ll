Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectFilePECOFF?download=true
inline.NumInlined: 3156
inline.NumDeleted: 1667
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_:bb.a
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !315
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i30, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i29, i64 8 ; 2 uses
  %i.cc = add nsw i64 %.012.i.i.i.i.i.i28, -1
  %i.cd = icmp samesign ugt i64 %.012.i.i.i.i.i.i28, 1
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i27, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i20, !llvm.loop !910

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i20: ; preds = %.lr.ph.i.i.i.i.i.i27, %middle.block165, %.critedge.i16
  %.08.lcssa.i.i.i.i.i.i21 = phi ptr [ %.0.lcssa.i19, %.critedge.i16 ], [ %i.br, %middle.block165 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i27 ] ; 7 uses
  %i.ce = ptrtoint ptr %.sroa.016.0.lcssa.i17 to i64
  %i.cf = sub i64 %i.b, %i.ce                     ; 2 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 7 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i10.i23.preheader, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit41

.lr.ph.i.i.i.i.i10.i23.preheader:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i20
  %min.iters.check177 = icmp ult i64 %i.cg, 6
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i10.i23.preheader200, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i.i.i10.i23.preheader
  %scevgep171 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cf
  %bound0173 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i21, %1
  %bound1174 = icmp ult ptr %.sroa.016.0.lcssa.i17, %scevgep171
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i.i.i10.i23.preheader200, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck170
  %n.vec179 = and i64 %i.cg, 9223372036854775804  ; 3 uses
  %i.ci = and i64 %i.cg, 3
  %i.cj = shl i64 %n.vec179, 3                    ; 2 uses
  %i.ck = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cj
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next194, %vector.body180 ] ; 2 uses
  %i.cm = shl i64 %index181, 3                    ; 3 uses
  %i.cn = or disjoint i64 %i.cm, 16               ; 2 uses
  %next.gep182 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cm
  %next.gep183 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cn
  %next.gep184 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cm
  %next.gep185 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cn
  %wide.vec186 = load <4 x i32>, ptr %next.gep184, align 4, !tbaa !62, !alias.scope !922
  %wide.vec189 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !62, !alias.scope !922
  store <4 x i32> %wide.vec186, ptr %next.gep182, align 4, !tbaa !62, !alias.scope !923, !noalias !922
  store <4 x i32> %wide.vec189, ptr %next.gep183, align 4, !tbaa !62, !alias.scope !923, !noalias !922
  %index.next194 = add nuw i64 %index181, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next194, %n.vec179
  br i1 %i.co, label %middle.block195, label %vector.body180, !llvm.loop !914

middle.block195:                                  ; preds = %vector.body180
  %cmp.n196 = icmp eq i64 %i.cg, %n.vec179
  br i1 %cmp.n196, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit41, label %.lr.ph.i.i.i.i.i10.i23.preheader200

.lr.ph.i.i.i.i.i10.i23.preheader200:              ; preds = %vector.memcheck170, %.lr.ph.i.i.i.i.i10.i23.preheader, %middle.block195
  %.012.i.i.i.i.i11.i24.ph = phi i64 [ %i.cg, %vector.memcheck170 ], [ %i.cg, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.ci, %middle.block195 ]
  %.0811.i.i.i.i.i12.i25.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i21, %vector.memcheck170 ], [ %.08.lcssa.i.i.i.i.i.i21, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.ck, %middle.block195 ]
  %.0910.i.i.i.i.i13.i26.ph = phi ptr [ %.sroa.016.0.lcssa.i17, %vector.memcheck170 ], [ %.sroa.016.0.lcssa.i17, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.cl, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i10.i23

.lr.ph.i.i.i.i.i10.i23:                           ; preds = %.lr.ph.i.i.i.i.i10.i23.preheader200, %.lr.ph.i.i.i.i.i10.i23
  %.012.i.i.i.i.i11.i24 = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i10.i23 ], [ %.012.i.i.i.i.i11.i24.ph, %.lr.ph.i.i.i.i.i10.i23.preheader200 ] ; 2 uses
  %.0811.i.i.i.i.i12.i25 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i10.i23 ], [ %.0811.i.i.i.i.i12.i25.ph, %.lr.ph.i.i.i.i.i10.i23.preheader200 ] ; 3 uses
  %.0910.i.i.i.i.i13.i26 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i10.i23 ], [ %.0910.i.i.i.i.i13.i26.ph, %.lr.ph.i.i.i.i.i10.i23.preheader200 ] ; 3 uses
  %i.cp = load i32, ptr %.0910.i.i.i.i.i13.i26, align 4, !tbaa !62
  store i32 %i.cp, ptr %.0811.i.i.i.i.i12.i25, align 4, !tbaa !314
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i26, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i25, i64 4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !315
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i26, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i25, i64 8
  %i.cv = add nsw i64 %.012.i.i.i.i.i11.i24, -1
  %i.cw = icmp samesign ugt i64 %.012.i.i.i.i.i11.i24, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i10.i23, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit41, !llvm.loop !915

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit41: ; preds = %.lr.ph.i.i.i.i.i10.i23, %middle.block195, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not63 = icmp slt i64 %i.e, %i.a
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 3                       ; 2 uses
  %.idx54 = shl nsw i64 %3, 4                     ; 2 uses
  %.not55 = icmp eq i64 %.idx, %.idx54
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.021.065 = phi ptr [ %2, %.lr.ph ], [ %i.bi, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.064 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.064, i64 %.idx ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.064, i64 %.idx54 ; 5 uses
  br i1 %.not55, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.030.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.064, %bb.b ] ; 3 uses
  %.01629.i = phi ptr [ %.117.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.024.028.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.sroa.021.065, %bb.b ] ; 3 uses
  %i.h = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %.01629.i, ptr noundef nonnull align 4 dereferenceable(8) %.030.i) #21, !inline_history !924 ; 3 uses
  %.01629.pn.i = select i1 %i.h, ptr %.01629.i, ptr %.030.i ; 2 uses
  %.117.i.idx = select i1 %i.h, i64 8, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01629.i, i64 %.117.i.idx ; 3 uses
  %.1.i.idx = select i1 %i.h, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 %.1.i.idx ; 3 uses
  %.sink = load i32, ptr %.01629.pn.i, align 4, !tbaa !62
  store i32 %.sink, ptr %.sroa.024.028.i, align 4, !tbaa !314
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.01629.pn.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i, i64 4
  store i32 %.sink.i, ptr %i.i, align 4, !tbaa !315
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i, i64 8 ; 2 uses
  %i.k = icmp ne ptr %.1.i, %i.f
  %i.l = icmp ne ptr %.117.i, %i.g
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !925

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.024.0.lcssa.i = phi ptr [ %.sroa.021.065, %bb.b ], [ %i.j, %.lr.ph.i ] ; 11 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %.lr.ph.i ] ; 7 uses
  %.0.lcssa.i = phi ptr [ %.064, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 7 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.0.lcssa.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 7 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %min.iters.check117 = icmp ult i64 %i.q, 4
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i.i.preheader204, label %vector.memcheck110

vector.memcheck110:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep111 = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.p
  %bound0113 = icmp ult ptr %.sroa.024.0.lcssa.i, %i.f
  %bound1114 = icmp ult ptr %.0.lcssa.i, %scevgep111
  %found.conflict115 = and i1 %bound0113, %bound1114
  br i1 %found.conflict115, label %.lr.ph.i.i.i.i.i.i.preheader204, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck110
  %n.vec119 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %i.s = and i64 %i.q, 3
  %i.t = shl i64 %n.vec119, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %i.t
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next134, %vector.body120 ] ; 2 uses
  %i.w = shl i64 %index121, 3                     ; 3 uses
  %i.x = or disjoint i64 %i.w, 16                 ; 2 uses
  %next.gep122.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.w
  %next.gep123.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.x
  %next.gep124.a = getelementptr i8, ptr %.0.lcssa.i, i64 %i.w
  %next.gep125 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.x
  %wide.vec126 = load <4 x i32>, ptr %next.gep124.a, align 4, !tbaa !62, !alias.scope !947
  %wide.vec129 = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !62, !alias.scope !947
  store <4 x i32> %wide.vec126, ptr %next.gep122.a, align 4, !tbaa !62, !alias.scope !948, !noalias !947
  store <4 x i32> %wide.vec129, ptr %next.gep123.a, align 4, !tbaa !62, !alias.scope !948, !noalias !947
  %index.next134 = add nuw i64 %index121, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next134, %n.vec119
  br i1 %i.y, label %middle.block135, label %vector.body120, !llvm.loop !929

middle.block135:                                  ; preds = %vector.body120
  %cmp.n136 = icmp eq i64 %i.q, %n.vec119
  br i1 %cmp.n136, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader204

.lr.ph.i.i.i.i.i.i.preheader204:                  ; preds = %vector.memcheck110, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block135
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.q, %vector.memcheck110 ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block135 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %.sroa.024.0.lcssa.i, %vector.memcheck110 ], [ %.sroa.024.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block135 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck110 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block135 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader204, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader204 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader204 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader204 ] ; 3 uses
  %i.z = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !62
  store i32 %i.z, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !314
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !315
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !930

_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block135, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.024.0.lcssa.i, %._crit_edge.i ], [ %i.u, %middle.block135 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.024.0.lcssa.i to i64 ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.aj ; 7 uses
  %i.al = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.am = ptrtoint ptr %.016.lcssa.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = ashr exact i64 %i.an, 3                 ; 7 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i.preheader203, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %i.aq = add i64 %i.an, %i.ah
  %i.ar = sub i64 %i.aq, %i.ai
  %scevgep = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.ar
  %bound0 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i, %i.g
  %bound1 = icmp ult ptr %.016.lcssa.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i19.i.preheader203, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 9223372036854775804     ; 3 uses
  %i.as = and i64 %i.ao, 3
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %.016.lcssa.i, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 3 uses
  %i.ax = or disjoint i64 %i.aw, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.aw
  %next.gep100.a = getelementptr i8, ptr %i.ak, i64 %i.ax
  %next.gep101.a = getelementptr i8, ptr %.016.lcssa.i, i64 %i.aw
  %next.gep102 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ax
  %wide.vec = load <4 x i32>, ptr %next.gep101.a, align 4, !tbaa !62, !alias.scope !949
  %wide.vec104 = load <4 x i32>, ptr %next.gep102, align 4, !tbaa !62, !alias.scope !949
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !62, !alias.scope !950, !noalias !949
  store <4 x i32> %wide.vec104, ptr %next.gep100.a, align 4, !tbaa !62, !alias.scope !950, !noalias !949
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !934

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, label %.lr.ph.i.i.i.i.i19.i.preheader203

.lr.ph.i.i.i.i.i19.i.preheader203:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i19.i.preheader, %middle.block
  %.012.i.i.i.i.i20.i.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.as, %middle.block ]
  %.0811.i.i.i.i.i21.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.au, %middle.block ]
  %.0910.i.i.i.i.i22.i.ph = phi ptr [ %.016.lcssa.i, %vector.memcheck ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.preheader203, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader203 ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader203 ] ; 3 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader203 ] ; 3 uses
  %i.az = load i32, ptr %.0910.i.i.i.i.i22.i, align 4, !tbaa !62
  store i32 %i.az, ptr %.0811.i.i.i.i.i21.i, align 4, !tbaa !314
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !62
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !315
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8 ; 2 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i20.i, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i20.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !935

_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i, %middle.block, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ak, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.au, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i19.i ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.bh = sub i64 %5, %i.ah
  %i.bi = getelementptr inbounds i8, ptr %i.ak, i64 %i.bh ; 2 uses
  %i.bj = sub i64 %i.b, %i.al
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bk, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !936

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bi, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa61 = phi i64 [ %i.e, %bb.a ], [ %i.bk, %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa61) ; 2 uses
  %.idx56 = shl nsw i64 %.sroa.speculated, 3
  %i.bl = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx56 ; 6 uses
  %i.bm = icmp ne i64 %.sroa.speculated, 0
  %i.bn = icmp ne ptr %i.bl, %1
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.i40, label %._crit_edge.i24

.lr.ph.i40:                                       ; preds = %._crit_edge, %.lr.ph.i40
  %.030.i41 = phi ptr [ %.1.i46, %.lr.ph.i40 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01629.i42 = phi ptr [ %.117.i45, %.lr.ph.i40 ], [ %i.bl, %._crit_edge ] ; 3 uses
  %.sroa.024.028.i43 = phi ptr [ %i.br, %.lr.ph.i40 ], [ %.sroa.021.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bp = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %.01629.i42, ptr noundef nonnull align 4 dereferenceable(8) %.030.i41) #21, !inline_history !924 ; 3 uses
  %.01629.pn.i44 = select i1 %i.bp, ptr %.01629.i42, ptr %.030.i41 ; 2 uses
  %.117.i45.idx = select i1 %i.bp, i64 8, i64 0
  %.117.i45 = getelementptr inbounds nuw i8, ptr %.01629.i42, i64 %.117.i45.idx ; 3 uses
  %.1.i46.idx = select i1 %i.bp, i64 0, i64 8
  %.1.i46 = getelementptr inbounds nuw i8, ptr %.030.i41, i64 %.1.i46.idx ; 3 uses
  %.sink76 = load i32, ptr %.01629.pn.i44, align 4, !tbaa !62
  store i32 %.sink76, ptr %.sroa.024.028.i43, align 4, !tbaa !314
  %.sink.in.i47 = getelementptr inbounds nuw i8, ptr %.01629.pn.i44, i64 4
  %.sink.i48 = load i32, ptr %.sink.in.i47, align 4, !tbaa !62
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i43, i64 4
  store i32 %.sink.i48, ptr %i.bq, align 4, !tbaa !315
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i43, i64 8 ; 2 uses
  %i.bs = icmp ne ptr %.1.i46, %i.bl
  %i.bt = icmp ne ptr %.117.i45, %1
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph.i40, label %._crit_edge.i24, !llvm.loop !925

._crit_edge.i24:                                  ; preds = %.lr.ph.i40, %._crit_edge
  %.sroa.024.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.br, %.lr.ph.i40 ] ; 11 uses
  %.016.lcssa.i26 = phi ptr [ %i.bl, %._crit_edge ], [ %.117.i45, %.lr.ph.i40 ] ; 7 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i46, %.lr.ph.i40 ] ; 7 uses
  %i.bv = ptrtoint ptr %i.bl to i64
  %i.bw = ptrtoint ptr %.0.lcssa.i27 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = ashr exact i64 %i.bx, 3                 ; 7 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i36.preheader, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28

.lr.ph.i.i.i.i.i.i36.preheader:                   ; preds = %._crit_edge.i24
  %min.iters.check147 = icmp ult i64 %i.by, 6
  br i1 %min.iters.check147, label %.lr.ph.i.i.i.i.i.i36.preheader201, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.i.i.i.i.i36.preheader
  %scevgep141 = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.bx
  %bound0143 = icmp ult ptr %.sroa.024.0.lcssa.i25, %i.bl
  %bound1144 = icmp ult ptr %.0.lcssa.i27, %scevgep141
  %found.conflict145 = and i1 %bound0143, %bound1144
  br i1 %found.conflict145, label %.lr.ph.i.i.i.i.i.i36.preheader201, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck140
  %n.vec149 = and i64 %i.by, 9223372036854775804  ; 3 uses
  %i.ca = and i64 %i.by, 3
  %i.cb = shl i64 %n.vec149, 3                    ; 2 uses
  %i.cc = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cb ; 2 uses
  %i.cd = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cb
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next164, %vector.body150 ] ; 2 uses
  %i.ce = shl i64 %index151, 3                    ; 3 uses
  %i.cf = or disjoint i64 %i.ce, 16               ; 2 uses
  %next.gep152.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.ce
  %next.gep153.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cf
  %next.gep154.a = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.ce
  %next.gep155 = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cf
  %wide.vec156 = load <4 x i32>, ptr %next.gep154.a, align 4, !tbaa !62, !alias.scope !951
  %wide.vec159 = load <4 x i32>, ptr %next.gep155, align 4, !tbaa !62, !alias.scope !951
  store <4 x i32> %wide.vec156, ptr %next.gep152.a, align 4, !tbaa !62, !alias.scope !952, !noalias !951
  store <4 x i32> %wide.vec159, ptr %next.gep153.a, align 4, !tbaa !62, !alias.scope !952, !noalias !951
  %index.next164 = add nuw i64 %index151, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next164, %n.vec149
  br i1 %i.cg, label %middle.block165, label %vector.body150, !llvm.loop !940

middle.block165:                                  ; preds = %vector.body150
  %cmp.n166 = icmp eq i64 %i.by, %n.vec149
  br i1 %cmp.n166, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28, label %.lr.ph.i.i.i.i.i.i36.preheader201

.lr.ph.i.i.i.i.i.i36.preheader201:                ; preds = %vector.memcheck140, %.lr.ph.i.i.i.i.i.i36.preheader, %middle.block165
  %.012.i.i.i.i.i.i37.ph = phi i64 [ %i.by, %vector.memcheck140 ], [ %i.by, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.ca, %middle.block165 ]
  %.0811.i.i.i.i.i.i38.ph = phi ptr [ %.sroa.024.0.lcssa.i25, %vector.memcheck140 ], [ %.sroa.024.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.cc, %middle.block165 ]
  %.0910.i.i.i.i.i.i39.ph = phi ptr [ %.0.lcssa.i27, %vector.memcheck140 ], [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.cd, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.preheader201, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i36.preheader201 ] ; 2 uses
  %.0811.i.i.i.i.i.i38 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i36 ], [ %.0811.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i36.preheader201 ] ; 3 uses
  %.0910.i.i.i.i.i.i39 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i36 ], [ %.0910.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i36.preheader201 ] ; 3 uses
  %i.ch = load i32, ptr %.0910.i.i.i.i.i.i39, align 4, !tbaa !62
  store i32 %i.ch, ptr %.0811.i.i.i.i.i.i38, align 4, !tbaa !314
  %i.ci = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !62
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 4
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !315
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 8 ; 2 uses
  %i.cn = add nsw i64 %.012.i.i.i.i.i.i37, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i.i37, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i36, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28, !llvm.loop !941

_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i36, %middle.block165, %._crit_edge.i24
  %.08.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.024.0.lcssa.i25, %._crit_edge.i24 ], [ %i.cc, %middle.block165 ], [ %i.cm, %.lr.ph.i.i.i.i.i.i36 ] ; 2 uses
  %i.cp = ptrtoint ptr %.016.lcssa.i26 to i64
  %i.cq = sub i64 %i.b, %i.cp                     ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 7 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i19.i31.preheader, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit49

.lr.ph.i.i.i.i.i19.i31.preheader:                 ; preds = %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28
  %i.ct = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i29 to i64 ; 2 uses
  %i.cu = ptrtoint ptr %.sroa.024.0.lcssa.i25 to i64 ; 2 uses
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cv ; 5 uses
  %min.iters.check177 = icmp ult i64 %i.cr, 10
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i19.i31.preheader200, label %vector.memcheck170

vector.memcheck170:                               ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader
  %i.cx = add i64 %i.cq, %i.ct
  %i.cy = sub i64 %i.cx, %i.cu
  %scevgep171 = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cy
  %bound0173 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i29, %1
  %bound1174 = icmp ult ptr %.016.lcssa.i26, %scevgep171
  %found.conflict175 = and i1 %bound0173, %bound1174
  br i1 %found.conflict175, label %.lr.ph.i.i.i.i.i19.i31.preheader200, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck170
  %n.vec179 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cz = and i64 %i.cr, 3
  %i.da = shl i64 %n.vec179, 3                    ; 2 uses
  %i.db = getelementptr i8, ptr %i.cw, i64 %i.da
  %i.dc = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.da
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next194, %vector.body180 ] ; 2 uses
  %i.dd = shl i64 %index181, 3                    ; 3 uses
  %i.de = or disjoint i64 %i.dd, 16               ; 2 uses
  %next.gep182.a = getelementptr i8, ptr %i.cw, i64 %i.dd
  %next.gep183.a = getelementptr i8, ptr %i.cw, i64 %i.de
  %next.gep184.a = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dd
  %next.gep185 = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.de
  %wide.vec186 = load <4 x i32>, ptr %next.gep184.a, align 4, !tbaa !62, !alias.scope !953
  %wide.vec189 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !62, !alias.scope !953
  store <4 x i32> %wide.vec186, ptr %next.gep182.a, align 4, !tbaa !62, !alias.scope !954, !noalias !953
  store <4 x i32> %wide.vec189, ptr %next.gep183.a, align 4, !tbaa !62, !alias.scope !954, !noalias !953
  %index.next194 = add nuw i64 %index181, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next194, %n.vec179
  br i1 %i.df, label %middle.block195, label %vector.body180, !llvm.loop !945

middle.block195:                                  ; preds = %vector.body180
  %cmp.n196 = icmp eq i64 %i.cr, %n.vec179
  br i1 %cmp.n196, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit49, label %.lr.ph.i.i.i.i.i19.i31.preheader200

.lr.ph.i.i.i.i.i19.i31.preheader200:              ; preds = %vector.memcheck170, %.lr.ph.i.i.i.i.i19.i31.preheader, %middle.block195
  %.012.i.i.i.i.i20.i32.ph = phi i64 [ %i.cr, %vector.memcheck170 ], [ %i.cr, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.cz, %middle.block195 ]
  %.0811.i.i.i.i.i21.i33.ph = phi ptr [ %i.cw, %vector.memcheck170 ], [ %i.cw, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.db, %middle.block195 ]
  %.0910.i.i.i.i.i22.i34.ph = phi ptr [ %.016.lcssa.i26, %vector.memcheck170 ], [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dc, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i19.i31

.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader200, %.lr.ph.i.i.i.i.i19.i31
  %.012.i.i.i.i.i20.i32 = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i19.i31 ], [ %.012.i.i.i.i.i20.i32.ph, %.lr.ph.i.i.i.i.i19.i31.preheader200 ] ; 2 uses
  %.0811.i.i.i.i.i21.i33 = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0811.i.i.i.i.i21.i33.ph, %.lr.ph.i.i.i.i.i19.i31.preheader200 ] ; 3 uses
  %.0910.i.i.i.i.i22.i34 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0910.i.i.i.i.i22.i34.ph, %.lr.ph.i.i.i.i.i19.i31.preheader200 ] ; 3 uses
  %i.dg = load i32, ptr %.0910.i.i.i.i.i22.i34, align 4, !tbaa !62
  store i32 %i.dg, ptr %.0811.i.i.i.i.i21.i33, align 4, !tbaa !314
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !62
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !315
  %i.dk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 8
  %i.dm = add nsw i64 %.012.i.i.i.i.i20.i32, -1
  %i.dn = icmp samesign ugt i64 %.012.i.i.i.i.i20.i32, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i19.i31, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit49, !llvm.loop !946

_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit49: ; preds = %.lr.ph.i.i.i.i.i19.i31, %middle.block195, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond85 = or i1 %i.a, %i.b
  br i1 %or.cond85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
end_hunk_0
