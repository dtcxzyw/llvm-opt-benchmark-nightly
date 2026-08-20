inline.NumInlined: 24952
inline.NumDeleted: 2814
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_bbT0_RT1_:bb.a
  %i.bv = add i64 %.012.i.i.i.i.i.i59, -1         ; 6 uses
  %i.bw = icmp ugt i64 %i.bv, 2
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i75, label %._crit_edge.i.i.thread.i.i.i.i.i61

.lr.ph.i.i.i.i.i.i.i75:                           ; preds = %.lr.ph.i.i.i.i.i.i58, %.lr.ph.i.i.i.i.i.i.i75
  %.03644.i.i.i.i.i.i.i76 = phi i64 [ %.036.i.i.i.i.i.i.i81, %.lr.ph.i.i.i.i.i.i.i75 ], [ 2, %.lr.ph.i.i.i.i.i.i58 ] ; 2 uses
  %.036.in43.i.i.i.i.i.i.i77 = phi i64 [ %.036.in.i.i.i.i.i.i.i80, %.lr.ph.i.i.i.i.i.i.i75 ], [ 0, %.lr.ph.i.i.i.i.i.i58 ]
  %.03742.i.i.i.i.i.i.i78 = phi i64 [ %spec.select.i.i.i.i.i.i.i79, %.lr.ph.i.i.i.i.i.i.i75 ], [ 0, %.lr.ph.i.i.i.i.i.i58 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03644.i.i.i.i.i.i.i76 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 -4
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !69
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !69
  %i.cb = icmp slt i32 %i.bz, %i.ca
  %i.cc = or disjoint i64 %.036.in43.i.i.i.i.i.i.i77, 1
  %spec.select.i.i.i.i.i.i.i79 = select i1 %i.cb, i64 %i.cc, i64 %.03644.i.i.i.i.i.i.i76 ; 6 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %spec.select.i.i.i.i.i.i.i79
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !69
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03742.i.i.i.i.i.i.i78
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !69
  %.036.in.i.i.i.i.i.i.i80 = shl i64 %spec.select.i.i.i.i.i.i.i79, 1 ; 3 uses
  %.036.i.i.i.i.i.i.i81 = add i64 %.036.in.i.i.i.i.i.i.i80, 2 ; 3 uses
  %i.cg = icmp ult i64 %.036.i.i.i.i.i.i.i81, %i.bv
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i75, label %._crit_edge.i.i.i.i.i.i.i82, !llvm.loop !2846

._crit_edge.i.i.i.i.i.i.i82:                      ; preds = %.lr.ph.i.i.i.i.i.i.i75
  %i.ch = or disjoint i64 %.036.in.i.i.i.i.i.i.i80, 1
  %i.ci = icmp eq i64 %.036.i.i.i.i.i.i.i81, %i.bv
  br i1 %i.ci, label %.thread.i.i.i.i.i.i63, label %bb.i

._crit_edge.i.i.thread.i.i.i.i.i61:               ; preds = %.lr.ph.i.i.i.i.i.i58
  %i.cj = icmp eq i64 %i.bv, 2
  br i1 %i.cj, label %.thread.i.i.i.i.i.i63, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i.i.i62

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i.i.i62: ; preds = %._crit_edge.i.i.thread.i.i.i.i.i61
  store i32 %i.bt, ptr %0, align 4, !tbaa !69
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84

.thread.i.i.i.i.i.i63:                            ; preds = %._crit_edge.i.i.thread.i.i.i.i.i61, %._crit_edge.i.i.i.i.i.i.i82
  %.036.in.lcssa.i.i9.i.i.i.i.i64 = phi i64 [ 1, %._crit_edge.i.i.thread.i.i.i.i.i61 ], [ %i.ch, %._crit_edge.i.i.i.i.i.i.i82 ] ; 2 uses
  %.037.lcssa.i.i8.i.i.i.i.i65 = phi i64 [ 0, %._crit_edge.i.i.thread.i.i.i.i.i61 ], [ %spec.select.i.i.i.i.i.i.i79, %._crit_edge.i.i.i.i.i.i.i82 ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.036.in.lcssa.i.i9.i.i.i.i.i64
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !69
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.lcssa.i.i8.i.i.i.i.i65
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !69
  br label %.lr.ph52.i.i.i.i.i.i.i68.preheader

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i82
  %.not.i.i.i.i.i.i83 = icmp eq i64 %spec.select.i.i.i.i.i.i.i79, 0
  br i1 %.not.i.i.i.i.i.i83, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i72, label %.lr.ph52.i.i.i.i.i.i.i68.preheader

.lr.ph52.i.i.i.i.i.i.i68.preheader:               ; preds = %bb.i, %.thread.i.i.i.i.i.i63
  %.249.i.i.i.i.i.i.i69.ph = phi i64 [ %spec.select.i.i.i.i.i.i.i79, %bb.i ], [ %.036.in.lcssa.i.i9.i.i.i.i.i64, %.thread.i.i.i.i.i.i63 ]
  br label %.lr.ph52.i.i.i.i.i.i.i68

.lr.ph52.i.i.i.i.i.i.i68:                         ; preds = %.lr.ph52.i.i.i.i.i.i.i68.preheader, %bb.j
  %.249.i.i.i.i.i.i.i69 = phi i64 [ %.050.i.i.i.i.i.i.i71, %bb.j ], [ %.249.i.i.i.i.i.i.i69.ph, %.lr.ph52.i.i.i.i.i.i.i68.preheader ] ; 3 uses
  %.050.in.i.i.i.i.i.i.i70 = add i64 %.249.i.i.i.i.i.i.i69, -1
  %.050.i.i.i.i.i.i.i71 = lshr i64 %.050.in.i.i.i.i.i.i.i70, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.050.i.i.i.i.i.i.i71
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !69 ; 2 uses
  %i.cp = icmp slt i32 %i.co, %i.bt
  br i1 %i.cp, label %bb.j, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i72

bb.j:                                             ; preds = %.lr.ph52.i.i.i.i.i.i.i68
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.249.i.i.i.i.i.i.i69
  store i32 %i.co, ptr %i.cq, align 4, !tbaa !69
  %.not10.i.i.i.i.i.i74 = icmp eq i64 %.050.i.i.i.i.i.i.i71, 0
  br i1 %.not10.i.i.i.i.i.i74, label %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i72, label %.lr.ph52.i.i.i.i.i.i.i68, !llvm.loop !2847

_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i72: ; preds = %bb.j, %.lr.ph52.i.i.i.i.i.i.i68, %bb.i
  %.2.lcssa.i.i.i.i.i.i.i73 = phi i64 [ 0, %bb.i ], [ %.249.i.i.i.i.i.i.i69, %.lr.ph52.i.i.i.i.i.i.i68 ], [ 0, %bb.j ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2.lcssa.i.i.i.i.i.i.i73
  store i32 %i.bt, ptr %i.cr, align 4, !tbaa !69
  %i.cs = icmp ugt i64 %i.bv, 1
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i58, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84, !llvm.loop !2848

_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84: ; preds = %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.i.i.i.i.i72, %bb.h, %_ZN5boost7movelib16heap_sort_helperIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES2_mmRiSB_.exit.i.thread.i.i.i.i.i62
  br i1 %6, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84
  %i.ct = sub i64 0, %5
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ct
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opES3_EEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_T4_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.bg, i64 noundef %i.bm, i64 noundef %i.bn, i64 noundef %i.bi, ptr noundef nonnull %i.cu)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.bg, i64 noundef %i.bm, i64 noundef %i.bn, i64 noundef %i.bi)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.m:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !2566 ; 5 uses
  %i.cx = icmp ugt i64 %i.cw, %5
  br i1 %i.cx, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread: ; preds = %bb.m
  store i64 %5, ptr %i.cv, align 8, !tbaa !2566
  %.pre142 = load ptr, ptr %8, align 8, !tbaa !2564
  br label %bb.o

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit: ; preds = %bb.m
  %i.cy = icmp ult i64 %i.cw, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !2564  ; 5 uses
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.da = load i32, ptr %0, align 4, !tbaa !69    ; 4 uses
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !69
  %storemerge7.i85 = add nuw i64 %i.cw, 1         ; 4 uses
  %.not8.i86 = icmp eq i64 %storemerge7.i85, %5
  br i1 %.not8.i86, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %bb.n
  %i.db = xor i64 %i.cw, -1
  %i.dc = add i64 %5, %i.db                       ; 3 uses
  %min.iters.check151 = icmp ult i64 %i.dc, 8
  br i1 %min.iters.check151, label %.lr.ph.i87.preheader174, label %vector.ph152

vector.ph152:                                     ; preds = %.lr.ph.i87.preheader
  %n.vec153 = and i64 %i.dc, -8                   ; 3 uses
  %i.dd = add i64 %storemerge7.i85, %n.vec153
  %broadcast.splatinsert154 = insertelement <4 x i32> poison, i32 %i.da, i64 0
  %broadcast.splat155 = shufflevector <4 x i32> %broadcast.splatinsert154, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %.pre, i64 %storemerge7.i85
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph152
  %index157 = phi i64 [ 0, %vector.ph152 ], [ %index.next158, %vector.body156 ] ; 2 uses
  %i.df = getelementptr [4 x i8], ptr %i.de, i64 %index157 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <4 x i32> %broadcast.splat155, ptr %i.df, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat155, ptr %i.dg, align 4, !tbaa !69
  %index.next158 = add nuw i64 %index157, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.dh, label %middle.block159, label %vector.body156, !llvm.loop !2864

middle.block159:                                  ; preds = %vector.body156
  %cmp.n160 = icmp eq i64 %i.dc, %n.vec153
  br i1 %cmp.n160, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, label %.lr.ph.i87.preheader174

.lr.ph.i87.preheader174:                          ; preds = %.lr.ph.i87.preheader, %middle.block159
  %storemerge10.i88.ph = phi i64 [ %storemerge7.i85, %.lr.ph.i87.preheader ], [ %i.dd, %middle.block159 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader174, %.lr.ph.i87
  %storemerge10.i88 = phi i64 [ %storemerge.i89, %.lr.ph.i87 ], [ %storemerge10.i88.ph, %.lr.ph.i87.preheader174 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %storemerge10.i88
  store i32 %i.da, ptr %i.di, align 4, !tbaa !69
  %storemerge.i89 = add i64 %storemerge10.i88, 1  ; 2 uses
  %.not.i90 = icmp eq i64 %storemerge.i89, %5
  br i1 %.not.i90, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, label %.lr.ph.i87, !llvm.loop !2865

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92: ; preds = %.lr.ph.i87, %middle.block159, %bb.n
  store i64 %5, ptr %i.cv, align 8, !tbaa !2566
  store i32 %i.da, ptr %0, align 4, !tbaa !69
  br label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %.pre143 = phi ptr [ %.pre142, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.pre143, i64 %5
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = add i64 %i.dk, 7
  %i.dm = and i64 %i.dl, -8
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  %i.do = urem i64 %i.c, %5                       ; 3 uses
  %i.dp = sub i64 %i.b, %i.do
  %i.dq = urem i64 %i.dp, %5                      ; 2 uses
  %i.dr = add i64 %i.do, %i.dq
  %i.ds = sub i64 %i.b, %i.dr
  %i.dt = udiv i64 %i.ds, %5                      ; 4 uses
  %i.du = udiv i64 %i.c, %5                       ; 2 uses
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = shl i64 %i.dt, 3
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %.mask.i = and i64 %i.dt, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %min.iters.check163 = icmp ult i64 %i.dx, 4
  br i1 %min.iters.check163, label %.lr.ph.i.i.preheader173, label %vector.ph164

vector.ph164:                                     ; preds = %.lr.ph.i.i.preheader
  %i.dy = and i64 %i.dt, 3                        ; 2 uses
  %n.vec165 = sub nuw nsw i64 %i.dx, %i.dy        ; 3 uses
  %i.dz = shl i64 %n.vec165, 3
  %i.ea = getelementptr i8, ptr %i.dn, i64 %i.dz
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next168, %vector.body166 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph164 ], [ %vec.ind.next, %vector.body166 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.eb = shl i64 %index167, 3
  %next.gep = getelementptr i8, ptr %i.dn, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.ec, align 8, !tbaa !272
  %index.next168 = add nuw i64 %index167, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ed = icmp eq i64 %index.next168, %n.vec165
  br i1 %i.ed, label %middle.block169, label %vector.body166, !llvm.loop !2866

middle.block169:                                  ; preds = %vector.body166
  %cmp.n170 = icmp eq i64 %i.dy, 0
  br i1 %cmp.n170, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader173

.lr.ph.i.i.preheader173:                          ; preds = %.lr.ph.i.i.preheader, %middle.block169
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec165, %middle.block169 ]
  %.079.i.i.ph = phi ptr [ %i.dn, %.lr.ph.i.i.preheader ], [ %i.ea, %middle.block169 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader173, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ef, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader173 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ee, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader173 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ef = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ef, %i.dx
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i, !llvm.loop !2867

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit: ; preds = %.lr.ph.i.i, %middle.block169, %bb.o
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %i.dn, ptr noundef %0, i64 noundef %5, i64 noundef %i.do, i64 noundef %i.du, i64 noundef %i.dv, i64 noundef %i.dq, ptr noundef %.pre143)
  %i.eg = load i64, ptr %i.cv, align 8, !tbaa !2566
  %.not.i93 = icmp eq i64 %i.eg, 0
  br i1 %.not.i93, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit
  store i64 0, ptr %i.cv, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, %bb.k, %bb.l, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %1 to i64                   ; 12 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.e                       ; 2 uses
  %.not38 = icmp ugt i64 %i.g, %i.i
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = ashr exact i64 %i.g, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.017.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01316.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 13 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %bb.d, !llvm.loop !2868

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i141.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !2566 ; 4 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !2564  ; 7 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %.pre140 = ptrtoaddr ptr %.pre to i64
  %i.v = add i64 %i.e, -4
  %i.w = sub i64 %i.v, %.114.i141.le              ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 44
  %i.z = sub i64 %.114.i141.le, %.pre140
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond272 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond272, label %.lr.ph.i.i.preheader296, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.pre, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.114.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.ad ; 2 uses
  %next.gep142 = getelementptr i8, ptr %.114.i, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !69
  %wide.load143 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !69
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69
  store <4 x i32> %wide.load143, ptr %i.af, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !2869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader296

.lr.ph.i.i.preheader296:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader296, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader296 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader296 ] ; 2 uses
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !69
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !2870

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.u, 2                     ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !2564  ; 8 uses
  %.not8.i17.i = icmp eq i64 %i.u, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = add i64 %.idx26.i, -4                   ; 2 uses
  %i.ao = lshr exact i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check148 = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %.114.i141.le, %i.am
  %diff.check146 = icmp ugt i64 %i.aq, -32
  %or.cond273 = select i1 %min.iters.check148, i1 true, i1 %diff.check146
  br i1 %or.cond273, label %.lr.ph.i18.i.preheader294, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph.i18.i.preheader
  %n.vec150 = and i64 %i.ap, 9223372036854775800  ; 3 uses
  %i.ar = shl i64 %n.vec150, 2                    ; 2 uses
  %i.as = getelementptr i8, ptr %i.al, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %.114.i, i64 %i.ar
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next157, %vector.body151 ] ; 2 uses
  %i.au = shl i64 %index152, 2                    ; 2 uses
  %next.gep153 = getelementptr i8, ptr %i.al, i64 %i.au ; 2 uses
  %next.gep154 = getelementptr i8, ptr %.114.i, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep154, i64 16
  %wide.load155 = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !69
  %wide.load156 = load <4 x i32>, ptr %i.av, align 4, !tbaa !69
  %i.aw = getelementptr i8, ptr %next.gep153, i64 16
  store <4 x i32> %wide.load155, ptr %next.gep153, align 4, !tbaa !69
  store <4 x i32> %wide.load156, ptr %i.aw, align 4, !tbaa !69
  %index.next157 = add nuw i64 %index152, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.ax, label %middle.block158, label %vector.body151, !llvm.loop !2871

middle.block158:                                  ; preds = %vector.body151
  %cmp.n159 = icmp eq i64 %i.ap, %n.vec150
  br i1 %cmp.n159, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader294

.lr.ph.i18.i.preheader294:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block158
  %.010.i19.i.ph = phi ptr [ %i.al, %.lr.ph.i18.i.preheader ], [ %i.as, %middle.block158 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.at, %middle.block158 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader294, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.ba, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader294 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.az, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader294 ] ; 2 uses
  %i.ay = load i32, ptr %.079.i20.i, align 4, !tbaa !69
  store i32 %i.ay, ptr %.010.i19.i, align 4, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !2872

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block158, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %middle.block158 ], [ %i.ba, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i163 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.r
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.bb = add i64 %i.e, -4
  %i.bc = shl i64 %i.u, 2
  %i.bd = add i64 %i.bc, %.114.i141.le
  %i.be = sub i64 %i.bb, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !69, !noalias !3291
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !69, !noalias !3291
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !69, !noalias !3291
  store i32 %i.eg, ptr %i.ed, align 4, !tbaa !69, !noalias !3291
  %.not.i30 = icmp eq ptr %i.ec, %i.av
  br i1 %.not.i30, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i29, !llvm.loop !3293

bb.w:                                             ; preds = %bb.u
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.w
  %i.eh = add i64 %i.u, %i.cm                     ; 2 uses
  %i.ei = lshr i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check320 = icmp ult i64 %i.eh, 28
  %i.ek = sub i64 %.sroa.064.0318, %i.cm
  %diff.check = icmp ugt i64 %i.ek, -32
  %or.cond = or i1 %min.iters.check320, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader374, label %vector.ph321

vector.ph321:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec322 = and i64 %i.ej, 9223372036854775800  ; 3 uses
  %i.el = mul i64 %n.vec322, -4                   ; 2 uses
  %i.em = getelementptr i8, ptr %.sroa.064.0, i64 %i.el ; 2 uses
  %i.en = getelementptr i8, ptr %i.cl, i64 %i.el
  br label %vector.body323

vector.body323:                                   ; preds = %vector.body323, %vector.ph321
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next329, %vector.body323 ] ; 2 uses
  %i.eo = mul i64 %index324, -4                   ; 2 uses
  %next.gep325 = getelementptr i8, ptr %.sroa.064.0, i64 %i.eo ; 2 uses
  %next.gep326 = getelementptr i8, ptr %i.cl, i64 %i.eo ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %next.gep326, i64 -16
  %i.eq = getelementptr inbounds i8, ptr %next.gep326, i64 -32
  %wide.load327 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !69, !noalias !3294
  %wide.load328 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !69, !noalias !3294
  %i.er = getelementptr inbounds i8, ptr %next.gep325, i64 -16
  %i.es = getelementptr inbounds i8, ptr %next.gep325, i64 -32
  store <4 x i32> %wide.load327, ptr %i.er, align 4, !tbaa !69, !noalias !3294
  store <4 x i32> %wide.load328, ptr %i.es, align 4, !tbaa !69, !noalias !3294
  %index.next329 = add nuw i64 %index324, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next329, %n.vec322
  br i1 %i.et, label %middle.block330, label %vector.body323, !llvm.loop !3299

middle.block330:                                  ; preds = %vector.body323
  %cmp.n331 = icmp eq i64 %i.ej, %n.vec322
  br i1 %cmp.n331, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader374

