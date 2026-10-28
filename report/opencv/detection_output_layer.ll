Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/detection_output_layer?download=true
inline.NumInlined: 2314
inline.NumDeleted: 910
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_:bb.a
  %i.am = load float, ptr %i.ak, align 4, !tbaa !89
  store float %i.am, ptr %i.al, align 4, !tbaa !204
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !51
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !205
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = load float, ptr %i.aq, align 4, !tbaa !89
  store float %i.as, ptr %i.ar, align 4, !tbaa !204
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !51
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.au, ptr %i.av, align 4, !tbaa !205
  %i.aw = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i, !llvm.loop !16

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store float %i.j, ptr %0, align 4, !tbaa !204
  store i32 %i.k, ptr %i.h, align 4, !tbaa !205
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = load i64, ptr %.sroa.010.023.i, align 4
  store i64 %i.ay, ptr %3, align 8
  %i.az = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %.pn22.i), !inline_history !20
  br i1 %i.az, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn22.i, %bb.e ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.010.023.i, %bb.e ] ; 3 uses
  %i.ba = load float, ptr %.sroa.0.09.i.i, align 4, !tbaa !89
  store float %i.ba, ptr %.sroa.04.08.i.i, align 4, !tbaa !204
  %i.bb = getelementptr inbounds i8, ptr %.sroa.04.08.i.i, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 4
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !205
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -8 ; 2 uses
  %i.be = call noundef zeroext i1 %2(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.0.0.i.i), !inline_history !20
  br i1 %i.be, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i, !llvm.loop !17

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.010.023.i, %bb.e ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.bf = load float, ptr %3, align 8, !tbaa !89
  store float %i.bf, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !204
  %i.bg = load i32, ptr %i.g, align 4, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !205
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %.sroa.010.0.i = getelementptr inbounds nuw i8, ptr %.sroa.010.023.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.010.0.i, %1
  br i1 %.not.i, label %common.ret27, label %bb.c, !llvm.loop !18

common.ret27:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bi = lshr i64 %i.d, 1                        ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi ; 4 uses
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %i.bj, ptr %2)
  tail call void @_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %i.bj, ptr %1, ptr %2)
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.a, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %i.bj, ptr %1, i64 noundef %i.bi, i64 noundef %i.bm, ptr %2)
  br label %common.ret27
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %0, i64 %i.f ; 5 uses
  %i.h = icmp sgt i64 %i.f, %3
  br i1 %i.h, label %bb.b, label %common.ret

common.ret30:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3, ptr %4)
  tail call void @_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4)
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = ptrtoint ptr %4 to i64
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3, i64 %i.l)
  br label %common.ret30

common.ret:                                       ; preds = %bb.a
  tail call void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_T1_(ptr %0, ptr %i.g, ptr %1, ptr noundef %2, ptr %4)
  br label %common.ret30
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #20

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 7 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %i.e, 14
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader200, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = add i64 %i.d, -4                         ; 2 uses
  %i.h = getelementptr i8, ptr %5, i64 %i.g
  %i.i = getelementptr i8, ptr %0, i64 %i.g
  %i.j = getelementptr i8, ptr %5, i64 4
  %i.k = getelementptr i8, ptr %5, i64 %i.d
  %i.l = getelementptr i8, ptr %0, i64 4
  %bound0 = icmp ult ptr %5, %i.i
  %bound1 = icmp ult ptr %0, %i.h
  %found.conflict = and i1 %bound0, %bound1
  %bound083 = icmp ult ptr %i.j, %1
  %bound184 = icmp ult ptr %i.l, %i.k
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx = or i1 %found.conflict, %found.conflict85
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader200, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775804      ; 3 uses
  %i.m = and i64 %i.e, 3
  %i.n = shl i64 %n.vec, 3                        ; 2 uses
  %i.o = getelementptr i8, ptr %5, i64 %i.n       ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.q = shl i64 %index, 3                        ; 3 uses
  %i.r = or disjoint i64 %i.q, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.q
  %next.gep86 = getelementptr i8, ptr %5, i64 %i.r
  %next.gep87 = getelementptr i8, ptr %0, i64 %i.q
  %next.gep88 = getelementptr i8, ptr %0, i64 %i.r
  %wide.vec180 = load <4 x i32>, ptr %next.gep87, align 4, !tbaa !45
  %wide.vec90181 = load <4 x i32>, ptr %next.gep88, align 4, !tbaa !45
  store <4 x i32> %wide.vec180, ptr %next.gep, align 4, !tbaa !45
  store <4 x i32> %wide.vec90181, ptr %next.gep86, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !382

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.preheader, label %.lr.ph.i.i.i.i.i.preheader200

