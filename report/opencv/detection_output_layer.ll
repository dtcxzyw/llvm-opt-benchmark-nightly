Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detection_output_layer?download=true
inline.NumInlined: 2314
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_:bb.a
vector.memcheck199:                               ; preds = %.lr.ph.i.i.i.i.i10.i23.preheader
  %i.cj = add i64 %i.cg, -4                       ; 2 uses
  %scevgep200 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cj
  %scevgep201 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cj
  %scevgep202 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 4
  %scevgep203 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cg
  %scevgep204 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 4
  %bound0206 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i21, %scevgep201
  %bound1207 = icmp ult ptr %.sroa.016.0.lcssa.i17, %scevgep200
  %found.conflict208 = and i1 %bound0206, %bound1207
  %bound0209 = icmp ult ptr %scevgep202, %1
  %bound1210 = icmp ult ptr %scevgep204, %scevgep203
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %found.conflict208, %found.conflict211
  br i1 %conflict.rdx212, label %.lr.ph.i.i.i.i.i10.i23.preheader245, label %vector.ph215

vector.ph215:                                     ; preds = %vector.memcheck199
  %n.vec216 = and i64 %i.ch, 9223372036854775804  ; 3 uses
  %i.ck = and i64 %i.ch, 3
  %i.cl = shl i64 %n.vec216, 3                    ; 2 uses
  %i.cm = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cl
  %i.cn = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cl
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next231, %vector.body217 ] ; 2 uses
  %i.co = shl i64 %index218, 3                    ; 3 uses
  %i.cp = or disjoint i64 %i.co, 16               ; 2 uses
  %next.gep219 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.co
  %next.gep220 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i21, i64 %i.cp
  %next.gep221 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.co
  %next.gep222 = getelementptr i8, ptr %.sroa.016.0.lcssa.i17, i64 %i.cp
  %wide.vec223243 = load <4 x i32>, ptr %next.gep221, align 4, !tbaa !45
  %wide.vec226244 = load <4 x i32>, ptr %next.gep222, align 4, !tbaa !45
  store <4 x i32> %wide.vec223243, ptr %next.gep219, align 4, !tbaa !45
  store <4 x i32> %wide.vec226244, ptr %next.gep220, align 4, !tbaa !45
  %index.next231 = add nuw i64 %index218, 4       ; 2 uses
  %i.cq = icmp eq i64 %index.next231, %n.vec216
  br i1 %i.cq, label %middle.block232, label %vector.body217, !llvm.loop !406

middle.block232:                                  ; preds = %vector.body217
  %cmp.n233 = icmp eq i64 %i.ch, %n.vec216
  br i1 %cmp.n233, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit44, label %.lr.ph.i.i.i.i.i10.i23.preheader245

.lr.ph.i.i.i.i.i10.i23.preheader245:              ; preds = %vector.memcheck199, %.lr.ph.i.i.i.i.i10.i23.preheader, %middle.block232
  %.012.i.i.i.i.i11.i24.ph = phi i64 [ %i.ch, %vector.memcheck199 ], [ %i.ch, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.ck, %middle.block232 ]
  %.0811.i.i.i.i.i12.i25.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i21, %vector.memcheck199 ], [ %.08.lcssa.i.i.i.i.i.i21, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.cm, %middle.block232 ]
  %.0910.i.i.i.i.i13.i26.ph = phi ptr [ %.sroa.016.0.lcssa.i17, %vector.memcheck199 ], [ %.sroa.016.0.lcssa.i17, %.lr.ph.i.i.i.i.i10.i23.preheader ], [ %i.cn, %middle.block232 ]
  br label %.lr.ph.i.i.i.i.i10.i23

