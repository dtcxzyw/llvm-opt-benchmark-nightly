Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_map_adaptor_test?download=true
inline.NumInlined: 32430
inline.NumDeleted: 3898
loop-unroll.NumCompletelyUnrolled: 264
loop-unroll.NumRuntimeUnrolled: 252
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_:bb.a
  %.1.i.i = phi ptr [ %.02642.i.i, %.lr.ph43.i.i ], [ %2, %bb.d ], [ %2, %bb.e ], [ %.035.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.y = load i32, ptr %i.k, align 4, !tbaa !338
  store i32 %i.y, ptr %.1.i.i, align 4, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %.02740.i.i, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !348
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.ac, %1
  br i1 %.not31.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph43.i.i, !llvm.loop !73

bb.f:                                             ; preds = %bb.a
  %i.ad = lshr i64 %i.d, 1                        ; 6 uses
  %.idx = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ad ; 2 uses
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %i.ae, ptr noundef %1, ptr noundef %i.af)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairIiiES4_NS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.ae, ptr noundef %i.ae)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  %.not23.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not23.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.f, %bb.j
  %indvar = phi i64 [ %indvar.next, %bb.j ], [ 0, %bb.f ] ; 2 uses
  %.026.i.i = phi ptr [ %.1.i.i27, %bb.j ], [ %i.ae, %bb.f ] ; 12 uses
  %.01625.i.i = phi ptr [ %.117.i.i, %bb.j ], [ %i.af, %bb.f ] ; 5 uses
  %.01824.i.i = phi ptr [ %i.bo, %bb.j ], [ %2, %bb.f ] ; 9 uses
  %i.ai = icmp eq ptr %.01625.i.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i26
  %.026.i.i55.le = ptrtoaddr ptr %.026.i.i to i64 ; 2 uses
  %i.aj = shl i64 %i.ad, 4
  %i.ak = add i64 %i.aj, %i.b
  %i.al = add i64 %i.ak, -8
  %i.am = sub i64 %i.al, %.026.i.i55.le           ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.am, 168
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ap = shl i64 %indvar, 3
  %i.aq = getelementptr i8, ptr %2, i64 %i.ap
  %scevgep = getelementptr i8, ptr %i.aq, i64 8
  %i.ar = shl i64 %i.ad, 4
  %i.as = add i64 %i.ar, %i.b
  %i.at = add i64 %i.as, -8
  %i.au = sub i64 %i.at, %.026.i.i55.le
  %i.av = and i64 %i.au, -8                       ; 2 uses
  %scevgep56 = getelementptr i8, ptr %scevgep, i64 %i.av
  %scevgep57 = getelementptr i8, ptr %.026.i.i, i64 8
  %scevgep58 = getelementptr i8, ptr %scevgep57, i64 %i.av
  %bound0 = icmp ult ptr %.01824.i.i, %scevgep58
  %bound1 = icmp ult ptr %.026.i.i, %scevgep56
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ao, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %.01824.i.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %.026.i.i, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 3 uses
  %i.ba = or disjoint i64 %i.az, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %.01824.i.i, i64 %i.az
  %next.gep59 = getelementptr i8, ptr %.01824.i.i, i64 %i.ba
  %next.gep60 = getelementptr i8, ptr %.026.i.i, i64 %i.az
  %next.gep61 = getelementptr i8, ptr %.026.i.i, i64 %i.ba
  %wide.vec = load <4 x i32>, ptr %next.gep60, align 4, !tbaa !338, !alias.scope !2976
  %wide.vec63 = load <4 x i32>, ptr %next.gep61, align 4, !tbaa !338, !alias.scope !2976
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !338, !alias.scope !2977, !noalias !2976
  store <4 x i32> %wide.vec63, ptr %next.gep59, align 4, !tbaa !338, !alias.scope !2977, !noalias !2976
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !2974

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i.preheader68