.lr.ph.i.i.i.i.i.preheader200:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.m, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.o, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i.i.i.i.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader200, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader200 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader200 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader200 ] ; 3 uses
  %i.t = load float, ptr %.0910.i.i.i.i.i, align 4, !tbaa !89
  store float %i.t, ptr %.0811.i.i.i.i.i, align 4, !tbaa !204
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.z = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i.preheader, !llvm.loop !383

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.lcssa74 = phi ptr [ %i.o, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i ] ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %indvar = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvar.next, %bb.c ] ; 2 uses
  %.027.i = phi ptr [ %5, %.lr.ph.i.preheader ], [ %.1.i, %bb.c ] ; 12 uses
  %.sroa.017.026.i = phi ptr [ %1, %.lr.ph.i.preheader ], [ %.sroa.017.1.i, %bb.c ] ; 4 uses
  %.sroa.013.025.i = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ad, %bb.c ] ; 9 uses
  %.not20.i = icmp eq ptr %.sroa.017.026.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 4 dereferenceable(8) %.sroa.017.026.i, ptr noundef nonnull align 4 dereferenceable(8) %.027.i), !inline_history !384 ; 3 uses
  %.sink31.in.i = select i1 %i.ab, ptr %.sroa.017.026.i, ptr %.027.i ; 2 uses
  %.sroa.017.1.idx.i = select i1 %i.ab, i64 8, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.ab, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.027.i, i64 %.1.idx.i ; 2 uses
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %.sink31.in.i, i64 4
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !51
  %.sink31.i = load float, ptr %.sink31.in.i, align 4, !tbaa !89
  store float %.sink31.i, ptr %.sroa.013.025.i, align 4, !tbaa !204
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 4
  store i32 %.sink.i, ptr %i.ac, align 4, !tbaa !205
  %i.ad = getelementptr i8, ptr %.sroa.013.025.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %.lcssa74
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !385

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ae = ptrtoint ptr %.lcssa74 to i64
  %i.af = ptrtoint ptr %.027.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = ashr exact i64 %i.ag, 3                 ; 7 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.critedge.i
  %min.iters.check111 = icmp ult i64 %i.ah, 20
  br i1 %min.iters.check111, label %.lr.ph.i.i.i.i.i.i.preheader194, label %vector.memcheck96

vector.memcheck96:                                ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aj = shl i64 %indvar, 3                      ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.ak, i64 -4
  %scevgep97 = getelementptr i8, ptr %scevgep, i64 %i.ag
  %i.al = getelementptr i8, ptr %.027.i, i64 %i.ag
  %7 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep98 = getelementptr i8, ptr %0, i64 %i.aj
  %i.am = getelementptr i8, ptr %scevgep98, i64 4
  %scevgep99 = getelementptr i8, ptr %0, i64 %i.aj
  %scevgep100 = getelementptr i8, ptr %scevgep99, i64 %i.ag
  %scevgep101 = getelementptr i8, ptr %.027.i, i64 4
  %bound0103 = icmp ult ptr %.sroa.013.025.i, %7
  %bound1104 = icmp ult ptr %.027.i, %scevgep97
  %found.conflict105 = and i1 %bound0103, %bound1104
  %bound0106 = icmp ult ptr %i.am, %.lcssa74
  %bound1107 = icmp ult ptr %scevgep101, %scevgep100
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %found.conflict105, %found.conflict108
  br i1 %conflict.rdx109, label %.lr.ph.i.i.i.i.i.i.preheader194, label %vector.ph112