.lr.ph.i.i.i.i.i10.i23:                           ; preds = %.lr.ph.i.i.i.i.i10.i23.preheader245, %.lr.ph.i.i.i.i.i10.i23
  %.012.i.i.i.i.i11.i24 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i10.i23 ], [ %.012.i.i.i.i.i11.i24.ph, %.lr.ph.i.i.i.i.i10.i23.preheader245 ] ; 2 uses
  %.0811.i.i.i.i.i12.i25 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i10.i23 ], [ %.0811.i.i.i.i.i12.i25.ph, %.lr.ph.i.i.i.i.i10.i23.preheader245 ] ; 3 uses
  %.0910.i.i.i.i.i13.i26 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i10.i23 ], [ %.0910.i.i.i.i.i13.i26.ph, %.lr.ph.i.i.i.i.i10.i23.preheader245 ] ; 3 uses
  %i.cr = load float, ptr %.0910.i.i.i.i.i13.i26, align 4, !tbaa !89
  store float %i.cr, ptr %.0811.i.i.i.i.i12.i25, align 4, !tbaa !204
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i26, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !51
  %i.cu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i25, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !205
  %i.cv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i13.i26, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i12.i25, i64 8
  %i.cx = add nsw i64 %.012.i.i.i.i.i11.i24, -1
  %i.cy = icmp samesign ugt i64 %.012.i.i.i.i.i11.i24, 1
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i10.i23, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit44, !llvm.loop !407

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit44: ; preds = %.lr.ph.i.i.i.i.i10.i23, %middle.block232, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt17__merge_sort_loopIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not66 = icmp slt i64 %i.e, %i.a
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %3, 3                       ; 2 uses
  %.idx57 = shl nsw i64 %3, 4                     ; 2 uses
  %.not58 = icmp eq i64 %.idx, %.idx57
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.021.068 = phi ptr [ %2, %.lr.ph ], [ %i.bi, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.067 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.067, i64 %.idx ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.067, i64 %.idx57 ; 5 uses
  br i1 %.not58, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.030.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %.067, %bb.b ] ; 3 uses
  %.01629.i = phi ptr [ %.117.i, %.lr.ph.i ], [ %i.f, %bb.b ] ; 3 uses
  %.sroa.024.028.i = phi ptr [ %i.j, %.lr.ph.i ], [ %.sroa.021.068, %bb.b ] ; 3 uses
  %i.h = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %.01629.i, ptr noundef nonnull align 4 dereferenceable(8) %.030.i), !inline_history !408 ; 3 uses
  %.sink35.in.i = select i1 %i.h, ptr %.01629.i, ptr %.030.i ; 2 uses
  %.117.idx.i = select i1 %i.h, i64 8, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01629.i, i64 %.117.idx.i ; 3 uses
  %.1.idx.i = select i1 %i.h, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 %.1.idx.i ; 3 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.sink35.in.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !51
  %.sink35.i = load float, ptr %.sink35.in.i, align 4, !tbaa !89
  store float %.sink35.i, ptr %.sroa.024.028.i, align 4, !tbaa !204
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i, i64 4
  store i32 %.sink.i, ptr %i.i, align 4, !tbaa !205
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i, i64 8 ; 2 uses
  %i.k = icmp ne ptr %.1.i, %i.f
  %i.l = icmp ne ptr %.117.i, %i.g
  %i.m = select i1 %i.k, i1 %i.l, i1 false
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !409

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.sroa.024.0.lcssa.i = phi ptr [ %.sroa.021.068, %bb.b ], [ %i.j, %.lr.ph.i ] ; 15 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %.lr.ph.i ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %.067, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 9 uses
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = ptrtoint ptr %.0.lcssa.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 4 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 7 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %._crit_edge.i
  %min.iters.check139 = icmp ult i64 %i.q, 6
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.preheader250, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep123.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 -4
  %scevgep124.a = getelementptr i8, ptr %scevgep123.a, i64 %i.p
  %scevgep125.a = getelementptr i8, ptr %.0.lcssa.i, i64 -4
  %scevgep126.a = getelementptr i8, ptr %scevgep125.a, i64 %i.p
  %scevgep127.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 4
  %scevgep128.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.p
  %scevgep129 = getelementptr i8, ptr %.0.lcssa.i, i64 4
  %bound0131 = icmp ult ptr %.sroa.024.0.lcssa.i, %scevgep126.a
  %bound1132 = icmp ult ptr %.0.lcssa.i, %scevgep124.a
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0134 = icmp ult ptr %scevgep127.a, %i.f
  %bound1135 = icmp ult ptr %scevgep129, %scevgep128.a
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %found.conflict133, %found.conflict136
  br i1 %conflict.rdx137, label %.lr.ph.i.i.i.i.i.i.preheader250, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck122
  %n.vec141 = and i64 %i.q, 9223372036854775804   ; 3 uses
  %i.s = and i64 %i.q, 3
  %i.t = shl i64 %n.vec141, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.t ; 2 uses
  %i.v = getelementptr i8, ptr %.0.lcssa.i, i64 %i.t
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next156, %vector.body142 ] ; 2 uses
  %i.w = shl i64 %index143, 3                     ; 3 uses
  %i.x = or disjoint i64 %i.w, 16                 ; 2 uses
  %next.gep144.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.w
  %next.gep145.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.x
  %next.gep146.a = getelementptr i8, ptr %.0.lcssa.i, i64 %i.w
  %next.gep147 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.x
  %wide.vec148238 = load <4 x i32>, ptr %next.gep146.a, align 4, !tbaa !45
  %wide.vec151239 = load <4 x i32>, ptr %next.gep147, align 4, !tbaa !45
  store <4 x i32> %wide.vec148238, ptr %next.gep144.a, align 4, !tbaa !45
  store <4 x i32> %wide.vec151239, ptr %next.gep145.a, align 4, !tbaa !45
  %index.next156 = add nuw i64 %index143, 4       ; 2 uses
  %i.y = icmp eq i64 %index.next156, %n.vec141
  br i1 %i.y, label %middle.block157, label %vector.body142, !llvm.loop !410