.lr.ph.i.i.preheader374:                          ; preds = %.lr.ph.i.i.preheader, %middle.block330
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.em, %middle.block330 ]
  %.ph375 = phi ptr [ %i.cl, %.lr.ph.i.i.preheader ], [ %i.en, %middle.block330 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader374, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ex, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader374 ]
  %i.eu = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.ph375, %.lr.ph.i.i.preheader374 ]
  %i.ev = getelementptr inbounds i8, ptr %i.eu, i64 -4 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !69, !noalias !3294
  %i.ex = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 3 uses
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !69, !noalias !3294
  %.not.i.i31 = icmp eq ptr %i.ev, %i.av
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !3300

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block363, %middle.block330, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.av, %bb.s ], [ %i.ex, %.lr.ph.i.i ], [ %i.cl, %bb.t ], [ %i.dj, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.cz, %middle.block ], [ %i.em, %middle.block330 ], [ %i.du, %middle.block363 ], [ %i.ee, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2933
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %i.o, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.av, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -8 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !272
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !272
  store i64 %i.fc, ptr %i.ez, align 8, !tbaa !272
  store i64 %i.fb, ptr %i.fa, align 8, !tbaa !272
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fd = load ptr, ptr %2, align 8, !tbaa !3061  ; 2 uses
  %i.fe = icmp eq ptr %i.ey, %i.fd
  br i1 %i.fe, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = icmp eq ptr %i.fd, %i.o
  br i1 %i.ff, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.o, %bb.y ], [ %i.ey, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3061
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3061
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fg = phi ptr [ %i.o, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.o, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.av, ptr %3, align 8, !tbaa !2933
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 -8 ; 2 uses
  store ptr %i.fh, ptr %1, align 8, !tbaa !3061
  %i.fi = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fi to i64
  %i.fj = add i64 %.0140, %.neg
  %i.fk = icmp ne i64 %i.au, 0
  %.neg24 = sext i1 %i.fk to i64
  %i.fl = add i64 %.sroa.speculated, %.neg24
  %i.fm = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fm, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3301

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.fn = load ptr, ptr %6, align 8, !tbaa !2933
  store ptr %i.fn, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_SF_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2567 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.j, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %3, align 8, !tbaa !2564   ; 4 uses
  %i.m = icmp eq ptr %0, %1
  %i.n = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %0, align 4, !tbaa !69     ; 4 uses
  store i32 %i.o, ptr %i.l, align 4, !tbaa !69
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.p = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  %i.q = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.s, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !3302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader22

.lr.ph.i.i.preheader22:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.q, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader22, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader22 ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %storemerge10.i.i
  store i32 %i.o, ptr %i.v, align 4, !tbaa !69
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !3303

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.o, ptr %0, align 4, !tbaa !69
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.l, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.f, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, %bb.c, %.preheader.preheader.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_SF_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %7 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ne i64 %3, 0
  %or.cond104 = and i1 %i.c, %i.b
  br i1 %or.cond104, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %invariant.op = sub i64 -4, %i.a
  %invariant.op282 = sub i64 -4, %i.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit
  %.tr91108 = phi i64 [ %4, %.lr.ph ], [ %i.ef, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 5 uses
  %.tr90107 = phi i64 [ %3, %.lr.ph ], [ %i.ap, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 6 uses
  %.tr88106 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 27 uses
  %.tr105 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit ] ; 10 uses
  %.tr88106165 = ptrtoaddr ptr %.tr88106 to i64   ; 7 uses
  %.not = icmp ugt i64 %.tr90107, %6
  %.not76 = icmp ugt i64 %.tr91108, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS2_mNS0_7move_opEEEEEvT_SF_SF_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS2_mNS0_7move_opEEEEEvT_SF_SF_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !3304
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !3306
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !3307
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS2_mSC_EEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %.tr91108, %.tr90107             ; 2 uses
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %.tr88106, align 4, !tbaa !69 ; 2 uses
  %i.k = load i32, ptr %.tr105, align 4, !tbaa !69 ; 2 uses
  %i.l = icmp slt i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 %i.j, ptr %.tr105, align 4, !tbaa !69
  store i32 %i.k, ptr %.tr88106, align 4, !tbaa !69
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.h, 16
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_T0_(ptr noundef %.tr105, ptr noundef %.tr88106, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.n = icmp ugt i64 %.tr90107, %.tr91108
  br i1 %i.n, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = lshr i64 %.tr90107, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.tr105, i64 %i.o ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr88106
  %.pre = ptrtoint ptr %.tr88106 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.q = sub i64 %i.d, %.pre
  %i.r = ashr exact i64 %i.q, 2
  %i.s = load i32, ptr %i.p, align 4, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.r, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr88106, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.01316.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !69
  %i.w = icmp slt i32 %i.v, %i.s                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.neg.i = xor i64 %i.t, -1
  %i.y = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.w, ptr %i.x, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.w, i64 %i.y, i64 %i.t      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !2849

_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre126 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit
  %.pre-phi127 = phi i64 [ %.pre126, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr88106, %bb.i ]
  %i.z = sub i64 %.pre-phi127, %.pre
  %i.aa = ashr exact i64 %i.z, 2
  br label %bb.m

bb.k:                                             ; preds = %bb.h
  %i.ab = lshr i64 %.tr91108, 1                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.tr88106, i64 %i.ab ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr88106, %.tr105
  %.pre124 = ptrtoint ptr %.tr105 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ad = ptrtoint ptr %.tr88106 to i64
  %i.ae = sub i64 %i.ad, %.pre124
  %i.af = ashr exact i64 %i.ae, 2
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i79
  %.017.i80 = phi i64 [ %i.af, %.lr.ph.i79 ], [ %.1.i84, %bb.l ] ; 2 uses
  %.01316.i81 = phi ptr [ %.tr105, %.lr.ph.i79 ], [ %.114.i83, %bb.l ] ; 2 uses
  %i.ah = lshr i64 %.017.i80, 1                   ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.01316.i81, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !69
  %i.ak = icmp slt i32 %i.ag, %i.aj               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %.neg.i82 = xor i64 %i.ah, -1
  %i.am = add i64 %.017.i80, %.neg.i82
  %.114.i83 = select i1 %i.ak, ptr %.01316.i81, ptr %i.al ; 3 uses
  %.1.i84 = select i1 %i.ak, i64 %i.ah, i64 %i.am ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit, label %bb.l, !llvm.loop !2868

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit: ; preds = %bb.l
  %.pre128 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.k, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit
  %.pre-phi129 = phi i64 [ %.pre128, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.pre124, %bb.k ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit.loopexit ], [ %.tr105, %bb.k ]
  %i.an = sub i64 %.pre-phi129, %.pre124
  %i.ao = ashr exact i64 %i.an, 2
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ac, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 12 uses
  %.070 = phi i64 [ %i.o, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ao, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 3 uses
  %.069 = phi i64 [ %i.aa, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %i.ab, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi ptr [ %i.p, %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit ] ; 18 uses
  %.071217 = ptrtoaddr ptr %.071 to i64           ; 2 uses
  %.0164 = ptrtoaddr ptr %.0 to i64               ; 5 uses
  %i.ap = sub i64 %.tr90107, %.070                ; 4 uses
  %i.aq = icmp ule i64 %i.ap, %.069
  %.not.i87 = icmp ugt i64 %.069, %6
  %or.cond.i = or i1 %i.aq, %.not.i87
  br i1 %or.cond.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPiS2_EET_S3_S3_S3_NS0_9iter_sizeIS3_E4typeES6_T0_S6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not8.i.i = icmp eq ptr %.tr88106, %.071
  br i1 %.not8.i.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %i.ar = add i64 %.071217, -4
  %i.as = sub i64 %i.ar, %.tr88106165             ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.as, 28
  %i.av = sub i64 %.tr88106165, %i.a
  %diff.check235 = icmp ugt i64 %i.av, -32
  %or.cond251 = or i1 %min.iters.check237, %diff.check235
  br i1 %or.cond251, label %.lr.ph.i.i.preheader263, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec239 = and i64 %i.au, 9223372036854775800  ; 3 uses
  %i.aw = shl i64 %n.vec239, 2                    ; 2 uses
  %i.ax = getelementptr i8, ptr %5, i64 %i.aw     ; 2 uses
  %i.ay = getelementptr i8, ptr %.tr88106, i64 %i.aw
  br label %vector.body240
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SD_T0_:bb.a
.lr.ph.i.13.2:                                    ; preds = %.lr.ph.i.13.1
  store i32 %i.jo, ptr %i.jk, align 4, !tbaa !69
  %i.jq = getelementptr i8, ptr %i.f, i64 40      ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !69 ; 2 uses
  %i.js = icmp slt i32 %i.ji, %i.jr
  br i1 %i.js, label %.lr.ph.i.13.3, label %.critedge.i.13

.lr.ph.i.13.3:                                    ; preds = %.lr.ph.i.13.2
  store i32 %i.jr, ptr %i.jn, align 4, !tbaa !69
  %i.jt = getelementptr i8, ptr %i.f, i64 36      ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !69 ; 2 uses
  %i.jv = icmp slt i32 %i.ji, %i.ju
  br i1 %i.jv, label %.lr.ph.i.13.4, label %.critedge.i.13

.lr.ph.i.13.4:                                    ; preds = %.lr.ph.i.13.3
  store i32 %i.ju, ptr %i.jq, align 4, !tbaa !69
  %i.jw = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !69 ; 2 uses
  %i.jy = icmp slt i32 %i.ji, %i.jx
  br i1 %i.jy, label %.lr.ph.i.13.5, label %.critedge.i.13

.lr.ph.i.13.5:                                    ; preds = %.lr.ph.i.13.4
  store i32 %i.jx, ptr %i.jt, align 4, !tbaa !69
  %i.jz = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !69 ; 2 uses
  %i.kb = icmp slt i32 %i.ji, %i.ka
  br i1 %i.kb, label %.lr.ph.i.13.6, label %.critedge.i.13

.lr.ph.i.13.6:                                    ; preds = %.lr.ph.i.13.5
  store i32 %i.ka, ptr %i.jw, align 4, !tbaa !69
  %i.kc = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !69 ; 2 uses
  %i.ke = icmp slt i32 %i.ji, %i.kd
  br i1 %i.ke, label %.lr.ph.i.13.7, label %.critedge.i.13

.lr.ph.i.13.7:                                    ; preds = %.lr.ph.i.13.6
  store i32 %i.kd, ptr %i.jz, align 4, !tbaa !69
  %i.kf = getelementptr i8, ptr %i.f, i64 20      ; 3 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !69 ; 2 uses
  %i.kh = icmp slt i32 %i.ji, %i.kg
  br i1 %i.kh, label %.lr.ph.i.13.8, label %.critedge.i.13

.lr.ph.i.13.8:                                    ; preds = %.lr.ph.i.13.7
  store i32 %i.kg, ptr %i.kc, align 4, !tbaa !69
  %i.ki = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !69 ; 2 uses
  %i.kk = icmp slt i32 %i.ji, %i.kj
  br i1 %i.kk, label %.lr.ph.i.13.9, label %.critedge.i.13

.lr.ph.i.13.9:                                    ; preds = %.lr.ph.i.13.8
  store i32 %i.kj, ptr %i.kf, align 4, !tbaa !69
  %i.kl = getelementptr i8, ptr %i.f, i64 12      ; 3 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !69 ; 2 uses
  %i.kn = icmp slt i32 %i.ji, %i.km
  br i1 %i.kn, label %.lr.ph.i.13.10, label %.critedge.i.13

.lr.ph.i.13.10:                                   ; preds = %.lr.ph.i.13.9
  store i32 %i.km, ptr %i.ki, align 4, !tbaa !69
  %i.ko = getelementptr i8, ptr %i.f, i64 8       ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !69 ; 2 uses
  %i.kq = icmp slt i32 %i.ji, %i.kp
  br i1 %i.kq, label %.lr.ph.i.13.11, label %.critedge.i.13

.lr.ph.i.13.11:                                   ; preds = %.lr.ph.i.13.10
  store i32 %i.kp, ptr %i.kl, align 4, !tbaa !69
  %i.kr = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !69 ; 2 uses
  %i.kt = icmp slt i32 %i.ji, %i.ks
  br i1 %i.kt, label %.lr.ph.i.13.12, label %.critedge.i.13

.lr.ph.i.13.12:                                   ; preds = %.lr.ph.i.13.11
  store i32 %i.ks, ptr %i.ko, align 4, !tbaa !69
  %i.ku = load i32, ptr %i.f, align 4, !tbaa !69  ; 2 uses
  %i.kv = icmp slt i32 %i.ji, %i.ku
  br i1 %i.kv, label %bb.n, label %.critedge.i.13

bb.n:                                             ; preds = %.lr.ph.i.13.12
  store i32 %i.ku, ptr %i.kr, align 4, !tbaa !69
  br label %.critedge.i.13

.critedge.i.13:                                   ; preds = %.lr.ph.i.preheader.13, %.lr.ph.i.13.1, %.lr.ph.i.13.2, %.lr.ph.i.13.3, %.lr.ph.i.13.4, %.lr.ph.i.13.5, %.lr.ph.i.13.6, %.lr.ph.i.13.7, %.lr.ph.i.13.8, %.lr.ph.i.13.9, %.lr.ph.i.13.10, %.lr.ph.i.13.11, %.lr.ph.i.13.12, %bb.n
  %.021.lcssa.i.ph.13 = phi ptr [ %i.f, %bb.n ], [ %.02236.i.ptr.12, %.lr.ph.i.preheader.13 ], [ %i.jk, %.lr.ph.i.13.1 ], [ %i.kr, %.lr.ph.i.13.12 ], [ %i.jn, %.lr.ph.i.13.2 ], [ %i.kc, %.lr.ph.i.13.7 ], [ %i.jq, %.lr.ph.i.13.3 ], [ %i.ko, %.lr.ph.i.13.11 ], [ %i.jt, %.lr.ph.i.13.4 ], [ %i.ki, %.lr.ph.i.13.9 ], [ %i.jw, %.lr.ph.i.13.5 ], [ %i.kl, %.lr.ph.i.13.10 ], [ %i.jz, %.lr.ph.i.13.6 ], [ %i.kf, %.lr.ph.i.13.8 ]
  store i32 %i.ji, ptr %.021.lcssa.i.ph.13, align 4, !tbaa !69
  %.pre81 = load i32, ptr %.02236.i.ptr.13, align 4, !tbaa !69
  br label %.lr.ph37.i.14

.lr.ph37.i.14:                                    ; preds = %.critedge.i.13, %.lr.ph37.i.13
  %i.kw = phi i32 [ %.pre81, %.critedge.i.13 ], [ %i.ji, %.lr.ph37.i.13 ] ; 2 uses
  %.02236.i.ptr.14 = getelementptr inbounds nuw i8, ptr %i.f, i64 60 ; 2 uses
  %i.kx = load i32, ptr %.02236.i.ptr.14, align 4, !tbaa !69 ; 16 uses
  %i.ky = icmp slt i32 %i.kx, %i.kw
  br i1 %i.ky, label %.lr.ph.i.preheader.14, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

.lr.ph.i.preheader.14:                            ; preds = %.lr.ph37.i.14
  store i32 %i.kw, ptr %.02236.i.ptr.14, align 4, !tbaa !69
  %i.kz = getelementptr i8, ptr %i.f, i64 52      ; 3 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !69 ; 2 uses
  %i.lb = icmp slt i32 %i.kx, %i.la
  br i1 %i.lb, label %.lr.ph.i.14.1, label %.critedge.i.14

.lr.ph.i.14.1:                                    ; preds = %.lr.ph.i.preheader.14
  store i32 %i.la, ptr %.02236.i.ptr.13, align 4, !tbaa !69
  %i.lc = getelementptr i8, ptr %i.f, i64 48      ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !69 ; 2 uses
  %i.le = icmp slt i32 %i.kx, %i.ld
  br i1 %i.le, label %.lr.ph.i.14.2, label %.critedge.i.14

.lr.ph.i.14.2:                                    ; preds = %.lr.ph.i.14.1
  store i32 %i.ld, ptr %i.kz, align 4, !tbaa !69
  %i.lf = getelementptr i8, ptr %i.f, i64 44      ; 3 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !69 ; 2 uses
  %i.lh = icmp slt i32 %i.kx, %i.lg
  br i1 %i.lh, label %.lr.ph.i.14.3, label %.critedge.i.14

.lr.ph.i.14.3:                                    ; preds = %.lr.ph.i.14.2
  store i32 %i.lg, ptr %i.lc, align 4, !tbaa !69
  %i.li = getelementptr i8, ptr %i.f, i64 40      ; 3 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !69 ; 2 uses
  %i.lk = icmp slt i32 %i.kx, %i.lj
  br i1 %i.lk, label %.lr.ph.i.14.4, label %.critedge.i.14

.lr.ph.i.14.4:                                    ; preds = %.lr.ph.i.14.3
  store i32 %i.lj, ptr %i.lf, align 4, !tbaa !69
  %i.ll = getelementptr i8, ptr %i.f, i64 36      ; 3 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !69 ; 2 uses
  %i.ln = icmp slt i32 %i.kx, %i.lm
  br i1 %i.ln, label %.lr.ph.i.14.5, label %.critedge.i.14

.lr.ph.i.14.5:                                    ; preds = %.lr.ph.i.14.4
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !69
  %i.lo = getelementptr i8, ptr %i.f, i64 32      ; 3 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !69 ; 2 uses
  %i.lq = icmp slt i32 %i.kx, %i.lp
  br i1 %i.lq, label %.lr.ph.i.14.6, label %.critedge.i.14

.lr.ph.i.14.6:                                    ; preds = %.lr.ph.i.14.5
  store i32 %i.lp, ptr %i.ll, align 4, !tbaa !69
  %i.lr = getelementptr i8, ptr %i.f, i64 28      ; 3 uses
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !69 ; 2 uses
  %i.lt = icmp slt i32 %i.kx, %i.ls
  br i1 %i.lt, label %.lr.ph.i.14.7, label %.critedge.i.14

.lr.ph.i.14.7:                                    ; preds = %.lr.ph.i.14.6
  store i32 %i.ls, ptr %i.lo, align 4, !tbaa !69
  %i.lu = getelementptr i8, ptr %i.f, i64 24      ; 3 uses
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !69 ; 2 uses
  %i.lw = icmp slt i32 %i.kx, %i.lv
  br i1 %i.lw, label %.lr.ph.i.14.8, label %.critedge.i.14

.lr.ph.i.14.8:                                    ; preds = %.lr.ph.i.14.7
  store i32 %i.lv, ptr %i.lr, align 4, !tbaa !69
  %i.lx = getelementptr i8, ptr %i.f, i64 20      ; 3 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !69 ; 2 uses
  %i.lz = icmp slt i32 %i.kx, %i.ly
  br i1 %i.lz, label %.lr.ph.i.14.9, label %.critedge.i.14

.lr.ph.i.14.9:                                    ; preds = %.lr.ph.i.14.8
  store i32 %i.ly, ptr %i.lu, align 4, !tbaa !69
  %i.ma = getelementptr i8, ptr %i.f, i64 16      ; 3 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !69 ; 2 uses
  %i.mc = icmp slt i32 %i.kx, %i.mb
  br i1 %i.mc, label %.lr.ph.i.14.10, label %.critedge.i.14

.lr.ph.i.14.10:                                   ; preds = %.lr.ph.i.14.9
  store i32 %i.mb, ptr %i.lx, align 4, !tbaa !69
  %i.md = getelementptr i8, ptr %i.f, i64 12      ; 3 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !69 ; 2 uses
  %i.mf = icmp slt i32 %i.kx, %i.me
  br i1 %i.mf, label %.lr.ph.i.14.11, label %.critedge.i.14

.lr.ph.i.14.11:                                   ; preds = %.lr.ph.i.14.10
  store i32 %i.me, ptr %i.ma, align 4, !tbaa !69
  %i.mg = getelementptr i8, ptr %i.f, i64 8       ; 3 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !69 ; 2 uses
  %i.mi = icmp slt i32 %i.kx, %i.mh
  br i1 %i.mi, label %.lr.ph.i.14.12, label %.critedge.i.14

.lr.ph.i.14.12:                                   ; preds = %.lr.ph.i.14.11
  store i32 %i.mh, ptr %i.md, align 4, !tbaa !69
  %i.mj = getelementptr i8, ptr %i.f, i64 4       ; 3 uses
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !69 ; 2 uses
  %i.ml = icmp slt i32 %i.kx, %i.mk
  br i1 %i.ml, label %.lr.ph.i.14.13, label %.critedge.i.14

.lr.ph.i.14.13:                                   ; preds = %.lr.ph.i.14.12
  store i32 %i.mk, ptr %i.mg, align 4, !tbaa !69
  %i.mm = load i32, ptr %i.f, align 4, !tbaa !69  ; 2 uses
  %i.mn = icmp slt i32 %i.kx, %i.mm
  br i1 %i.mn, label %bb.o, label %.critedge.i.14

bb.o:                                             ; preds = %.lr.ph.i.14.13
  store i32 %i.mm, ptr %i.mj, align 4, !tbaa !69
  br label %.critedge.i.14

.critedge.i.14:                                   ; preds = %.lr.ph.i.preheader.14, %.lr.ph.i.14.1, %.lr.ph.i.14.2, %.lr.ph.i.14.3, %.lr.ph.i.14.4, %.lr.ph.i.14.5, %.lr.ph.i.14.6, %.lr.ph.i.14.7, %.lr.ph.i.14.8, %.lr.ph.i.14.9, %.lr.ph.i.14.10, %.lr.ph.i.14.11, %.lr.ph.i.14.12, %.lr.ph.i.14.13, %bb.o
  %.021.lcssa.i.ph.14 = phi ptr [ %i.f, %bb.o ], [ %.02236.i.ptr.13, %.lr.ph.i.preheader.14 ], [ %i.kz, %.lr.ph.i.14.1 ], [ %i.mj, %.lr.ph.i.14.13 ], [ %i.lc, %.lr.ph.i.14.2 ], [ %i.ma, %.lr.ph.i.14.10 ], [ %i.lf, %.lr.ph.i.14.3 ], [ %i.mg, %.lr.ph.i.14.12 ], [ %i.li, %.lr.ph.i.14.4 ], [ %i.lu, %.lr.ph.i.14.8 ], [ %i.ll, %.lr.ph.i.14.5 ], [ %i.md, %.lr.ph.i.14.11 ], [ %i.lo, %.lr.ph.i.14.6 ], [ %i.lx, %.lr.ph.i.14.9 ], [ %i.lr, %.lr.ph.i.14.7 ]
  store i32 %i.kx, ptr %.021.lcssa.i.ph.14, align 4, !tbaa !69
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit: ; preds = %.critedge.i.14, %.lr.ph37.i.14
  %i.mo = add i64 %.04460, 16                     ; 3 uses
  %i.mp = sub i64 %i.d, %i.mo
  %i.mq = icmp ugt i64 %i.mp, 16
  br i1 %i.mq, label %.lr.ph, label %._crit_edge, !llvm.loop !3401

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.mo, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit ]
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.mr, %1
  %.02233.i46 = getelementptr inbounds nuw i8, ptr %i.mr, i64 4 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, label %.lr.ph37.i47

.lr.ph37.i47:                                     ; preds = %._crit_edge, %bb.r
  %.02236.i48 = phi ptr [ %.022.i50, %bb.r ], [ %.02233.i46, %._crit_edge ] ; 4 uses
  %.pn35.i49 = phi ptr [ %.02236.i48, %bb.r ], [ %i.mr, %._crit_edge ] ; 3 uses
  %i.ms = load i32, ptr %.02236.i48, align 4, !tbaa !69 ; 3 uses
  %i.mt = load i32, ptr %.pn35.i49, align 4, !tbaa !69 ; 2 uses
  %i.mu = icmp slt i32 %i.ms, %i.mt
  br i1 %i.mu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph37.i47
  store i32 %i.mt, ptr %.02236.i48, align 4, !tbaa !69
  %.not2628.i52 = icmp eq ptr %.pn35.i49, %i.mr
  br i1 %.not2628.i52, label %.critedge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.p, %bb.q
  %.030.i54 = phi ptr [ %i.mv, %bb.q ], [ %.pn35.i49, %bb.p ] ; 3 uses
  %i.mv = getelementptr i8, ptr %.030.i54, i64 -4 ; 3 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !69 ; 2 uses
  %i.mx = icmp slt i32 %i.ms, %i.mw
  br i1 %i.mx, label %bb.q, label %.critedge.i55

.critedge.i55:                                    ; preds = %bb.q, %.lr.ph.i53, %bb.p
  %.021.lcssa.i56 = phi ptr [ %i.mr, %bb.p ], [ %.030.i54, %.lr.ph.i53 ], [ %i.mr, %bb.q ]
  store i32 %i.ms, ptr %.021.lcssa.i56, align 4, !tbaa !69
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph.i53
  store i32 %i.mw, ptr %.030.i54, align 4, !tbaa !69
  %.not26.i57 = icmp eq ptr %i.mv, %i.mr
  br i1 %.not26.i57, label %.critedge.i55, label %.lr.ph.i53, !llvm.loop !3329

bb.r:                                             ; preds = %.critedge.i55, %.lr.ph37.i47
  %.022.i50 = getelementptr inbounds nuw i8, ptr %.02236.i48, i64 4 ; 2 uses
  %.not25.i51 = icmp eq ptr %.022.i50, %1
  br i1 %.not25.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, label %.lr.ph37.i47, !llvm.loop !3330

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58: ; preds = %bb.r, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.v, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58, %bb.v
  %.04365 = phi i64 [ %i.nq, %bb.v ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit58 ] ; 10 uses
  %i.my = sub i64 %i.d, %.04365
  %i.mz = icmp ugt i64 %i.my, %.04365             ; 2 uses
  br i1 %i.mz, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %.lr.ph67
  %i.na = shl i64 %.04365, 1                      ; 3 uses
  %i.nb = icmp ugt i64 %i.d, %i.na
  br i1 %i.nb, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.s
  %.idx59 = shl i64 %.04365, 2                    ; 2 uses
  %.idx = shl i64 %.04365, 3
  %i.nc = ashr exact i64 %.idx59, 2
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph63, %bb.t
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.ng, %bb.t ] ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx59
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.nd, ptr noundef %i.ne, ptr noundef %i.nf, i64 noundef %.04365, i64 noundef %i.nc)
  %i.ng = add i64 %.061, %i.na                    ; 3 uses
  %i.nh = sub i64 %i.d, %i.ng
  %i.ni = icmp ugt i64 %i.nh, %i.na
  br i1 %i.ni, label %bb.t, label %.loopexit, !llvm.loop !3402

.loopexit:                                        ; preds = %bb.t, %bb.s, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.s ], [ %i.ng, %bb.t ] ; 2 uses
  %i.nj = sub i64 %i.d, %.1
  %i.nk = icmp ugt i64 %i.nj, %.04365
  br i1 %i.nk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.04365 ; 2 uses
  %i.nn = ptrtoint ptr %i.nm to i64
  %i.no = sub i64 %i.a, %i.nn
  %i.np = ashr exact i64 %i.no, 2
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %i.nl, ptr noundef %i.nm, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.np)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit
  %i.nq = shl i64 %.04365, 1
  br i1 %i.mz, label %.lr.ph67, label %._crit_edge68, !llvm.loop !3403
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat {
bb.a:
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 11 uses
  %i.a = icmp ugt i64 %1, %.sroa.speculated
  br i1 %i.a, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sub nsw i64 0, %.sroa.speculated
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx36 = shl nuw nsw i64 %.sroa.speculated, 2
  %i.b = sub nsw i64 0, %.sroa.speculated         ; 5 uses
  switch i64 %2, label %.lr.ph42.i.preheader [
    i64 0, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us
    i64 1, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39
  ]

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us
  %.037.us = phi i64 [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %2, %.lr.ph ]
  %i.c = add i64 %.037.us, %.sroa.speculated      ; 3 uses
  %i.d = sub i64 %1, %i.c
  %i.e = icmp ugt i64 %i.d, %.sroa.speculated
  br i1 %i.e, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us, label %._crit_edge, !llvm.loop !3404

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39: ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39
  %.037.us38 = phi i64 [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037.us38 ; 2 uses
  %i.g = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !69
  store i32 %i.h, ptr %i.g, align 4, !tbaa !69
  %i.i = add i64 %.037.us38, %.sroa.speculated    ; 3 uses
  %i.j = sub i64 %1, %i.i
  %i.k = icmp ugt i64 %i.j, %.sroa.speculated
  br i1 %i.k, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39, label %._crit_edge, !llvm.loop !3404

.lr.ph42.i.preheader:                             ; preds = %.lr.ph, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit
  %.037 = phi i64 [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.037 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx36
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.b ; 6 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !69
  store i32 %i.o, ptr %i.n, align 4, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.preheader, %.critedge.i
  %i.q = phi ptr [ %i.z, %.critedge.i ], [ %i.p, %.lr.ph42.i.preheader ] ; 4 uses
  %.pn40.i = phi ptr [ %.02641.i, %.critedge.i ], [ %i.n, %.lr.ph42.i.preheader ] ; 4 uses
  %.02641.i = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !69
  %i.s = load i32, ptr %.pn40.i, align 4, !tbaa !69 ; 2 uses
  %i.t = icmp slt i32 %i.r, %i.s
  br i1 %i.t, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 %i.s, ptr %.02641.i, align 4, !tbaa !69
  %.not3233.i = icmp eq ptr %.pn40.i, %i.n
  br i1 %.not3233.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.u, %bb.c ], [ %.pn40.i, %bb.b ] ; 3 uses
  %i.u = getelementptr i8, ptr %.035.i, i64 -4    ; 3 uses
  %i.v = load i32, ptr %i.q, align 4, !tbaa !69
  %i.w = load i32, ptr %i.u, align 4, !tbaa !69   ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.w, ptr %.035.i, align 4, !tbaa !69
  %.not32.i = icmp eq ptr %i.u, %i.n
  br i1 %.not32.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !3397

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b, %.lr.ph42.i
  %.1.i = phi ptr [ %.02641.i, %.lr.ph42.i ], [ %i.n, %bb.b ], [ %.035.i, %.lr.ph.i ], [ %i.n, %bb.c ]
  %i.y = load i32, ptr %i.q, align 4, !tbaa !69
  store i32 %i.y, ptr %.1.i, align 4, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %.not31.i = icmp eq ptr %i.z, %i.m
  br i1 %.not31.i, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit, label %.lr.ph42.i, !llvm.loop !3398

_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit: ; preds = %.critedge.i
  %i.aa = add i64 %.037, %.sroa.speculated        ; 3 uses
  %i.ab = sub i64 %1, %i.aa
  %i.ac = icmp ugt i64 %i.ab, %.sroa.speculated
  br i1 %i.ac, label %.lr.ph42.i.preheader, label %._crit_edge, !llvm.loop !3404

._crit_edge:                                      ; preds = %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ %i.b, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ]
  %.0.lcssa = phi i64 [ 0, %.._crit_edge_crit_edge ], [ %i.c, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us ], [ %i.aa, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.loopexit ], [ %i.i, %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit.us39 ] ; 2 uses
  %.idx = shl nuw nsw i64 %.0.lcssa, 2            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  %.idx35 = shl nuw nsw i64 %1, 2                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.idx35
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.pre-phi ; 6 uses
  %.not.i21 = icmp samesign eq i64 %.0.lcssa, %1
  br i1 %.not.i21, label %_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_T_T2_.exit33, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b:bb.a
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph121, %bb.f
  %.0120 = phi i64 [ %i.e, %.lr.ph121 ], [ %i.bs, %bb.f ]
  %.2119 = phi ptr [ %i.bo, %.lr.ph121 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0120, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx                    ; 2 uses
  %i.bz = udiv i64 %i.by, %4                      ; 11 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %.not8.i.i83 = icmp ugt i64 %4, %i.by
  br i1 %.not8.i.i83, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88, label %iter.check228

iter.check228:                                    ; preds = %bb.c
  %min.iters.check213 = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check213, label %.lr.ph.i.i84.preheader, label %vector.main.loop.iter.check214

vector.main.loop.iter.check214:                   ; preds = %iter.check228
  %min.iters.check215 = icmp ult i64 %i.bz, 32
  br i1 %min.iters.check215, label %vec.epilog.ph232, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check214
  %i.cb = and i64 %i.bz, 28
  %n.vec217 = and i64 %i.bz, -32                  ; 5 uses
  %i.cc = getelementptr i8, ptr %0, i64 %n.vec217
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next223, %vector.body218 ] ; 2 uses
  %vec.ind220 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph216 ], [ %vec.ind.next224, %vector.body218 ] ; 3 uses
  %step.add221 = add <16 x i8> %vec.ind220, splat (i8 16)
  %next.gep222 = getelementptr i8, ptr %0, i64 %index219 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep222, i64 16
  store <16 x i8> %vec.ind220, ptr %next.gep222, align 1, !tbaa !35
  store <16 x i8> %step.add221, ptr %i.cd, align 1, !tbaa !35
  %index.next223 = add nuw i64 %index219, 32      ; 2 uses
  %vec.ind.next224 = add <16 x i8> %vec.ind220, splat (i8 32)
  %i.ce = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.ce, label %middle.block225, label %vector.body218, !llvm.loop !3530

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.bz, %n.vec217
  br i1 %cmp.n226, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.i.i84.preheader, label %vec.epilog.ph232, !prof !3520

vec.epilog.ph232:                                 ; preds = %vector.main.loop.iter.check214, %vec.epilog.iter.check230
  %vec.epilog.resume.val227 = phi i64 [ %n.vec217, %vec.epilog.iter.check230 ], [ 0, %vector.main.loop.iter.check214 ] ; 2 uses
  %n.vec233 = and i64 %i.bz, -4                   ; 4 uses
  %i.cf = getelementptr i8, ptr %0, i64 %n.vec233
  %i.cg = trunc i64 %vec.epilog.resume.val227 to i8
  %broadcast.splatinsert234 = insertelement <4 x i8> poison, i8 %i.cg, i64 0
  %broadcast.splat235 = shufflevector <4 x i8> %broadcast.splatinsert234, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction236 = or disjoint <4 x i8> %broadcast.splat235, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body237

vec.epilog.vector.body237:                        ; preds = %vec.epilog.vector.body237, %vec.epilog.ph232
  %index238 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph232 ], [ %index.next241, %vec.epilog.vector.body237 ] ; 2 uses
  %vec.ind239 = phi <4 x i8> [ %induction236, %vec.epilog.ph232 ], [ %vec.ind.next242, %vec.epilog.vector.body237 ] ; 2 uses
  %next.gep240 = getelementptr i8, ptr %0, i64 %index238
  store <4 x i8> %vec.ind239, ptr %next.gep240, align 1, !tbaa !35
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i8> %vec.ind239, splat (i8 4)
  %i.ch = icmp eq i64 %index.next241, %n.vec233
  br i1 %i.ch, label %vec.epilog.middle.block243, label %vec.epilog.vector.body237, !llvm.loop !3531

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body237
  %cmp.n244 = icmp eq i64 %i.bz, %n.vec233
  br i1 %cmp.n244, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88, label %.lr.ph.i.i84.preheader