.lr.ph.i.i.i.i.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01824.i.i, %vector.memcheck ], [ %.01824.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.026.i.i, %vector.memcheck ], [ %.026.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader68, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 3 uses
  %.079.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 3 uses
  %i.bc = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !338
  store i32 %i.bc, ptr %.010.i.i.i.i, align 4, !tbaa !347
  %i.bd = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !338
  %i.bf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !348
  %i.bg = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2975

bb.g:                                             ; preds = %.lr.ph.i.i26
  %i.bi = load i32, ptr %.01625.i.i, align 4, !tbaa !338 ; 2 uses
  %i.bj = load i32, ptr %.026.i.i, align 4, !tbaa !338 ; 2 uses
  %i.bk = icmp slt i32 %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %.01625.i.i, i64 8
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.026.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sink.i = phi i32 [ %i.bi, %bb.h ], [ %i.bj, %bb.i ]
  %.01625.pn.i.i = phi ptr [ %.01625.i.i, %bb.h ], [ %.026.i.i, %bb.i ]
  %.117.i.i = phi ptr [ %i.bl, %bb.h ], [ %.01625.i.i, %bb.i ]
  %.1.i.i27 = phi ptr [ %.026.i.i, %bb.h ], [ %i.bm, %bb.i ] ; 2 uses
  store i32 %.sink.i, ptr %.01824.i.i, align 4, !tbaa !347
  %.sink.in.i.i = getelementptr inbounds nuw i8, ptr %.01625.pn.i.i, i64 4
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !338
  %i.bn = getelementptr inbounds nuw i8, ptr %.01824.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bn, align 4, !tbaa !348
  %i.bo = getelementptr i8, ptr %.01824.i.i, i64 8
  %.not.i.i28 = icmp eq ptr %.1.i.i27, %i.ag
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i28, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit, label %.lr.ph.i.i26, !llvm.loop !36

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_EEvT0_SD_T1_T_.exit: ; preds = %bb.j, %.lr.ph.i.i.i.i, %.critedge.i.i, %middle.block, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEEEEvT_SE_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit
  %.04461 = phi i64 [ %i.t, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04461 ; 6 uses
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph, %bb.d
  %.02236.i.idx = phi i64 [ %.02236.i.add, %bb.d ], [ 8, %.lr.ph ] ; 2 uses
  %.pn35.i = phi ptr [ %.02236.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 5 uses
  %.02236.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02236.i.idx ; 4 uses
  %i.g = load i32, ptr %.02236.i.ptr, align 4, !tbaa !338
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !338 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph37.i
  %i.j = load i64, ptr %.02236.i.ptr, align 4     ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.j to i32
  store i32 %i.h, ptr %.02236.i.ptr, align 4, !tbaa !347
  %i.k = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !338
  %i.m = getelementptr inbounds nuw i8, ptr %.pn35.i, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !348
  %.not2628.i = icmp eq ptr %.pn35.i, %i.f
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.030.i = phi ptr [ %i.n, %bb.c ], [ %.pn35.i, %bb.b ] ; 5 uses
  %i.n = getelementptr i8, ptr %.030.i, i64 -8    ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !338  ; 2 uses
  %i.p = icmp sgt i32 %i.o, %.sroa.0.0.extract.trunc.i
  br i1 %i.p, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.021.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.030.i, %.lr.ph.i ], [ %i.f, %bb.c ]
  store i64 %i.j, ptr %.021.lcssa.i, align 4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %.030.i, align 4, !tbaa !347
  %i.q = getelementptr inbounds i8, ptr %.030.i, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 4
  store i32 %i.r, ptr %i.s, align 4, !tbaa !348
  %.not26.i = icmp eq ptr %i.n, %i.f
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !68

bb.d:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.02236.i.add = add nuw nsw i64 %.02236.i.idx, 8 ; 2 uses
  %.not25.i = icmp eq i64 %.02236.i.add, 128
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, label %.lr.ph37.i, !llvm.loop !69

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit: ; preds = %bb.d
  %i.t = add nuw i64 %.04461, 16                  ; 3 uses
  %i.u = sub i64 %i.d, %i.t
  %i.v = icmp ugt i64 %i.u, 16
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !2978

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.w, %1
  %.02233.i46 = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, label %.lr.ph37.i47

.lr.ph37.i47:                                     ; preds = %._crit_edge, %bb.g
  %.02236.i48 = phi ptr [ %.022.i50, %bb.g ], [ %.02233.i46, %._crit_edge ] ; 5 uses
  %.pn35.i49 = phi ptr [ %.02236.i48, %bb.g ], [ %i.w, %._crit_edge ] ; 5 uses
  %i.x = load i32, ptr %.02236.i48, align 4, !tbaa !338
  %i.y = load i32, ptr %.pn35.i49, align 4, !tbaa !338 ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph37.i47
  %i.aa = load i64, ptr %.02236.i48, align 4      ; 2 uses
  %.sroa.0.0.extract.trunc.i52 = trunc i64 %i.aa to i32
  store i32 %i.y, ptr %.02236.i48, align 4, !tbaa !347
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn35.i49, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn35.i49, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !348
  %.not2628.i53 = icmp eq ptr %.pn35.i49, %i.w
  br i1 %.not2628.i53, label %.critedge.i56, label %.lr.ph.i54

.lr.ph.i54:                                       ; preds = %bb.e, %bb.f
  %.030.i55 = phi ptr [ %i.ae, %bb.f ], [ %.pn35.i49, %bb.e ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.030.i55, i64 -8 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !338 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, %.sroa.0.0.extract.trunc.i52
  br i1 %i.ag, label %bb.f, label %.critedge.i56

.critedge.i56:                                    ; preds = %bb.f, %.lr.ph.i54, %bb.e
  %.021.lcssa.i57 = phi ptr [ %i.w, %bb.e ], [ %.030.i55, %.lr.ph.i54 ], [ %i.w, %bb.f ]
  store i64 %i.aa, ptr %.021.lcssa.i57, align 4
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i54
  store i32 %i.af, ptr %.030.i55, align 4, !tbaa !347
  %i.ah = getelementptr inbounds i8, ptr %.030.i55, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !338
  %i.aj = getelementptr inbounds nuw i8, ptr %.030.i55, i64 4
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !348
  %.not26.i58 = icmp eq ptr %i.ae, %i.w
  br i1 %.not26.i58, label %.critedge.i56, label %.lr.ph.i54, !llvm.loop !68

bb.g:                                             ; preds = %.critedge.i56, %.lr.ph37.i47
  %.022.i50 = getelementptr inbounds nuw i8, ptr %.02236.i48, i64 8 ; 2 uses
  %.not25.i51 = icmp eq ptr %.022.i50, %1
  br i1 %.not25.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, label %.lr.ph37.i47, !llvm.loop !69

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph68, label %._crit_edge69

._crit_edge69:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59
  ret void

.lr.ph68:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59, %bb.k
  %.04366 = phi i64 [ %i.bc, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_EEvT0_SD_T_.exit59 ] ; 10 uses
  %i.ak = sub i64 %i.d, %.04366
  %i.al = icmp ugt i64 %i.ak, %.04366             ; 2 uses
  br i1 %i.al, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph68
  %i.am = shl i64 %.04366, 1                      ; 3 uses
  %i.an = icmp ugt i64 %i.d, %i.am
  br i1 %i.an, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %bb.h
  %.idx60 = shl i64 %.04366, 3                    ; 2 uses
  %.idx = shl i64 %.04366, 4
  %i.ao = ashr exact i64 %.idx60, 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph64, %bb.i
  %.062 = phi i64 [ 0, %.lr.ph64 ], [ %i.as, %bb.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.062 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, i64 noundef %.04366, i64 noundef %i.ao)
  %i.as = add i64 %.062, %i.am                    ; 3 uses
  %i.at = sub i64 %i.d, %i.as
  %i.au = icmp ugt i64 %i.at, %i.am
  br i1 %i.au, label %bb.i, label %.loopexit, !llvm.loop !2979

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph68
  %.1 = phi i64 [ 0, %.lr.ph68 ], [ 0, %bb.h ], [ %i.as, %bb.i ] ; 2 uses
  %i.av = sub i64 %i.d, %.1
  %i.aw = icmp ugt i64 %i.av, %.04366
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.04366 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.a, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES3_NS6_9select1stIiEEEEEEvT_SD_SD_NS0_9iter_sizeISD_E4typeESG_T0_(ptr noundef %i.ax, ptr noundef %i.ay, ptr noundef %1, i64 noundef %.04366, i64 noundef %i.bb)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bc = shl i64 %.04366, 1
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69, !llvm.loop !2980
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPSt4pairIiiENS_9container3dtl23flat_tree_value_compareISt4lessIiES4_NS7_9select1stIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx37 = shl nuw nsw i64 %.sroa.speculated, 3
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph43.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us
  %.038.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.038.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !2981

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40
  %.038.us39 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038.us39 ; 2 uses
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.b
  %i.h = load <2 x i32>, ptr %i.f, align 4, !tbaa !338
  store <2 x i32> %i.h, ptr %i.g, align 4, !tbaa !338
  %i.i = add i64 %.038.us39, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.us40, label %._crit_edge, !llvm.loop !2981

.lr.ph43.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit
  %.038 = phi i64 [ %i.aj, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEEPS8_SC_NS0_7move_opEEEvT0_SE_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.038 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx37
  %i.n = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load <2 x i32>, ptr %i.l, align 4, !tbaa !338
  store <2 x i32> %i.o, ptr %i.n, align 4, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  br label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.lr.ph43.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.ai, %.critedge.i ], [ %i.p, %.lr.ph43.i.preheader ] ; 5 uses
  %.pn41.i = phi ptr [ %.02642.i, %.critedge.i ], [ %i.n, %.lr.ph43.i.preheader ] ; 6 uses
  %.02740.i = phi ptr [ %i.q, %.critedge.i ], [ %i.l, %.lr.ph43.i.preheader ]
  %.02642.i = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !338
  %i.s = load i32, ptr %.pn41.i, align 4, !tbaa !338 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph43.i
  store i32 %i.s, ptr %.02642.i, align 4, !tbaa !347
  %i.u = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !338
  %i.w = getelementptr inbounds nuw i8, ptr %.pn41.i, i64 12
  store i32 %i.v, ptr %i.w, align 4, !tbaa !348
  %.not3233.i = icmp eq ptr %.pn41.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.x, %bb.c ], [ %.pn41.i, %bb.b ] ; 5 uses
  %i.x = getelementptr i8, ptr %.035.i, i64 -8    ; 3 uses
  %i.y = load i32, ptr %i.q, align 4, !tbaa !338
  %i.z = load i32, ptr %i.x, align 4, !tbaa !338  ; 2 uses
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.z, ptr %.035.i, align 4, !tbaa !347
  %i.ab = getelementptr inbounds i8, ptr %.035.i, i64 -4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !338
  %i.ad = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !348
  %.not32.i = icmp eq ptr %i.x, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !72

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph43.i
  %.1.i = phi ptr [ %.02642.i, %.lr.ph43.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !338
  store i32 %i.ae, ptr %.1.i, align 4, !tbaa !347
  %i.af = getelementptr inbounds nuw i8, ptr %.02740.i, i64 12
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEESD_EEvT0_SF_T1_SG_SG_T_:bb.a
bb.b:                                             ; preds = %.lr.ph92
  %i.ae = load i64, ptr %.04090, align 4
  store i64 %i.ae, ptr %.0273991, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.04090, i64 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !478
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph92
  %i.ag = load i64, ptr %i.aa, align 4
  store i64 %i.ag, ptr %.0273991, align 4
  %i.ah = load ptr, ptr %0, align 8, !tbaa !478
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !468
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !466 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !478
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.al = phi ptr [ %.pre, %bb.b ], [ %i.ak, %bb.c ] ; 4 uses
  %.1 = phi ptr [ %i.af, %bb.b ], [ %.04090, %bb.c ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0273991, i64 8 ; 3 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !478   ; 2 uses
  %i.ao = icmp ne ptr %i.al, %i.an
  %i.ap = icmp ne ptr %i.am, %3
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !13382

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.d ]
  %.lcssa35 = phi ptr [ %i.a, %bb.a ], [ %i.al, %bb.d ] ; 2 uses
  %.lcssa33 = phi ptr [ %i.b, %bb.a ], [ %i.an, %bb.d ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa35, %.lcssa33
  br i1 %.not17.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.h
  %i.ar = phi ptr [ %i.bn, %bb.h ], [ %.lcssa35, %._crit_edge ] ; 5 uses
  %.019.i.i = phi ptr [ %i.bp, %bb.h ], [ %3, %._crit_edge ] ; 4 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.as = icmp eq ptr %.0918.i.i, %4
  br i1 %i.as, label %.lr.ph.i.i.i.i, label %bb.e

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.at = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.ar, %.lr.ph.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !338
  store i32 %i.av, ptr %.04.i.i.i.i, align 4, !tbaa !347
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !338
  %i.ay = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !348
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !468
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !466 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bb, %.lcssa33
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !152

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.be = load i32, ptr %.0918.i.i, align 4, !tbaa !338 ; 2 uses
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !338 ; 2 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !468
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !466
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.be, %bb.f ], [ %i.bf, %bb.g ]
  %i.bn = phi ptr [ %i.ar, %bb.f ], [ %i.bm, %bb.g ] ; 2 uses
  %.sink.i.in.i = phi ptr [ %i.bh, %bb.f ], [ %i.bj, %bb.g ]
  %.1.i.i = phi ptr [ %i.bi, %bb.f ], [ %.0918.i.i, %bb.g ]
  store i32 %.sink.i, ptr %.019.i.i, align 4, !tbaa !347
  %.sink.i.i = load i32, ptr %.sink.i.in.i, align 4, !tbaa !338
  %i.bo = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4
  store i32 %.sink.i.i, ptr %i.bo, align 4, !tbaa !348
  %i.bp = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bn, %.lcssa33
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !13384

_ZN5boost4moveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEES5_EET0_T_S8_S7_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i, %.lr.ph.i, %._crit_edge, %._crit_edge46.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !478
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !468
  %i.c = load ptr, ptr %0, align 8, !tbaa !478    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !468
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit
  %.033101 = phi i64 [ %i.aq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13407 ; 2 uses
  %.not.i.i = icmp eq i64 %.033101, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !468, !noalias !13407
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.033101
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !466, !noalias !13407
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.083.0 = phi ptr [ %i.m, %bb.b ], [ %i.j, %.lr.ph ] ; 4 uses
  %i.n = load ptr, ptr %.sroa.083.0, align 8, !tbaa !468, !noalias !13408 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !466, !noalias !13408 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.083.0, %i.p
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36
  %.sroa.013.0.in27.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.013.028.i = load ptr, ptr %.sroa.013.0.in27.i, align 8, !tbaa !466 ; 2 uses
  %.not2029.i = icmp eq ptr %.sroa.013.028.i, %i.p
  br i1 %.not2029.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.013.030.i = phi ptr [ %.sroa.013.0.i, %bb.f ], [ %.sroa.013.028.i, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 8 ; 3 uses
  %i.r = load ptr, ptr %.sroa.013.030.i, align 8, !tbaa !468 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !466  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.q, align 8, !tbaa !338
  %i.w = load i32, ptr %i.u, align 4, !tbaa !338  ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph31.i
  %i.y = load i64, ptr %i.q, align 8              ; 2 uses
  %.sroa.04.0.extract.trunc.i = trunc i64 %i.y to i32
  store i32 %i.w, ptr %i.q, align 8, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !348
  %.not2122.i = icmp eq ptr %i.t, %.sroa.083.0
  br i1 %.not2122.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.024.i = phi ptr [ %i.ae, %bb.e ], [ %i.t, %bb.d ]
  %.sroa.06.023.i = phi ptr [ %i.ap, %bb.e ], [ %i.t, %bb.d ] ; 4 uses
  %i.ac = load ptr, ptr %.sroa.0.024.i, align 8, !tbaa !468
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !466 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !338 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, %.sroa.04.0.extract.trunc.i
  br i1 %i.ah, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.06.0.lcssa.i = phi ptr [ %i.t, %bb.d ], [ %.sroa.06.023.i, %.lr.ph.i ], [ %i.ap, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i, i64 8
  store i64 %i.y, ptr %i.ai, align 4
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 8
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !347
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !338
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !348
  %i.an = load ptr, ptr %.sroa.06.023.i, align 8, !tbaa !468
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !466 ; 2 uses
  %.not21.i = icmp eq ptr %i.ae, %.sroa.083.0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !145

bb.f:                                             ; preds = %.critedge.i, %.lr.ph31.i
  %.sroa.013.0.in.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.013.0.i = load ptr, ptr %.sroa.013.0.in.i, align 8, !tbaa !466 ; 2 uses
  %.not20.i = icmp eq ptr %.sroa.013.0.i, %i.p
  br i1 %.not20.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit, label %.lr.ph31.i, !llvm.loop !146

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit36, %bb.c
  %i.aq = add nuw i64 %.033101, 16                ; 3 uses
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 16
  br i1 %i.as, label %.lr.ph, label %bb.g, !llvm.loop !13389

bb.g:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit
  %.pre = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13409
  %i.at = load ptr, ptr %.pre, align 8, !tbaa !468, !noalias !13409
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.aq
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !466, !noalias !13409
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38: ; preds = %bb.a, %bb.g
  %.sroa.082.0 = phi ptr [ %i.av, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !478   ; 3 uses
  %.not.i39 = icmp eq ptr %.sroa.082.0, %i.aw
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38
  %i.ax = load ptr, ptr %.sroa.082.0, align 8, !tbaa !468
  %.sroa.013.0.in27.i40 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.013.028.i41 = load ptr, ptr %.sroa.013.0.in27.i40, align 8, !tbaa !466 ; 2 uses
  %.not2029.i42 = icmp eq ptr %.sroa.013.028.i41, %i.aw
  br i1 %.not2029.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %.lr.ph31.i43

.lr.ph31.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.013.030.i44 = phi ptr [ %.sroa.013.0.i46, %bb.k ], [ %.sroa.013.028.i41, %bb.h ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 8 ; 3 uses
  %i.az = load ptr, ptr %.sroa.013.030.i44, align 8, !tbaa !468 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !466 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.ay, align 8, !tbaa !338
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !338 ; 2 uses
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph31.i43
  %i.bg = load i64, ptr %i.ay, align 8            ; 2 uses
  %.sroa.04.0.extract.trunc.i48 = trunc i64 %i.bg to i32
  store i32 %i.be, ptr %i.ay, align 8, !tbaa !347
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !338
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.030.i44, i64 12
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !348
  %.not2122.i49 = icmp eq ptr %i.bb, %.sroa.082.0
  br i1 %.not2122.i49, label %.critedge.i53, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.024.i51 = phi ptr [ %i.bm, %bb.j ], [ %i.bb, %bb.i ]
  %.sroa.06.023.i52 = phi ptr [ %i.bx, %bb.j ], [ %i.bb, %bb.i ] ; 4 uses
  %i.bk = load ptr, ptr %.sroa.0.024.i51, align 8, !tbaa !468
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !466 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !338 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, %.sroa.04.0.extract.trunc.i48
  br i1 %i.bp, label %bb.j, label %.critedge.i53

.critedge.i53:                                    ; preds = %bb.j, %.lr.ph.i50, %bb.i
  %.sroa.06.0.lcssa.i54 = phi ptr [ %i.bb, %bb.i ], [ %.sroa.06.023.i52, %.lr.ph.i50 ], [ %i.bx, %bb.j ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i54, i64 8
  store i64 %i.bg, ptr %i.bq, align 4
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i50
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i52, i64 8
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !347
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !338
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.023.i52, i64 12
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !348
  %i.bv = load ptr, ptr %.sroa.06.023.i52, align 8, !tbaa !468
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !466 ; 2 uses
  %.not21.i55 = icmp eq ptr %i.bm, %.sroa.082.0
  br i1 %.not21.i55, label %.critedge.i53, label %.lr.ph.i50, !llvm.loop !145

bb.k:                                             ; preds = %.critedge.i53, %.lr.ph31.i43
  %.sroa.013.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.013.0.i46 = load ptr, ptr %.sroa.013.0.in.i45, align 8, !tbaa !466 ; 2 uses
  %.not20.i47 = icmp eq ptr %.sroa.013.0.i46, %i.aw
  br i1 %.not20.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, label %.lr.ph31.i43, !llvm.loop !146

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph109, label %._crit_edge110

._crit_edge110:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56
  ret void

.lr.ph109:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56, %bb.s
  %.032107 = phi i64 [ %i.ej, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_22stable_vector_iteratorIPS8_Lb0EEEEEvT0_SF_T_.exit56 ] ; 11 uses
  %i.by = sub i64 %i.h, %.032107
  %i.bz = icmp ugt i64 %i.by, %.032107            ; 2 uses
  br i1 %i.bz, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph109
  %i.ca = shl i64 %.032107, 1                     ; 6 uses
  %i.cb = icmp ugt i64 %i.h, %i.ca
  br i1 %i.cb, label %.lr.ph104, label %._crit_edge105.thread

.lr.ph104:                                        ; preds = %bb.l
  %.not.i.i61 = icmp eq i64 %.032107, 0
  %.not.i.i65 = icmp eq i64 %i.ca, 0              ; 2 uses
  br i1 %.not.i.i61, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us, label %.lr.ph104.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us: ; preds = %.lr.ph104, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us
  %i.cc = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13410 ; 5 uses
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !468, !noalias !13411
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !466, !noalias !13411
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us
  %.sroa.077.0.us = phi ptr [ %i.cc, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cc, ptr %5, align 8, !tbaa !478
  store ptr %i.cc, ptr %6, align 8, !tbaa !478
  store ptr %.sroa.077.0.us, ptr %7, align 8, !tbaa !478
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !468
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = load ptr, ptr %.sroa.077.0.us, align 8, !tbaa !468
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ch
  %i.cl = ashr exact i64 %i.ck, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64.us

.lr.ph104.split:                                  ; preds = %.lr.ph104, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66
  %.0102 = phi i64 [ %i.di, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66 ], [ 0, %.lr.ph104 ] ; 4 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13410 ; 4 uses
  %.not.i.i57 = icmp eq i64 %.0102, 0
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !468, !noalias !345 ; 2 uses
  br i1 %.not.i.i57, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64, label %bb.n

bb.n:                                             ; preds = %.lr.ph104.split
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0102
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !466, !noalias !13410 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !468, !noalias !13412
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !468, !noalias !13413
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.0102
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !466, !noalias !13413
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64: ; preds = %.lr.ph104.split, %bb.n
  %.pn = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph104.split ]
  %.sroa.078.0129 = phi ptr [ %i.cp, %bb.n ], [ %i.cm, %.lr.ph104.split ] ; 2 uses
  %.sroa.076.0 = phi ptr [ %i.ct, %bb.n ], [ %i.cm, %.lr.ph104.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032107
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !466, !noalias !13412 ; 2 uses
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64
  %i.cv = load ptr, ptr %.sroa.076.0, align 8, !tbaa !468, !noalias !13411
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ca
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !466, !noalias !13411
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64, %bb.o
  %.sroa.077.0 = phi ptr [ %.sroa.076.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit64 ], [ %i.cx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.078.0129, ptr %5, align 8, !tbaa !478
  store ptr %i.cu, ptr %6, align 8, !tbaa !478
  store ptr %.sroa.077.0, ptr %7, align 8, !tbaa !478
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !468
  %i.cz = load ptr, ptr %.sroa.078.0129, align 8, !tbaa !468
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = load ptr, ptr %.sroa.077.0, align 8, !tbaa !468
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %i.dh = ashr exact i64 %i.dg, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairIiiELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.dd, i64 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.di = add i64 %.0102, %i.ca                   ; 5 uses
  %i.dj = sub i64 %i.h, %i.di
  %i.dk = icmp ugt i64 %i.dj, %i.ca
  br i1 %i.dk, label %.lr.ph104.split, label %._crit_edge105, !llvm.loop !13400

._crit_edge105:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit66
  %i.dl = sub i64 %i.h, %i.di
  %i.dm = icmp ugt i64 %i.dl, %.032107
  br i1 %i.dm, label %bb.p, label %bb.s

._crit_edge105.thread:                            ; preds = %bb.l
  %i.dn = icmp ugt i64 %i.h, %.032107
  br i1 %i.dn, label %.thread132, label %bb.s

.thread132:                                       ; preds = %._crit_edge105.thread
  %i.do = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13414
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit70

.thread:                                          ; preds = %.lr.ph109
  %i.dp = icmp ugt i64 %i.h, %.032107
  br i1 %i.dp, label %.thread92, label %._crit_edge110

.thread92:                                        ; preds = %.thread
  %i.dq = load ptr, ptr %0, align 8, !tbaa !478, !noalias !13415
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairIiiELb0EEEl.exit70

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEESD_EEvT0_SF_T1_SG_SG_T_:bb.a
  %.04.i = phi ptr [ %i.ak, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !338
  store i32 %i.y, ptr %.04.i, align 4, !tbaa !347
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !338
  %i.ab = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !348
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, !prof !344

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !331 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.ah = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ag, %bb.d ]
  %i.ai = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.aj = phi ptr [ %i.w, %.lr.ph.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %.not.i = icmp eq ptr %i.ai, %.pre60
  br i1 %.not.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i, !llvm.loop !232

.lr.ph111:                                        ; preds = %.lr.ph, %bb.b
  %.03043110 = phi ptr [ %i.bb, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.044109 = phi ptr [ %.1, %bb.b ], [ %3, %.lr.ph ] ; 5 uses
  %i.al = phi ptr [ %i.ba, %bb.b ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.am = load i32, ptr %.044109, align 4, !tbaa !338
  %i.an = load i32, ptr %i.al, align 4, !tbaa !338
  %i.ao = icmp slt i32 %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph111
  %i.ap = load i64, ptr %.044109, align 4
  store i64 %i.ap, ptr %.03043110, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.044109, i64 8
  %.pre = load ptr, ptr %0, align 8, !tbaa !525
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14

bb.f:                                             ; preds = %.lr.ph111
  %i.ar = load i64, ptr %i.al, align 4
  store i64 %i.ar, ptr %.03043110, align 4
  %i.as = load ptr, ptr %0, align 8, !tbaa !525
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !525
  %i.au = load ptr, ptr %i.f, align 8, !tbaa !526 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !331
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1024
  %i.ax = icmp eq ptr %i.at, %i.aw
  br i1 %i.ax, label %bb.g, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14, !prof !344

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !526
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !331 ; 2 uses
  store ptr %i.az, ptr %0, align 8, !tbaa !525
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14: ; preds = %bb.g, %bb.f, %bb.e
  %i.ba = phi ptr [ %.pre, %bb.e ], [ %i.at, %bb.f ], [ %i.az, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.aq, %bb.e ], [ %.044109, %bb.f ], [ %.044109, %bb.g ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.03043110, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %1, align 8, !tbaa !525   ; 2 uses
  %i.bd = icmp ne ptr %i.ba, %i.bc
  %i.be = icmp ne ptr %i.bb, %3
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %bb.b, label %._crit_edge, !llvm.loop !23052

._crit_edge:                                      ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ]
  %.lcssa39 = phi ptr [ %i.a, %bb.a ], [ %i.ba, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ] ; 2 uses
  %.lcssa37 = phi ptr [ %i.b, %bb.a ], [ %i.bc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit14 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.lcssa39, %.lcssa37
  br i1 %.not19.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !526
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.bh, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bi = phi ptr [ %i.cp, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.lcssa39, %.lr.ph.i.i.preheader ] ; 5 uses
  %.021.i.i = phi ptr [ %i.cq, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 5 uses
  %.0920.i.i = phi ptr [ %.1.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.bj = icmp eq ptr %.0920.i.i, %4
  br i1 %i.bj, label %.lr.ph.i.preheader.i.i.i, label %bb.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !331
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bk = phi ptr [ %i.bw, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bl = phi ptr [ %i.by, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.sroa.4.0.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bm = phi ptr [ %i.bx, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %i.bi, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bz, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !338
  store i32 %i.bn, ptr %.04.i.i.i.i, align 4, !tbaa !347
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !338
  %i.bq = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !348
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 1024
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.h, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, !prof !344

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !331 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bw = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.h ]
  %i.bx = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.h ] ; 2 uses
  %i.by = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bu, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bx, %.lcssa37
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !232

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ca = load i32, ptr %.0920.i.i, align 4, !tbaa !338 ; 2 uses
  %i.cb = load i32, ptr %i.bi, align 4, !tbaa !338 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ca, ptr %.021.i.i, align 4, !tbaa !347
  %i.ce = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !338
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !348
  %i.cg = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  store i32 %i.cb, ptr %.021.i.i, align 4, !tbaa !347
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !338
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !348
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !331
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1024
  %i.cm = icmp eq ptr %i.cj, %i.cl
  br i1 %i.cm, label %bb.l, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i, !prof !344

bb.l:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i = phi ptr [ %.sroa.4.0.i, %bb.j ], [ %i.cn, %bb.l ], [ %.sroa.4.0.i, %bb.k ]
  %i.cp = phi ptr [ %i.bi, %bb.j ], [ %i.co, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %.1.i.i = phi ptr [ %i.cg, %bb.j ], [ %.0920.i.i, %bb.l ], [ %.0920.i.i, %bb.k ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cp, %.lcssa37
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit, label %.lr.ph.i.i, !llvm.loop !23054

_ZN5boost4moveINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEES5_EET0_T_S8_S7_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i.i.i.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, %._crit_edge, %._crit_edge50.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiES6_NS9_9select1stIiEEEEEEvT_SG_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !525    ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !525    ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !526  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !526  ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !331
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !331
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v                       ; 5 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit
  %.033180 = phi i64 [ 0, %.lr.ph ], [ %i.di, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit ] ; 5 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !525, !noalias !23083 ; 5 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !526, !noalias !23083 ; 7 uses
  %.not.i.i = icmp eq i64 %.033180, 0
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !331, !noalias !345 ; 5 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %.pre to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %i.af = add nsw i64 %i.ae, %.033180             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.af, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.033180
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.033180
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.af, 0
  %i.aj = lshr i64 %i.af, 7                       ; 2 uses
  %i.ak = or disjoint i64 %i.aj, -144115188075855872
  %i.al = select i1 %i.ai, i64 %i.aj, i64 %i.ak   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !331, !noalias !23083 ; 2 uses
  %i.ao = shl nsw i64 %i.al, 7
  %i.ap = sub nsw i64 %i.af, %i.ao
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ap
  %i.ar = icmp sgt i64 %i.af, 0
  %i.as = lshr i64 %i.af, 7                       ; 2 uses
  %i.at = or disjoint i64 %i.as, -144115188075855872
  %i.au = select i1 %i.ar, i64 %i.as, i64 %i.at   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !331, !noalias !23084 ; 2 uses
  %i.ax = shl nsw i64 %i.au, 7
  %i.ay = sub nsw i64 %i.af, %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ay
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.ba = phi ptr [ %i.an, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %i.bb = phi ptr [ %i.aw, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i155 = phi ptr [ %i.aq, %bb.e ], [ %i.ag, %bb.d ], [ %i.z, %bb.b ] ; 4 uses
  %.sroa.6.1.i153 = phi ptr [ %i.am, %bb.e ], [ %i.aa, %bb.d ], [ %i.aa, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.av, %bb.e ], [ %i.aa, %bb.d ], [ %i.aa, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.az, %bb.e ], [ %i.ah, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %i.bc = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bg, 128
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 128
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit39
  %i.bi = icmp sgt i64 %i.bf, -16
  %i.bj = lshr i64 %i.bg, 7                       ; 2 uses
  %i.bk = or disjoint i64 %i.bj, -144115188075855872
  %i.bl = select i1 %i.bi, i64 %i.bj, i64 %i.bk   ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !331, !noalias !23085
  %i.bo = shl nsw i64 %i.bl, 7
  %i.bp = sub nsw i64 %i.bg, %i.bo
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bp
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bq, %bb.g ], [ %i.bh, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i155, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 1024
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %bb.i, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, !prof !344

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i153, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %.sroa.14.1.i = phi ptr [ %i.bu, %bb.i ], [ %.sroa.6.1.i153, %bb.h ]
  %.sroa.020.1.i = phi ptr [ %i.bv, %bb.i ], [ %i.br, %bb.h ] ; 2 uses
  %.not2937.i = icmp eq ptr %.sroa.020.1.i, %.sroa.0.0.i42
  br i1 %.not2937.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i
  %.sroa.020.039.i = phi ptr [ %.sroa.020.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.020.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ] ; 7 uses
  %.sroa.14.038.i = phi ptr [ %.sroa.14.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.14.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i ] ; 5 uses
  %i.bw = load ptr, ptr %.sroa.14.038.i, align 8, !tbaa !331 ; 3 uses
  %i.bx = icmp eq ptr %.sroa.020.039.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !344

bb.j:                                             ; preds = %.lr.ph40.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.14.038.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !331 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph40.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.020.039.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %i.cc = phi ptr [ %i.bz, %bb.j ], [ %i.bw, %bb.k ] ; 2 uses
  %.sroa.12.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.14.038.i, %bb.k ] ; 2 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 6 uses
  %i.cd = load i32, ptr %.sroa.020.039.i, align 4, !tbaa !338
  %i.ce = load i32, ptr %storemerge.i.i, align 4, !tbaa !338 ; 2 uses
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.cg = load i64, ptr %.sroa.020.039.i, align 4 ; 2 uses
  %.sroa.09.0.extract.trunc.i = trunc i64 %i.cg to i32
  store i32 %i.ce, ptr %.sroa.020.039.i, align 4, !tbaa !347
  %i.ch = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !338
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i, i64 4
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !348
  %.not3031.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i155
  br i1 %.not3031.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i
  %i.ck = phi ptr [ %i.dc, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %i.cc, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %i.cr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %i.cc, %bb.l ] ; 2 uses
  %.sroa.0.035.i = phi ptr [ %storemerge.i1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %bb.l ] ; 2 uses
  %.sroa.8.034.i = phi ptr [ %.sroa.8.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %bb.l ] ; 2 uses
  %.sroa.011.033.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %bb.l ] ; 5 uses
  %.sroa.12.032.i = phi ptr [ %.sroa.12.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %bb.l ] ; 2 uses
  %i.cm = icmp eq ptr %.sroa.0.035.i, %i.cl
  br i1 %i.cm, label %bb.m, label %bb.n, !prof !344

bb.m:                                             ; preds = %.lr.ph.i
  %i.cn = getelementptr inbounds i8, ptr %.sroa.8.034.i, i64 -8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !331 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.035.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i: ; preds = %bb.n, %bb.m
  %i.cr = phi ptr [ %i.co, %bb.m ], [ %i.cl, %bb.n ]
  %.sroa.8.1.i = phi ptr [ %i.cn, %bb.m ], [ %.sroa.8.034.i, %bb.n ]
  %storemerge.i1.i = phi ptr [ %i.cp, %bb.m ], [ %i.cq, %bb.n ] ; 4 uses
  %i.cs = load i32, ptr %storemerge.i1.i, align 4, !tbaa !338 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, %.sroa.09.0.extract.trunc.i
  br i1 %i.ct, label %bb.o, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i, %bb.l
  %.sroa.011.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %.sroa.011.033.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i ], [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i ]
  store i64 %i.cg, ptr %.sroa.011.0.lcssa.i, align 4
  br label %bb.r

bb.o:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i
  store i32 %i.cs, ptr %.sroa.011.033.i, align 4, !tbaa !347
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge.i1.i, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !338
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.011.033.i, i64 4
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !348
  %i.cx = icmp eq ptr %.sroa.011.033.i, %i.ck
  br i1 %i.cx, label %bb.p, label %bb.q, !prof !344

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds i8, ptr %.sroa.12.032.i, i64 -8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !331 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i

bb.q:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds i8, ptr %.sroa.011.033.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i: ; preds = %bb.q, %bb.p
  %i.dc = phi ptr [ %i.cz, %bb.p ], [ %i.ck, %bb.q ]
  %.sroa.12.2.i = phi ptr [ %i.cy, %bb.p ], [ %.sroa.12.032.i, %bb.q ]
  %storemerge.i3.i = phi ptr [ %i.da, %bb.p ], [ %i.db, %bb.q ] ; 2 uses
  %.not30.i = icmp eq ptr %storemerge.i1.i, %.sroa.0.0.i155
  br i1 %.not30.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !221

bb.r:                                             ; preds = %.critedge.i, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %bb.s, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i, !prof !344

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.14.038.i, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i: ; preds = %bb.s, %bb.r
  %.sroa.14.2.i = phi ptr [ %i.dg, %bb.s ], [ %.sroa.14.038.i, %bb.r ]
  %.sroa.020.2.i = phi ptr [ %i.dh, %bb.s ], [ %i.dd, %bb.r ] ; 2 uses
  %.not29.i = icmp eq ptr %.sroa.020.2.i, %.sroa.0.0.i42
  br i1 %.not29.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit, label %.lr.ph40.i, !llvm.loop !222

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i
  %i.di = add nuw i64 %.033180, 16                ; 4 uses
  %i.dj = sub i64 %i.w, %i.di
  %i.dk = icmp ugt i64 %i.dj, 16
  br i1 %i.dk, label %bb.b, label %bb.t, !llvm.loop !23061

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit, %bb.a
  %.0.i222.ph = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmiERKS5_.exit ], [ 0, %bb.a ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !526, !noalias !23086
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

bb.t:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit
  %.pre191 = load ptr, ptr %0, align 8, !tbaa !525, !noalias !23086 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !526, !noalias !23086 ; 3 uses
  %i.dn = load ptr, ptr %9, align 8, !tbaa !331, !noalias !23086
  %i.do = ptrtoint ptr %.pre191 to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3
  %i.ds = add nsw i64 %i.dr, %i.di                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.ds, 128
  br i1 %or.cond.i.i45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dt = getelementptr inbounds [8 x i8], ptr %.pre191, i64 %i.di
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

bb.v:                                             ; preds = %bb.t
  %i.du = icmp sgt i64 %i.ds, 0
  %i.dv = lshr i64 %i.ds, 7                       ; 2 uses
  %i.dw = or disjoint i64 %i.dv, -144115188075855872
  %i.dx = select i1 %i.du, i64 %i.dv, i64 %i.dw   ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %9, i64 %i.dx ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !331, !noalias !23086
  %i.ea = shl nsw i64 %i.dx, 7
  %i.eb = sub nsw i64 %i.ds, %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.eb
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %bb.u, %bb.v
  %10 = phi ptr [ %i.dl, %._crit_edge.thread ], [ %8, %bb.u ], [ %8, %bb.v ] ; 4 uses
  %.0.i222231 = phi i64 [ %.0.i222.ph, %._crit_edge.thread ], [ %i.w, %bb.u ], [ %i.w, %bb.v ] ; 6 uses
  %11 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.u ], [ true, %bb.v ]
  %.sroa.6.1.i46 = phi ptr [ %i.dm, %._crit_edge.thread ], [ %9, %bb.u ], [ %i.dy, %bb.v ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.dt, %bb.u ], [ %i.ec, %bb.v ] ; 4 uses
  %i.ed = load ptr, ptr %1, align 8, !tbaa !525   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.ed
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %bb.w

bb.w:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 8 ; 2 uses
  %i.eg = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !331
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1024
  %i.ei = icmp eq ptr %i.ef, %i.eh
  br i1 %i.ei, label %bb.x, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50, !prof !344

bb.x:                                             ; preds = %bb.w
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.x, %bb.w
  %.sroa.14.1.i51 = phi ptr [ %i.ej, %bb.x ], [ %.sroa.6.1.i46, %bb.w ]
  %.sroa.020.1.i52 = phi ptr [ %i.ek, %bb.x ], [ %i.ef, %bb.w ] ; 2 uses
  %.not2937.i53 = icmp eq ptr %.sroa.020.1.i52, %i.ed
  br i1 %.not2937.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %.lr.ph40.i54

.lr.ph40.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60
  %.sroa.020.039.i55 = phi ptr [ %.sroa.020.2.i62, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.020.1.i52, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50 ] ; 7 uses
  %.sroa.14.038.i56 = phi ptr [ %.sroa.14.2.i61, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.14.1.i51, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50 ] ; 5 uses
  %i.el = load ptr, ptr %.sroa.14.038.i56, align 8, !tbaa !331 ; 3 uses
  %i.em = icmp eq ptr %.sroa.020.039.i55, %i.el
  br i1 %i.em, label %bb.y, label %bb.z, !prof !344

bb.y:                                             ; preds = %.lr.ph40.i54
  %i.en = getelementptr inbounds i8, ptr %.sroa.14.038.i56, i64 -8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !331 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57

bb.z:                                             ; preds = %.lr.ph40.i54
  %i.eq = getelementptr inbounds i8, ptr %.sroa.020.039.i55, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.z, %bb.y
  %i.er = phi ptr [ %i.eo, %bb.y ], [ %i.el, %bb.z ] ; 2 uses
  %.sroa.12.1.i58 = phi ptr [ %i.en, %bb.y ], [ %.sroa.14.038.i56, %bb.z ] ; 2 uses
  %storemerge.i.i59 = phi ptr [ %i.ep, %bb.y ], [ %i.eq, %bb.z ] ; 6 uses
  %i.es = load i32, ptr %.sroa.020.039.i55, align 4, !tbaa !338
  %i.et = load i32, ptr %storemerge.i.i59, align 4, !tbaa !338 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57
  %i.ev = load i64, ptr %.sroa.020.039.i55, align 4 ; 2 uses
  %.sroa.09.0.extract.trunc.i64 = trunc i64 %i.ev to i32
  store i32 %i.et, ptr %.sroa.020.039.i55, align 4, !tbaa !347
  %i.ew = getelementptr inbounds nuw i8, ptr %storemerge.i.i59, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !338
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i55, i64 4
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !348
  %.not3031.i65 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not3031.i65, label %.critedge.i74, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.aa, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76
  %i.ez = phi ptr [ %i.fr, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %i.er, %bb.aa ] ; 2 uses
  %i.fa = phi ptr [ %i.fg, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %i.er, %bb.aa ] ; 2 uses
  %.sroa.0.035.i67 = phi ptr [ %storemerge.i1.i73, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %bb.aa ] ; 2 uses
  %.sroa.8.034.i68 = phi ptr [ %.sroa.8.1.i72, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.12.1.i58, %bb.aa ] ; 2 uses
  %.sroa.011.033.i69 = phi ptr [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %storemerge.i.i59, %bb.aa ] ; 5 uses
  %.sroa.12.032.i70 = phi ptr [ %.sroa.12.2.i77, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ], [ %.sroa.12.1.i58, %bb.aa ] ; 2 uses
  %i.fb = icmp eq ptr %.sroa.0.035.i67, %i.fa
  br i1 %i.fb, label %bb.ab, label %bb.ac, !prof !344

bb.ab:                                            ; preds = %.lr.ph.i66
  %i.fc = getelementptr inbounds i8, ptr %.sroa.8.034.i68, i64 -8 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !331 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71

bb.ac:                                            ; preds = %.lr.ph.i66
  %i.ff = getelementptr inbounds i8, ptr %.sroa.0.035.i67, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71: ; preds = %bb.ac, %bb.ab
  %i.fg = phi ptr [ %i.fd, %bb.ab ], [ %i.fa, %bb.ac ]
  %.sroa.8.1.i72 = phi ptr [ %i.fc, %bb.ab ], [ %.sroa.8.034.i68, %bb.ac ]
  %storemerge.i1.i73 = phi ptr [ %i.fe, %bb.ab ], [ %i.ff, %bb.ac ] ; 4 uses
  %i.fh = load i32, ptr %storemerge.i1.i73, align 4, !tbaa !338 ; 2 uses
  %i.fi = icmp sgt i32 %i.fh, %.sroa.09.0.extract.trunc.i64
  br i1 %i.fi, label %bb.ad, label %.critedge.i74

.critedge.i74:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71, %bb.aa
  %.sroa.011.0.lcssa.i75 = phi ptr [ %storemerge.i.i59, %bb.aa ], [ %.sroa.011.033.i69, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71 ], [ %storemerge.i3.i78, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76 ]
  store i64 %i.ev, ptr %.sroa.011.0.lcssa.i75, align 4
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit2.i71
  store i32 %i.fh, ptr %.sroa.011.033.i69, align 4, !tbaa !347
  %i.fj = getelementptr inbounds nuw i8, ptr %storemerge.i1.i73, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !338
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.011.033.i69, i64 4
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !348
  %i.fm = icmp eq ptr %.sroa.011.033.i69, %i.ez
  br i1 %i.fm, label %bb.ae, label %bb.af, !prof !344

bb.ae:                                            ; preds = %bb.ad
  %i.fn = getelementptr inbounds i8, ptr %.sroa.12.032.i70, i64 -8 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !331 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76

bb.af:                                            ; preds = %bb.ad
  %i.fq = getelementptr inbounds i8, ptr %.sroa.011.033.i69, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit4.i76: ; preds = %bb.af, %bb.ae
  %i.fr = phi ptr [ %i.fo, %bb.ae ], [ %i.ez, %bb.af ]
  %.sroa.12.2.i77 = phi ptr [ %i.fn, %bb.ae ], [ %.sroa.12.032.i70, %bb.af ]
  %storemerge.i3.i78 = phi ptr [ %i.fp, %bb.ae ], [ %i.fq, %bb.af ] ; 2 uses
  %.not30.i79 = icmp eq ptr %storemerge.i1.i73, %.sroa.0.0.i47
  br i1 %.not30.i79, label %.critedge.i74, label %.lr.ph.i66, !llvm.loop !221

bb.ag:                                            ; preds = %.critedge.i74, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEmmEv.exit.i57
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.020.039.i55, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.el, i64 1024
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %bb.ah, label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60, !prof !344

bb.ah:                                            ; preds = %bb.ag
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.14.038.i56, i64 8 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !331
  br label %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60

_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60: ; preds = %bb.ah, %bb.ag
  %.sroa.14.2.i61 = phi ptr [ %i.fv, %bb.ah ], [ %.sroa.14.038.i56, %bb.ag ]
  %.sroa.020.2.i62 = phi ptr [ %i.fw, %bb.ah ], [ %i.fs, %bb.ag ] ; 2 uses
  %.not29.i63 = icmp eq ptr %.sroa.020.2.i62, %i.ed
  br i1 %.not29.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80, label %.lr.ph40.i54, !llvm.loop !222

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit5.i60, %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEppEv.exit.i50
  br i1 %11, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ai

._crit_edge189:                                   ; preds = %.thread, %bb.bi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiESt4pairIiiENS3_9select1stIiEEEENS2_14deque_iteratorIPS8_Lb0ELj0ELj0EmEEEEvT0_SF_T_.exit80
  ret void

bb.ai:                                            ; preds = %.lr.ph188, %bb.bi
  %.032186 = phi i64 [ 16, %.lr.ph188 ], [ %i.oa, %bb.bi ] ; 13 uses
  %i.gd = sub i64 %.0.i222231, %.032186
  %i.ge = icmp ugt i64 %i.gd, %.032186            ; 2 uses
  br i1 %i.ge, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gf = shl i64 %.032186, 1                     ; 6 uses
  %i.gg = icmp ugt i64 %.0.i222231, %i.gf
  br i1 %i.gg, label %.lr.ph183, label %._crit_edge184.thread

.lr.ph183:                                        ; preds = %bb.aj
  %.not.i.i91 = icmp eq i64 %.032186, 0
  %.not.i.i101 = icmp eq i64 %i.gf, 0
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph183, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.kn, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiES5_NS8_9select1stIiEEEEEEvT_SF_SF_T0_.exit ] ; 7 uses
  %i.gh = load ptr, ptr %0, align 8, !tbaa !525, !noalias !23087 ; 8 uses
  %i.gi = load ptr, ptr %10, align 8, !tbaa !526, !noalias !23087 ; 11 uses
  %.not.i.i81 = icmp eq i64 %.0181, 0             ; 2 uses
  br i1 %.not.i.i81, label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit90, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !331, !noalias !23087
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = ptrtoint ptr %i.gj to i64
  %i.gm = sub i64 %i.gk, %i.gl
  %i.gn = ashr exact i64 %i.gm, 3
  %i.go = add nsw i64 %i.gn, %.0181               ; 7 uses
  %or.cond.i.i82 = icmp ult i64 %i.go, 128
  br i1 %or.cond.i.i82, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %.0181
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %.0181
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairIiiELb0ELj0ELj0EmEplEl.exit90

bb.an:                                            ; preds = %bb.al
  %i.gr = icmp sgt i64 %i.go, 0
  %i.gs = lshr i64 %i.go, 7                       ; 2 uses
  %i.gt = or disjoint i64 %i.gs, -144115188075855872
  %i.gu = select i1 %i.gr, i64 %i.gs, i64 %i.gt   ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gi, i64 %i.gu ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !331, !noalias !23087
  %i.gx = shl nsw i64 %i.gu, 7
  %i.gy = sub nsw i64 %i.go, %i.gx
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gy
  %i.ha = icmp sgt i64 %i.go, 0
end_hunk_2