middle.block157:                                  ; preds = %vector.body142
  %cmp.n158 = icmp eq i64 %i.q, %n.vec141
  br i1 %cmp.n158, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader250

.lr.ph.i.i.i.i.i.i.preheader250:                  ; preds = %vector.memcheck122, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block157
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.q, %vector.memcheck122 ], [ %i.q, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.s, %middle.block157 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %.sroa.024.0.lcssa.i, %vector.memcheck122 ], [ %.sroa.024.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.u, %middle.block157 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck122 ], [ %.0.lcssa.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.v, %middle.block157 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader250, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader250 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader250 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader250 ] ; 3 uses
  %i.z = load float, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !89
  store float %i.z, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !205
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !411

_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block157, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.024.0.lcssa.i, %._crit_edge.i ], [ %i.u, %middle.block157 ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.024.0.lcssa.i to i64 ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.aj ; 7 uses
  %i.al = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.am = ptrtoint ptr %.016.lcssa.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 3 uses
  %i.ao = ashr exact i64 %i.an, 3                 ; 7 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i19.i.preheader, label %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.i.i.i.i.i19.i.preheader:                   ; preds = %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %min.iters.check = icmp ult i64 %i.ao, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i19.i.preheader249, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i19.i.preheader
  %scevgep = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 -4
  %i.aq = add i64 %i.an, %i.ah
  %i.ar = sub i64 %i.aq, %i.ai                    ; 2 uses
  %scevgep101.a = getelementptr i8, ptr %scevgep, i64 %i.ar
  %scevgep102.a = getelementptr i8, ptr %.016.lcssa.i, i64 -4
  %scevgep103.a = getelementptr i8, ptr %scevgep102.a, i64 %i.an
  %scevgep104.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 4
  %scevgep105.a = getelementptr i8, ptr %scevgep104.a, i64 %i.aj
  %scevgep106.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i, i64 %i.ar
  %scevgep107 = getelementptr i8, ptr %.016.lcssa.i, i64 4
  %bound0 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i, %scevgep103.a
  %bound1 = icmp ult ptr %.016.lcssa.i, %scevgep101.a
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %scevgep105.a, %i.g
  %bound1110 = icmp ult ptr %scevgep107, %scevgep106.a
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx = or i1 %found.conflict, %found.conflict111
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i19.i.preheader249, label %vector.ph

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
  %next.gep112.a = getelementptr i8, ptr %i.ak, i64 %i.ax
  %next.gep113.a = getelementptr i8, ptr %.016.lcssa.i, i64 %i.aw
  %next.gep114 = getelementptr i8, ptr %.016.lcssa.i, i64 %i.ax
  %wide.vec240 = load <4 x i32>, ptr %next.gep113.a, align 4, !tbaa !45
  %wide.vec116241 = load <4 x i32>, ptr %next.gep114, align 4, !tbaa !45
  store <4 x i32> %wide.vec240, ptr %next.gep, align 4, !tbaa !45
  store <4 x i32> %wide.vec116241, ptr %next.gep112.a, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !412

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, label %.lr.ph.i.i.i.i.i19.i.preheader249

.lr.ph.i.i.i.i.i19.i.preheader249:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i19.i.preheader, %middle.block
  %.012.i.i.i.i.i20.i.ph = phi i64 [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.as, %middle.block ]
  %.0811.i.i.i.i.i21.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.au, %middle.block ]
  %.0910.i.i.i.i.i22.i.ph = phi ptr [ %.016.lcssa.i, %vector.memcheck ], [ %.016.lcssa.i, %.lr.ph.i.i.i.i.i19.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i.i19.i

.lr.ph.i.i.i.i.i19.i:                             ; preds = %.lr.ph.i.i.i.i.i19.i.preheader249, %.lr.ph.i.i.i.i.i19.i
  %.012.i.i.i.i.i20.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i19.i ], [ %.012.i.i.i.i.i20.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader249 ] ; 2 uses
  %.0811.i.i.i.i.i21.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i19.i ], [ %.0811.i.i.i.i.i21.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader249 ] ; 3 uses
  %.0910.i.i.i.i.i22.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i19.i ], [ %.0910.i.i.i.i.i22.i.ph, %.lr.ph.i.i.i.i.i19.i.preheader249 ] ; 3 uses
  %i.az = load float, ptr %.0910.i.i.i.i.i22.i, align 4, !tbaa !89
  store float %i.az, ptr %.0811.i.i.i.i.i21.i, align 4, !tbaa !204
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !205
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i, i64 8 ; 2 uses
  %i.bf = add nsw i64 %.012.i.i.i.i.i20.i, -1
  %i.bg = icmp samesign ugt i64 %.012.i.i.i.i.i20.i, 1
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !413