vector.ph112:                                     ; preds = %vector.memcheck96
  %n.vec113 = and i64 %i.ah, 9223372036854775804  ; 3 uses
  %i.an = and i64 %i.ah, 3
  %i.ao = shl i64 %n.vec113, 3                    ; 2 uses
  %i.ap = getelementptr i8, ptr %.sroa.013.025.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %.027.i, i64 %i.ao
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next128, %vector.body114 ] ; 2 uses
  %i.ar = shl i64 %index115, 3                    ; 3 uses
  %i.as = or disjoint i64 %i.ar, 16               ; 2 uses
  %next.gep116 = getelementptr i8, ptr %.sroa.013.025.i, i64 %i.ar
  %next.gep117 = getelementptr i8, ptr %.sroa.013.025.i, i64 %i.as
  %next.gep118 = getelementptr i8, ptr %.027.i, i64 %i.ar
  %next.gep119 = getelementptr i8, ptr %.027.i, i64 %i.as
  %wide.vec120182 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !45
  %wide.vec123183 = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !45
  store <4 x i32> %wide.vec120182, ptr %next.gep116, align 4, !tbaa !45
  store <4 x i32> %wide.vec123183, ptr %next.gep117, align 4, !tbaa !45
  %index.next128 = add nuw i64 %index115, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next128, %n.vec113
  br i1 %i.at, label %middle.block129, label %vector.body114, !llvm.loop !386

middle.block129:                                  ; preds = %vector.body114
  %cmp.n130 = icmp eq i64 %i.ah, %n.vec113
  br i1 %cmp.n130, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i.preheader194

.lr.ph.i.i.i.i.i.i.preheader194:                  ; preds = %vector.memcheck96, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block129
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.ah, %vector.memcheck96 ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block129 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %.sroa.013.025.i, %vector.memcheck96 ], [ %.sroa.013.025.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ap, %middle.block129 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck96 ], [ %.027.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aq, %middle.block129 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader194, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader194 ] ; 3 uses
  %i.au = load float, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !89
  store float %i.au, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !204
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !205
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.ba = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, !llvm.loop !387

bb.d:                                             ; preds = %bb.a
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = ptrtoint ptr %1 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 7 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i23.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27

.lr.ph.i.i.i.i.i23.preheader:                     ; preds = %bb.d
  %min.iters.check149 = icmp ult i64 %i.bf, 14
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.i.i23.preheader192, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph.i.i.i.i.i23.preheader
  %i.bh = add i64 %i.be, -4                       ; 2 uses
  %i.bi = getelementptr i8, ptr %5, i64 %i.bh
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  %i.bk = getelementptr i8, ptr %5, i64 4
  %i.bl = getelementptr i8, ptr %5, i64 %i.be
  %i.bm = getelementptr i8, ptr %1, i64 4
  %bound0151 = icmp ult ptr %5, %i.bj
  %bound1152 = icmp ult ptr %1, %i.bi
  %found.conflict153 = and i1 %bound0151, %bound1152
  %bound0154 = icmp ult ptr %i.bk, %2
  %bound1155 = icmp ult ptr %i.bm, %i.bl
  %found.conflict156 = and i1 %bound0154, %bound1155
  %conflict.rdx157 = or i1 %found.conflict153, %found.conflict156
  br i1 %conflict.rdx157, label %.lr.ph.i.i.i.i.i23.preheader192, label %vector.ph158

vector.ph158:                                     ; preds = %vector.memcheck150
  %n.vec159 = and i64 %i.bf, 9223372036854775804  ; 3 uses
  %i.bn = and i64 %i.bf, 3
  %i.bo = shl i64 %n.vec159, 3                    ; 2 uses
  %i.bp = getelementptr i8, ptr %5, i64 %i.bo     ; 2 uses
  %i.bq = getelementptr i8, ptr %1, i64 %i.bo
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph158
  %index161 = phi i64 [ 0, %vector.ph158 ], [ %index.next174, %vector.body160 ] ; 2 uses
  %i.br = shl i64 %index161, 3                    ; 3 uses
  %i.bs = or disjoint i64 %i.br, 16               ; 2 uses
  %next.gep162 = getelementptr i8, ptr %5, i64 %i.br
  %next.gep163 = getelementptr i8, ptr %5, i64 %i.bs
  %next.gep164 = getelementptr i8, ptr %1, i64 %i.br
  %next.gep165 = getelementptr i8, ptr %1, i64 %i.bs
  %wide.vec166184 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !45
  %wide.vec169185 = load <4 x i32>, ptr %next.gep165, align 4, !tbaa !45
  store <4 x i32> %wide.vec166184, ptr %next.gep162, align 4, !tbaa !45
  store <4 x i32> %wide.vec169185, ptr %next.gep163, align 4, !tbaa !45
  %index.next174 = add nuw i64 %index161, 4       ; 2 uses
  %i.bt = icmp eq i64 %index.next174, %n.vec159
  br i1 %i.bt, label %middle.block175, label %vector.body160, !llvm.loop !388