.lr.ph.i.i84.preheader:                           ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block243
  %.010.i.i85.ph = phi i64 [ 0, %iter.check228 ], [ %n.vec217, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block243 ]
  %.079.i.i86.ph = phi ptr [ %0, %iter.check228 ], [ %i.cc, %vec.epilog.iter.check230 ], [ %i.cf, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.lr.ph.i.i84.preheader, %.lr.ph.i.i84
  %.010.i.i85 = phi i64 [ %i.ck, %.lr.ph.i.i84 ], [ %.010.i.i85.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %.079.i.i86 = phi ptr [ %i.cj, %.lr.ph.i.i84 ], [ %.079.i.i86.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %i.ci = trunc i64 %.010.i.i85 to i8
  store i8 %i.ci, ptr %.079.i.i86, align 1, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i86, i64 1
  %i.ck = add nuw i64 %.010.i.i85, 1              ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.ck, %i.bz
  br i1 %.not.i.i87, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88, label %.lr.ph.i.i84, !llvm.loop !3532

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88: ; preds = %.lr.ph.i.i84, %middle.block225, %vec.epilog.middle.block243, %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [4 x i8], ptr %.2119, i64 %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88
  store ptr %i.cl, ptr %9, align 8, !tbaa !3533
  store ptr %i.co, ptr %10, align 8, !tbaa !2933
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit88
  store ptr %i.cl, ptr %11, align 8, !tbaa !3533
  store ptr %i.co, ptr %12, align 8, !tbaa !2933
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [4 x i8], ptr %.2119, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3535

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %i.a = shl i64 %3, 1                            ; 11 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = zext i1 %.not.i to i64
  %i.e = add nuw i64 %i.c, %i.d                   ; 6 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  %.not78120 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 6 uses
  %i.g = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %6, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us
  %.073119.us.us = phi i64 [ %i.z, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us.us = phi ptr [ %spec.select.us.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.h = icmp eq i64 %.073119.us.us, %i.c
  %i.i = select i1 %i.h, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.j = sub i64 %i.i, %i.f
  %i.k = urem i64 %i.j, %4                        ; 2 uses
  %i.l = add i64 %i.f, %i.k
  %i.m = sub i64 %i.i, %i.l
  %i.n = udiv i64 %i.m, %4                        ; 4 uses
  %i.o = sub i64 %i.n, %i.g
  %i.p = shl i64 %i.n, 3
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.n, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %.lr.ph.split.us.split.us
  %min.iters.check154 = icmp ult i64 %i.q, 4
  br i1 %min.iters.check154, label %.lr.ph.i.i.us.us.preheader184, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.r = and i64 %i.n, 3                          ; 2 uses
  %n.vec156 = sub nuw nsw i64 %i.q, %i.r          ; 3 uses
  %i.s = shl i64 %n.vec156, 3
  %i.t = getelementptr i8, ptr %0, i64 %i.s
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next162, %vector.body157 ] ; 2 uses
  %vec.ind159 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph155 ], [ %vec.ind.next163, %vector.body157 ] ; 3 uses
  %step.add160 = add nuw <2 x i64> %vec.ind159, splat (i64 2)
  %i.u = shl i64 %index158, 3
  %next.gep161 = getelementptr i8, ptr %0, i64 %i.u ; 2 uses
  %i.v = getelementptr i8, ptr %next.gep161, i64 16
  store <2 x i64> %vec.ind159, ptr %next.gep161, align 8, !tbaa !272
  store <2 x i64> %step.add160, ptr %i.v, align 8, !tbaa !272
  %index.next162 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next163 = add <2 x i64> %vec.ind159, splat (i64 4)
  %i.w = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.w, label %middle.block164, label %vector.body157, !llvm.loop !3536

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.r, 0
  br i1 %cmp.n165, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader184

.lr.ph.i.i.us.us.preheader184:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block164
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec156, %middle.block164 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.t, %middle.block164 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader184, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.y, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.x, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !272
  %i.x = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.y = add i64 %.010.i.i.us.us, 1               ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.y, %i.q
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !3537

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block164, %.lr.ph.split.us.split.us
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %.074118.us.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.o, i64 noundef %i.k)
  %i.z = add nuw i64 %.073119.us.us, 1            ; 2 uses
  %.not77.us.us = icmp eq i64 %i.z, %i.e          ; 2 uses
  %spec.select.idx.us.us = select i1 %.not77.us.us, i64 0, i64 %i.a
  %spec.select.us.us = getelementptr inbounds nuw [4 x i8], ptr %.074118.us.us, i64 %spec.select.idx.us.us
  br i1 %.not77.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !3538

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us
  %.073119.us = phi i64 [ %i.as, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us = phi ptr [ %spec.select.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.aa = icmp eq i64 %.073119.us, %i.c
  %i.ab = select i1 %i.aa, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ac = sub i64 %i.ab, %i.f
  %i.ad = urem i64 %i.ac, %4                      ; 2 uses
  %i.ae = add i64 %i.f, %i.ad
  %i.af = sub i64 %i.ab, %i.ae
  %i.ag = udiv i64 %i.af, %4                      ; 4 uses
  %i.ah = sub i64 %i.ag, %i.g
  %i.ai = shl i64 %i.ag, 3
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.ag, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %.lr.ph.split.us.split
  %min.iters.check139 = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check139, label %.lr.ph.i.i.us.preheader186, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.ak = and i64 %i.ag, 3                        ; 2 uses
  %n.vec141 = sub nuw nsw i64 %i.aj, %i.ak        ; 3 uses
  %i.al = shl i64 %n.vec141, 3
  %i.am = getelementptr i8, ptr %0, i64 %i.al
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body142 ] ; 2 uses
  %vec.ind144 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph140 ], [ %vec.ind.next148, %vector.body142 ] ; 3 uses
  %step.add145 = add nuw <2 x i64> %vec.ind144, splat (i64 2)
  %i.an = shl i64 %index143, 3
  %next.gep146 = getelementptr i8, ptr %0, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep146, i64 16
  store <2 x i64> %vec.ind144, ptr %next.gep146, align 8, !tbaa !272
  store <2 x i64> %step.add145, ptr %i.ao, align 8, !tbaa !272
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next148 = add <2 x i64> %vec.ind144, splat (i64 4)
  %i.ap = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ap, label %middle.block149, label %vector.body142, !llvm.loop !3539

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n150, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us, label %.lr.ph.i.i.us.preheader186

.lr.ph.i.i.us.preheader186:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block149
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec141, %middle.block149 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.am, %middle.block149 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader186, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.ar, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.aq, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !272
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.ar = add i64 %.010.i.i.us, 1                 ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !3540

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block149, %.lr.ph.split.us.split
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %.074118.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ah, i64 noundef %i.ad)
  %i.as = add nuw i64 %.073119.us, 1              ; 2 uses
  %.not77.us = icmp eq i64 %i.as, %i.e            ; 2 uses
  %spec.select.idx.us = select i1 %.not77.us, i64 0, i64 %i.a
  %spec.select.us = getelementptr inbounds nuw [4 x i8], ptr %.074118.us, i64 %spec.select.idx.us
  br i1 %.not77.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !3538

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit
  %.073119 = phi i64 [ %i.bl, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.074118 = phi ptr [ %spec.select, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit ], [ %1, %.lr.ph ] ; 2 uses
  %i.at = icmp eq i64 %.073119, %i.c
  %i.au = select i1 %i.at, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.av = sub i64 %i.au, %i.f
  %i.aw = urem i64 %i.av, %4                      ; 2 uses
  %i.ax = add i64 %i.f, %i.aw
  %i.ay = sub i64 %i.au, %i.ax
  %i.az = udiv i64 %i.ay, %4                      ; 4 uses
  %i.ba = sub i64 %i.az, %i.g
  %i.bb = shl i64 %i.az, 3
  %i.bc = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.mask.i = and i64 %i.az, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.bc, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader188, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bd = and i64 %i.az, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bc, %i.bd           ; 3 uses
  %i.be = shl i64 %n.vec, 3
  %i.bf = getelementptr i8, ptr %0, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3541

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit, label %.lr.ph.i.i, !llvm.loop !3542

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [4 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3538

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn
  %i.bp = urem i64 %3, %4                         ; 2 uses
  %i.bq = udiv i64 %3, %4                         ; 3 uses
  %i.br = sub i64 0, %i.a
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.f
  %.0122 = phi i64 [ %i.e, %.lr.ph123 ], [ %i.bs, %bb.f ]
  %.2121 = phi ptr [ %i.bo, %.lr.ph123 ], [ %.3, %bb.f ] ; 2 uses
  %i.bs = add i64 %.0122, -1                      ; 3 uses
  %i.bt = icmp eq i64 %i.bs, %i.c
  %i.bu = select i1 %i.bt, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bp
  %i.bw = urem i64 %i.bv, %4                      ; 4 uses
  %i.bx = add i64 %i.bp, %i.bw
  %i.by = sub i64 %i.bu, %i.bx
  %i.bz = udiv i64 %i.by, %4                      ; 6 uses
  %i.ca = sub i64 %i.bz, %i.bq                    ; 2 uses
  %i.cb = shl i64 %i.bz, 3
  %i.cc = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.mask.i84 = and i64 %i.bz, 2305843009213693951
  %.not8.i.i85 = icmp eq i64 %.mask.i84, 0
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90, label %.lr.ph.i.i86.preheader

.lr.ph.i.i86.preheader:                           ; preds = %bb.c
  %min.iters.check169 = icmp ult i64 %i.cc, 4
  br i1 %min.iters.check169, label %.lr.ph.i.i86.preheader183, label %vector.ph170

vector.ph170:                                     ; preds = %.lr.ph.i.i86.preheader
  %i.cd = and i64 %i.bz, 3                        ; 2 uses
  %n.vec171 = sub nuw nsw i64 %i.cc, %i.cd        ; 3 uses
  %i.ce = shl i64 %n.vec171, 3
  %i.cf = getelementptr i8, ptr %0, i64 %i.ce
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph170
  %index173 = phi i64 [ 0, %vector.ph170 ], [ %index.next177, %vector.body172 ] ; 2 uses
  %vec.ind174 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph170 ], [ %vec.ind.next178, %vector.body172 ] ; 3 uses
  %step.add175 = add nuw <2 x i64> %vec.ind174, splat (i64 2)
  %i.cg = shl i64 %index173, 3
  %next.gep176 = getelementptr i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !272
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !272
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3543

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !272
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add i64 %.010.i.i87, 1                  ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3544

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [4 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !3061
  store ptr %i.co, ptr %10, align 8, !tbaa !2933
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !3061
  store ptr %i.co, ptr %12, align 8, !tbaa !2933
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [4 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3545

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPimNS0_7move_opEEEEEvT_T0_T1_SB_SB_RT2_RSB_SE_SE_SE_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !75
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not277 = icmp eq i64 %i.e, 0
  br i1 %.not277, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %.idx250 = shl i64 %2, 2                        ; 5 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 3 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx250
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = add i64 %i.q, %i.o
  %i.x = add i64 %i.w, %.idx250
  %i.y = add i64 %i.x, -4                         ; 2 uses
  %i.z = shl i64 %2, 2
  %i.aa = shl i64 %2, 2
  %i.ab = getelementptr i8, ptr %1, i64 %i.q
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = add i64 %.idx250, -4                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 28
  %stride.check = icmp slt i64 %.idx250, 0
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.ag = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 5 uses
  %i.ah = phi ptr [ %i.i, %.lr.ph ], [ %i.bl, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hu, %.sink.split.i ] ; 3 uses
  %.0287 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099286 = phi i64 [ %i.m, %.lr.ph ], [ %i.hs, %.sink.split.i ] ; 7 uses
  %.0102284 = phi ptr [ %0, %.lr.ph ], [ %i.hq, %.sink.split.i ] ; 15 uses
  %.0105283 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108282 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0216281 = phi ptr [ %1, %.lr.ph ], [ %.2218, %.sink.split.i ] ; 15 uses
  %.0222280 = phi ptr [ %i.h, %.lr.ph ], [ %.2224, %.sink.split.i ] ; 15 uses
  %.0228279 = phi ptr [ %i.f, %.lr.ph ], [ %.1229, %.sink.split.i ] ; 13 uses
  %.0234278 = phi i64 [ %i.e, %.lr.ph ], [ %i.hv, %.sink.split.i ] ; 5 uses
  %i.ai = mul i64 %i.aa, %indvar
  %i.aj = add i64 %i.y, %i.ai
  %i.ak = mul i64 %i.z, %indvar
  %i.al = add i64 %i.y, %i.ak
  %i.am = mul i64 %i.v, %indvar
  %i.an = add i64 %i.t, %i.am
  %i.ao = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ap = add i64 %i.t, %i.ao
  %scevgep401 = getelementptr i8, ptr %i.ac, i64 %i.ao
  %.0222280382 = ptrtoaddr ptr %.0222280 to i64
  %.0216281383 = ptrtoaddr ptr %.0216281 to i64   ; 2 uses
  %i.aq = icmp ult i64 %.099286, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.099286, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0102284, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.0102284, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !69 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !69 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !69
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !69
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit, label %.lr.ph.i, !llvm.loop !2901

_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 6 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated206 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0234278) ; 4 uses
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 2
  %i.bj = getelementptr i8, ptr %i.ah, i64 %.idx  ; 11 uses
  %i.bk = getelementptr [4 x i8], ptr %i.bj, i64 %2 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.ah, i64 %.idx250 ; 15 uses
  %.not119 = icmp eq i64 %.0287, 0
  br i1 %.not119, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  br i1 %.not120, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = load i32, ptr %i.k, align 4, !tbaa !69
  %i.bn = load i32, ptr %i.bj, align 4, !tbaa !69
  %i.bo = icmp slt i32 %i.bm, %i.bn
  br i1 %i.bo, label %.thread.loopexit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old124 = trunc nuw i8 %.0105283 to i1
  br i1 %.old124, label %.thread.thread, label %bb.h

.thread.thread:                                   ; preds = %bb.g
  %i.bp = icmp eq ptr %.0108282, %.0222280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.k, ptr %i.d, align 8, !tbaa !75
  br i1 %i.bp, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit
  %.idx251 = shl nuw nsw i64 %.022.lcssa.i, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.0102284, i64 %.idx251 ; 9 uses
  %i.br = icmp eq ptr %.0228279, %i.p
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = icmp eq ptr %.0108282, %.0222280        ; 2 uses
  %i.bt = trunc nuw i8 %.0105283 to i1
  br i1 %i.bt, label %bb.j, label %.thread343

end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  %scevgep321 = getelementptr i8, ptr %scevgep320, i64 %i.ey
  %bound0322 = icmp ult ptr %scevgep319, %.sroa.064.0
  %bound1323 = icmp ult ptr %scevgep321, %i.cw
  %found.conflict324 = and i1 %bound0322, %bound1323
  br i1 %found.conflict324, label %.lr.ph.i.i.preheader383, label %vector.ph327

vector.ph327:                                     ; preds = %vector.memcheck317
  %n.vec328 = and i64 %i.ev, 9223372036854775800  ; 3 uses
  %i.ez = mul i64 %n.vec328, -4                   ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.064.0, i64 %i.ez ; 2 uses
  %i.fb = getelementptr i8, ptr %i.cw, i64 %i.ez
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next337, %vector.body329 ] ; 2 uses
  %i.fc = mul i64 %index330, -4                   ; 2 uses
  %next.gep331 = getelementptr i8, ptr %.sroa.064.0, i64 %i.fc ; 2 uses
  %next.gep332 = getelementptr i8, ptr %i.cw, i64 %i.fc ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep332, i64 -16 ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %next.gep332, i64 -32 ; 2 uses
  %wide.load333 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !69, !alias.scope !4759, !noalias !4762
  %wide.load334 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !69, !alias.scope !4759, !noalias !4762
  %i.ff = getelementptr inbounds i8, ptr %next.gep331, i64 -16 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %next.gep331, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !69, !alias.scope !4768, !noalias !4769
  %wide.load336 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !69, !alias.scope !4768, !noalias !4769
  store <4 x i32> %wide.load335, ptr %i.fd, align 4, !tbaa !69, !alias.scope !4759, !noalias !4762
  store <4 x i32> %wide.load336, ptr %i.fe, align 4, !tbaa !69, !alias.scope !4759, !noalias !4762
  store <4 x i32> %wide.load333, ptr %i.ff, align 4, !tbaa !69, !alias.scope !4768, !noalias !4769
  store <4 x i32> %wide.load334, ptr %i.fg, align 4, !tbaa !69, !alias.scope !4768, !noalias !4769
  %index.next337 = add nuw i64 %index330, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next337, %n.vec328
  br i1 %i.fh, label %middle.block338, label %vector.body329, !llvm.loop !4770

middle.block338:                                  ; preds = %vector.body329
  %cmp.n339 = icmp eq i64 %i.ev, %n.vec328
  br i1 %cmp.n339, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader383

.lr.ph.i.i.preheader383:                          ; preds = %vector.memcheck317, %.lr.ph.i.i.preheader, %middle.block338
  %.sroa.0.0.i.ph = phi ptr [ %.sroa.064.0, %vector.memcheck317 ], [ %.sroa.064.0, %.lr.ph.i.i.preheader ], [ %i.fa, %middle.block338 ]
  %.ph384 = phi ptr [ %i.cw, %vector.memcheck317 ], [ %i.cw, %.lr.ph.i.i.preheader ], [ %i.fb, %middle.block338 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader383, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.sroa.0.0.i.ph, %.lr.ph.i.i.preheader383 ]
  %i.fi = phi ptr [ %i.fj, %.lr.ph.i.i ], [ %.ph384, %.lr.ph.i.i.preheader383 ]
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 4 uses
  %i.fk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 4 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !69, !noalias !4769
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !69, !noalias !4769
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !69, !noalias !4769
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !69, !noalias !4769
  %.not.i.i31 = icmp eq ptr %i.fj, %i.ba
  br i1 %.not.i.i31, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !4771

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit: ; preds = %.lr.ph.i29, %.lr.ph.i.i, %.lr.ph.i28, %middle.block372, %middle.block338, %middle.block, %bb.v, %bb.w, %bb.t, %bb.s
  %storemerge = phi ptr [ %i.ba, %bb.s ], [ %i.fk, %.lr.ph.i.i ], [ %i.cw, %bb.t ], [ %i.du, %.lr.ph.i28 ], [ %.sroa.064.0, %bb.v ], [ %.sroa.064.0, %bb.w ], [ %i.dk, %middle.block ], [ %i.fa, %middle.block338 ], [ %i.ef, %middle.block372 ], [ %i.ep, %.lr.ph.i29 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !2933
  %.neg98 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.fn = getelementptr inbounds i8, ptr %i.r, i64 %.neg98 ; 3 uses
  %.not.i32 = icmp eq ptr %i.ba, %.sroa.069.0
  br i1 %.not.i32, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit
  %.not9.i = icmp eq i64 %.neg98, 0
  br i1 %.not9.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8 ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 2 uses
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !272
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !272
  store i64 %i.fr, ptr %i.fo, align 8, !tbaa !272
  store i64 %i.fq, ptr %i.fp, align 8, !tbaa !272
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !3061  ; 2 uses
  %i.ft = icmp eq ptr %i.fn, %i.fs
  br i1 %i.ft, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq ptr %i.fs, %i.r
  br i1 %i.fu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.r, %bb.y ], [ %i.fn, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3061
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !3061
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fv = phi ptr [ %i.r, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.r, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ba, ptr %3, align 8, !tbaa !2933
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !3061
  %i.fx = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fx to i64
  %i.fy = add i64 %.0140, %.neg
  %i.fz = icmp ne i64 %i.az, 0
  %.neg24 = sext i1 %i.fz to i64
  %i.ga = add i64 %.sroa.speculated, %.neg24
  %i.gb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4772

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gc = load ptr, ptr %6, align 8, !tbaa !2933
  store ptr %i.gc, ptr %0, align 8, !tbaa !2933
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = sub i64 %i.e, %i.a
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !2567 ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !2915
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !2564   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %0, align 4, !tbaa !69     ; 4 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !69
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %i.q = add i64 %i.i, -1                         ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %i.r = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !4775

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %storemerge10.i.i
  store i32 %i.p, ptr %i.w, align 4, !tbaa !69
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !4776

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !69
  store ptr %i.j, ptr %6, align 8, !tbaa !2915
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !2915
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull align 8 dead_on_return %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit: ; preds = %bb.c, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %bb.b, %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !69     ; 2 uses
  %.not84 = icmp slt i32 %i.b, %i.c
  br i1 %.not84, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 12 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !69
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 13 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !4777

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !2566 ; 4 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !2564  ; 7 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.e
  %.pre146 = ptrtoaddr ptr %.pre to i64
  %i.t = add i64 %i.d, -4
  %i.u = sub i64 %i.t, %.114.i147.le              ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 44
  %i.x = sub i64 %.114.i147.le, %.pre146
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond278 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond278, label %.lr.ph.i.i.preheader302, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.y = shl i64 %n.vec, 2                        ; 2 uses
  %i.z = getelementptr i8, ptr %.pre, i64 %i.y
  %i.aa = getelementptr i8, ptr %.114.i, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.pre, i64 %i.ab ; 2 uses
  %next.gep148 = getelementptr i8, ptr %.114.i, i64 %i.ab ; 2 uses
  %i.ac = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !69
  %wide.load149 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !69
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !69
  store <4 x i32> %wide.load149, ptr %i.ad, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4778

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader302

.lr.ph.i.i.preheader302:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %i.z, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %.lr.ph.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader302, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader302 ] ; 2 uses
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !69
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !69
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4779

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 2                     ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !2564  ; 8 uses
  %.not8.i17.i = icmp eq i64 %i.s, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.f
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = add i64 %.idx26.i, -4                   ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check154 = icmp ult i64 %i.al, 44
  %i.ao = sub i64 %.114.i147.le, %i.ak
  %diff.check152 = icmp ugt i64 %i.ao, -32
  %or.cond279 = select i1 %min.iters.check154, i1 true, i1 %diff.check152
  br i1 %or.cond279, label %.lr.ph.i18.i.preheader300, label %vector.ph155

vector.ph155:                                     ; preds = %.lr.ph.i18.i.preheader
  %n.vec156 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.ap = shl i64 %n.vec156, 2                    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.aj, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %.114.i, i64 %i.ap
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %i.as = shl i64 %index158, 2                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %i.aj, i64 %i.as ; 2 uses
  %next.gep160 = getelementptr i8, ptr %.114.i, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep160, i64 16
  %wide.load161 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !69
  %wide.load162 = load <4 x i32>, ptr %i.at, align 4, !tbaa !69
  %i.au = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !69
  store <4 x i32> %wide.load162, ptr %i.au, align 4, !tbaa !69
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.av, label %middle.block164, label %vector.body157, !llvm.loop !4780

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.an, %n.vec156
  br i1 %cmp.n165, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader300

.lr.ph.i18.i.preheader300:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block164
  %.010.i19.i.ph = phi ptr [ %i.aj, %.lr.ph.i18.i.preheader ], [ %i.aq, %middle.block164 ]
  %.079.i20.i.ph = phi ptr [ %.114.i, %.lr.ph.i18.i.preheader ], [ %i.ar, %middle.block164 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader300, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.ay, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader300 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.ax, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader300 ] ; 2 uses
  %i.aw = load i32, ptr %.079.i20.i, align 4, !tbaa !69
  store i32 %i.aw, ptr %.010.i19.i, align 4, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4781

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block164, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.aj, %bb.f ], [ %i.aq, %middle.block164 ], [ %i.ay, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i169 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_:bb.a
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !7106

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e
  store i64 %5, ptr %i.h, align 8, !tbaa !2566
  store i32 %i.n, ptr %i.k, align 4, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.d
  %i.w = urem i64 %i.c, %5                        ; 3 uses
  %i.x = sub i64 %i.b, %i.w
  %i.y = urem i64 %i.x, %5                        ; 2 uses
  %i.z = add i64 %i.w, %i.y
  %i.aa = sub i64 %i.b, %i.z                      ; 2 uses
  %i.ab = udiv i64 %i.aa, %5                      ; 2 uses
  %i.ac = udiv i64 %i.c, %5                       ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac
  %.not.i.i.i = icmp ugt i64 %5, %i.aa
  br i1 %.not.i.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !1354, !noalias !7107
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1352, !noalias !7107
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit

_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi ptr [ %i.d, %bb.f ], [ %i.ag, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.d, ptr %11, align 8, !tbaa !1450
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1450
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE4sortES5_S5_SD_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  store ptr %i.d, ptr %13, align 8, !tbaa !1450
  store ptr %.sroa.084.0, ptr %14, align 8, !tbaa !1450
  %i.ah = load ptr, ptr %8, align 8, !tbaa !2564
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_NS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %5, i64 noundef %i.w, i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef %i.y, ptr noundef %i.ah)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.ai = urem i64 %i.c, %5                       ; 4 uses
  %i.aj = sub i64 %i.b, %i.ai
  %i.ak = urem i64 %i.aj, %5                      ; 3 uses
  %i.al = add i64 %i.ai, %i.ak
  %i.am = sub i64 %i.b, %i.al                     ; 2 uses
  %i.an = udiv i64 %i.am, %5                      ; 2 uses
  %i.ao = udiv i64 %i.c, %5                       ; 3 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %.not.i.i.i43 = icmp ugt i64 %5, %i.am
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !1354, !noalias !7110
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.an
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1352, !noalias !7110
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit45

_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit45: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i44 = phi ptr [ %i.d, %bb.h ], [ %i.as, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %9, align 8, !tbaa !1450
  store ptr %.sroa.0.0.i44, ptr %10, align 8, !tbaa !1450
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE4sortES5_S5_SD_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.j

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit45
  store ptr %i.d, ptr %15, align 8, !tbaa !1450
  store ptr %.sroa.084.0, ptr %16, align 8, !tbaa !1450
  call void @llvm.experimental.noalias.scope.decl(metadata !7113)
  %i.at = sub nsw i64 0, %5
  %i.au = load ptr, ptr %.sroa.084.0, align 8, !tbaa !1354, !noalias !7113
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.at
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1352, !noalias !7113
  store ptr %i.aw, ptr %17, align 8, !tbaa !1450, !alias.scope !7113
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.ai, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.ak, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit45
  store ptr %i.d, ptr %18, align 8, !tbaa !1450
  store ptr %.sroa.084.0, ptr %19, align 8, !tbaa !1450
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.ai, i64 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.ak)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.k:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !2566 ; 5 uses
  %i.az = icmp ugt i64 %i.ay, %5
  br i1 %i.az, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread: ; preds = %bb.k
  store i64 %5, ptr %i.ax, align 8, !tbaa !2566
  %.pre101 = load ptr, ptr %8, align 8, !tbaa !2564
  br label %bb.m

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit: ; preds = %bb.k
  %i.ba = icmp ult i64 %i.ay, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !2564  ; 5 uses
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %i.bb = load ptr, ptr %0, align 8, !tbaa !1450
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ay
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !69 ; 4 uses
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !69
  %storemerge7.i47 = add nuw i64 %i.ay, 1         ; 4 uses
  %.not8.i48 = icmp eq i64 %storemerge7.i47, %5
  br i1 %.not8.i48, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54, label %.lr.ph.i49.preheader

.lr.ph.i49.preheader:                             ; preds = %bb.l
  %i.bf = xor i64 %i.ay, -1
  %i.bg = add i64 %5, %i.bf                       ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.bg, 8
  br i1 %min.iters.check104, label %.lr.ph.i49.preheader127, label %vector.ph105

vector.ph105:                                     ; preds = %.lr.ph.i49.preheader
  %n.vec106 = and i64 %i.bg, -8                   ; 3 uses
  %i.bh = add i64 %storemerge7.i47, %n.vec106
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %i.be, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bi = getelementptr [4 x i8], ptr %.pre, i64 %storemerge7.i47
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph105
  %index110 = phi i64 [ 0, %vector.ph105 ], [ %index.next111, %vector.body109 ] ; 2 uses
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %index110 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store <4 x i32> %broadcast.splat108, ptr %i.bj, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat108, ptr %i.bk, align 4, !tbaa !69
  %index.next111 = add nuw i64 %index110, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next111, %n.vec106
  br i1 %i.bl, label %middle.block112, label %vector.body109, !llvm.loop !7116

middle.block112:                                  ; preds = %vector.body109
  %cmp.n113 = icmp eq i64 %i.bg, %n.vec106
  br i1 %cmp.n113, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54, label %.lr.ph.i49.preheader127

.lr.ph.i49.preheader127:                          ; preds = %.lr.ph.i49.preheader, %middle.block112
  %storemerge10.i50.ph = phi i64 [ %storemerge7.i47, %.lr.ph.i49.preheader ], [ %i.bh, %middle.block112 ]
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader127, %.lr.ph.i49
  %storemerge10.i50 = phi i64 [ %storemerge.i51, %.lr.ph.i49 ], [ %storemerge10.i50.ph, %.lr.ph.i49.preheader127 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %storemerge10.i50
  store i32 %i.be, ptr %i.bm, align 4, !tbaa !69
  %storemerge.i51 = add i64 %storemerge10.i50, 1  ; 2 uses
  %.not.i52 = icmp eq i64 %storemerge.i51, %5
  br i1 %.not.i52, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54, label %.lr.ph.i49, !llvm.loop !7117

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54: ; preds = %.lr.ph.i49, %middle.block112, %bb.l
  store i64 %5, ptr %i.ax, align 8, !tbaa !2566
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !69
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %.pre102 = phi ptr [ %.pre101, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit54 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.pre102, i64 %5
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 7
  %i.bq = and i64 %i.bp, -8
  %i.br = inttoptr i64 %i.bq to ptr               ; 4 uses
  %i.bs = urem i64 %i.c, %5                       ; 3 uses
  %i.bt = sub i64 %i.b, %i.bs
  %i.bu = urem i64 %i.bt, %5                      ; 2 uses
  %i.bv = add i64 %i.bs, %i.bu
  %i.bw = sub i64 %i.b, %i.bv
  %i.bx = udiv i64 %i.bw, %5                      ; 4 uses
  %i.by = udiv i64 %i.c, %5                       ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = shl i64 %i.bx, 3
  %i.cb = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.mask.i = and i64 %i.bx, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %min.iters.check116 = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check116, label %.lr.ph.i.i.preheader126, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i.preheader
  %i.cc = and i64 %i.bx, 3                        ; 2 uses
  %n.vec118 = sub nuw nsw i64 %i.cb, %i.cc        ; 3 uses
  %i.cd = shl i64 %n.vec118, 3
  %i.ce = getelementptr i8, ptr %i.br, i64 %i.cd
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph117
  %index120 = phi i64 [ 0, %vector.ph117 ], [ %index.next121, %vector.body119 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph117 ], [ %vec.ind.next, %vector.body119 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cf = shl i64 %index120, 3
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.cg, align 8, !tbaa !272
  %index.next121 = add nuw i64 %index120, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ch = icmp eq i64 %index.next121, %n.vec118
  br i1 %i.ch, label %middle.block122, label %vector.body119, !llvm.loop !7118

middle.block122:                                  ; preds = %vector.body119
  %cmp.n123 = icmp eq i64 %i.cc, 0
  br i1 %cmp.n123, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader126

.lr.ph.i.i.preheader126:                          ; preds = %.lr.ph.i.i.preheader, %middle.block122
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec118, %middle.block122 ]
  %.079.i.i.ph = phi ptr [ %i.br, %.lr.ph.i.i.preheader ], [ %i.ce, %middle.block122 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader126, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader126 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ci, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader126 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.ci = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cj = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i55 = icmp eq i64 %i.cj, %i.cb
  br i1 %.not.i.i55, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i, !llvm.loop !7119

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit: ; preds = %.lr.ph.i.i, %middle.block122, %bb.m
  %i.ck = load ptr, ptr %0, align 8, !tbaa !1450
  store ptr %i.ck, ptr %20, align 8, !tbaa !1450
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.br, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.bs, i64 noundef %i.by, i64 noundef %i.bz, i64 noundef %i.bu, ptr noundef %.pre102)
  %i.cl = load i64, ptr %i.ax, align 8, !tbaa !2566
  %.not.i56 = icmp eq i64 %i.cl, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit
  store i64 0, ptr %i.ax, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b.exit, %bb.j, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 comdat {
bb.a:
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %.not = xor i1 %7, true
  %i.a = icmp ne i64 %3, %4                       ; 2 uses
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.b, %.preheader.preheader.i.i
  %or.cond3 = and i1 %i.a, %7
  %i.e = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.f = sub i64 %3, %i.e                         ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !1450   ; 3 uses
  %.not.i.i = icmp eq i64 %3, %i.e                ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1354, !noalias !7120
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1352, !noalias !7120
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, %bb.c
  %.sroa.026.0 = phi ptr [ %i.g, %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.g, ptr %15, align 8, !tbaa !1450
  store ptr %.sroa.026.0, ptr %16, align 8, !tbaa !1450
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE4sortES5_S5_SD_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.k = load ptr, ptr %0, align 8, !tbaa !1450   ; 5 uses
  %.pre.pre = load ptr, ptr %i.k, align 8, !tbaa !1354 ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.l = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.f
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1352, !noalias !7123
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %bb.d
  %.sroa.024.0 = phi ptr [ %i.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit ], [ %i.m, %bb.d ] ; 3 uses
  %.not.i.i20 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i20, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19
  %i.n = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1352, !noalias !7126 ; 2 uses
  %.pre28 = load ptr, ptr %i.o, align 8, !tbaa !1354
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19, %bb.e
  %i.p = phi ptr [ %.pre.pre, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19 ], [ %.pre28, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit19 ], [ %i.o, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.q = load ptr, ptr %.sroa.024.0, align 8, !tbaa !1354
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.s = ptrtoint ptr %.pre.pre to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = ptrtoint ptr %i.p to i64
  %i.w = sub i64 %i.v, %i.r
  %i.x = ashr exact i64 %i.w, 3
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !2567 ; 2 uses
  %.not.i22 = icmp ult i64 %i.z, %.sroa.speculated.i
  br i1 %.not.i22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.k, ptr %9, align 8, !tbaa !1450
  store ptr %.sroa.024.0, ptr %10, align 8, !tbaa !1450
  store ptr %.sroa.0.0, ptr %11, align 8, !tbaa !1450
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !2566
  %.not.i.i23 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i23, label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.f
  store i64 0, ptr %i.c, align 8, !tbaa !2566
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit

bb.g:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21
  store ptr %i.k, ptr %12, align 8, !tbaa !1450
  store ptr %.sroa.024.0, ptr %13, align 8, !tbaa !1450
  store ptr %.sroa.0.0, ptr %14, align 8, !tbaa !1450
  %i.ab = load ptr, ptr %8, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef %i.ab, i64 noundef %i.z)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %bb.f, %.preheader.preheader.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.069 = alloca ptr, align 8                ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %.not75 = icmp eq ptr %i.a, %i.b
  br i1 %.not75, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiNS2_22stable_vector_iteratorISB_Lb0EEENS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1450   ; 2 uses
  %.not76 = icmp eq ptr %i.b, %i.c
  br i1 %.not76, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiNS2_22stable_vector_iteratorISB_Lb0EEENS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1354 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1352
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !69   ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiNS2_22stable_vector_iteratorISB_Lb0EEENS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1354 ; 3 uses
  %i.m = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.m
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.p, %i.t
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not9.i = icmp eq ptr %i.e, %i.l
  br i1 %.not9.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.u = phi ptr [ %i.ag, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.010.i = phi i64 [ %.1.i, %bb.h ], [ %i.p, %bb.e ] ; 2 uses
  %i.v = lshr i64 %.010.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !1354, !noalias !7129
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1352, !noalias !7129
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS3_ISB_EESD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
.lr.ph.i34:                                       ; preds = %bb.x, %.lr.ph.i34
  %.sroa.059.0 = phi ptr [ %i.du, %.lr.ph.i34 ], [ %i.dl, %bb.x ]
  %i.dn = phi ptr [ %i.dq, %.lr.ph.i34 ], [ %.sroa.076.0, %bb.x ]
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1354, !noalias !8081
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1352, !noalias !8081 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %.sroa.059.0, align 8, !tbaa !1354, !noalias !8081
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1352, !noalias !8081 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dr, align 4, !tbaa !69, !noalias !8081
  %i.dx = load i32, ptr %i.dv, align 4, !tbaa !69, !noalias !8081
  store i32 %i.dx, ptr %i.dr, align 4, !tbaa !69, !noalias !8081
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !69, !noalias !8081
  %.not.i = icmp eq ptr %i.dq, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i34, !llvm.loop !7588

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPiEENS3_INS_9container22stable_vector_iteratorIS4_Lb0EEEEES9_NS0_7inverseINS6_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.dl, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.ee, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.eh, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.dy = phi ptr [ %i.eb, %.lr.ph.i35 ], [ %i.dl, %bb.z ]
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1354, !noalias !8084
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !1352, !noalias !8084 ; 3 uses
  %i.ec = load ptr, ptr %.sroa.053.0, align 8, !tbaa !1354, !noalias !8089
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !1352, !noalias !8089 ; 2 uses
  %i.ef = load ptr, ptr %.sroa.052.0, align 8, !tbaa !1354, !noalias !8092
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !1352, !noalias !8092 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !69, !noalias !8095
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !69, !noalias !8095
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.em = load i32, ptr %i.el, align 4, !tbaa !69, !noalias !8095
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !69, !noalias !8095
  %.not.i36 = icmp eq ptr %i.eb, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35, !llvm.loop !7601

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.ev, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.en = phi ptr [ %i.eq, %.lr.ph.i.i ], [ %i.dl, %bb.aa ]
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1354, !noalias !8096
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !1352, !noalias !8096 ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load i32, ptr %i.er, align 4, !tbaa !69, !noalias !8096
  %i.et = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !8096
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1352, !noalias !8096 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.es, ptr %i.ew, align 4, !tbaa !69, !noalias !8096
  %.not.i.i38 = icmp eq ptr %i.eq, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !7607

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.dl, %bb.x ], [ %i.ev, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.du, %.lr.ph.i34 ], [ %i.eh, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1450
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 -8 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !272
  %i.fb = load i64, ptr %i.ez, align 8, !tbaa !272
  store i64 %i.fb, ptr %i.ey, align 8, !tbaa !272
  store i64 %i.fa, ptr %i.ez, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fc = load ptr, ptr %2, align 8, !tbaa !3061  ; 2 uses
  %i.fd = icmp eq ptr %i.ex, %i.fc
  br i1 %i.fd, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fe = icmp eq ptr %i.fc, %i.c
  br i1 %i.fe, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.ex, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3061
  %.pre192 = load ptr, ptr %1, align 8, !tbaa !3061
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, %bb.ad, %.sink.split.i
  %i.ff = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit ], [ %i.c, %bb.ad ], [ %.pre192, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1450
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -8 ; 2 uses
  store ptr %i.fg, ptr %1, align 8, !tbaa !3061
  %i.fh = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.fh to i64
  %i.fi = add i64 %.0150, %.neg
  %i.fj = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fj to i64
  %i.fk = add i64 %.sroa.speculated, %.neg24
  %i.fl = add i64 %.0102149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.fl, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !8101

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8102)
  %i.fm = load ptr, ptr %6, align 8, !tbaa !1450, !noalias !8102
  store ptr %i.fm, ptr %0, align 8, !tbaa !1450, !alias.scope !8102
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1450   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 4 uses
  store i32 %i.q, ptr %3, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %4, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %4, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !8105

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader15

.lr.ph.i.preheader15:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader15, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader15 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge10.i
  store i32 %i.q, ptr %i.x, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !8106

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.q, ptr %i.p, align 8, !tbaa !69
  store ptr %i.a, ptr %8, align 8, !tbaa !1450
  store ptr %i.b, ptr %9, align 8, !tbaa !1450
  store ptr %i.d, ptr %10, align 8, !tbaa !1450
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1450
  store ptr %i.b, ptr %6, align 8, !tbaa !1450
  store ptr %i.d, ptr %7, align 8, !tbaa !1450
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.aa = ptrtoint ptr %i.y to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.aa
  %i.ah = ashr exact i64 %i.ag, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.ad, i64 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %16 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %17 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !3304
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !3306
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !3307
  %i.f = load ptr, ptr %0, align 8, !tbaa !1450
  %i.g = load ptr, ptr %1, align 8, !tbaa !1450
  %i.h = load ptr, ptr %2, align 8, !tbaa !1450
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !1450
  store ptr %i.g, ptr %8, align 8, !tbaa !1450
  store ptr %i.h, ptr %9, align 8, !tbaa !1450
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS4_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %1, align 8, !tbaa !1450
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1450
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.p = load i32, ptr %i.n, align 4, !tbaa !69   ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 %i.o, ptr %i.n, align 4, !tbaa !69
  store i32 %i.p, ptr %i.l, align 4, !tbaa !69
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %i.i, 16
  %i.s = load ptr, ptr %0, align 8, !tbaa !1450   ; 5 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %11, align 8, !tbaa !1450
  %i.t = load ptr, ptr %1, align 8, !tbaa !1450
  store ptr %i.t, ptr %12, align 8, !tbaa !1450
  %i.u = load ptr, ptr %2, align 8, !tbaa !1450
  store ptr %i.u, ptr %13, align 8, !tbaa !1450
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.w = icmp ugt i64 %3, %4
  br i1 %i.w, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit: ; preds = %bb.i
  %i.x = lshr i64 %3, 1                           ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !1354
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1352 ; 2 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !1450
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1354, !noalias !8107 ; 3 uses
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !1354, !noalias !8107 ; 3 uses
  %.not9.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not9.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, label %.lr.ph.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge: ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit
  %.pre77 = ptrtoint ptr %i.ad to i64
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit

.lr.ph.i:                                         ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.ag, %i.af
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = load i32, ptr %i.ae, align 4, !tbaa !69, !noalias !8107
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i
  %i.ak = phi ptr [ %i.v, %.lr.ph.i ], [ %i.aw, %bb.m ] ; 3 uses
  %.010.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %.1.i, %bb.m ] ; 2 uses
  %i.al = lshr i64 %.010.i, 1                     ; 4 uses
  %.not.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !1354, !noalias !8107
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1352, !noalias !8107
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.0.0.i = phi ptr [ %i.ak, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !69, !noalias !8107
  %i.ar = icmp slt i32 %i.aq, %i.aj
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.as = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !8107
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1352, !noalias !8107
  %.neg.i = xor i64 %i.al, -1
  %i.av = add i64 %.010.i, %.neg.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.aw = phi ptr [ %i.au, %bb.l ], [ %i.ak, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.av, %bb.l ], [ %i.al, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 2 uses
  %.not.i43 = icmp eq i64 %.1.i, 0
  br i1 %.not.i43, label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !7094

_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %bb.m
  %.pre76 = load ptr, ptr %i.aw, align 8, !tbaa !1354
  br label %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi = phi i64 [ %.pre77, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.af, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.ax = phi ptr [ %i.ac, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %.pre76, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.ay = phi ptr [ %i.v, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit._ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.aw, %_ZN5boost7movelib11lower_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.az, %.pre-phi
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !1450   ; 4 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1352 ; 2 uses
  %.not2534.i.i = icmp eq ptr %i.o, %i.a
  br i1 %.not2534.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %.lr.ph36.i.preheader.i

.lr.ph36.i.preheader.i:                           ; preds = %bb.c
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !1354
  br label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.critedge.i.i, %.lr.ph36.i.preheader.i
  %i.q = phi ptr [ %i.ap, %.critedge.i.i ], [ %i.o, %.lr.ph36.i.preheader.i ] ; 2 uses
  %.pn.i = phi ptr [ %i.s, %.critedge.i.i ], [ %i.p, %.lr.ph36.i.preheader.i ]
  %.sroa.021.035.i.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8
  %.sroa.021.035.i.i = load ptr, ptr %.sroa.021.035.i.in.i, align 8, !tbaa !1352 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %.sroa.021.035.i.i, align 8, !tbaa !1354 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1352 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.r, align 4, !tbaa !69
  %i.x = load i32, ptr %i.v, align 4, !tbaa !69   ; 2 uses
  %i.y = icmp slt i32 %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %.lr.ph36.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.021.035.i.i, i64 8
  store i32 %i.x, ptr %i.z, align 8, !tbaa !69
  %.not2627.i.i = icmp eq ptr %i.u, %i.j
  br i1 %.not2627.i.i, label %.critedge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.013.029.i.i = phi ptr [ %i.ak, %bb.e ], [ %i.u, %bb.d ] ; 3 uses
  %.sroa.06.028.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.u, %bb.d ]
  %i.aa = load ptr, ptr %.sroa.06.028.i.i, align 8, !tbaa !1354
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1352 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.r, align 4, !tbaa !69
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %.critedge.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.029.i.i, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !69
  %i.ai = load ptr, ptr %.sroa.013.029.i.i, align 8, !tbaa !1354
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1352 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.ac, %i.j
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !8389

.critedge.i.i:                                    ; preds = %bb.e, %.lr.ph.i.i, %bb.d, %.lr.ph36.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.021.035.i.i, %.lr.ph36.i.i ], [ %i.u, %bb.d ], [ %i.ak, %bb.e ], [ %.sroa.013.029.i.i, %.lr.ph.i.i ]
  %i.al = load i32, ptr %i.r, align 4, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.1.i.i, i64 8
  store i32 %i.al, ptr %i.am, align 4, !tbaa !69
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !1354
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1352 ; 2 uses
  %.not25.i.i = icmp eq ptr %i.ap, %i.a
  br i1 %.not25.i.i, label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit, label %.lr.ph36.i.i, !llvm.loop !8390

bb.f:                                             ; preds = %bb.a
  %i.aq = lshr i64 %i.h, 1                        ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8391)
  store ptr %i.c, ptr %3, align 8, !tbaa !1450, !alias.scope !8391
  %.not.i.i11 = icmp eq i64 %i.aq, 0              ; 2 uses
  br i1 %.not.i.i11, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1352, !noalias !8391
  store ptr %i.as, ptr %3, align 8, !tbaa !1450, !alias.scope !8391
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8394)
  %i.at = load ptr, ptr %2, align 8, !tbaa !1450, !noalias !8394
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1354, !noalias !8394
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aq
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13: ; preds = %bb.f, %bb.g
  %storemerge.in = phi ptr [ %i.av, %bb.g ], [ %2, %bb.f ]
  store ptr %i.a, ptr %4, align 8, !tbaa !1450
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !1352, !noalias !1789
  store ptr %storemerge, ptr %5, align 8, !tbaa !1450, !alias.scope !8397
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %3, ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !1450  ; 4 uses
  store ptr %i.aw, ptr %6, align 8, !tbaa !1450
  call void @llvm.experimental.noalias.scope.decl(metadata !8399)
  store ptr %i.aw, ptr %7, align 8, !tbaa !1450, !alias.scope !8399
  br i1 %.not.i.i11, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13
  store ptr %i.aw, ptr %8, align 8, !tbaa !1450, !alias.scope !8402
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  br label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit13
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1354, !noalias !8399
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aq
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1352, !noalias !8399 ; 2 uses
  store ptr %i.az, ptr %7, align 8, !tbaa !1450, !alias.scope !8399
  store ptr %i.az, ptr %8, align 8, !tbaa !1450, !alias.scope !8405
  call void @_ZN5boost7movelib15merge_sort_copyINS_9container22stable_vector_iteratorIPiLb0EEES5_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_T0_T1_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8)
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8407
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1354, !noalias !8407
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aq
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1352, !noalias !8407 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1354, !noalias !8410
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.aq
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !1352, !noalias !8410 ; 3 uses
  %i.bh = load ptr, ptr %2, align 8, !tbaa !1450  ; 2 uses
  store ptr %i.bh, ptr %.sroa.031, align 8, !tbaa !1450
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1354, !noalias !8413 ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.aq
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1352, !noalias !8413
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 %i.g
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1352, !noalias !8416
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.02.i)
  %.not12.i.i = icmp eq ptr %i.bd, %i.bg
  br i1 %.not12.i.i, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27, %.cont.i
  %.in.i = phi ptr [ %i.ci, %.cont.i ], [ %.sroa.031, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ]
  %.sroa.01.0.i = phi ptr [ %spec.select.i, %.cont.i ], [ %i.bk, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 4 uses
  %.sroa.06.0.i = phi ptr [ %spec.select8.i, %.cont.i ], [ %i.bd, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27 ] ; 4 uses
  %i.bn = load ptr, ptr %.in.i, align 8, !tbaa !1352 ; 3 uses
  %i.bo = icmp eq ptr %.sroa.01.0.i, %i.bm
  br i1 %i.bo, label %.lr.ph.i.i.i.preheader.i, label %.cont.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %.lr.ph.i.i28
  store ptr %i.bn, ptr %.sroa.02.i, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.0.0.i.in.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i ], [ %.sroa.02.i, %.lr.ph.i.i.i.preheader.i ]
  %i.bp = phi ptr [ %i.bv, %.lr.ph.i.i.i.i ], [ %.sroa.06.0.i, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.i.in.i.i, align 8, !tbaa !1352 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !69, !noalias !8419
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !69, !noalias !8419
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !1354, !noalias !8419
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1352, !noalias !8419 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !1354, !noalias !8419
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bg
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !7077

.cont.i:                                          ; preds = %.lr.ph.i.i28
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !69 ; 2 uses
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !69 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %..i.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.cb)
  %.30.i.i = select i1 %i.cc, ptr %.sroa.01.0.i, ptr %.sroa.06.0.i
  store i32 %..i.i, ptr %i.cd, align 4, !tbaa !69
  %i.ce = load ptr, ptr %.30.i.i, align 8, !tbaa !1354
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1352 ; 2 uses
  %spec.select.i = select i1 %i.cc, ptr %i.cg, ptr %.sroa.01.0.i
  %spec.select8.i = select i1 %i.cc, ptr %.sroa.06.0.i, ptr %i.cg ; 2 uses
  %i.ch = load ptr, ptr %i.bn, align 8, !tbaa !1354
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.not.i.i29 = icmp eq ptr %spec.select8.i, %i.bg
  br i1 %.not.i.i29, label %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit, label %.lr.ph.i.i28, !llvm.loop !8424

_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit: ; preds = %.cont.i, %.lr.ph.i.i.i.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27.thread, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.02.i)
  br label %_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit

_ZN5boost7movelib19insertion_sort_copyINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_T_.exit: ; preds = %.critedge.i.i, %bb.c, %bb.b, %_ZN5boost7movelib23merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEESD_EEvT0_SE_T1_SF_SF_T_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SF_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1450   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.c = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %.033100 = phi i64 [ %i.ah, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1352, !noalias !8425
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !1354, !noalias !8428 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1352, !noalias !8428 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36
  %.sroa.012.0.in26.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.012.027.i = load ptr, ptr %.sroa.012.0.in26.i, align 8, !tbaa !1352 ; 2 uses
  %.not1928.i = icmp eq ptr %.sroa.012.027.i, %i.n
  br i1 %.not1928.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.012.029.i = phi ptr [ %.sroa.012.0.i, %bb.f ], [ %.sroa.012.027.i, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i, i64 8 ; 2 uses
  %i.p = load ptr, ptr %.sroa.012.029.i, align 8, !tbaa !1354 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1352 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.o, align 8, !tbaa !69   ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !69   ; 2 uses
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph30.i
  store i32 %i.u, ptr %i.o, align 8, !tbaa !69
  %.not2021.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2021.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.023.i = phi ptr [ %i.y, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.05.022.i = phi ptr [ %i.ag, %bb.e ], [ %i.r, %bb.d ] ; 3 uses
  %i.w = load ptr, ptr %.sroa.0.023.i, align 8, !tbaa !1354
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1352 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !69  ; 2 uses
  %i.ab = icmp slt i32 %i.t, %i.aa
  br i1 %i.ab, label %bb.e, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.05.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.05.022.i, %.lr.ph.i ], [ %i.ag, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ac, align 4, !tbaa !69
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i, i64 8
  store i32 %i.aa, ptr %i.ad, align 4, !tbaa !69
  %i.ae = load ptr, ptr %.sroa.05.022.i, align 8, !tbaa !1354
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1352 ; 2 uses
  %.not20.i = icmp eq ptr %i.y, %.sroa.082.0
  br i1 %.not20.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !6835

bb.f:                                             ; preds = %.critedge.i, %.lr.ph30.i
  %.sroa.012.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.012.0.i = load ptr, ptr %.sroa.012.0.in.i, align 8, !tbaa !1352 ; 2 uses
  %.not19.i = icmp eq ptr %.sroa.012.0.i, %i.n
  br i1 %.not19.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit, label %.lr.ph30.i, !llvm.loop !6836

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit36, %bb.c
  %i.ah = add i64 %.033100, 16                    ; 4 uses
  %i.ai = sub i64 %i.h, %i.ah
  %i.aj = icmp ugt i64 %i.ai, 16
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !8431

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit
  %.not.i.i37 = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i37, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1352, !noalias !8432
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38: ; preds = %bb.a, %._crit_edge, %bb.g
  %.sroa.081.0 = phi ptr [ %i.c, %._crit_edge ], [ %i.al, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38
  %i.am = load ptr, ptr %.sroa.081.0, align 8, !tbaa !1354
  %.sroa.012.0.in26.i40 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.012.027.i41 = load ptr, ptr %.sroa.012.0.in26.i40, align 8, !tbaa !1352 ; 2 uses
  %.not1928.i42 = icmp eq ptr %.sroa.012.027.i41, %i.a
  br i1 %.not1928.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %.lr.ph30.i43

.lr.ph30.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.012.029.i44 = phi ptr [ %.sroa.012.0.i46, %bb.k ], [ %.sroa.012.027.i41, %bb.h ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.029.i44, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %.sroa.012.029.i44, align 8, !tbaa !1354 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1352 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.an, align 8, !tbaa !69 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !69 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph30.i43
  store i32 %i.at, ptr %i.an, align 8, !tbaa !69
  %.not2021.i48 = icmp eq ptr %i.aq, %.sroa.081.0
  br i1 %.not2021.i48, label %.critedge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.023.i50 = phi ptr [ %i.ax, %bb.j ], [ %i.aq, %bb.i ]
  %.sroa.05.022.i51 = phi ptr [ %i.bf, %bb.j ], [ %i.aq, %bb.i ] ; 3 uses
  %i.av = load ptr, ptr %.sroa.0.023.i50, align 8, !tbaa !1354
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1352 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !69 ; 2 uses
  %i.ba = icmp slt i32 %i.as, %i.az
  br i1 %i.ba, label %bb.j, label %.critedge.i52

.critedge.i52:                                    ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.05.0.lcssa.i53 = phi ptr [ %i.aq, %bb.i ], [ %.sroa.05.022.i51, %.lr.ph.i49 ], [ %i.bf, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i53, i64 8
  store i32 %i.as, ptr %i.bb, align 4, !tbaa !69
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.022.i51, i64 8
  store i32 %i.az, ptr %i.bc, align 4, !tbaa !69
  %i.bd = load ptr, ptr %.sroa.05.022.i51, align 8, !tbaa !1354
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1352 ; 2 uses
  %.not20.i54 = icmp eq ptr %i.ax, %.sroa.081.0
  br i1 %.not20.i54, label %.critedge.i52, label %.lr.ph.i49, !llvm.loop !6835

bb.k:                                             ; preds = %.critedge.i52, %.lr.ph30.i43
  %.sroa.012.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.012.0.i46 = load ptr, ptr %.sroa.012.0.in.i45, align 8, !tbaa !1352 ; 2 uses
  %.not19.i47 = icmp eq ptr %.sroa.012.0.i46, %i.a
  br i1 %.not19.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, label %.lr.ph30.i43, !llvm.loop !6836

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.dr, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_22stable_vector_iteratorIPiLb0EEEEEvT0_SE_T_.exit55 ] ; 11 uses
  %i.bg = sub i64 %i.h, %.032106
  %i.bh = icmp ugt i64 %i.bg, %.032106            ; 2 uses
  br i1 %i.bh, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.bi = shl i64 %.032106, 1                     ; 6 uses
  %i.bj = icmp ugt i64 %i.h, %i.bi
  br i1 %i.bj, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.bi, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us
  %i.bk = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8435 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1354, !noalias !8438
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bi
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1352, !noalias !8438
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.bk, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us ], [ %i.bn, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.bk, ptr %5, align 8, !tbaa !1450
  store ptr %i.bk, ptr %6, align 8, !tbaa !1450
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !1450
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !1354
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !1354
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bp
  %i.bt = ashr exact i64 %i.bs, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65
  %.0101 = phi i64 [ %i.cq, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8435 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1354, !noalias !1789 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %.0101
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1352, !noalias !8435 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1354, !noalias !8441
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !1354, !noalias !8444
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %.0101
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1352, !noalias !8444
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.by, %bb.n ], [ %i.bv, %.lr.ph103.split ]
  %.sroa.077.0129 = phi ptr [ %i.bx, %bb.n ], [ %i.bu, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.cb, %bb.n ], [ %i.bu, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.cc = load ptr, ptr %.in, align 8, !tbaa !1352, !noalias !8441 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63
  %i.cd = load ptr, ptr %.sroa.075.0, align 8, !tbaa !1354, !noalias !8438
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.bi
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1352, !noalias !8438
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit63 ], [ %i.cf, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0129, ptr %5, align 8, !tbaa !1450
  store ptr %i.cc, ptr %6, align 8, !tbaa !1450
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !1450
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !1354
  %i.ch = load ptr, ptr %.sroa.077.0129, align 8, !tbaa !1354
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = ptrtoint ptr %i.ch to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = ashr exact i64 %i.ck, 3
  %i.cm = load ptr, ptr %.sroa.076.0, align 8, !tbaa !1354
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.ci
  %i.cp = ashr exact i64 %i.co, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cl, i64 noundef %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cq = add i64 %.0101, %i.bi                   ; 5 uses
  %i.cr = sub i64 %i.h, %i.cq
  %i.cs = icmp ugt i64 %i.cr, %i.bi
  br i1 %i.cs, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !8447

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit65
  %i.ct = sub i64 %i.h, %i.cq
  %i.cu = icmp ugt i64 %i.ct, %.032106
  br i1 %i.cu, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.cv = icmp ugt i64 %i.h, %.032106
  br i1 %i.cv, label %.thread132, label %bb.s

.thread132:                                       ; preds = %._crit_edge104.thread
  %i.cw = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8448
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
  %i.cx = icmp ugt i64 %i.h, %.032106
  br i1 %i.cx, label %.thread91, label %._crit_edge109

.thread91:                                        ; preds = %.thread
  %i.cy = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8451
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

bb.p:                                             ; preds = %._crit_edge104
  %i.cz = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8448 ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.cq, 0
  br i1 %.not.i.i66, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1354, !noalias !8448
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cq
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1352, !noalias !8448
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit69

end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b:bb.a
  %.not8.i.i73 = icmp ugt i64 %4, %i.ck
  br i1 %.not8.i.i73, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78, label %iter.check250

iter.check250:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %min.iters.check235 = icmp ult i64 %i.cl, 4
  br i1 %min.iters.check235, label %.lr.ph.i.i74.preheader, label %vector.main.loop.iter.check236

vector.main.loop.iter.check236:                   ; preds = %iter.check250
  %min.iters.check237 = icmp ult i64 %i.cl, 32
  br i1 %min.iters.check237, label %vec.epilog.ph254, label %vector.ph238

vector.ph238:                                     ; preds = %vector.main.loop.iter.check236
  %i.cn = and i64 %i.cl, 28
  %n.vec239 = and i64 %i.cl, -32                  ; 5 uses
  %i.co = getelementptr i8, ptr %0, i64 %n.vec239
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next245, %vector.body240 ] ; 2 uses
  %vec.ind242 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph238 ], [ %vec.ind.next246, %vector.body240 ] ; 3 uses
  %step.add243 = add <16 x i8> %vec.ind242, splat (i8 16)
  %next.gep244 = getelementptr i8, ptr %0, i64 %index241 ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep244, i64 16
  store <16 x i8> %vec.ind242, ptr %next.gep244, align 1, !tbaa !35
  store <16 x i8> %step.add243, ptr %i.cp, align 1, !tbaa !35
  %index.next245 = add nuw i64 %index241, 32      ; 2 uses
  %vec.ind.next246 = add <16 x i8> %vec.ind242, splat (i8 32)
  %i.cq = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.cq, label %middle.block247, label %vector.body240, !llvm.loop !8775

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.cl, %n.vec239
  br i1 %cmp.n248, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block247
  %min.epilog.iters.check253 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check253, label %.lr.ph.i.i74.preheader, label %vec.epilog.ph254, !prof !3520

vec.epilog.ph254:                                 ; preds = %vector.main.loop.iter.check236, %vec.epilog.iter.check252
  %vec.epilog.resume.val249 = phi i64 [ %n.vec239, %vec.epilog.iter.check252 ], [ 0, %vector.main.loop.iter.check236 ] ; 2 uses
  %n.vec255 = and i64 %i.cl, -4                   ; 4 uses
  %i.cr = getelementptr i8, ptr %0, i64 %n.vec255
  %i.cs = trunc i64 %vec.epilog.resume.val249 to i8
  %broadcast.splatinsert256 = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %broadcast.splat257 = shufflevector <4 x i8> %broadcast.splatinsert256, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction258 = or disjoint <4 x i8> %broadcast.splat257, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body259

vec.epilog.vector.body259:                        ; preds = %vec.epilog.vector.body259, %vec.epilog.ph254
  %index260 = phi i64 [ %vec.epilog.resume.val249, %vec.epilog.ph254 ], [ %index.next263, %vec.epilog.vector.body259 ] ; 2 uses
  %vec.ind261 = phi <4 x i8> [ %induction258, %vec.epilog.ph254 ], [ %vec.ind.next264, %vec.epilog.vector.body259 ] ; 2 uses
  %next.gep262 = getelementptr i8, ptr %0, i64 %index260
  store <4 x i8> %vec.ind261, ptr %next.gep262, align 1, !tbaa !35
  %index.next263 = add nuw i64 %index260, 4       ; 2 uses
  %vec.ind.next264 = add <4 x i8> %vec.ind261, splat (i8 4)
  %i.ct = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.ct, label %vec.epilog.middle.block265, label %vec.epilog.vector.body259, !llvm.loop !8776

vec.epilog.middle.block265:                       ; preds = %vec.epilog.vector.body259
  %cmp.n266 = icmp eq i64 %i.cl, %n.vec255
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78, label %.lr.ph.i.i74.preheader

.lr.ph.i.i74.preheader:                           ; preds = %iter.check250, %vec.epilog.iter.check252, %vec.epilog.middle.block265
  %.010.i.i75.ph = phi i64 [ 0, %iter.check250 ], [ %n.vec239, %vec.epilog.iter.check252 ], [ %n.vec255, %vec.epilog.middle.block265 ]
  %.079.i.i76.ph = phi ptr [ %0, %iter.check250 ], [ %i.co, %vec.epilog.iter.check252 ], [ %i.cr, %vec.epilog.middle.block265 ]
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.preheader, %.lr.ph.i.i74
  %.010.i.i75 = phi i64 [ %i.cw, %.lr.ph.i.i74 ], [ %.010.i.i75.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %.079.i.i76 = phi ptr [ %i.cv, %.lr.ph.i.i74 ], [ %.079.i.i76.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %i.cu = trunc i64 %.010.i.i75 to i8
  store i8 %i.cu, ptr %.079.i.i76, align 1, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 1
  %i.cw = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %.not.i.i77 = icmp eq i64 %i.cw, %i.cl
  br i1 %.not.i.i77, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78, label %.lr.ph.i.i74, !llvm.loop !8777

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78: ; preds = %.lr.ph.i.i74, %middle.block247, %vec.epilog.middle.block265, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i79 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i79, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78
  %i.da = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !1354, !noalias !8778
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1352, !noalias !8778
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78
  %.sroa.0.0.i = phi ptr [ %.sroa.0107.2133, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit78 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !3533
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !1450, !alias.scope !8781
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !3533
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1450, !alias.scope !8784
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !1354
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1352
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, !llvm.loop !8787

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.129", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = shl i64 %3, 1                            ; 11 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1450   ; 5 uses
  %i.e = zext i1 %.not.i to i64
  %i.f = add nuw i64 %i.c, %i.e                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61131 = icmp eq i64 %i.f, 0
  br i1 %.not61131, label %.loopexit, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph: ; preds = %.preheader
  %i.g = urem i64 %3, %4                          ; 6 uses
  %i.h = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us, %bb.b
  %.059133.us.us = phi i64 [ %i.aa, %bb.b ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us.us = phi ptr [ %i.ad, %bb.b ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %i.i = icmp eq i64 %.059133.us.us, %i.c
  %i.j = select i1 %i.i, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.k = sub i64 %i.j, %i.g
  %i.l = urem i64 %i.k, %4                        ; 2 uses
  %i.m = add i64 %i.g, %i.l
  %i.n = sub i64 %i.j, %i.m
  %i.o = udiv i64 %i.n, %4                        ; 4 uses
  %i.p = sub i64 %i.o, %i.h
  %i.q = shl i64 %i.o, 3
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.o, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us.us
  %min.iters.check176 = icmp ult i64 %i.r, 4
  br i1 %min.iters.check176, label %.lr.ph.i.i.us.us.preheader206, label %vector.ph177

vector.ph177:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.s = and i64 %i.o, 3                          ; 2 uses
  %n.vec178 = sub nuw nsw i64 %i.r, %i.s          ; 3 uses
  %i.t = shl i64 %n.vec178, 3
  %i.u = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph177
  %index180 = phi i64 [ 0, %vector.ph177 ], [ %index.next184, %vector.body179 ] ; 2 uses
  %vec.ind181 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph177 ], [ %vec.ind.next185, %vector.body179 ] ; 3 uses
  %step.add182 = add nuw <2 x i64> %vec.ind181, splat (i64 2)
  %i.v = shl i64 %index180, 3
  %next.gep183 = getelementptr i8, ptr %0, i64 %i.v ; 2 uses
  %i.w = getelementptr i8, ptr %next.gep183, i64 16
  store <2 x i64> %vec.ind181, ptr %next.gep183, align 8, !tbaa !272
  store <2 x i64> %step.add182, ptr %i.w, align 8, !tbaa !272
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %vec.ind.next185 = add <2 x i64> %vec.ind181, splat (i64 4)
  %i.x = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.x, label %middle.block186, label %vector.body179, !llvm.loop !8788

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.s, 0
  br i1 %cmp.n187, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader206

.lr.ph.i.i.us.us.preheader206:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block186
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec178, %middle.block186 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.u, %middle.block186 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader206, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.z, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.y, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.z = add i64 %.010.i.i.us.us, 1               ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.z, %i.r
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !8789

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block186, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us.us, ptr %13, align 8, !tbaa !1450
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.p, i64 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aa = add nuw i64 %.059133.us.us, 1           ; 2 uses
  %.not62.us.us = icmp eq i64 %i.aa, %i.f
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us
  %i.ab = load ptr, ptr %.sroa.0109.0132.us.us, align 8, !tbaa !1354
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1352
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us, %bb.c
  %.059133.us = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us = phi ptr [ %i.az, %bb.c ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %i.ae = icmp eq i64 %.059133.us, %i.c
  %i.af = select i1 %i.ae, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ag = sub i64 %i.af, %i.g
  %i.ah = urem i64 %i.ag, %4                      ; 2 uses
  %i.ai = add i64 %i.g, %i.ah
  %i.aj = sub i64 %i.af, %i.ai
  %i.ak = udiv i64 %i.aj, %4                      ; 4 uses
  %i.al = sub i64 %i.ak, %i.h
  %i.am = shl i64 %i.ak, 3
  %i.an = ashr exact i64 %i.am, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.ak, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us
  %min.iters.check161 = icmp ult i64 %i.an, 4
  br i1 %min.iters.check161, label %.lr.ph.i.i.us.preheader208, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.ao = and i64 %i.ak, 3                        ; 2 uses
  %n.vec163 = sub nuw nsw i64 %i.an, %i.ao        ; 3 uses
  %i.ap = shl i64 %n.vec163, 3
  %i.aq = getelementptr i8, ptr %0, i64 %i.ap
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body164 ] ; 2 uses
  %vec.ind166 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph162 ], [ %vec.ind.next170, %vector.body164 ] ; 3 uses
  %step.add167 = add nuw <2 x i64> %vec.ind166, splat (i64 2)
  %i.ar = shl i64 %index165, 3
  %next.gep168 = getelementptr i8, ptr %0, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep168, i64 16
  store <2 x i64> %vec.ind166, ptr %next.gep168, align 8, !tbaa !272
  store <2 x i64> %step.add167, ptr %i.as, align 8, !tbaa !272
  %index.next169 = add nuw i64 %index165, 4       ; 2 uses
  %vec.ind.next170 = add <2 x i64> %vec.ind166, splat (i64 4)
  %i.at = icmp eq i64 %index.next169, %n.vec163
  br i1 %i.at, label %middle.block171, label %vector.body164, !llvm.loop !8790

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.ao, 0
  br i1 %cmp.n172, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader208

.lr.ph.i.i.us.preheader208:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block171
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec163, %middle.block171 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.aq, %middle.block171 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader208, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.av, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.au, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !272
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.av = add i64 %.010.i.i.us, 1                 ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.av, %i.an
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !8791

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block171, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us, ptr %14, align 8, !tbaa !1450
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.al, i64 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aw = add nuw i64 %.059133.us, 1              ; 2 uses
  %.not62.us = icmp eq i64 %i.aw, %i.f
  br i1 %.not62.us, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us
  %i.ax = load ptr, ptr %.sroa.0109.0132.us, align 8, !tbaa !1354
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1352
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph, %bb.d
  %.059133 = phi i64 [ %i.bs, %bb.d ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph ] ; 2 uses
  %.sroa.0109.0132 = phi ptr [ %i.bv, %bb.d ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph ] ; 2 uses
  %i.ba = icmp eq i64 %.059133, %i.c
  %i.bb = select i1 %i.ba, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bc = sub i64 %i.bb, %i.g
  %i.bd = urem i64 %i.bc, %4                      ; 2 uses
  %i.be = add i64 %i.g, %i.bd
  %i.bf = sub i64 %i.bb, %i.be
  %i.bg = udiv i64 %i.bf, %4                      ; 4 uses
  %i.bh = sub i64 %i.bg, %i.h
  %i.bi = shl i64 %i.bg, 3
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.mask.i = and i64 %i.bg, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader210, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bk = and i64 %i.bg, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bj, %i.bk           ; 3 uses
  %i.bl = shl i64 %n.vec, 3
  %i.bm = getelementptr i8, ptr %0, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bn = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.bn ; 2 uses
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.bo, align 8, !tbaa !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !8792

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader210

.lr.ph.i.i.preheader210:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader210, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.br = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.br, %i.bj
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i, !llvm.loop !8793

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  store ptr %.sroa.0109.0132, ptr %15, align 8, !tbaa !1450
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container22stable_vector_iteratorIPiLb0EEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.bh, i64 noundef %i.bd)
  %i.bs = add nuw i64 %.059133, 1                 ; 2 uses
  %.not62 = icmp eq i64 %i.bs, %i.f
  br i1 %.not62, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit
  %i.bt = load ptr, ptr %.sroa.0109.0132, align 8, !tbaa !1354
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.a
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1352
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

bb.e:                                             ; preds = %bb.a
  %i.bw = add i64 %i.f, -1
  %i.bx = mul i64 %i.bw, %i.a                     ; 2 uses
  %.not.i68 = icmp eq i64 %i.bx, 0
  br i1 %.not.i68, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1352
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69: ; preds = %bb.e, %bb.f
  %.sroa.0109.5 = phi ptr [ %i.d, %bb.e ], [ %i.ca, %bb.f ]
  %.not63134 = icmp eq i64 %i.f, 0
  br i1 %.not63134, label %.loopexit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph: ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69
  %i.cb = urem i64 %3, %4                         ; 2 uses
  %i.cc = udiv i64 %3, %4                         ; 3 uses
  %i.cd = sub nsw i64 0, %i.a
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph
  %.0136 = phi i64 [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph ], [ %i.ce, %bb.k ]
  %.sroa.0109.2135 = phi ptr [ %.sroa.0109.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.lr.ph ], [ %i.df, %bb.k ] ; 3 uses
  %i.ce = add i64 %.0136, -1                      ; 3 uses
  %i.cf = icmp eq i64 %i.ce, %i.c
  %i.cg = select i1 %i.cf, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ch = sub i64 %i.cg, %i.cb
  %i.ci = urem i64 %i.ch, %4                      ; 4 uses
  %i.cj = add i64 %i.cb, %i.ci
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = udiv i64 %i.ck, %4                      ; 6 uses
  %i.cm = sub i64 %i.cl, %i.cc                    ; 2 uses
  %i.cn = shl i64 %i.cl, 3
  %i.co = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.mask.i74 = and i64 %i.cl, 2305843009213693951
  %.not8.i.i75 = icmp eq i64 %.mask.i74, 0
  br i1 %.not8.i.i75, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %min.iters.check191 = icmp ult i64 %i.co, 4
  br i1 %min.iters.check191, label %.lr.ph.i.i76.preheader205, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i76.preheader
  %i.cp = and i64 %i.cl, 3                        ; 2 uses
  %n.vec193 = sub nuw nsw i64 %i.co, %i.cp        ; 3 uses
  %i.cq = shl i64 %n.vec193, 3
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph192
  %index195 = phi i64 [ 0, %vector.ph192 ], [ %index.next199, %vector.body194 ] ; 2 uses
  %vec.ind196 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph192 ], [ %vec.ind.next200, %vector.body194 ] ; 3 uses
  %step.add197 = add nuw <2 x i64> %vec.ind196, splat (i64 2)
  %i.cs = shl i64 %index195, 3
  %next.gep198 = getelementptr i8, ptr %0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x i64> %vec.ind196, ptr %next.gep198, align 8, !tbaa !272
  store <2 x i64> %step.add197, ptr %i.ct, align 8, !tbaa !272
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next200 = add <2 x i64> %vec.ind196, splat (i64 4)
  %i.cu = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.cu, label %middle.block201, label %vector.body194, !llvm.loop !8794

middle.block201:                                  ; preds = %vector.body194
  %cmp.n202 = icmp eq i64 %i.cp, 0
  br i1 %cmp.n202, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80, label %.lr.ph.i.i76.preheader205

.lr.ph.i.i76.preheader205:                        ; preds = %.lr.ph.i.i76.preheader, %middle.block201
  %.010.i.i77.ph = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %n.vec193, %middle.block201 ]
  %.079.i.i78.ph = phi ptr [ %0, %.lr.ph.i.i76.preheader ], [ %i.cr, %middle.block201 ]
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.preheader205, %.lr.ph.i.i76
  %.010.i.i77 = phi i64 [ %i.cw, %.lr.ph.i.i76 ], [ %.010.i.i77.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  %.079.i.i78 = phi ptr [ %i.cv, %.lr.ph.i.i76 ], [ %.079.i.i78.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  store i64 %.010.i.i77, ptr %.079.i.i78, align 8, !tbaa !272
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i78, i64 8
  %i.cw = add i64 %.010.i.i77, 1                  ; 2 uses
  %.not.i.i79 = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i79, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80, label %.lr.ph.i.i76, !llvm.loop !8795

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80: ; preds = %.lr.ph.i.i76, %middle.block201, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i81 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i81, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80
  %i.da = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !1354, !noalias !8796
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1352, !noalias !8796
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80
  %.sroa.0.0.i = phi ptr [ %.sroa.0109.2135, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit80 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !3061
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !1450, !alias.scope !8799
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !3061
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1450, !alias.scope !8802
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !1354
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1352
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, !llvm.loop !8805

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPiLb0EEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 3 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 3 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %26 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %27 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %29 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %30 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %31 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %32 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 10 uses
  %33 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %35 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %36 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1450, !noalias !8806 ; 4 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1354, !noalias !8806
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1352, !noalias !8806
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0266.4 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1450, !noalias !8809 ; 6 uses
  %.not.i.i.i = icmp eq i64 %2, 0                 ; 4 uses
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.g = sub nsw i64 0, %2
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1354, !noalias !8809
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1352, !noalias !8809
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %bb.c
  %.sroa.0256.8 = phi ptr [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit ], [ %i.j, %bb.c ] ; 2 uses
  %.not.i.i65 = icmp eq i64 %3, 0
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !1354, !noalias !8812
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %3
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1352, !noalias !8812
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit, %bb.d
  %.sroa.0228.6 = phi ptr [ %i.f, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit ], [ %i.m, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %.sroa.0228.6, ptr %27, align 8, !tbaa !1450
  %i.n = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i67 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i67, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit68, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66
  %i.o = load ptr, ptr %.sroa.0228.6, align 8, !tbaa !1354, !noalias !8815
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1352, !noalias !8815
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit68

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit68: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66, %bb.e
  %.sroa.0226.0 = phi ptr [ %.sroa.0228.6, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit66 ], [ %i.q, %bb.e ] ; 12 uses
  %i.r = icmp eq i64 %5, 0
  %i.s = select i1 %i.r, i64 0, i64 %4            ; 3 uses
  %i.t = add i64 %i.s, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.a) ; 2 uses
  %.not368 = icmp eq i64 %i.a, 0
  br i1 %.not368, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit68
  %.not61 = icmp eq i64 %6, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0226.0, i64 8
  %i.v = sub nsw i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.w = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0198.0, %.sink.split.i ] ; 16 uses
  %.050379 = phi i64 [ %i.s, %.lr.ph ], [ %i.ft, %.sink.split.i ] ; 7 uses
  %.051378 = phi i8 [ 1, %.lr.ph ], [ %.253, %.sink.split.i ] ; 8 uses
  %.057377 = phi i64 [ %5, %.lr.ph ], [ %.158, %.sink.split.i ] ; 2 uses
  %.0290376 = phi i64 [ %i.a, %.lr.ph ], [ %i.fw, %.sink.split.i ] ; 5 uses
  %.sroa.0266.0375 = phi ptr [ %.sroa.0266.4, %.lr.ph ], [ %.sroa.0266.1, %.sink.split.i ] ; 13 uses
  %.sroa.0256.0374 = phi ptr [ %.sroa.0256.8, %.lr.ph ], [ %.sroa.0256.3, %.sink.split.i ] ; 13 uses
  %.sroa.0243.0373 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0243.2, %.sink.split.i ] ; 9 uses
  %.sroa.0228.0372 = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0228.2, %.sink.split.i ] ; 13 uses
  %.sroa.0220.0370 = phi ptr [ %i.b, %.lr.ph ], [ %i.fr, %.sink.split.i ] ; 15 uses
  %.val364369 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fv, %.sink.split.i ] ; 3 uses
  %i.x = icmp ult i64 %.050379, %.val364369
  br i1 %i.x, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPiLb0EEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !1354 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0220.0370, align 8, !tbaa !1354 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.050379, %.lr.ph.i ], [ %i.aw, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %.thread20.i ] ; 4 uses
  %i.aa = mul i64 %.01822.i, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1352
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = mul i64 %.023.i, %2
  %i.af = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1352
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.01822.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1352
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.023.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1352
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !69 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !69 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread20.i, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 2 uses
  %i.em = load ptr, ptr %.sroa.059.0, align 8, !tbaa !1354, !noalias !12017
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 -8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1352, !noalias !12017 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = load i32, ptr %i.el, align 4, !tbaa !69, !noalias !12017
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !69, !noalias !12017
  store i32 %i.er, ptr %i.el, align 4, !tbaa !69, !noalias !12017
  store i32 %i.eq, ptr %i.ep, align 4, !tbaa !69, !noalias !12017
  %.not.i = icmp eq ptr %i.ek, %i.ar
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i34, !llvm.loop !7588

bb.y:                                             ; preds = %_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET1_RT_SL_RT0_SN_SO_SK_T2_T3_b.exit
  %.not1.i.i = icmp eq ptr %i.ef, %i.ah           ; 2 uses
  br i1 %.not23, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.z, %.lr.ph.i35
  %.sroa.053.0 = phi ptr [ %i.ey, %.lr.ph.i35 ], [ %.sroa.076.0, %bb.z ]
  %.sroa.052.0 = phi ptr [ %i.fb, %.lr.ph.i35 ], [ %.sroa.071.0, %bb.z ]
  %i.es = phi ptr [ %i.ev, %.lr.ph.i35 ], [ %i.ef, %bb.z ]
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1354, !noalias !12020
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1352, !noalias !12020 ; 3 uses
  %i.ew = load ptr, ptr %.sroa.053.0, align 8, !tbaa !1354, !noalias !12025
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1352, !noalias !12025 ; 2 uses
  %i.ez = load ptr, ptr %.sroa.052.0, align 8, !tbaa !1354, !noalias !12028
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 -8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1352, !noalias !12028 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !69, !noalias !12031
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !69, !noalias !12031
  store i32 %i.ff, ptr %i.fc, align 4, !tbaa !69, !noalias !12031
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !69, !noalias !12031
  store i32 %i.fh, ptr %i.fe, align 4, !tbaa !69, !noalias !12031
  store i32 %i.fd, ptr %i.fg, align 4, !tbaa !69, !noalias !12031
  %.not.i36 = icmp eq ptr %i.ev, %i.ah
  br i1 %.not.i36, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i35, !llvm.loop !7828

bb.aa:                                            ; preds = %bb.y
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ]
  %i.fi = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %i.ef, %bb.aa ]
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !1354, !noalias !12032
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !1352, !noalias !12032 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !12032
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !1352, !noalias !12032 ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8 ; 2 uses
  %i.fr = load i32, ptr %i.fm, align 4, !tbaa !69, !noalias !12032
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !69, !noalias !12032
  store i32 %i.fs, ptr %i.fm, align 4, !tbaa !69, !noalias !12032
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !69, !noalias !12032
  %.not.i.i38 = icmp eq ptr %i.fl, %i.ah
  br i1 %.not.i.i38, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, label %.lr.ph.i.i, !llvm.loop !7588

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit: ; preds = %.lr.ph.i35, %.lr.ph.i.i, %.lr.ph.i34, %bb.aa, %bb.z, %bb.x, %bb.w
  %storemerge = phi ptr [ %i.ah, %bb.w ], [ %.sroa.071.0, %bb.z ], [ %i.ef, %bb.x ], [ %i.fp, %.lr.ph.i.i ], [ %.sroa.071.0, %bb.aa ], [ %i.eo, %.lr.ph.i34 ], [ %i.fb, %.lr.ph.i35 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1450
  %.neg104 = mul i64 %.018.lcssa.i, -8            ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.c, i64 %.neg104 ; 3 uses
  %.not.i39 = icmp eq ptr %i.ah, %.sroa.076.0
  br i1 %.not.i39, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit
  %.not9.i = icmp eq i64 %.neg104, 0
  br i1 %.not9.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -8 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !272
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !272
  store i64 %i.fx, ptr %i.fu, align 8, !tbaa !272
  store i64 %i.fw, ptr %i.fv, align 8, !tbaa !272
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit.i
  %i.fy = load ptr, ptr %2, align 8, !tbaa !3061  ; 2 uses
  %i.fz = icmp eq ptr %i.ft, %i.fy
  br i1 %i.fz, label %.sink.split.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ga = icmp eq ptr %i.fy, %i.c
  br i1 %i.ga, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

.sink.split.i:                                    ; preds = %bb.ad, %bb.ac
  %.sink.i = phi ptr [ %i.c, %bb.ac ], [ %i.ft, %bb.ad ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3061
  %.pre192 = load ptr, ptr %1, align 8, !tbaa !3061
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit, %bb.ad, %.sink.split.i
  %i.gb = phi ptr [ %i.c, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPiLb0EEEEES7_EET0_T_S9_S8_.exit ], [ %i.c, %bb.ad ], [ %.pre192, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1450
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -8 ; 2 uses
  store ptr %i.gc, ptr %1, align 8, !tbaa !3061
  %i.gd = icmp ne i64 %.0150, 0
  %.neg = sext i1 %i.gd to i64
  %i.ge = add i64 %.0150, %.neg
  %i.gf = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.gf to i64
  %i.gg = add i64 %.sroa.speculated, %.neg24
  %i.gh = add i64 %.0102149, -1                   ; 2 uses
  %.not = icmp eq i64 %i.gh, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !12037

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPiLb0EEEEEEEvT_SB_RSB_T0_SD_SD_.exit, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12038)
  %i.gi = load ptr, ptr %6, align 8, !tbaa !1450, !noalias !12038
  store ptr %i.gi, ptr %0, align 8, !tbaa !1450, !alias.scope !12038
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1450   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !69   ; 4 uses
  store i32 %i.q, ptr %4, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %5, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.r = add i64 %5, -1                           ; 2 uses
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.v, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !12041

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader16 ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge10.i
  store i32 %i.q, ptr %i.x, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !12042

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.q, ptr %i.p, align 8, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !1450
  store ptr %i.b, ptr %11, align 8, !tbaa !1450
  store ptr %i.d, ptr %12, align 8, !tbaa !1450
  %i.y = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  store ptr %i.y, ptr %13, align 8, !tbaa !2915
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1450
  store ptr %i.b, ptr %7, align 8, !tbaa !1450
  store ptr %i.d, ptr %8, align 8, !tbaa !1450
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !1354
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !1354
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !1354
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.ac
  %i.aj = ashr exact i64 %i.ai, 3
  store ptr %i.z, ptr %9, align 8, !tbaa !2915
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.af, i64 noundef %i.aj, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPiLb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.073 = alloca ptr, align 8                ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1450   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1450   ; 6 uses
  %.not80 = icmp eq ptr %i.a, %i.b
  br i1 %.not80, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1450   ; 2 uses
  %.not81 = icmp eq ptr %i.b, %i.c
  br i1 %.not81, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1354 ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1352
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !69   ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %.not82 = icmp slt i32 %i.i, %i.j
  br i1 %.not82, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_22stable_vector_iteratorISD_Lb0EEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1354 ; 3 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1354 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1354, !noalias !12043
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1352, !noalias !12043
  br label %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !69, !noalias !12043
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1354, !noalias !12043
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1352, !noalias !12043
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPiLb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !12046

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1354 ; 2 uses
  %.pre116 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi117 = phi i64 [ %.pre116, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.m, %bb.e ]
  %i.af = phi ptr [ %.pre, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.k, %bb.e ] ; 5 uses
  %.sroa.073.0..sroa.073.promoted = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 7 uses
  store ptr %.sroa.073.0..sroa.073.promoted, ptr %0, align 8, !tbaa !1450
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1450  ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1354 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi117             ; 4 uses
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !2566 ; 3 uses
  %.not.i7 = icmp ugt i64 %i.ak, %i.am
  br i1 %.not.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not.i.i.i = icmp eq ptr %i.ah, %i.af
  br i1 %.not.i.i.i, label %._ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit_crit_edge, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i

._ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit_crit_edge: ; preds = %bb.i
  %.pre110 = load ptr, ptr %4, align 8, !tbaa !2564
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i: ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 %i.aj
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1352, !noalias !12047 ; 2 uses
  %.not3.i.i = icmp eq ptr %.sroa.073.0..sroa.073.promoted, %i.ao
  %.pre111 = load ptr, ptr %4, align 8, !tbaa !2564 ; 3 uses
  br i1 %.not3.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.au, %.lr.ph.i.i ], [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i ] ; 2 uses
  %.04.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.pre111, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !69
  store i32 %i.ar, ptr %.04.i.i, align 4, !tbaa !69
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1354
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1352 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %.not.i.i8 = icmp eq ptr %i.au, %i.ao
  br i1 %.not.i.i8, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignINS_9container22stable_vector_iteratorIS2_Lb0EEEEEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !7136

bb.j:                                             ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPiLb0EEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit
  %.not.i.i10.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i10.i, label %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i: ; preds = %bb.j
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.am
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1352, !noalias !12050 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !2564  ; 4 uses
  %.not3.i12.i = icmp eq ptr %.sroa.073.0..sroa.073.promoted, %i.ax
  br i1 %.not3.i12.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i, %.lr.ph.i13.i
  %i.az = phi ptr [ %i.be, %.lr.ph.i13.i ], [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ] ; 2 uses
  %.04.i14.i = phi ptr [ %i.bf, %.lr.ph.i13.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !69
  store i32 %i.bb, ptr %.04.i14.i, align 4, !tbaa !69
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !1354
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1352 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i14.i, i64 4 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.be, %i.ax
  br i1 %.not.i15.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i, label %.lr.ph.i13.i, !llvm.loop !7136

_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i: ; preds = %bb.j
  %i.bg = load ptr, ptr %4, align 8, !tbaa !2564  ; 2 uses
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit21.i: ; preds = %.lr.ph.i13.i, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i
  %i.bh = phi ptr [ %i.bg, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.ay, %.lr.ph.i13.i ] ; 2 uses
  %.0.lcssa.i1639.i = phi ptr [ %i.bg, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ay, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.bf, %.lr.ph.i13.i ]
  %.sroa.026.0.i = phi ptr [ %.sroa.073.0..sroa.073.promoted, %_ZN5boost4moveINS_9container22stable_vector_iteratorIPiLb0EEES3_EET0_T_S6_S5_.exit17.i ], [ %i.ax, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPiLb0EEEl.exit11.i ], [ %i.ax, %.lr.ph.i13.i ] ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  store ptr %i.l, ptr %12, align 8, !tbaa !1889
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.n, ptr %i.ba, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS5_mEEEEvT_T0_T1_SJ_SJ_RT2_RSJ_SM_SM_SM_b(ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i1 noundef zeroext true)
  br i1 %6, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  store ptr %i.l, ptr %13, align 8, !tbaa !1889
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.n, ptr %i.bb, align 8, !tbaa !13016
  store ptr %.sroa.0.0.i, ptr %14, align 8, !tbaa !1889
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.6.1.i, ptr %i.bc, align 8, !tbaa !13016
  %i.bd = load i64, ptr %i.g, align 8, !tbaa !272
  %i.be = load i64, ptr %i.e, align 8, !tbaa !272
  %i.bf = load i64, ptr %i.f, align 8, !tbaa !272
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !272
  call void @llvm.experimental.noalias.scope.decl(metadata !14205)
  %i.bh = sub nsw i64 0, %5
  %.not.i.i.i = icmp eq i64 %5, 0
  br i1 %.not.i.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !75, !noalias !14205
  %i.bj = ptrtoint ptr %.sroa.0.0.i to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = sub nsw i64 %i.bm, %5                   ; 4 uses
  %or.cond.i.i.i = icmp ult i64 %i.bn, 256
  br i1 %or.cond.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.i, i64 %i.bh
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp sgt i64 %i.bn, 0
  %i.bq = lshr i64 %i.bn, 8                       ; 2 uses
  %i.br = or disjoint i64 %i.bq, -72057594037927936
  %i.bs = select i1 %i.bp, i64 %i.bq, i64 %i.br   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75, !noalias !14205
  %i.bv = shl nsw i64 %i.bs, 8
  %i.bw = sub nsw i64 %i.bn, %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.sroa.6.1.i43 = phi ptr [ %.sroa.6.1.i, %bb.j ], [ %.sroa.6.1.i, %bb.l ], [ %i.bt, %bb.m ]
  %.sroa.0.0.i44 = phi ptr [ %.sroa.0.0.i, %bb.j ], [ %i.bo, %bb.l ], [ %i.bx, %bb.m ]
  store ptr %.sroa.0.0.i44, ptr %15, align 8, !tbaa !1889, !alias.scope !14205
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.6.1.i43, ptr %i.by, align 8, !tbaa !13016, !alias.scope !14205
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_NS0_7swap_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %5, i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull align 8 dead_on_return %15)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  store ptr %i.l, ptr %16, align 8, !tbaa !1889
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.n, ptr %i.bz, align 8, !tbaa !13016
  store ptr %.sroa.0.0.i, ptr %17, align 8, !tbaa !1889
  %i.ca = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ca, align 8, !tbaa !13016
  %i.cb = load i64, ptr %i.g, align 8, !tbaa !272
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !272
  %i.cd = load i64, ptr %i.f, align 8, !tbaa !272
  %i.ce = load i64, ptr %i.h, align 8, !tbaa !272
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_(ptr noundef nonnull align 8 dead_on_return %16, ptr noundef nonnull align 8 dead_on_return %17, i64 noundef %5, i64 noundef %i.cb, i64 noundef %i.cc, i64 noundef %i.cd, i64 noundef %i.ce)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.p:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !2566 ; 5 uses
  %i.ch = icmp ugt i64 %i.cg, %5
  br i1 %i.ch, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread: ; preds = %bb.p
  store i64 %5, ptr %i.cf, align 8, !tbaa !2566
  %.pre84 = load ptr, ptr %8, align 8, !tbaa !2564
  br label %bb.r

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit: ; preds = %bb.p
  %i.ci = icmp ult i64 %i.cg, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !2564  ; 5 uses
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %i.cj = load ptr, ptr %0, align 8, !tbaa !1889  ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cg
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !69 ; 4 uses
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !69
  %storemerge7.i45 = add nuw i64 %i.cg, 1         ; 4 uses
  %.not8.i46 = icmp eq i64 %storemerge7.i45, %5
  br i1 %.not8.i46, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52, label %.lr.ph.i47.preheader

.lr.ph.i47.preheader:                             ; preds = %bb.q
  %i.cm = xor i64 %i.cg, -1
  %i.cn = add i64 %5, %i.cm                       ; 3 uses
  %min.iters.check87 = icmp ult i64 %i.cn, 8
  br i1 %min.iters.check87, label %.lr.ph.i47.preheader110, label %vector.ph88

vector.ph88:                                      ; preds = %.lr.ph.i47.preheader
  %n.vec89 = and i64 %i.cn, -8                    ; 3 uses
  %i.co = add i64 %storemerge7.i45, %n.vec89
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %i.cl, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %.pre, i64 %storemerge7.i45
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body92 ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cp, i64 %index93 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> %broadcast.splat91, ptr %i.cq, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat91, ptr %i.cr, align 4, !tbaa !69
  %index.next94 = add nuw i64 %index93, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.cs, label %middle.block95, label %vector.body92, !llvm.loop !14208

middle.block95:                                   ; preds = %vector.body92
  %cmp.n96 = icmp eq i64 %i.cn, %n.vec89
  br i1 %cmp.n96, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52, label %.lr.ph.i47.preheader110

.lr.ph.i47.preheader110:                          ; preds = %.lr.ph.i47.preheader, %middle.block95
  %storemerge10.i48.ph = phi i64 [ %storemerge7.i45, %.lr.ph.i47.preheader ], [ %i.co, %middle.block95 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader110, %.lr.ph.i47
  %storemerge10.i48 = phi i64 [ %storemerge.i49, %.lr.ph.i47 ], [ %storemerge10.i48.ph, %.lr.ph.i47.preheader110 ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %storemerge10.i48
  store i32 %i.cl, ptr %i.ct, align 4, !tbaa !69
  %storemerge.i49 = add i64 %storemerge10.i48, 1  ; 2 uses
  %.not.i50 = icmp eq i64 %storemerge.i49, %5
  br i1 %.not.i50, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52, label %.lr.ph.i47, !llvm.loop !14209

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52: ; preds = %.lr.ph.i47, %middle.block95, %bb.q
  store i64 %5, ptr %i.cf, align 8, !tbaa !2566
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %.pre85 = phi ptr [ %.pre84, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit52 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.pre85, i64 %5
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = add i64 %i.cv, 7
  %i.cx = and i64 %i.cw, -8
  %i.cy = inttoptr i64 %i.cx to ptr               ; 4 uses
  %i.cz = urem i64 %i.k, %5                       ; 3 uses
  %i.da = sub i64 %i.j, %i.cz
  %i.db = urem i64 %i.da, %5                      ; 2 uses
  %i.dc = add i64 %i.cz, %i.db
  %i.dd = sub i64 %i.j, %i.dc
  %i.de = udiv i64 %i.dd, %5                      ; 4 uses
  %i.df = udiv i64 %i.k, %5                       ; 2 uses
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = shl i64 %i.de, 3
  %i.di = ashr exact i64 %i.dh, 3                 ; 3 uses
  %.mask.i = and i64 %i.de, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %min.iters.check99 = icmp ult i64 %i.di, 4
  br i1 %min.iters.check99, label %.lr.ph.i.i.preheader109, label %vector.ph100

vector.ph100:                                     ; preds = %.lr.ph.i.i.preheader
  %i.dj = and i64 %i.de, 3                        ; 2 uses
  %n.vec101 = sub nuw nsw i64 %i.di, %i.dj        ; 3 uses
  %i.dk = shl i64 %n.vec101, 3
  %i.dl = getelementptr i8, ptr %i.cy, i64 %i.dk
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next104, %vector.body102 ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph100 ], [ %vec.ind.next, %vector.body102 ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dm = shl i64 %index103, 3
  %next.gep = getelementptr i8, ptr %i.cy, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.dn, align 8, !tbaa !272
  %index.next104 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.do = icmp eq i64 %index.next104, %n.vec101
  br i1 %i.do, label %middle.block105, label %vector.body102, !llvm.loop !14210

middle.block105:                                  ; preds = %vector.body102
  %cmp.n106 = icmp eq i64 %i.dj, 0
  br i1 %cmp.n106, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i.preheader109

.lr.ph.i.i.preheader109:                          ; preds = %.lr.ph.i.i.preheader, %middle.block105
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec101, %middle.block105 ]
  %.079.i.i.ph = phi ptr [ %i.cy, %.lr.ph.i.i.preheader ], [ %i.dl, %middle.block105 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader109, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader109 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.dp, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader109 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.dq = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i53 = icmp eq i64 %i.dq, %i.di
  br i1 %.not.i.i53, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i, !llvm.loop !14211

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit: ; preds = %.lr.ph.i.i, %middle.block105, %bb.r
  %i.dr = load <2 x ptr>, ptr %0, align 8, !tbaa !1854
  store <2 x ptr> %i.dr, ptr %18, align 16, !tbaa !1854
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES7_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.cy, ptr noundef nonnull align 8 dead_on_return %18, i64 noundef %5, i64 noundef %i.cz, i64 noundef %i.df, i64 noundef %i.dg, i64 noundef %i.db, ptr noundef %.pre85)
  %i.ds = load i64, ptr %i.cf, align 8, !tbaa !2566
  %.not.i54 = icmp eq i64 %i.ds, 0
  br i1 %.not.i54, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit
  store i64 0, ptr %i.cf, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, %bb.h, %bb.o
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %.not = xor i1 %7, true
  %i.b = icmp ne i64 %3, %4                       ; 2 uses
  %or.cond = or i1 %i.b, %.not
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.d, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %bb.b, %.preheader.preheader.i.i
  %or.cond3 = and i1 %i.b, %7
  %i.f = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.g = sub i64 %3, %i.f                         ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1889   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13016 ; 8 uses
  %.not.i.i = icmp eq i64 %3, %i.f                ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75, !noalias !14212
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2
  %i.p = add nsw i64 %i.o, %i.g                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.p, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.g
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp sgt i64 %i.p, 0
  %i.s = lshr i64 %i.p, 8                         ; 2 uses
  %i.t = or disjoint i64 %i.s, -72057594037927936
  %i.u = select i1 %i.r, i64 %i.s, i64 %i.t       ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75, !noalias !14212
  %i.x = shl nsw i64 %i.u, 8
  %i.y = sub nsw i64 %i.p, %i.x
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.j, %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit ], [ %i.j, %bb.d ], [ %i.v, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.h, %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit ], [ %i.q, %bb.d ], [ %i.z, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.h, ptr %10, align 8, !tbaa !1889
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.j, ptr %i.aa, align 8, !tbaa !13016
  store ptr %.sroa.0.0.i, ptr %11, align 8, !tbaa !1889
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ab, align 8, !tbaa !13016
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE9make_heapES5_S5_SD_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.ac = icmp eq ptr %.sroa.0.0.i, %i.h
  br i1 %i.ac, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %i.ad = ptrtoint ptr %.sroa.6.1.i to i64
  %i.ae = ptrtoint ptr %i.j to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %.sroa.0.0.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.ao = ptrtoint ptr %i.h to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub i64 %i.am, %i.ar                    ; 2 uses
  %i.at = icmp ugt i64 %i.as, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.6.1.i, %.lr.ph.i.i.i.i ], [ %.sroa.4.1.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i.i.i ], [ %storemerge.i.i.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i ] ; 2 uses
  %.02.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bd, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i ]
  %i.av = load ptr, ptr %.sroa.4.0.i.i.i, align 8, !tbaa !75
  %i.aw = icmp eq ptr %.sroa.0.0.i.i.i, %i.av
  br i1 %i.aw, label %bb.g, label %bb.h, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds i8, ptr %.sroa.4.0.i.i.i, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.4.1.i.i.i = phi ptr [ %i.ax, %bb.g ], [ %.sroa.4.0.i.i.i, %bb.h ]
  %storemerge.i.i.i.i.i = phi ptr [ %i.az, %bb.g ], [ %i.ba, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bb = load i32, ptr %storemerge.i.i.i.i.i, align 4, !tbaa !69
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !69
  %i.bc = load i32, ptr %i.h, align 4, !tbaa !69
  store i32 %i.bc, ptr %storemerge.i.i.i.i.i, align 4, !tbaa !69
  store ptr %i.h, ptr %9, align 8, !tbaa !1889
  store ptr %i.j, ptr %i.au, align 8, !tbaa !13016
  %i.bd = add i64 %.02.i.i.i.i, -1                ; 3 uses
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE11adjust_heapES5_mmRiSD_(ptr noundef nonnull align 8 dead_on_return %9, i64 noundef 0, i64 noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.f, label %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit, !llvm.loop !13985

_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.bf = load ptr, ptr %0, align 8, !tbaa !1889  ; 7 uses
  store ptr %i.bf, ptr %12, align 8, !tbaa !1889
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !13016 ; 9 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !13016
  call void @llvm.experimental.noalias.scope.decl(metadata !14215)
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit22, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75, !noalias !14215
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, %i.g                 ; 4 uses
  %or.cond.i.i19 = icmp ult i64 %i.bn, 256
  br i1 %or.cond.i.i19, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.g
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit22

bb.k:                                             ; preds = %bb.i
  %i.bp = icmp sgt i64 %i.bn, 0
  %i.bq = lshr i64 %i.bn, 8                       ; 2 uses
  %i.br = or disjoint i64 %i.bq, -72057594037927936
  %i.bs = select i1 %i.bp, i64 %i.bq, i64 %i.br   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75, !noalias !14215
  %i.bv = shl nsw i64 %i.bs, 8
  %i.bw = sub nsw i64 %i.bn, %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.bw
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit22

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit22: ; preds = %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit, %bb.j, %bb.k
  %.sroa.6.1.i20 = phi ptr [ %i.bh, %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit ], [ %i.bh, %bb.j ], [ %i.bt, %bb.k ]
  %.sroa.0.0.i21 = phi ptr [ %i.bf, %_ZN5boost7movelib15detail_adaptive13unstable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_T0_RT1_.exit ], [ %i.bo, %bb.j ], [ %i.bx, %bb.k ]
  store ptr %.sroa.0.0.i21, ptr %13, align 8, !tbaa !1889, !alias.scope !14215
  %i.by = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.sroa.6.1.i20, ptr %i.by, align 8, !tbaa !13016, !alias.scope !14215
  call void @llvm.experimental.noalias.scope.decl(metadata !14218)
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SH_SH_T0_RT1_:bb.a
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1889   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13016 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13016 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2567 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13016
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13016
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13016
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !1889
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !13016
  store ptr %i.a, ptr %5, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !13016
  store ptr %i.x, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !13016
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread
  store i64 0, ptr %i.bf, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !1889
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !13016
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !13016
  store ptr %i.a, ptr %8, align 8, !tbaa !1889
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13016
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !13016
  store ptr %i.x, ptr %9, align 8, !tbaa !1889
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !13016
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !13016
  %i.bq = load ptr, ptr %3, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bq, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES4_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1889   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13016 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13016 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13016 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !69  ; 4 uses
  store i32 %i.al, ptr %3, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %4, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.am = add i64 %4, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %4, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !15422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader22

.lr.ph.i.preheader22:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader22, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader22 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %storemerge10.i
  store i32 %i.al, ptr %i.as, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %4
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !15423

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.al, ptr %i.a, align 4, !tbaa !69
  store ptr %i.a, ptr %8, align 8, !tbaa !1889
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.at, align 8, !tbaa !13016
  store ptr %i.b, ptr %9, align 8, !tbaa !1889
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.au, align 8, !tbaa !13016
  store ptr %i.d, ptr %10, align 8, !tbaa !1889
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !13016
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit: ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13016 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13016 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13016 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1889
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !13016
  store ptr %i.b, ptr %6, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !13016
  store ptr %i.d, ptr %7, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !13016
  %i.bf = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.ax to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = shl nsw i64 %i.bh, 5
  %i.bj = load ptr, ptr %i.az, align 8, !tbaa !75
  %i.bk = ptrtoint ptr %i.b to i64
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2                 ; 2 uses
  %i.bo = add nsw i64 %i.bn, %i.bi
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.bq = ptrtoint ptr %i.a to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %i.bu = sub i64 %i.bo, %i.bt
  %i.bv = ptrtoint ptr %i.bb to i64
  %i.bw = sub i64 %i.bv, %i.bf
  %i.bx = shl nsw i64 %i.bw, 5
  %i.by = load ptr, ptr %i.bb, align 8, !tbaa !75
  %i.bz = ptrtoint ptr %i.d to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = ashr exact i64 %i.cb, 2
  %i.cd = add nsw i64 %i.cc, %i.bx
  %i.ce = sub i64 %i.cd, %i.bn
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bu, i64 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 16 ; 5 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %16 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %17 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %18 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %19 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %20 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %21 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %22 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %23 = alloca %"class.boost::container::deque_iterator", align 16 ; 2 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not41 = icmp ugt i64 %4, %6
  %or.cond42 = and i1 %.not, %.not41
  br i1 %or.cond42, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !3304
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !3306
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !3307
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !1854
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !1854
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !1854
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !1854
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !1854
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !1854
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_10range_xbufIS4_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !1889   ; 11 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !1889   ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !69   ; 2 uses
  %i.n = load i32, ptr %i.k, align 4, !tbaa !69   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 %i.m, ptr %i.k, align 4, !tbaa !69
  store i32 %i.n, ptr %i.l, align 4, !tbaa !69
  br label %bb.ag

bb.g:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %i.i, 16
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %11, align 8, !tbaa !1889
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !13016
  store ptr %i.s, ptr %i.q, align 8, !tbaa !13016
  %i.t = load <2 x ptr>, ptr %1, align 8, !tbaa !1854
  store <2 x ptr> %i.t, ptr %12, align 16, !tbaa !1854
  %i.u = load <2 x ptr>, ptr %2, align 8, !tbaa !1854
  store <2 x ptr> %i.u, ptr %13, align 16, !tbaa !1854
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.ag

bb.i:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !13016 ; 8 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !1889   ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13016 ; 12 uses
  %i.aa = icmp ugt i64 %3, %4
  br i1 %i.aa, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.ab = lshr i64 %3, 1                          ; 6 uses
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.ad = ptrtoint ptr %i.k to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 2
  %i.ah = add nsw i64 %i.ag, %i.ab                ; 4 uses
  %or.cond.i = icmp ult i64 %i.ah, 256
  br i1 %or.cond.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.ab
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = icmp sgt i64 %i.ah, 0
  %i.ak = lshr i64 %i.ah, 8                       ; 2 uses
  %i.al = or disjoint i64 %i.ak, -72057594037927936
  %i.am = select i1 %i.aj, i64 %i.ak, i64 %i.al   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %i.ap = shl nsw i64 %i.am, 8
  %i.aq = sub nsw i64 %i.ah, %i.ap
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aq
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit: ; preds = %bb.k, %bb.l
  %.sroa.089.1 = phi ptr [ %i.ai, %bb.k ], [ %i.ar, %bb.l ] ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEESC_EEvT0_SE_T1_SF_SF_T_:bb.a
  %.03043.lcssa = phi ptr [ %2, %.lr.ph ], [ %i.at, %bb.b ]
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !13016
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit
  %i.i = phi ptr [ %i.s, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.pre, %.lr.ph49.preheader ] ; 3 uses
  %i.j = phi ptr [ %i.t, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.promoted.lcssa, %.lr.ph49.preheader ] ; 2 uses
  %.13148 = phi ptr [ %i.l, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit ], [ %.03043.lcssa, %.lr.ph49.preheader ] ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !69
  store i32 %i.k, ptr %.13148, align 4, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %.13148, i64 4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !1889
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1024
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit, !prof !204

bb.c:                                             ; preds = %.lr.ph49
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75   ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !1889
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit: ; preds = %.lr.ph49, %bb.c
  %i.s = phi ptr [ %i.i, %.lr.ph49 ], [ %i.q, %bb.c ] ; 3 uses
  %i.t = phi ptr [ %i.m, %.lr.ph49 ], [ %i.r, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %i.l, %3
  br i1 %.not, label %._crit_edge50.loopexit, label %.lr.ph49, !llvm.loop !15703

._crit_edge50.loopexit:                           ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit
  %.pre60 = load ptr, ptr %1, align 8, !tbaa !1889 ; 2 uses
  %.not3.i = icmp eq ptr %i.t, %.pre60
  br i1 %.not3.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge50.loopexit
  %.pre61 = load ptr, ptr %i.s, align 8, !tbaa !75
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.u = phi ptr [ %i.ad, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %.pre61, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = phi ptr [ %i.af, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.s, %.lr.ph.i.preheader ] ; 2 uses
  %i.w = phi ptr [ %i.ae, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %.04.i = phi ptr [ %i.ag, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ], [ %3, %.lr.ph.i.preheader ] ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  store i32 %i.x, ptr %.04.i, align 4, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1024
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !204

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.ad = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ac, %bb.d ]
  %i.ae = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ac, %bb.d ] ; 2 uses
  %i.af = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ab, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %.not.i = icmp eq ptr %i.ae, %.pre60
  br i1 %.not.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !14244

.lr.ph112:                                        ; preds = %.lr.ph, %bb.b
  %.03043111 = phi ptr [ %i.at, %bb.b ], [ %2, %.lr.ph ] ; 3 uses
  %.044110 = phi ptr [ %.1, %bb.b ], [ %3, %.lr.ph ] ; 4 uses
  %.promoted109 = phi ptr [ %i.as, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.ah = load i32, ptr %.044110, align 4, !tbaa !69 ; 2 uses
  %i.ai = load i32, ptr %.promoted109, align 4, !tbaa !69 ; 2 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph112
  store i32 %i.ah, ptr %.03043111, align 4, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %.044110, i64 4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14

bb.f:                                             ; preds = %.lr.ph112
  store i32 %i.ai, ptr %.03043111, align 4, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %.promoted109, i64 4 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !1889
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !13016 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1024
  %i.ap = icmp eq ptr %i.al, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14, !prof !204

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !13016
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !1889
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14: ; preds = %bb.g, %bb.f, %bb.e
  %i.as = phi ptr [ %.promoted109, %bb.e ], [ %i.al, %bb.f ], [ %i.ar, %bb.g ] ; 4 uses
  %.1 = phi ptr [ %i.ak, %bb.e ], [ %.044110, %bb.f ], [ %.044110, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.03043111, i64 4 ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !1889  ; 2 uses
  %i.av = icmp ne ptr %i.as, %i.au
  %i.aw = icmp ne ptr %i.at, %3
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !15702

._crit_edge:                                      ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14, %bb.a
  %.0.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ]
  %.lcssa39 = phi ptr [ %i.a, %bb.a ], [ %i.as, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ] ; 2 uses
  %.lcssa37 = phi ptr [ %i.b, %bb.a ], [ %i.au, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit14 ] ; 3 uses
  %.not19.i.i = icmp eq ptr %.lcssa39, %.lcssa37
  br i1 %.not19.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13016
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i
  %.sroa.4.0.i = phi ptr [ %.sroa.4.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %i.az, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.ba = phi ptr [ %i.bz, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %.lcssa39, %.lr.ph.i.i.preheader ] ; 4 uses
  %.021.i.i = phi ptr [ %i.ca, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %3, %.lr.ph.i.i.preheader ] ; 4 uses
  %.0920.i.i = phi ptr [ %.1.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.bb = icmp eq ptr %.0920.i.i, %4
  br i1 %i.bb, label %.lr.ph.i.preheader.i.i.i, label %bb.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !75
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %i.bc = phi ptr [ %i.bl, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.pre.i.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bd = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.sroa.4.0.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.be = phi ptr [ %i.bm, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %i.ba, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.04.i.i.i.i = phi ptr [ %i.bo, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i ], [ %.021.i.i, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !69
  store i32 %i.bf, ptr %.04.i.i.i.i, align 4, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 1024
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.h, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, !prof !204

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.bl = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.h ]
  %i.bm = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.bk, %bb.h ] ; 2 uses
  %i.bn = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.h ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bm, %.lcssa37
  br i1 %.not.i.i.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14244

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.bp = load i32, ptr %.0920.i.i, align 4, !tbaa !69 ; 2 uses
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !69 ; 2 uses
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.bp, ptr %.021.i.i, align 4, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %.0920.i.i, i64 4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i

bb.k:                                             ; preds = %bb.i
  store i32 %i.bq, ptr %.021.i.i, align 4, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bu = load ptr, ptr %.sroa.4.0.i, align 8, !tbaa !75
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1024
  %i.bw = icmp eq ptr %i.bt, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i, !prof !204

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !75
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.4.1.i = phi ptr [ %.sroa.4.0.i, %bb.j ], [ %i.bx, %bb.l ], [ %.sroa.4.0.i, %bb.k ]
  %i.bz = phi ptr [ %i.ba, %bb.j ], [ %i.by, %bb.l ], [ %i.bt, %bb.k ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bs, %bb.j ], [ %.0920.i.i, %bb.l ], [ %.0920.i.i, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.bz, %.lcssa37
  br i1 %.not.i.i, label %_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit, label %.lr.ph.i.i, !llvm.loop !15704

_ZN5boost4moveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES3_EET0_T_S6_S5_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %._crit_edge, %._crit_edge50.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SF_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1889   ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1889   ; 11 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13016 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13016 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 5
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v                       ; 6 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %bb.a
  %.0.i223 = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit ], [ 0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre192 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !13016, !noalias !15705
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !13016, !noalias !15708 ; 11 uses
  %i.aa = ptrtoint ptr %i.b to i64
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !1789 ; 5 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit
  %.033181 = phi i64 [ 0, %.lr.ph ], [ %i.db, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit ] ; 5 uses
  %.not.i.i = icmp eq i64 %.033181, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ad, %.033181             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033181
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.033181
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ae, 0
  %i.ai = lshr i64 %i.ae, 8                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -72057594037927936
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !75, !noalias !15708 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 8
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp sgt i64 %i.ae, 0
  %i.ar = lshr i64 %i.ae, 8                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -72057594037927936
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !75, !noalias !15711 ; 2 uses
  %i.aw = shl nsw i64 %i.at, 8
  %i.ax = sub nsw i64 %i.ae, %i.aw
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.az = phi ptr [ %i.am, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i156 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.6.1.i154 = phi ptr [ %i.al, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.au, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.ay, %bb.e ], [ %i.ag, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 2 uses
  %i.bf = add nsw i64 %i.be, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bf, 256
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 64
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit39
  %i.bh = icmp sgt i64 %i.be, -16
  %i.bi = lshr i64 %i.bf, 8                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -72057594037927936
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75, !noalias !15714
  %i.bn = shl nsw i64 %i.bk, 8
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bp, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i156, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i156, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, !prof !204

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i154, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.i ], [ %i.az, %bb.h ]
  %.sroa.14.1.i = phi ptr [ %i.bt, %bb.i ], [ %.sroa.6.1.i154, %bb.h ]
  %.sroa.019.1.i = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %.not2836.i = icmp eq ptr %.sroa.019.1.i, %.sroa.0.0.i42
  br i1 %.not2836.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i
  %i.bw = phi ptr [ %i.da, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %i.bv, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %.sroa.019.038.i = phi ptr [ %.sroa.019.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.019.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 5 uses
  %.sroa.14.037.i = phi ptr [ %.sroa.14.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i ], [ %.sroa.14.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.bx = icmp eq ptr %.sroa.019.038.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !204

bb.j:                                             ; preds = %.lr.ph39.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.14.037.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !75
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph39.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.019.038.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.12.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.14.037.i, %bb.k ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 5 uses
  %i.cc = load i32, ptr %.sroa.019.038.i, align 4, !tbaa !69 ; 3 uses
  %i.cd = load i32, ptr %storemerge.i.i, align 4, !tbaa !69 ; 2 uses
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.r

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i
  store i32 %i.cd, ptr %.sroa.019.038.i, align 4, !tbaa !69
  %.not2930.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i156
  br i1 %.not2930.i, label %.critedge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.12.1.i, align 8, !tbaa !75 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i, %.lr.ph.preheader.i
  %i.cf = phi ptr [ %i.cu, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cg = phi ptr [ %i.cm, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.034.i = phi ptr [ %storemerge.i1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.8.033.i = phi ptr [ %.sroa.8.1.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.032.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 4 uses
  %.sroa.12.031.i = phi ptr [ %.sroa.12.2.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ], [ %.sroa.12.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ch = icmp eq ptr %.sroa.0.034.i, %i.cg
  br i1 %i.ch, label %bb.m, label %bb.n, !prof !204

bb.m:                                             ; preds = %.lr.ph.i
  %i.ci = getelementptr inbounds i8, ptr %.sroa.8.033.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !75 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i

bb.n:                                             ; preds = %.lr.ph.i
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.034.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i: ; preds = %bb.n, %bb.m
  %i.cm = phi ptr [ %i.cj, %bb.m ], [ %i.cg, %bb.n ]
  %.sroa.8.1.i = phi ptr [ %i.ci, %bb.m ], [ %.sroa.8.033.i, %bb.n ]
  %storemerge.i1.i = phi ptr [ %i.ck, %bb.m ], [ %i.cl, %bb.n ] ; 3 uses
  %i.cn = load i32, ptr %storemerge.i1.i, align 4, !tbaa !69 ; 2 uses
  %i.co = icmp slt i32 %i.cc, %i.cn
  br i1 %i.co, label %bb.o, label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i, %bb.l
  %.sroa.010.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %.sroa.010.032.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i ], [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i ]
  store i32 %i.cc, ptr %.sroa.010.0.lcssa.i, align 4, !tbaa !69
  br label %bb.r

bb.o:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i
  store i32 %i.cn, ptr %.sroa.010.032.i, align 4, !tbaa !69
  %i.cp = icmp eq ptr %.sroa.010.032.i, %i.cf
  br i1 %i.cp, label %bb.p, label %bb.q, !prof !204

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds i8, ptr %.sroa.12.031.i, i64 -8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !75 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i

bb.q:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds i8, ptr %.sroa.010.032.i, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i: ; preds = %bb.q, %bb.p
  %i.cu = phi ptr [ %i.cr, %bb.p ], [ %i.cf, %bb.q ]
  %.sroa.12.2.i = phi ptr [ %i.cq, %bb.p ], [ %.sroa.12.031.i, %bb.q ]
  %storemerge.i3.i = phi ptr [ %i.cs, %bb.p ], [ %i.ct, %bb.q ] ; 2 uses
  %.not29.i = icmp eq ptr %storemerge.i1.i, %.sroa.0.0.i156
  br i1 %.not29.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !13918

bb.r:                                             ; preds = %.critedge.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.019.038.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %bb.s, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i, !prof !204

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.14.037.i, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i: ; preds = %bb.s, %bb.r
  %i.da = phi ptr [ %i.cz, %bb.s ], [ %i.bw, %bb.r ]
  %.sroa.14.2.i = phi ptr [ %i.cy, %bb.s ], [ %.sroa.14.037.i, %bb.r ]
  %.sroa.019.2.i = phi ptr [ %i.cz, %bb.s ], [ %i.cv, %bb.r ] ; 2 uses
  %.not28.i = icmp eq ptr %.sroa.019.2.i, %.sroa.0.0.i42
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit, label %.lr.ph39.i, !llvm.loop !13919

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i
  %i.db = add i64 %.033181, 16                    ; 5 uses
  %i.dc = sub i64 %i.w, %i.db
  %i.dd = icmp ugt i64 %i.dc, 16
  br i1 %i.dd, label %bb.b, label %._crit_edge, !llvm.loop !15717

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit
  %.not.i.i44 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i44, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.de = load ptr, ptr %i.z, align 8, !tbaa !75, !noalias !15705
  %i.df = ptrtoint ptr %i.b to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 2
  %i.dj = add nsw i64 %i.di, %i.db                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.dj, 256
  br i1 %or.cond.i.i45, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.db
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

bb.v:                                             ; preds = %bb.t
  %i.dl = icmp sgt i64 %i.dj, 0
  %i.dm = lshr i64 %i.dj, 8                       ; 2 uses
  %i.dn = or disjoint i64 %i.dm, -72057594037927936
  %i.do = select i1 %i.dl, i64 %i.dm, i64 %i.dn   ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !75, !noalias !15705
  %i.dr = shl nsw i64 %i.do, 8
  %i.ds = sub nsw i64 %i.dj, %i.dr
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ds
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %._crit_edge, %bb.u, %bb.v
  %.0.i222232 = phi i64 [ %i.w, %._crit_edge ], [ %i.w, %bb.u ], [ %i.w, %bb.v ], [ %.0.i223, %._crit_edge.thread ] ; 6 uses
  %8 = phi i1 [ true, %._crit_edge ], [ true, %bb.u ], [ true, %bb.v ], [ false, %._crit_edge.thread ]
  %.sroa.6.1.i46 = phi ptr [ %i.z, %._crit_edge ], [ %i.z, %bb.u ], [ %i.dp, %bb.v ], [ %.pre192, %._crit_edge.thread ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge ], [ %i.dk, %bb.u ], [ %i.dt, %bb.v ], [ %i.b, %._crit_edge.thread ] ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.a
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %bb.w

bb.w:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 4 ; 2 uses
  %i.dx = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !75 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1024
  %i.dz = icmp eq ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.x, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50, !prof !204

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.x, %bb.w
  %i.ec = phi ptr [ %i.eb, %bb.x ], [ %i.dx, %bb.w ]
  %.sroa.14.1.i51 = phi ptr [ %i.ea, %bb.x ], [ %.sroa.6.1.i46, %bb.w ]
  %.sroa.019.1.i52 = phi ptr [ %i.eb, %bb.x ], [ %i.dw, %bb.w ] ; 2 uses
  %.not2836.i53 = icmp eq ptr %.sroa.019.1.i52, %i.a
  br i1 %.not2836.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %.lr.ph39.i54

.lr.ph39.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60
  %i.ed = phi ptr [ %i.fh, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %i.ec, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 3 uses
  %.sroa.019.038.i55 = phi ptr [ %.sroa.019.2.i62, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.019.1.i52, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 5 uses
  %.sroa.14.037.i56 = phi ptr [ %.sroa.14.2.i61, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60 ], [ %.sroa.14.1.i51, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50 ] ; 4 uses
  %i.ee = icmp eq ptr %.sroa.019.038.i55, %i.ed
  br i1 %i.ee, label %bb.y, label %bb.z, !prof !204

bb.y:                                             ; preds = %.lr.ph39.i54
  %i.ef = getelementptr inbounds i8, ptr %.sroa.14.037.i56, i64 -8 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !75
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57

bb.z:                                             ; preds = %.lr.ph39.i54
  %i.ei = getelementptr inbounds i8, ptr %.sroa.019.038.i55, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.z, %bb.y
  %.sroa.12.1.i58 = phi ptr [ %i.ef, %bb.y ], [ %.sroa.14.037.i56, %bb.z ] ; 3 uses
  %storemerge.i.i59 = phi ptr [ %i.eh, %bb.y ], [ %i.ei, %bb.z ] ; 5 uses
  %i.ej = load i32, ptr %.sroa.019.038.i55, align 4, !tbaa !69 ; 3 uses
  %i.ek = load i32, ptr %storemerge.i.i59, align 4, !tbaa !69 ; 2 uses
  %i.el = icmp slt i32 %i.ej, %i.ek
  br i1 %i.el, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57
  store i32 %i.ek, ptr %.sroa.019.038.i55, align 4, !tbaa !69
  %.not2930.i64 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not2930.i64, label %.critedge.i75, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.aa
  %.pre.i66 = load ptr, ptr %.sroa.12.1.i58, align 8, !tbaa !75 ; 2 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77, %.lr.ph.preheader.i65
  %i.em = phi ptr [ %i.fb, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.en = phi ptr [ %i.et, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.0.034.i68 = phi ptr [ %storemerge.i1.i74, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.8.033.i69 = phi ptr [ %.sroa.8.1.i73, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.sroa.12.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.010.032.i70 = phi ptr [ %storemerge.i3.i79, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 4 uses
  %.sroa.12.031.i71 = phi ptr [ %.sroa.12.2.i78, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ], [ %.sroa.12.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.eo = icmp eq ptr %.sroa.0.034.i68, %i.en
  br i1 %i.eo, label %bb.ab, label %bb.ac, !prof !204

bb.ab:                                            ; preds = %.lr.ph.i67
  %i.ep = getelementptr inbounds i8, ptr %.sroa.8.033.i69, i64 -8 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !75 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72

bb.ac:                                            ; preds = %.lr.ph.i67
  %i.es = getelementptr inbounds i8, ptr %.sroa.0.034.i68, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72: ; preds = %bb.ac, %bb.ab
  %i.et = phi ptr [ %i.eq, %bb.ab ], [ %i.en, %bb.ac ]
  %.sroa.8.1.i73 = phi ptr [ %i.ep, %bb.ab ], [ %.sroa.8.033.i69, %bb.ac ]
  %storemerge.i1.i74 = phi ptr [ %i.er, %bb.ab ], [ %i.es, %bb.ac ] ; 3 uses
  %i.eu = load i32, ptr %storemerge.i1.i74, align 4, !tbaa !69 ; 2 uses
  %i.ev = icmp slt i32 %i.ej, %i.eu
  br i1 %i.ev, label %bb.ad, label %.critedge.i75

.critedge.i75:                                    ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72, %bb.aa
  %.sroa.010.0.lcssa.i76 = phi ptr [ %storemerge.i.i59, %bb.aa ], [ %.sroa.010.032.i70, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72 ], [ %storemerge.i3.i79, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77 ]
  store i32 %i.ej, ptr %.sroa.010.0.lcssa.i76, align 4, !tbaa !69
  br label %bb.ag

bb.ad:                                            ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit2.i72
  store i32 %i.eu, ptr %.sroa.010.032.i70, align 4, !tbaa !69
  %i.ew = icmp eq ptr %.sroa.010.032.i70, %i.em
  br i1 %i.ew, label %bb.ae, label %bb.af, !prof !204

bb.ae:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds i8, ptr %.sroa.12.031.i71, i64 -8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !75 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1020
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77

bb.af:                                            ; preds = %bb.ad
  %i.fa = getelementptr inbounds i8, ptr %.sroa.010.032.i70, i64 -4
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit4.i77: ; preds = %bb.af, %bb.ae
  %i.fb = phi ptr [ %i.ey, %bb.ae ], [ %i.em, %bb.af ]
  %.sroa.12.2.i78 = phi ptr [ %i.ex, %bb.ae ], [ %.sroa.12.031.i71, %bb.af ]
  %storemerge.i3.i79 = phi ptr [ %i.ez, %bb.ae ], [ %i.fa, %bb.af ] ; 2 uses
  %.not29.i80 = icmp eq ptr %storemerge.i1.i74, %.sroa.0.0.i47
  br i1 %.not29.i80, label %.critedge.i75, label %.lr.ph.i67, !llvm.loop !13918

bb.ag:                                            ; preds = %.critedge.i75, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i57
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.019.038.i55, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ed, i64 1024
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %bb.ah, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60, !prof !204

bb.ah:                                            ; preds = %bb.ag
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.14.037.i56, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !75 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60: ; preds = %bb.ah, %bb.ag
  %i.fh = phi ptr [ %i.fg, %bb.ah ], [ %i.ed, %bb.ag ]
  %.sroa.14.2.i61 = phi ptr [ %i.ff, %bb.ah ], [ %.sroa.14.037.i56, %bb.ag ]
  %.sroa.019.2.i62 = phi ptr [ %i.fg, %bb.ah ], [ %i.fc, %bb.ag ] ; 2 uses
  %.not28.i63 = icmp eq ptr %.sroa.019.2.i62, %i.a
  br i1 %.not28.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81, label %.lr.ph39.i54, !llvm.loop !13919

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit5.i60, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEppEv.exit.i50
  br i1 %8, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ai

._crit_edge190:                                   ; preds = %.thread, %bb.bi, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS2_14deque_iteratorIPiLb0ELj0ELj0EmEEEEvT0_SE_T_.exit81
  ret void

bb.ai:                                            ; preds = %.lr.ph189, %bb.bi
  %.032187 = phi i64 [ 16, %.lr.ph189 ], [ %i.nl, %bb.bi ] ; 13 uses
  %i.fo = sub i64 %.0.i222232, %.032187
  %i.fp = icmp ugt i64 %i.fo, %.032187            ; 2 uses
  br i1 %i.fp, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.fq = shl i64 %.032187, 1                     ; 6 uses
  %i.fr = icmp ugt i64 %.0.i222232, %i.fq
  br i1 %i.fr, label %.lr.ph184, label %._crit_edge185.thread

.lr.ph184:                                        ; preds = %bb.aj
  %.not.i.i92 = icmp eq i64 %.032187, 0
  %.not.i.i102 = icmp eq i64 %i.fq, 0
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph184, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit
  %.0182 = phi i64 [ 0, %.lr.ph184 ], [ %i.jy, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SE_SE_T0_.exit ] ; 7 uses
  %i.fs = load ptr, ptr %0, align 8, !tbaa !1889, !noalias !15718 ; 8 uses
  %i.ft = load ptr, ptr %i.du, align 8, !tbaa !13016, !noalias !15718 ; 11 uses
  %.not.i.i82 = icmp eq i64 %.0182, 0             ; 2 uses
  br i1 %.not.i.i82, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit91, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !75, !noalias !15718
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2
  %i.fz = add nsw i64 %i.fy, %.0182               ; 7 uses
  %or.cond.i.i83 = icmp ult i64 %i.fz, 256
  br i1 %or.cond.i.i83, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.0182
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fs, i64 %.0182
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit91

bb.an:                                            ; preds = %bb.al
  %i.gc = icmp sgt i64 %i.fz, 0
  %i.gd = lshr i64 %i.fz, 8                       ; 2 uses
  %i.ge = or disjoint i64 %i.gd, -72057594037927936
  %i.gf = select i1 %i.gc, i64 %i.gd, i64 %i.ge   ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.gf ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !75, !noalias !15718
  %i.gi = shl nsw i64 %i.gf, 8
  %i.gj = sub nsw i64 %i.fz, %i.gi
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.gh, i64 %i.gj
  %i.gl = icmp sgt i64 %i.fz, 0
  %i.gm = lshr i64 %i.fz, 8                       ; 2 uses
  %i.gn = or disjoint i64 %i.gm, -72057594037927936
  %i.go = select i1 %i.gl, i64 %i.gm, i64 %i.gn   ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.go ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !75, !noalias !15721
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b:bb.a
  %vec.ind.next302 = add <4 x i8> %vec.ind299, splat (i8 4)
  %i.fa = icmp eq i64 %index.next301, %n.vec293
  br i1 %i.fa, label %vec.epilog.middle.block303, label %vec.epilog.vector.body297, !llvm.loop !16085

vec.epilog.middle.block303:                       ; preds = %vec.epilog.vector.body297
  %cmp.n304 = icmp eq i64 %i.es, %n.vec293
  br i1 %cmp.n304, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85, label %.lr.ph.i.i81.preheader

.lr.ph.i.i81.preheader:                           ; preds = %iter.check288, %vec.epilog.iter.check290, %vec.epilog.middle.block303
  %.010.i.i82.ph = phi i64 [ 0, %iter.check288 ], [ %n.vec277, %vec.epilog.iter.check290 ], [ %n.vec293, %vec.epilog.middle.block303 ]
  %.079.i.i83.ph = phi ptr [ %0, %iter.check288 ], [ %i.ev, %vec.epilog.iter.check290 ], [ %i.ey, %vec.epilog.middle.block303 ]
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %.lr.ph.i.i81.preheader, %.lr.ph.i.i81
  %.010.i.i82 = phi i64 [ %i.fd, %.lr.ph.i.i81 ], [ %.010.i.i82.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.fc, %.lr.ph.i.i81 ], [ %.079.i.i83.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %i.fb = trunc i64 %.010.i.i82 to i8
  store i8 %i.fb, ptr %.079.i.i83, align 1, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 1
  %i.fd = add nuw i64 %.010.i.i82, 1              ; 2 uses
  %.not.i.i84 = icmp eq i64 %i.fd, %i.es
  br i1 %.not.i.i84, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85, label %.lr.ph.i.i81, !llvm.loop !16086

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85: ; preds = %.lr.ph.i.i81, %middle.block285, %vec.epilog.middle.block303, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i86 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i86, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85
  %i.fh = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !75, !noalias !16087
  %i.fi = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 2
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i87 = icmp ult i64 %i.fm, 256
  br i1 %or.cond.i.i.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sroa.0127.2163, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 8                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -72057594037927936
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !75, !noalias !16087
  %i.fu = shl nsw i64 %i.fr, 8
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2164.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85 ], [ %.sroa.17.2164.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0127.2163, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit85 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !3533
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !1889, !alias.scope !16090
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !13016, !alias.scope !16090
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !3533
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !1889, !alias.scope !16093
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !13016, !alias.scope !16093
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !75
  %i.fy = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i91 = icmp ult i64 %i.gc, 256
  br i1 %or.cond.i.i91, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [4 x i8], ptr %.sroa.0127.2163, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, !llvm.loop !16096

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 8                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -72057594037927936
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75
  %i.gk = shl nsw i64 %i.gh, 8
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !16096

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS7_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.159", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = shl i64 %3, 1                            ; 15 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1889   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13016 ; 7 uses
  %i.g = zext i1 %.not.i to i64
  %i.h = add nuw i64 %i.c, %i.g                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61160 = icmp eq i64 %i.h, 0
  br i1 %.not61160, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph: ; preds = %.preheader
  %i.i = urem i64 %3, %4                          ; 6 uses
  %i.j = udiv i64 %3, %4                          ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br i1 %5, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph
  br i1 %6, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.c
  %.059163.us.us.ph = phi i64 [ %i.af, %bb.c ], [ 0, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.us.ph = phi ptr [ %i.aq, %bb.c ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.us.ph = phi ptr [ %i.au, %bb.c ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer, %bb.d
  %.059163.us.us = phi i64 [ %i.af, %bb.d ], [ %.059163.us.us.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 2 uses
  %.sroa.0129.0161.us.us = phi ptr [ %i.av, %bb.d ], [ %.sroa.0129.0161.us.us.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 3 uses
  %i.n = icmp eq i64 %.059163.us.us, %i.c
  %i.o = select i1 %i.n, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.p = sub i64 %i.o, %i.i
  %i.q = urem i64 %i.p, %4                        ; 2 uses
  %i.r = add i64 %i.i, %i.q
  %i.s = sub i64 %i.o, %i.r
  %i.t = udiv i64 %i.s, %4                        ; 4 uses
  %i.u = sub i64 %i.t, %i.j
  %i.v = shl i64 %i.t, 3
  %i.w = ashr exact i64 %i.v, 3                   ; 3 uses
  %.mask.i.us.us = and i64 %i.t, 2305843009213693951
  %.not8.i.i.us.us = icmp eq i64 %.mask.i.us.us, 0
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us
  %min.iters.check214 = icmp ult i64 %i.w, 4
  br i1 %min.iters.check214, label %.lr.ph.i.i.us.us.preheader246, label %vector.ph215

vector.ph215:                                     ; preds = %.lr.ph.i.i.us.us.preheader
  %i.x = and i64 %i.t, 3                          ; 2 uses
  %n.vec216 = sub nuw nsw i64 %i.w, %i.x          ; 3 uses
  %i.y = shl i64 %n.vec216, 3
  %i.z = getelementptr i8, ptr %0, i64 %i.y
  br label %vector.body217

vector.body217:                                   ; preds = %vector.body217, %vector.ph215
  %index218 = phi i64 [ 0, %vector.ph215 ], [ %index.next222, %vector.body217 ] ; 2 uses
  %vec.ind219 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph215 ], [ %vec.ind.next223, %vector.body217 ] ; 3 uses
  %step.add220 = add nuw <2 x i64> %vec.ind219, splat (i64 2)
  %i.aa = shl i64 %index218, 3
  %next.gep221 = getelementptr i8, ptr %0, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep221, i64 16
  store <2 x i64> %vec.ind219, ptr %next.gep221, align 8, !tbaa !272
  store <2 x i64> %step.add220, ptr %i.ab, align 8, !tbaa !272
  %index.next222 = add nuw i64 %index218, 4       ; 2 uses
  %vec.ind.next223 = add <2 x i64> %vec.ind219, splat (i64 4)
  %i.ac = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.ac, label %middle.block224, label %vector.body217, !llvm.loop !16097

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.x, 0
  br i1 %cmp.n225, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader246

.lr.ph.i.i.us.us.preheader246:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block224
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec216, %middle.block224 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.z, %middle.block224 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader246, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.ae, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.ad, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !272
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.ae = add i64 %.010.i.i.us.us, 1              ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.ae, %i.w
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !16098

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block224, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us.us, ptr %13, align 8, !tbaa !1889
  store ptr %.sroa.17.0162.us.us.ph, ptr %i.m, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.u, i64 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.af = add nuw i64 %.059163.us.us, 1           ; 3 uses
  %.not62.us.us = icmp eq i64 %i.af, %i.h
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us
  %i.ag = load ptr, ptr %.sroa.17.0162.us.us.ph, align 8, !tbaa !75
  %i.ah = ptrtoint ptr %.sroa.0129.0161.us.us to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, %i.a                 ; 4 uses
  %or.cond.i.us.us = icmp ult i64 %i.al, 256
  br i1 %or.cond.i.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp sgt i64 %i.al, 0
  %i.an = lshr i64 %i.al, 8                       ; 2 uses
  %i.ao = or disjoint i64 %i.an, -72057594037927936
  %i.ap = select i1 %i.am, i64 %i.an, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.us.ph, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.as = shl nsw i64 %i.ap, 8
  %i.at = sub nsw i64 %i.al, %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.at
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us.outer

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0161.us.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer, %bb.g
  %.059163.us = phi i64 [ %i.bo, %bb.g ], [ %.059163.us.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 2 uses
  %.sroa.0129.0161.us = phi ptr [ %i.ce, %bb.g ], [ %.sroa.0129.0161.us.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 3 uses
  %i.aw = icmp eq i64 %.059163.us, %i.c
  %i.ax = select i1 %i.aw, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ay = sub i64 %i.ax, %i.i
  %i.az = urem i64 %i.ay, %4                      ; 2 uses
  %i.ba = add i64 %i.i, %i.az
  %i.bb = sub i64 %i.ax, %i.ba
  %i.bc = udiv i64 %i.bb, %4                      ; 4 uses
  %i.bd = sub i64 %i.bc, %i.j
  %i.be = shl i64 %i.bc, 3
  %i.bf = ashr exact i64 %i.be, 3                 ; 3 uses
  %.mask.i.us = and i64 %i.bc, 2305843009213693951
  %.not8.i.i.us = icmp eq i64 %.mask.i.us, 0
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us
  %min.iters.check199 = icmp ult i64 %i.bf, 4
  br i1 %min.iters.check199, label %.lr.ph.i.i.us.preheader250, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.i.i.us.preheader
  %i.bg = and i64 %i.bc, 3                        ; 2 uses
  %n.vec201 = sub nuw nsw i64 %i.bf, %i.bg        ; 3 uses
  %i.bh = shl i64 %n.vec201, 3
  %i.bi = getelementptr i8, ptr %0, i64 %i.bh
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next207, %vector.body202 ] ; 2 uses
  %vec.ind204 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph200 ], [ %vec.ind.next208, %vector.body202 ] ; 3 uses
  %step.add205 = add nuw <2 x i64> %vec.ind204, splat (i64 2)
  %i.bj = shl i64 %index203, 3
  %next.gep206 = getelementptr i8, ptr %0, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep206, i64 16
  store <2 x i64> %vec.ind204, ptr %next.gep206, align 8, !tbaa !272
  store <2 x i64> %step.add205, ptr %i.bk, align 8, !tbaa !272
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next208 = add <2 x i64> %vec.ind204, splat (i64 4)
  %i.bl = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.bl, label %middle.block209, label %vector.body202, !llvm.loop !16099

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.bg, 0
  br i1 %cmp.n210, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader250

.lr.ph.i.i.us.preheader250:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block209
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec201, %middle.block209 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.bi, %middle.block209 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader250, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.bn, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.bm, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !272
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.bn = add i64 %.010.i.i.us, 1                 ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.bn, %i.bf
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !16100

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block209, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us, ptr %14, align 8, !tbaa !1889
  store ptr %.sroa.17.0162.us.ph, ptr %i.l, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.bd, i64 noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bo = add nuw i64 %.059163.us, 1              ; 3 uses
  %.not62.us = icmp eq i64 %i.bo, %i.h
  br i1 %.not62.us, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us
  %i.bp = load ptr, ptr %.sroa.17.0162.us.ph, align 8, !tbaa !75
  %i.bq = ptrtoint ptr %.sroa.0129.0161.us to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 2
  %i.bu = add nsw i64 %i.bt, %i.a                 ; 4 uses
  %or.cond.i.us = icmp ult i64 %i.bu, 256
  br i1 %or.cond.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp sgt i64 %i.bu, 0
  %i.bw = lshr i64 %i.bu, 8                       ; 2 uses
  %i.bx = or disjoint i64 %i.bw, -72057594037927936
  %i.by = select i1 %i.bv, i64 %i.bw, i64 %i.bx   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.ph, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !75
  %i.cb = shl nsw i64 %i.by, 8
  %i.cc = sub nsw i64 %i.bu, %i.cb
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cc
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.f
  %.059163.us.ph = phi i64 [ %i.bo, %bb.f ], [ 0, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.ph = phi ptr [ %i.bz, %bb.f ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.ph = phi ptr [ %i.cd, %bb.f ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0161.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.us

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer, %bb.i
  %.059163 = phi i64 [ %i.cx, %bb.i ], [ %.059163.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer ] ; 2 uses
  %.sroa.0129.0161 = phi ptr [ %i.de, %bb.i ], [ %.sroa.0129.0161.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer ] ; 3 uses
  %i.cf = icmp eq i64 %.059163, %i.c
  %i.cg = select i1 %i.cf, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ch = sub i64 %i.cg, %i.i
  %i.ci = urem i64 %i.ch, %4                      ; 2 uses
  %i.cj = add i64 %i.i, %i.ci
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = udiv i64 %i.ck, %4                      ; 4 uses
  %i.cm = sub i64 %i.cl, %i.j
  %i.cn = shl i64 %i.cl, 3
  %i.co = ashr exact i64 %i.cn, 3                 ; 3 uses
  %.mask.i = and i64 %i.cl, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit
  %min.iters.check = icmp ult i64 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader254, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.cp = and i64 %i.cl, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.co, %i.cp           ; 3 uses
  %i.cq = shl i64 %n.vec, 3
  %i.cr = getelementptr i8, ptr %0, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cs = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !272
  store <2 x i64> %step.add, ptr %i.ct, align 8, !tbaa !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !16101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader254

.lr.ph.i.i.preheader254:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader254, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !272
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cw = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i, !llvm.loop !16102

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit
  store ptr %.sroa.0129.0161, ptr %15, align 8, !tbaa !1889
  store ptr %.sroa.17.0162.ph, ptr %i.k, align 8, !tbaa !13016
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.cm, i64 noundef %i.ci)
  %i.cx = add nuw i64 %.059163, 1                 ; 3 uses
  %.not62 = icmp eq i64 %i.cx, %i.h
  br i1 %.not62, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit
  %i.cy = load ptr, ptr %.sroa.17.0162.ph, align 8, !tbaa !75
  %i.cz = ptrtoint ptr %.sroa.0129.0161 to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 2
  %i.dd = add nsw i64 %i.dc, %i.a                 ; 4 uses
  %or.cond.i = icmp ult i64 %i.dd, 256
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0161, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

bb.j:                                             ; preds = %bb.h
  %i.df = icmp sgt i64 %i.dd, 0
  %i.dg = lshr i64 %i.dd, 8                       ; 2 uses
  %i.dh = or disjoint i64 %i.dg, -72057594037927936
  %i.di = select i1 %i.df, i64 %i.dg, i64 %i.dh   ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.ph, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !75
  %i.dl = shl nsw i64 %i.di, 8
  %i.dm = sub nsw i64 %i.dd, %i.dl
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph, %bb.j
  %.059163.ph = phi i64 [ %i.cx, %bb.j ], [ 0, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  %.sroa.17.0162.ph = phi ptr [ %i.dj, %bb.j ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph ] ; 3 uses
  %.sroa.0129.0161.ph = phi ptr [ %i.dn, %bb.j ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiEl.exit

bb.k:                                             ; preds = %bb.a
  %i.do = add i64 %i.h, -1
  %i.dp = mul i64 %i.do, %i.a                     ; 3 uses
  %.not.i68 = icmp eq i64 %i.dp, 0
  br i1 %.not.i68, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.dr = ptrtoint ptr %i.d to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 2
  %i.dv = add nsw i64 %i.du, %i.dp                ; 4 uses
  %or.cond.i69 = icmp ult i64 %i.dv, 256
  br i1 %or.cond.i69, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dp
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71

bb.n:                                             ; preds = %bb.l
  %i.dx = icmp sgt i64 %i.dv, 0
  %i.dy = lshr i64 %i.dv, 8                       ; 2 uses
  %i.dz = or disjoint i64 %i.dy, -72057594037927936
  %i.ea = select i1 %i.dx, i64 %i.dy, i64 %i.dz   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !75
  %i.ed = shl nsw i64 %i.ea, 8
  %i.ee = sub nsw i64 %i.dv, %i.ed
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.ee
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71: ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.0129.5 = phi ptr [ %i.d, %bb.k ], [ %i.ef, %bb.n ], [ %i.dw, %bb.m ]
  %.sroa.17.7 = phi ptr [ %i.f, %bb.k ], [ %i.eb, %bb.n ], [ %i.f, %bb.m ]
  %.not63164 = icmp eq i64 %i.h, 0
  br i1 %.not63164, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph: ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71
  %i.eg = urem i64 %3, %4                         ; 2 uses
  %i.eh = udiv i64 %3, %4                         ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ek = sub nsw i64 0, %i.a
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer: ; preds = %bb.w, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph
  %.0167.ph = phi i64 [ %i.el, %bb.w ], [ %i.h, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph ]
  %.sroa.17.2166.ph = phi ptr [ %i.gi, %bb.w ], [ %.sroa.17.7, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph ] ; 6 uses
  %.sroa.0129.2165.ph = phi ptr [ %i.gm, %bb.w ], [ %.sroa.0129.5, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer, %bb.v
  %.0167 = phi i64 [ %i.el, %bb.v ], [ %.0167.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer ]
  %.sroa.0129.2165 = phi ptr [ %i.gd, %bb.v ], [ %.sroa.0129.2165.ph, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer ] ; 5 uses
  %i.el = add i64 %.0167, -1                      ; 4 uses
  %i.em = icmp eq i64 %i.el, %i.c
  %i.en = select i1 %i.em, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.eo = sub i64 %i.en, %i.eg
  %i.ep = urem i64 %i.eo, %4                      ; 4 uses
  %i.eq = add i64 %i.eg, %i.ep
  %i.er = sub i64 %i.en, %i.eq
  %i.es = udiv i64 %i.er, %4                      ; 6 uses
  %i.et = sub i64 %i.es, %i.eh                    ; 2 uses
  %i.eu = shl i64 %i.es, 3
  %i.ev = ashr exact i64 %i.eu, 3                 ; 3 uses
  %.mask.i81 = and i64 %i.es, 2305843009213693951
  %.not8.i.i82 = icmp eq i64 %.mask.i81, 0
  br i1 %.not8.i.i82, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87, label %.lr.ph.i.i83.preheader

.lr.ph.i.i83.preheader:                           ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %min.iters.check229 = icmp ult i64 %i.ev, 4
  br i1 %min.iters.check229, label %.lr.ph.i.i83.preheader243, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i83.preheader
  %i.ew = and i64 %i.es, 3                        ; 2 uses
  %n.vec231 = sub nuw nsw i64 %i.ev, %i.ew        ; 3 uses
  %i.ex = shl i64 %n.vec231, 3
  %i.ey = getelementptr i8, ptr %0, i64 %i.ex
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next237, %vector.body232 ] ; 2 uses
  %vec.ind234 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph230 ], [ %vec.ind.next238, %vector.body232 ] ; 3 uses
  %step.add235 = add nuw <2 x i64> %vec.ind234, splat (i64 2)
  %i.ez = shl i64 %index233, 3
  %next.gep236 = getelementptr i8, ptr %0, i64 %i.ez ; 2 uses
  %i.fa = getelementptr i8, ptr %next.gep236, i64 16
  store <2 x i64> %vec.ind234, ptr %next.gep236, align 8, !tbaa !272
  store <2 x i64> %step.add235, ptr %i.fa, align 8, !tbaa !272
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %vec.ind.next238 = add <2 x i64> %vec.ind234, splat (i64 4)
  %i.fb = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.fb, label %middle.block239, label %vector.body232, !llvm.loop !16103

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.ew, 0
  br i1 %cmp.n240, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87, label %.lr.ph.i.i83.preheader243

.lr.ph.i.i83.preheader243:                        ; preds = %.lr.ph.i.i83.preheader, %middle.block239
  %.010.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i83.preheader ], [ %n.vec231, %middle.block239 ]
  %.079.i.i85.ph = phi ptr [ %0, %.lr.ph.i.i83.preheader ], [ %i.ey, %middle.block239 ]
  br label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83.preheader243, %.lr.ph.i.i83
  %.010.i.i84 = phi i64 [ %i.fd, %.lr.ph.i.i83 ], [ %.010.i.i84.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  %.079.i.i85 = phi ptr [ %i.fc, %.lr.ph.i.i83 ], [ %.079.i.i85.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  store i64 %.010.i.i84, ptr %.079.i.i85, align 8, !tbaa !272
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i85, i64 8
  %i.fd = add i64 %.010.i.i84, 1                  ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.fd, %i.ev
  br i1 %.not.i.i86, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87, label %.lr.ph.i.i83, !llvm.loop !16104

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87: ; preds = %.lr.ph.i.i83, %middle.block239, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i88 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i88, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87
  %i.fh = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !75, !noalias !16105
  %i.fi = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 2
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i89 = icmp ult i64 %i.fm, 256
  br i1 %or.cond.i.i.i89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [4 x i8], ptr %.sroa.0129.2165, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 8                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -72057594037927936
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !75, !noalias !16105
  %i.fu = shl nsw i64 %i.fr, 8
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2166.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87 ], [ %.sroa.17.2166.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0129.2165, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit87 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !3061
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !1889, !alias.scope !16108
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !13016, !alias.scope !16108
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !3061
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !1889, !alias.scope !16111
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !13016, !alias.scope !16111
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !75
  %i.fy = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 2
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i93 = icmp ult i64 %i.gc, 256
  br i1 %or.cond.i.i93, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [4 x i8], ptr %.sroa.0129.2165, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, !llvm.loop !16114

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 8                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -72057594037927936
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !75
  %i.gk = shl nsw i64 %i.gh, 8
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !16114

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_10range_xbufIS6_mNS0_7move_opEEEEEvT_T0_T1_SK_SK_RT2_RSK_SN_SN_SN_b(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.b = urem i64 %2, %3                          ; 2 uses
  store i64 %i.b, ptr %7, align 8, !tbaa !272
  %i.c = sub i64 %1, %i.b
  %i.d = urem i64 %i.c, %3                        ; 2 uses
  store i64 %i.d, ptr %8, align 8, !tbaa !272
  %i.e = load i64, ptr %7, align 8, !tbaa !272
  %i.f = add i64 %i.d, %i.e
  %i.g = sub i64 %1, %i.f
  %i.h = udiv i64 %i.g, %3
  %i.i = udiv i64 %2, %3                          ; 2 uses
  store i64 %i.i, ptr %5, align 8, !tbaa !272
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  store i64 %i.j, ptr %6, align 8, !tbaa !272
  br i1 %9, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !tbaa !1889   ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13016 ; 8 uses
  %i.n = load i64, ptr %5, align 8, !tbaa !272
  %i.o = add i64 %i.n, %i.j                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !16115
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = add nsw i64 %i.t, %i.o                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.u, 256
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.w = icmp sgt i64 %i.u, 0
  %i.x = lshr i64 %i.u, 8                         ; 2 uses
  %i.y = or disjoint i64 %i.x, -72057594037927936
  %i.z = select i1 %i.w, i64 %i.x, i64 %i.y       ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !75, !noalias !16115
  %i.ac = shl nsw i64 %i.z, 8
  %i.ad = sub nsw i64 %i.u, %i.ac
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit: ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.m, %bb.b ], [ %i.m, %bb.d ], [ %i.aa, %bb.e ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.b ], [ %i.v, %bb.d ], [ %i.ae, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.k, ptr %11, align 8, !tbaa !1889
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.m, ptr %i.af, align 8, !tbaa !13016
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1889
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ag, align 8, !tbaa !13016
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEE9make_heapES5_S5_SD_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.ah = icmp eq ptr %.sroa.0.0.i, %i.k
  br i1 %i.ah, label %_ZN5boost7movelib15detail_adaptive15initialize_keysINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS6_mNS0_7move_opEEEEEvT_SI_T0_RT1_.exit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i.i: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEplEl.exit
  %i.ai = ptrtoint ptr %.sroa.6.1.i to i64
  %i.aj = ptrtoint ptr %i.m to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = shl nsw i64 %i.ak, 5
  %i.am = load ptr, ptr %.sroa.6.1.i, align 8, !tbaa !75
  %i.an = ptrtoint ptr %.sroa.0.0.i to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, %i.al
  %i.as = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.at = ptrtoint ptr %i.k to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2
  %i.ax = sub i64 %i.ar, %i.aw                    ; 2 uses
  %i.ay = icmp ugt i64 %i.ax, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i, label %_ZN5boost7movelib15detail_adaptive15initialize_keysINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_10range_xbufIS6_mNS0_7move_opEEEEEvT_SI_T0_RT1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.i.i.i.i = phi ptr [ %.sroa.6.1.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i.i.i.i ], [ %storemerge.i.i.i.i.i.i, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ] ; 2 uses
  %.02.i.i.i.i.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i ], [ %i.bi, %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmmEv.exit.i.i.i.i.i ]
  %i.ba = load ptr, ptr %.sroa.4.0.i.i.i.i, align 8, !tbaa !75
  %i.bb = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.ba
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS5_mEEEEvT_SJ_SJ_T0_RT1_:bb.a
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1889   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13016 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13016 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 5
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 2
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !2567 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !13016
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13016
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !13016
  %i.bc = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !1889
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !13016
  store ptr %i.a, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !13016
  store ptr %i.x, ptr %7, align 8, !tbaa !1889
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !13016
  store ptr %i.bc, ptr %8, align 8, !tbaa !2915
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !2566
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread
  store i64 0, ptr %i.bg, align 8, !tbaa !2566
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !1889
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13016
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !13016
  store ptr %i.a, ptr %10, align 8, !tbaa !1889
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !13016
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !13016
  store ptr %i.x, ptr %11, align 8, !tbaa !1889
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13016
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !13016
  %i.br = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  store ptr %i.br, ptr %12, align 8, !tbaa !2915
  %i.bs = load ptr, ptr %4, align 8, !tbaa !2564
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bs, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES4_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1889   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13016 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13016 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 2
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13016 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 5
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !75
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !69  ; 4 uses
  store i32 %i.al, ptr %4, align 4, !tbaa !69
  %.not8.i = icmp eq i64 %5, 1
  br i1 %.not8.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.am = add i64 %5, -1                          ; 2 uses
  %min.iters.check = icmp ult i64 %5, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.an = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ap, align 4, !tbaa !69
  store <4 x i32> %broadcast.splat, ptr %i.aq, align 4, !tbaa !69
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !19880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i.preheader23

.lr.ph.i.preheader23:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %storemerge10.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader23, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge10.i.ph, %.lr.ph.i.preheader23 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %storemerge10.i
  store i32 %i.al, ptr %i.as, align 4, !tbaa !69
  %storemerge.i = add i64 %storemerge10.i, 1      ; 2 uses
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, label %.lr.ph.i, !llvm.loop !19881

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit: ; preds = %.lr.ph.i, %middle.block, %bb.d
  store i32 %i.al, ptr %i.a, align 4, !tbaa !69
  store ptr %i.a, ptr %10, align 8, !tbaa !1889
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.i, ptr %i.at, align 8, !tbaa !13016
  store ptr %i.b, ptr %11, align 8, !tbaa !1889
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.g, ptr %i.au, align 8, !tbaa !13016
  store ptr %i.d, ptr %12, align 8, !tbaa !1889
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.aa, ptr %i.av, align 8, !tbaa !13016
  %i.aw = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  store ptr %i.aw, ptr %13, align 8, !tbaa !2915
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEES4_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.e

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit: ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !13016 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13016 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13016 ; 3 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !4773, !nonnull !1789
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1889
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !13016
  store ptr %i.b, ptr %7, align 8, !tbaa !1889
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !13016
  store ptr %i.d, ptr %8, align 8, !tbaa !1889
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !tbaa !13016
  %i.bh = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ay to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = shl nsw i64 %i.bj, 5
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !75
  %i.bm = ptrtoint ptr %i.b to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = add nsw i64 %i.bp, %i.bk
  %i.br = load ptr, ptr %i.ay, align 8, !tbaa !75
  %i.bs = ptrtoint ptr %i.a to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 2
  %i.bw = sub i64 %i.bq, %i.bv
  %i.bx = ptrtoint ptr %i.bc to i64
  %i.by = sub i64 %i.bx, %i.bh
  %i.bz = shl nsw i64 %i.by, 5
  %i.ca = load ptr, ptr %i.bc, align 8, !tbaa !75
  %i.cb = ptrtoint ptr %i.d to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = add nsw i64 %i.ce, %i.bz
  %i.cg = sub i64 %i.cf, %i.bp
  store ptr %i.bd, ptr %9, align 8, !tbaa !2915
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.bw, i64 noundef %i.cg, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit, %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SG_SG_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS4_mEEEEvT_SJ_SJ_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1889   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1889   ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1889   ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13016 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 2                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 256             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -4
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 8                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -72057594037927936
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = shl nsw i64 %i.p, 8
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !69
  %i.w = load i32, ptr %i.b, align 4, !tbaa !69   ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiNS3_14deque_iteratorISD_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SH_T1_SI_SI_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13016 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 5
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !75  ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 2
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13016 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 5
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !75
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = sub i64 %i.ao, %i.j
  %i.av = add i64 %i.au, %i.at                    ; 3 uses
  %i.aw = icmp ugt i64 %i.aj, %i.av
  br i1 %i.aw, label %bb.s, label %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i

_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i: ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit
  %.not13.i = icmp eq i64 %i.aj, 0
  br i1 %.not13.i, label %_ZN5boost7movelib11upper_boundINS_9container14deque_iteratorIPiLb0ELj0ELj0EmEEiNS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SG_SG_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i, %bb.k
  %i.ax = phi ptr [ %i.bx, %bb.k ], [ %i.ae, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 2 uses
  %.sroa.11.219.i = phi ptr [ %.sroa.11.218.i, %bb.k ], [ %i.y, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 4 uses
  %.sroa.0.116.i = phi ptr [ %.sroa.0.115.i, %bb.k ], [ %i.a, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 4 uses
  %.014.i = phi i64 [ %.1.i, %bb.k ], [ %i.aj, %_ZNK5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEmiERKS3_.exit.i ] ; 2 uses
  %i.ay = lshr i64 %.014.i, 1                     ; 5 uses
  %.not.i.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i, label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %.sroa.0.116.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2
  %i.bd = add nsw i64 %i.bc, %i.ay                ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.bd, 256
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.116.i, i64 %i.ay
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bf = icmp sgt i64 %i.bd, 0
  %i.bg = lshr i64 %i.bd, 8                       ; 2 uses
  %i.bh = or disjoint i64 %i.bg, -72057594037927936
  %i.bi = select i1 %i.bf, i64 %i.bg, i64 %i.bh   ; 2 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %.sroa.11.219.i, i64 %i.bi ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75, !noalias !19882
  %i.bl = shl nsw i64 %i.bi, 8
  %i.bm = sub nsw i64 %i.bd, %i.bl
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bm
  br label %_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i

_ZN5boost9container14deque_iteratorIPiLb0ELj0ELj0EmEpLEl.exit.i: ; preds = %bb.h, %bb.g, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %.sroa.0.116.i, %.lr.ph.i ], [ %i.bn, %bb.h ], [ %i.be, %bb.g ] ; 2 uses
  %.sroa.11.1.i = phi ptr [ %.sroa.11.219.i, %.lr.ph.i ], [ %i.bj, %bb.h ], [ %.sroa.11.219.i, %bb.g ] ; 3 uses
  %i.bo = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !69, !noalias !19882
  %.not11.i = icmp slt i32 %i.bo, %i.w
end_hunk_14