_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i19.i, %middle.block, %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ak, %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.au, %middle.block ], [ %i.be, %.lr.ph.i.i.i.i.i19.i ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.bh = sub i64 %5, %i.ah
  %i.bi = getelementptr inbounds i8, ptr %i.ak, i64 %i.bh ; 2 uses
  %i.bj = sub i64 %i.b, %i.al
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %.not = icmp slt i64 %i.bk, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !414

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 3 uses
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.bi, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.lcssa64 = phi i64 [ %i.e, %bb.a ], [ %i.bk, %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa64) ; 2 uses
  %.idx59 = shl nsw i64 %.sroa.speculated, 3
  %i.bl = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx59 ; 6 uses
  %i.bm = icmp ne i64 %.sroa.speculated, 0
  %i.bn = icmp ne ptr %i.bl, %1
  %i.bo = and i1 %i.bm, %i.bn
  br i1 %i.bo, label %.lr.ph.i40, label %._crit_edge.i24

.lr.ph.i40:                                       ; preds = %._crit_edge, %.lr.ph.i40
  %.030.i41 = phi ptr [ %.1.i48, %.lr.ph.i40 ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.01629.i42 = phi ptr [ %.117.i46, %.lr.ph.i40 ], [ %i.bl, %._crit_edge ] ; 3 uses
  %.sroa.024.028.i43 = phi ptr [ %i.br, %.lr.ph.i40 ], [ %.sroa.021.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bp = tail call noundef zeroext i1 %4(ptr noundef nonnull align 4 dereferenceable(8) %.01629.i42, ptr noundef nonnull align 4 dereferenceable(8) %.030.i41), !inline_history !408 ; 3 uses
  %.sink35.in.i44 = select i1 %i.bp, ptr %.01629.i42, ptr %.030.i41 ; 2 uses
  %.117.idx.i45 = select i1 %i.bp, i64 8, i64 0
  %.117.i46 = getelementptr inbounds nuw i8, ptr %.01629.i42, i64 %.117.idx.i45 ; 3 uses
  %.1.idx.i47 = select i1 %i.bp, i64 0, i64 8
  %.1.i48 = getelementptr inbounds nuw i8, ptr %.030.i41, i64 %.1.idx.i47 ; 3 uses
  %.sink.in.i49 = getelementptr inbounds nuw i8, ptr %.sink35.in.i44, i64 4
  %.sink.i50 = load i32, ptr %.sink.in.i49, align 4, !tbaa !51
  %.sink35.i51 = load float, ptr %.sink35.in.i44, align 4, !tbaa !89
  store float %.sink35.i51, ptr %.sroa.024.028.i43, align 4, !tbaa !204
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i43, i64 4
  store i32 %.sink.i50, ptr %i.bq, align 4, !tbaa !205
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.024.028.i43, i64 8 ; 2 uses
  %i.bs = icmp ne ptr %.1.i48, %i.bl
  %i.bt = icmp ne ptr %.117.i46, %1
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph.i40, label %._crit_edge.i24, !llvm.loop !409

._crit_edge.i24:                                  ; preds = %.lr.ph.i40, %._crit_edge
  %.sroa.024.0.lcssa.i25 = phi ptr [ %.sroa.021.0.lcssa, %._crit_edge ], [ %i.br, %.lr.ph.i40 ] ; 15 uses
  %.016.lcssa.i26 = phi ptr [ %i.bl, %._crit_edge ], [ %.117.i46, %.lr.ph.i40 ] ; 9 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i48, %.lr.ph.i40 ] ; 9 uses
  %i.bv = ptrtoint ptr %i.bl to i64
  %i.bw = ptrtoint ptr %.0.lcssa.i27 to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = ashr exact i64 %i.bx, 3                 ; 7 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i36.preheader, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28

.lr.ph.i.i.i.i.i.i36.preheader:                   ; preds = %._crit_edge.i24
  %min.iters.check177 = icmp ult i64 %i.by, 14
  br i1 %min.iters.check177, label %.lr.ph.i.i.i.i.i.i36.preheader247, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i.i.i.i.i.i36.preheader
  %i.ca = add i64 %i.bx, -4                       ; 2 uses
  %scevgep163.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.ca
  %scevgep164.a = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.ca
  %scevgep165.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 4
  %scevgep166.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.bx
  %scevgep167 = getelementptr i8, ptr %.0.lcssa.i27, i64 4
  %bound0169 = icmp ult ptr %.sroa.024.0.lcssa.i25, %scevgep164.a
  %bound1170 = icmp ult ptr %.0.lcssa.i27, %scevgep163.a
  %found.conflict171 = and i1 %bound0169, %bound1170
  %bound0172 = icmp ult ptr %scevgep165.a, %i.bl
  %bound1173 = icmp ult ptr %scevgep167, %scevgep166.a
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %found.conflict171, %found.conflict174
  br i1 %conflict.rdx175, label %.lr.ph.i.i.i.i.i.i36.preheader247, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck162
  %n.vec179 = and i64 %i.by, 9223372036854775804  ; 3 uses
  %i.cb = and i64 %i.by, 3
  %i.cc = shl i64 %n.vec179, 3                    ; 2 uses
  %i.cd = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cc ; 2 uses
  %i.ce = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cc
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next194, %vector.body180 ] ; 2 uses
  %i.cf = shl i64 %index181, 3                    ; 3 uses
  %i.cg = or disjoint i64 %i.cf, 16               ; 2 uses
  %next.gep182.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cf
  %next.gep183.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cg
  %next.gep184.a = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cf
  %next.gep185 = getelementptr i8, ptr %.0.lcssa.i27, i64 %i.cg
  %wide.vec186242 = load <4 x i32>, ptr %next.gep184.a, align 4, !tbaa !45
  %wide.vec189243 = load <4 x i32>, ptr %next.gep185, align 4, !tbaa !45
  store <4 x i32> %wide.vec186242, ptr %next.gep182.a, align 4, !tbaa !45
  store <4 x i32> %wide.vec189243, ptr %next.gep183.a, align 4, !tbaa !45
  %index.next194 = add nuw i64 %index181, 4       ; 2 uses
  %i.ch = icmp eq i64 %index.next194, %n.vec179
  br i1 %i.ch, label %middle.block195, label %vector.body180, !llvm.loop !415

middle.block195:                                  ; preds = %vector.body180
  %cmp.n196 = icmp eq i64 %i.by, %n.vec179
  br i1 %cmp.n196, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28, label %.lr.ph.i.i.i.i.i.i36.preheader247

.lr.ph.i.i.i.i.i.i36.preheader247:                ; preds = %vector.memcheck162, %.lr.ph.i.i.i.i.i.i36.preheader, %middle.block195
  %.012.i.i.i.i.i.i37.ph = phi i64 [ %i.by, %vector.memcheck162 ], [ %i.by, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.cb, %middle.block195 ]
  %.0811.i.i.i.i.i.i38.ph = phi ptr [ %.sroa.024.0.lcssa.i25, %vector.memcheck162 ], [ %.sroa.024.0.lcssa.i25, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.cd, %middle.block195 ]
  %.0910.i.i.i.i.i.i39.ph = phi ptr [ %.0.lcssa.i27, %vector.memcheck162 ], [ %.0.lcssa.i27, %.lr.ph.i.i.i.i.i.i36.preheader ], [ %i.ce, %middle.block195 ]
  br label %.lr.ph.i.i.i.i.i.i36

.lr.ph.i.i.i.i.i.i36:                             ; preds = %.lr.ph.i.i.i.i.i.i36.preheader247, %.lr.ph.i.i.i.i.i.i36
  %.012.i.i.i.i.i.i37 = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i36 ], [ %.012.i.i.i.i.i.i37.ph, %.lr.ph.i.i.i.i.i.i36.preheader247 ] ; 2 uses
  %.0811.i.i.i.i.i.i38 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i36 ], [ %.0811.i.i.i.i.i.i38.ph, %.lr.ph.i.i.i.i.i.i36.preheader247 ] ; 3 uses
  %.0910.i.i.i.i.i.i39 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i36 ], [ %.0910.i.i.i.i.i.i39.ph, %.lr.ph.i.i.i.i.i.i36.preheader247 ] ; 3 uses
  %i.ci = load float, ptr %.0910.i.i.i.i.i.i39, align 4, !tbaa !89
  store float %i.ci, ptr %.0811.i.i.i.i.i.i38, align 4, !tbaa !204
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !51
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 4
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !205
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i39, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i38, i64 8 ; 2 uses
  %i.co = add nsw i64 %.012.i.i.i.i.i.i37, -1
  %i.cp = icmp samesign ugt i64 %.012.i.i.i.i.i.i37, 1
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i36, label %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28, !llvm.loop !416