middle.block175:                                  ; preds = %vector.body160
  %cmp.n176 = icmp eq i64 %i.bf, %n.vec159
  br i1 %cmp.n176, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27, label %.lr.ph.i.i.i.i.i23.preheader192

.lr.ph.i.i.i.i.i23.preheader192:                  ; preds = %vector.memcheck150, %.lr.ph.i.i.i.i.i23.preheader, %middle.block175
  %.012.i.i.i.i.i24.ph = phi i64 [ %i.bf, %vector.memcheck150 ], [ %i.bf, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bn, %middle.block175 ]
  %.0811.i.i.i.i.i25.ph = phi ptr [ %5, %vector.memcheck150 ], [ %5, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bp, %middle.block175 ]
  %.0910.i.i.i.i.i26.ph = phi ptr [ %1, %vector.memcheck150 ], [ %1, %.lr.ph.i.i.i.i.i23.preheader ], [ %i.bq, %middle.block175 ]
  br label %.lr.ph.i.i.i.i.i23

.lr.ph.i.i.i.i.i23:                               ; preds = %.lr.ph.i.i.i.i.i23.preheader192, %.lr.ph.i.i.i.i.i23
  %.012.i.i.i.i.i24 = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i23 ], [ %.012.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i23.preheader192 ] ; 2 uses
  %.0811.i.i.i.i.i25 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i23 ], [ %.0811.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i23.preheader192 ] ; 3 uses
  %.0910.i.i.i.i.i26 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i23 ], [ %.0910.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i23.preheader192 ] ; 3 uses
  %i.bu = load float, ptr %.0910.i.i.i.i.i26, align 4, !tbaa !89
  store float %i.bu, ptr %.0811.i.i.i.i.i25, align 4, !tbaa !204
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 4
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !205
  %i.by = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 8 ; 2 uses
  %i.ca = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.cb = icmp samesign ugt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.cb, label %.lr.ph.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27, !llvm.loop !389

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27: ; preds = %.lr.ph.i.i.i.i.i23, %middle.block175, %bb.d
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.d ], [ %i.bp, %middle.block175 ], [ %i.bz, %.lr.ph.i.i.i.i.i23 ] ; 5 uses
  %i.cc = icmp eq ptr %0, %1
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27
  %i.cd = ptrtoint ptr %.08.lcssa.i.i.i.i.i22 to i64
  %i.ce = ptrtoint ptr %5 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3                 ; 5 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.e
  %xtraiter202 = and i64 %i.cg, 3                 ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol

.lr.ph.i.i.i.i.i.i29.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i29.preheader, %.lr.ph.i.i.i.i.i.i29.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i29.prol ], [ %i.cg, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i29.prol ], [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i29.prol ], [ %.08.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ] ; 2 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %.lr.ph.i.i.i.i.i.i29.prol ], [ 0, %.lr.ph.i.i.i.i.i.i29.preheader ]
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ck = load float, ptr %i.ci, align 4, !tbaa !89
  store float %i.ck, ptr %i.cj, align 4, !tbaa !204
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !51
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !205
  %i.co = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %.lr.ph.i.i.i.i.i.i29.prol.loopexit, label %.lr.ph.i.i.i.i.i.i29.prol, !llvm.loop !390

.lr.ph.i.i.i.i.i.i29.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i29.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.cj, %.lr.ph.i.i.i.i.i.i29.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.ci, %.lr.ph.i.i.i.i.i.i29.prol ]
  %i.cp = icmp ult i64 %i.cg, 4
  br i1 %i.cp, label %_ZSt21__move_merge_adaptiveIPSt4pairIfiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29.prol.loopexit, %.lr.ph.i.i.i.i.i.i29
  %.010.i.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i29 ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i.i29 ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i29 ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i29.prol.loopexit ] ; 8 uses
  %i.cq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.cr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.cs = load float, ptr %i.cq, align 4, !tbaa !89
  store float %i.cs, ptr %i.cr, align 4, !tbaa !204
  %i.ct = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !51
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !205
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.cx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.cy = load float, ptr %i.cw, align 4, !tbaa !89
  store float %i.cy, ptr %i.cx, align 4, !tbaa !204
  %i.cz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !51
  %i.db = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.da, ptr %i.db, align 4, !tbaa !205
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.de = load float, ptr %i.dc, align 4, !tbaa !89
  store float %i.de, ptr %i.dd, align 4, !tbaa !204
end_hunk_0