_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28: ; preds = %.lr.ph.i.i.i.i.i.i36, %middle.block195, %._crit_edge.i24
  %.08.lcssa.i.i.i.i.i.i29 = phi ptr [ %.sroa.024.0.lcssa.i25, %._crit_edge.i24 ], [ %i.cd, %middle.block195 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i36 ] ; 2 uses
  %i.cq = ptrtoint ptr %.016.lcssa.i26 to i64
  %i.cr = sub i64 %i.b, %i.cq                     ; 4 uses
  %i.cs = ashr exact i64 %i.cr, 3                 ; 7 uses
  %i.ct = icmp sgt i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i19.i31.preheader, label %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit52

.lr.ph.i.i.i.i.i19.i31.preheader:                 ; preds = %_ZSt4moveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28
  %i.cu = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i29 to i64 ; 4 uses
  %i.cv = ptrtoint ptr %.sroa.024.0.lcssa.i25 to i64 ; 4 uses
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.cw ; 5 uses
  %min.iters.check215 = icmp ult i64 %i.cs, 26
  br i1 %min.iters.check215, label %.lr.ph.i.i.i.i.i19.i31.preheader246, label %vector.memcheck200

vector.memcheck200:                               ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader
  %i.cy = add i64 %i.cr, %i.cu
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %i.cv
  %scevgep201.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.da
  %i.db = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.cr
  %scevgep202.a = getelementptr i8, ptr %i.db, i64 -4
  %i.dc = add i64 %i.cu, 4
  %i.dd = sub i64 %i.dc, %i.cv
  %scevgep203.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.dd
  %i.de = add i64 %i.cr, %i.cu
  %i.df = sub i64 %i.de, %i.cv
  %scevgep204.a = getelementptr i8, ptr %.sroa.024.0.lcssa.i25, i64 %i.df
  %scevgep205 = getelementptr i8, ptr %.016.lcssa.i26, i64 4
  %bound0207 = icmp ult ptr %.08.lcssa.i.i.i.i.i.i29, %scevgep202.a
  %bound1208 = icmp ult ptr %.016.lcssa.i26, %scevgep201.a
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0210 = icmp ult ptr %scevgep203.a, %1
  %bound1211 = icmp ult ptr %scevgep205, %scevgep204.a
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %found.conflict209, %found.conflict212
  br i1 %conflict.rdx213, label %.lr.ph.i.i.i.i.i19.i31.preheader246, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck200
  %n.vec217 = and i64 %i.cs, 9223372036854775804  ; 3 uses
  %i.dg = and i64 %i.cs, 3
  %i.dh = shl i64 %n.vec217, 3                    ; 2 uses
  %i.di = getelementptr i8, ptr %i.cx, i64 %i.dh
  %i.dj = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dh
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next232, %vector.body218 ] ; 2 uses
  %i.dk = shl i64 %index219, 3                    ; 3 uses
  %i.dl = or disjoint i64 %i.dk, 16               ; 2 uses
  %next.gep220.a = getelementptr i8, ptr %i.cx, i64 %i.dk
  %next.gep221.a = getelementptr i8, ptr %i.cx, i64 %i.dl
  %next.gep222.a = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dk
  %next.gep223 = getelementptr i8, ptr %.016.lcssa.i26, i64 %i.dl
  %wide.vec224244 = load <4 x i32>, ptr %next.gep222.a, align 4, !tbaa !45
  %wide.vec227245 = load <4 x i32>, ptr %next.gep223, align 4, !tbaa !45
  store <4 x i32> %wide.vec224244, ptr %next.gep220.a, align 4, !tbaa !45
  store <4 x i32> %wide.vec227245, ptr %next.gep221.a, align 4, !tbaa !45
  %index.next232 = add nuw i64 %index219, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next232, %n.vec217
  br i1 %i.dm, label %middle.block233, label %vector.body218, !llvm.loop !417

middle.block233:                                  ; preds = %vector.body218
  %cmp.n234 = icmp eq i64 %i.cs, %n.vec217
  br i1 %cmp.n234, label %_ZSt12__move_mergeIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit52, label %.lr.ph.i.i.i.i.i19.i31.preheader246

.lr.ph.i.i.i.i.i19.i31.preheader246:              ; preds = %vector.memcheck200, %.lr.ph.i.i.i.i.i19.i31.preheader, %middle.block233
  %.012.i.i.i.i.i20.i32.ph = phi i64 [ %i.cs, %vector.memcheck200 ], [ %i.cs, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dg, %middle.block233 ]
  %.0811.i.i.i.i.i21.i33.ph = phi ptr [ %i.cx, %vector.memcheck200 ], [ %i.cx, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.di, %middle.block233 ]
  %.0910.i.i.i.i.i22.i34.ph = phi ptr [ %.016.lcssa.i26, %vector.memcheck200 ], [ %.016.lcssa.i26, %.lr.ph.i.i.i.i.i19.i31.preheader ], [ %i.dj, %middle.block233 ]
  br label %.lr.ph.i.i.i.i.i19.i31

.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader246, %.lr.ph.i.i.i.i.i19.i31
  %.012.i.i.i.i.i20.i32 = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i19.i31 ], [ %.012.i.i.i.i.i20.i32.ph, %.lr.ph.i.i.i.i.i19.i31.preheader246 ] ; 2 uses
  %.0811.i.i.i.i.i21.i33 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0811.i.i.i.i.i21.i33.ph, %.lr.ph.i.i.i.i.i19.i31.preheader246 ] ; 3 uses
  %.0910.i.i.i.i.i22.i34 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0910.i.i.i.i.i22.i34.ph, %.lr.ph.i.i.i.i.i19.i31.preheader246 ] ; 3 uses
  %i.dn = load float, ptr %.0910.i.i.i.i.i22.i34, align 4, !tbaa !89
  store float %i.dn, ptr %.0811.i.i.i.i.i21.i33, align 4, !tbaa !204
end_hunk_0
