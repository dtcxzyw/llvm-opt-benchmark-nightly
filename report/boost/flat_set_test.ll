Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26548
inline.NumDeleted: 4083
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 670
loop-unroll.NumUnrolled: 1022
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_bbT0_RT1_:bb.a
bb.l:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit84
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EEvT_T0_T1_NS0_9iter_sizeISF_E4typeESI_SI_SI_SI_T2_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.bg, i64 noundef %i.bm, i64 noundef %i.bn, i64 noundef %i.bi)
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.m:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !129 ; 5 uses
  %i.cx = icmp ugt i64 %i.cw, %5
  br i1 %i.cx, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit.thread: ; preds = %bb.m
  store i64 %5, ptr %i.cv, align 8, !tbaa !129
  %.pre142 = load ptr, ptr %8, align 8, !tbaa !127
  br label %bb.o

_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit: ; preds = %bb.m
  %i.cy = icmp ult i64 %i.cw, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !127   ; 5 uses
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE13shrink_to_fitEm.exit
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.cw
  %i.da = load i32, ptr %0, align 4, !tbaa !35    ; 4 uses
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !35
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
  store <4 x i32> %broadcast.splat155, ptr %i.df, align 4, !tbaa !35
  store <4 x i32> %broadcast.splat155, ptr %i.dg, align 4, !tbaa !35
  %index.next158 = add nuw i64 %index157, 8       ; 2 uses
  %i.dh = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.dh, label %middle.block159, label %vector.body156, !llvm.loop !3935

middle.block159:                                  ; preds = %vector.body156
  %cmp.n160 = icmp eq i64 %i.dc, %n.vec153
  br i1 %cmp.n160, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, label %.lr.ph.i87.preheader174

.lr.ph.i87.preheader174:                          ; preds = %.lr.ph.i87.preheader, %middle.block159
  %storemerge10.i88.ph = phi i64 [ %storemerge7.i85, %.lr.ph.i87.preheader ], [ %i.dd, %middle.block159 ]
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.preheader174, %.lr.ph.i87
  %storemerge10.i88 = phi i64 [ %storemerge.i89, %.lr.ph.i87 ], [ %storemerge10.i88.ph, %.lr.ph.i87.preheader174 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %storemerge10.i88
  store i32 %i.da, ptr %i.di, align 4, !tbaa !35
  %storemerge.i89 = add i64 %storemerge10.i88, 1  ; 2 uses
  %.not.i90 = icmp eq i64 %storemerge.i89, %5
  br i1 %.not.i90, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92, label %.lr.ph.i87, !llvm.loop !3936

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit92: ; preds = %.lr.ph.i87, %middle.block159, %bb.n
  store i64 %5, ptr %i.cv, align 8, !tbaa !129
  store i32 %i.da, ptr %0, align 4, !tbaa !35
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !85
  store <2 x i64> %step.add, ptr %i.ec, align 8, !tbaa !85
  %index.next168 = add nuw i64 %index167, 4       ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.ed = icmp eq i64 %index.next168, %n.vec165
  br i1 %i.ed, label %middle.block169, label %vector.body166, !llvm.loop !3937

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !85
  %i.ee = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ef = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ef, %i.dx
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, label %.lr.ph.i.i, !llvm.loop !3938

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit: ; preds = %.lr.ph.i.i, %middle.block169, %bb.o
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opES5_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_(ptr noundef %i.dn, ptr noundef %0, i64 noundef %5, i64 noundef %i.do, i64 noundef %i.du, i64 noundef %i.dv, i64 noundef %i.dq, ptr noundef %.pre143)
  %i.eg = load i64, ptr %i.cv, align 8, !tbaa !129
  %.not.i93 = icmp eq i64 %i.eg, 0
  br i1 %.not.i93, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit
  store i64 0, ptr %i.cv, align 8, !tbaa !129
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufIiPimEEEEvT_T0_T1_SA_SA_RT2_RSA_SD_SD_SD_b.exit, %bb.k, %bb.l, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEvT_T0_T1_SH_SH_RT2_RSH_SK_SK_SK_b.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SF_SF_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.c = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = icmp slt i32 %i.b, %i.m                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.neg.i = xor i64 %i.k, -1
  %i.p = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.n, ptr %.01316.i, ptr %i.o ; 13 uses
  %.1.i = select i1 %i.n, i64 %i.k, i64 %i.p      ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %bb.d, !llvm.loop !3939

_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i141.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.q = ptrtoint ptr %.114.i to i64
  %i.r = sub i64 %i.e, %i.q                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 2                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !129  ; 4 uses
  %.not.i39 = icmp ugt i64 %i.s, %i.u
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !127   ; 7 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !35
  %wide.load143 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !35
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load143, ptr %i.af, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !3940

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
  %i.ah = load i32, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.ah, ptr %.010.i.i, align 4, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !3941

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.u, 2                     ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !127   ; 8 uses
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
  %wide.load155 = load <4 x i32>, ptr %next.gep154, align 4, !tbaa !35
  %wide.load156 = load <4 x i32>, ptr %i.av, align 4, !tbaa !35
  %i.aw = getelementptr i8, ptr %next.gep153, i64 16
  store <4 x i32> %wide.load155, ptr %next.gep153, align 4, !tbaa !35
  store <4 x i32> %wide.load156, ptr %i.aw, align 4, !tbaa !35
  %index.next157 = add nuw i64 %index152, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next157, %n.vec150
  br i1 %i.ax, label %middle.block158, label %vector.body151, !llvm.loop !3942

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
  %i.ay = load i32, ptr %.079.i20.i, align 4, !tbaa !35
  store i32 %i.ay, ptr %.010.i19.i, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.az, %i.ak
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !3943

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block158, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.al, %bb.f ], [ %i.as, %middle.block158 ], [ %i.ba, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i163 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.r
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.bb = add i64 %i.e, -4
  %4 = shl i64 %i.u, 2
  %i.bc = add i64 %4, %.114.i141.le
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  %i.be = lshr i64 %i.bd, 2
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check166 = icmp ult i64 %i.bd, 60
  br i1 %min.iters.check166, label %.lr.ph.i24.i.preheader293, label %vector.memcheck162

vector.memcheck162:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bg = add i64 %.idx26.i, %.114.i141.le
  %i.bh = sub i64 %i.bg, %.0.lcssa.i22.i163
  %diff.check164 = icmp ugt i64 %i.bh, -32
  br i1 %diff.check164, label %.lr.ph.i24.i.preheader293, label %vector.ph167

vector.ph167:                                     ; preds = %vector.memcheck162
  %n.vec168 = and i64 %i.bf, 9223372036854775800  ; 3 uses
  %i.bi = shl i64 %n.vec168, 2                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ak, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bi
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next175, %vector.body169 ] ; 2 uses
  %i.bl = shl i64 %index170, 2                    ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.ak, i64 %i.bl ; 2 uses
  %next.gep172 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bl ; 2 uses
  %i.bm = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load173 = load <4 x i32>, ptr %next.gep171, align 4, !tbaa !35
  %wide.load174 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !35
  %i.bn = getelementptr i8, ptr %next.gep172, i64 16
  store <4 x i32> %wide.load173, ptr %next.gep172, align 4, !tbaa !35
  store <4 x i32> %wide.load174, ptr %i.bn, align 4, !tbaa !35
  %index.next175 = add nuw i64 %index170, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next175, %n.vec168
  br i1 %i.bo, label %middle.block176, label %vector.body169, !llvm.loop !3944

middle.block176:                                  ; preds = %vector.body169
  %cmp.n177 = icmp eq i64 %i.bf, %n.vec168
  br i1 %cmp.n177, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader293

.lr.ph.i24.i.preheader293:                        ; preds = %vector.memcheck162, %.lr.ph.i24.i.preheader, %middle.block176
  %.012.i.i.ph = phi ptr [ %i.ak, %vector.memcheck162 ], [ %i.ak, %.lr.ph.i24.i.preheader ], [ %i.bj, %middle.block176 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck162 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bk, %middle.block176 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader293, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bq, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader293 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.br, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader293 ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !35
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !35
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !3945

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block176, %bb.e, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.bs = phi ptr [ %i.al, %middle.block176 ], [ %i.al, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i ], [ %.pre, %bb.e ], [ %.pre, %middle.block ], [ %i.al, %.lr.ph.i24.i ], [ %.pre, %.lr.ph.i.i ] ; 3 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !129
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.r ; 2 uses
  %.not23.i = icmp eq ptr %1, %.114.i
  br i1 %.not23.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 2 uses
  %.026.i = phi ptr [ %.1.i41, %bb.g ], [ %i.bs, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 7 uses
  %.01625.i = phi ptr [ %.117.i, %bb.g ], [ %1, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 3 uses
  %.01824.i = phi ptr [ %i.cs, %bb.g ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 6 uses
  %i.bu = icmp eq ptr %.01625.i, %2
  br i1 %i.bu, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.026.i181.le = ptrtoaddr ptr %.026.i to i64    ; 2 uses
  %i.bv = ptrtoaddr ptr %i.bs to i64
  %i.bw = add i64 %i.bv, %i.e
  %i.bx = add i64 %i.bw, -4
  %i.by = add i64 %.114.i141.le, %.026.i181.le
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 2
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check184 = icmp ult i64 %i.bz, 76
  br i1 %min.iters.check184, label %.lr.ph.i.i.i.preheader286, label %vector.memcheck180

vector.memcheck180:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.cc = shl i64 %indvar, 2
  %i.cd = add i64 %i.cc, %.114.i141.le
  %i.ce = sub i64 %.026.i181.le, %i.cd
  %diff.check182 = icmp ugt i64 %i.ce, -32
  br i1 %diff.check182, label %.lr.ph.i.i.i.preheader286, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck180
  %n.vec186 = and i64 %i.cb, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec186, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %.01824.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %.026.i, i64 %i.cf
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next193, %vector.body187 ] ; 2 uses
  %i.ci = shl i64 %index188, 2                    ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.01824.i, i64 %i.ci ; 2 uses
  %next.gep190 = getelementptr i8, ptr %.026.i, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep190, i64 16
  %wide.load191 = load <4 x i32>, ptr %next.gep190, align 4, !tbaa !35
  %wide.load192 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !35
  %i.ck = getelementptr i8, ptr %next.gep189, i64 16
  store <4 x i32> %wide.load191, ptr %next.gep189, align 4, !tbaa !35
  store <4 x i32> %wide.load192, ptr %i.ck, align 4, !tbaa !35
  %index.next193 = add nuw i64 %index188, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next193, %n.vec186
  br i1 %i.cl, label %middle.block194, label %vector.body187, !llvm.loop !3946

middle.block194:                                  ; preds = %vector.body187
  %cmp.n195 = icmp eq i64 %i.cb, %n.vec186
  br i1 %cmp.n195, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i.i.i.preheader286

.lr.ph.i.i.i.preheader286:                        ; preds = %vector.memcheck180, %.lr.ph.i.i.i.preheader, %middle.block194
  %.010.i.i.i.ph = phi ptr [ %.01824.i, %vector.memcheck180 ], [ %.01824.i, %.lr.ph.i.i.i.preheader ], [ %i.cg, %middle.block194 ]
  %.079.i.i.i.ph = phi ptr [ %.026.i, %vector.memcheck180 ], [ %.026.i, %.lr.ph.i.i.i.preheader ], [ %i.ch, %middle.block194 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader286, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader286 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader286 ] ; 2 uses
  %i.cm = load i32, ptr %.079.i.i.i, align 4, !tbaa !35
  store i32 %i.cm, ptr %.010.i.i.i, align 4, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cn, %i.bt
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !3947

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cp = load i32, ptr %.01625.i, align 4, !tbaa !35 ; 2 uses
  %i.cq = load i32, ptr %.026.i, align 4, !tbaa !35 ; 2 uses
  %i.cr = icmp slt i32 %i.cp, %i.cq               ; 2 uses
  %.sink.i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %.117.idx.i = select i1 %i.cr, i64 4, i64 0
  %.117.i = getelementptr inbounds nuw i8, ptr %.01625.i, i64 %.117.idx.i
  %.1.idx.i = select i1 %i.cr, i64 0, i64 4
  %.1.i41 = getelementptr inbounds nuw i8, ptr %.026.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.01824.i, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw i8, ptr %.01824.i, i64 4
  %.not.i42 = icmp eq ptr %.1.i41, %i.bt
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !3948

.lr.ph.i44:                                       ; preds = %bb.c
  %i.ct = ashr exact i64 %i.i, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i44
  %.017.i45 = phi i64 [ %i.ct, %.lr.ph.i44 ], [ %.1.i49, %bb.h ] ; 2 uses
  %.01316.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i48, %bb.h ] ; 2 uses
  %i.cu = lshr i64 %.017.i45, 1                   ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.01316.i46, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = icmp slt i32 %i.cw, %i.c                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.neg.i47 = xor i64 %i.cu, -1
  %i.cz = add i64 %.017.i45, %.neg.i47
  %.114.i48 = select i1 %i.cx, ptr %i.cy, ptr %.01316.i46 ; 10 uses
  %.1.i49 = select i1 %i.cx, i64 %i.cz, i64 %i.cu ; 2 uses
  %.not.i50 = icmp eq i64 %.1.i49, 0
  br i1 %.not.i50, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %bb.h, !llvm.loop !3921

_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit: ; preds = %bb.h
  %.114.i48253.le = ptrtoaddr ptr %.114.i48 to i64
  %i.da = ptrtoint ptr %.114.i48 to i64
  %i.db = sub i64 %i.da, %i.e                     ; 3 uses
  %i.dc = ashr exact i64 %i.db, 2                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !129 ; 4 uses
  %.not.i52 = icmp ugt i64 %i.dc, %i.de
  br i1 %.not.i52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.not8.i.i53 = icmp eq ptr %.114.i48, %1
  %.pre111 = load ptr, ptr %3, align 8, !tbaa !127 ; 7 uses
  br i1 %.not8.i.i53, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.i
  %.pre111199 = ptrtoaddr ptr %.pre111 to i64
  %i.df = ptrtoaddr ptr %.114.i48 to i64
  %i.dg = add i64 %i.df, -4
  %i.dh = sub i64 %i.dg, %i.e                     ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check202 = icmp ult i64 %i.dh, 44
  %i.dk = sub i64 %i.e, %.pre111199
  %diff.check200 = icmp ugt i64 %i.dk, -32
  %or.cond274 = select i1 %min.iters.check202, i1 true, i1 %diff.check200
  br i1 %or.cond274, label %.lr.ph.i.i55.preheader284, label %vector.ph203

vector.ph203:                                     ; preds = %.lr.ph.i.i55.preheader
  %n.vec204 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec204, 2                    ; 2 uses
  %i.dm = getelementptr i8, ptr %.pre111, i64 %i.dl
  %i.dn = getelementptr i8, ptr %1, i64 %i.dl
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %i.do = shl i64 %index206, 2                    ; 2 uses
  %next.gep207 = getelementptr i8, ptr %.pre111, i64 %i.do ; 2 uses
  %next.gep208 = getelementptr i8, ptr %1, i64 %i.do ; 2 uses
  %i.dp = getelementptr i8, ptr %next.gep208, i64 16
  %wide.load209 = load <4 x i32>, ptr %next.gep208, align 4, !tbaa !35
  %wide.load210 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !35
  %i.dq = getelementptr i8, ptr %next.gep207, i64 16
  store <4 x i32> %wide.load209, ptr %next.gep207, align 4, !tbaa !35
  store <4 x i32> %wide.load210, ptr %i.dq, align 4, !tbaa !35
  %index.next211 = add nuw i64 %index206, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.dr, label %middle.block212, label %vector.body205, !llvm.loop !3949

middle.block212:                                  ; preds = %vector.body205
  %cmp.n213 = icmp eq i64 %i.dj, %n.vec204
  br i1 %cmp.n213, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i.i55.preheader284

.lr.ph.i.i55.preheader284:                        ; preds = %.lr.ph.i.i55.preheader, %middle.block212
  %.010.i.i56.ph = phi ptr [ %.pre111, %.lr.ph.i.i55.preheader ], [ %i.dm, %middle.block212 ]
  %.079.i.i57.ph = phi ptr [ %1, %.lr.ph.i.i55.preheader ], [ %i.dn, %middle.block212 ]
  br label %.lr.ph.i.i55

.lr.ph.i.i55:                                     ; preds = %.lr.ph.i.i55.preheader284, %.lr.ph.i.i55
  %.010.i.i56 = phi ptr [ %i.du, %.lr.ph.i.i55 ], [ %.010.i.i56.ph, %.lr.ph.i.i55.preheader284 ] ; 2 uses
  %.079.i.i57 = phi ptr [ %i.dt, %.lr.ph.i.i55 ], [ %.079.i.i57.ph, %.lr.ph.i.i55.preheader284 ] ; 2 uses
  %i.ds = load i32, ptr %.079.i.i57, align 4, !tbaa !35
  store i32 %i.ds, ptr %.010.i.i56, align 4, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %.079.i.i57, i64 4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.010.i.i56, i64 4
  %.not.i.i58 = icmp eq ptr %i.dt, %.114.i48
  br i1 %.not.i.i58, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i.i55, !llvm.loop !3950

bb.j:                                             ; preds = %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit
  %.idx26.i59 = shl i64 %i.de, 2                  ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %1, i64 %.idx26.i59 ; 5 uses
  %i.dw = load ptr, ptr %3, align 8, !tbaa !127   ; 8 uses
  %.not8.i17.i60 = icmp eq i64 %i.de, 0
  br i1 %.not8.i17.i60, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65, label %.lr.ph.i18.i61.preheader

.lr.ph.i18.i61.preheader:                         ; preds = %bb.j
  %i.dx = ptrtoaddr ptr %i.dw to i64
  %i.dy = add i64 %.idx26.i59, -4                 ; 2 uses
  %i.dz = lshr exact i64 %i.dy, 2
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check219 = icmp ult i64 %i.dy, 44
  %i.eb = sub i64 %i.e, %i.dx
  %diff.check217 = icmp ugt i64 %i.eb, -32
  %or.cond275 = select i1 %min.iters.check219, i1 true, i1 %diff.check217
  br i1 %or.cond275, label %.lr.ph.i18.i61.preheader283, label %vector.ph220

vector.ph220:                                     ; preds = %.lr.ph.i18.i61.preheader
  %n.vec221 = and i64 %i.ea, 9223372036854775800  ; 3 uses
  %i.ec = shl i64 %n.vec221, 2                    ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dw, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %1, i64 %i.ec
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph220
  %index223 = phi i64 [ 0, %vector.ph220 ], [ %index.next228, %vector.body222 ] ; 2 uses
  %i.ef = shl i64 %index223, 2                    ; 2 uses
  %next.gep224 = getelementptr i8, ptr %i.dw, i64 %i.ef ; 2 uses
  %next.gep225 = getelementptr i8, ptr %1, i64 %i.ef ; 2 uses
  %i.eg = getelementptr i8, ptr %next.gep225, i64 16
  %wide.load226 = load <4 x i32>, ptr %next.gep225, align 4, !tbaa !35
  %wide.load227 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !35
  %i.eh = getelementptr i8, ptr %next.gep224, i64 16
  store <4 x i32> %wide.load226, ptr %next.gep224, align 4, !tbaa !35
  store <4 x i32> %wide.load227, ptr %i.eh, align 4, !tbaa !35
  %index.next228 = add nuw i64 %index223, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next228, %n.vec221
  br i1 %i.ei, label %middle.block229, label %vector.body222, !llvm.loop !3951

middle.block229:                                  ; preds = %vector.body222
  %cmp.n230 = icmp eq i64 %i.ea, %n.vec221
  br i1 %cmp.n230, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65, label %.lr.ph.i18.i61.preheader283

.lr.ph.i18.i61.preheader283:                      ; preds = %.lr.ph.i18.i61.preheader, %middle.block229
  %.010.i19.i62.ph = phi ptr [ %i.dw, %.lr.ph.i18.i61.preheader ], [ %i.ed, %middle.block229 ]
  %.079.i20.i63.ph = phi ptr [ %1, %.lr.ph.i18.i61.preheader ], [ %i.ee, %middle.block229 ]
  br label %.lr.ph.i18.i61

.lr.ph.i18.i61:                                   ; preds = %.lr.ph.i18.i61.preheader283, %.lr.ph.i18.i61
  %.010.i19.i62 = phi ptr [ %i.el, %.lr.ph.i18.i61 ], [ %.010.i19.i62.ph, %.lr.ph.i18.i61.preheader283 ] ; 2 uses
  %.079.i20.i63 = phi ptr [ %i.ek, %.lr.ph.i18.i61 ], [ %.079.i20.i63.ph, %.lr.ph.i18.i61.preheader283 ] ; 2 uses
  %i.ej = load i32, ptr %.079.i20.i63, align 4, !tbaa !35
  store i32 %i.ej, ptr %.010.i19.i62, align 4, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %.079.i20.i63, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i19.i62, i64 4 ; 2 uses
  %.not.i21.i64 = icmp eq ptr %i.ek, %i.dv
  br i1 %.not.i21.i64, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65, label %.lr.ph.i18.i61, !llvm.loop !3952

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65:     ; preds = %.lr.ph.i18.i61, %middle.block229, %bb.j
  %.0.lcssa.i22.i66 = phi ptr [ %i.dw, %bb.j ], [ %i.ed, %middle.block229 ], [ %i.el, %.lr.ph.i18.i61 ] ; 5 uses
  %.0.lcssa.i22.i66234 = ptrtoaddr ptr %.0.lcssa.i22.i66 to i64
  %.not10.i.i67 = icmp eq i64 %.idx26.i59, %i.db
  br i1 %.not10.i.i67, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i24.i68.preheader

.lr.ph.i24.i68.preheader:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65
  %i.em = ptrtoaddr ptr %.114.i48 to i64
  %i.en = add i64 %i.em, -4
  %5 = shl i64 %i.de, 2
  %i.eo = add i64 %5, %i.e
  %i.ep = sub i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = lshr i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.eq, 1                ; 2 uses
  %min.iters.check237 = icmp ult i64 %i.ep, 60
  br i1 %min.iters.check237, label %.lr.ph.i24.i68.preheader282, label %vector.memcheck233

vector.memcheck233:                               ; preds = %.lr.ph.i24.i68.preheader
  %i.es = add i64 %.idx26.i59, %i.e
  %i.et = sub i64 %i.es, %.0.lcssa.i22.i66234
  %diff.check235 = icmp ugt i64 %i.et, -32
  br i1 %diff.check235, label %.lr.ph.i24.i68.preheader282, label %vector.ph238

vector.ph238:                                     ; preds = %vector.memcheck233
  %n.vec239 = and i64 %i.er, 9223372036854775800  ; 3 uses
  %i.eu = shl i64 %n.vec239, 2                    ; 2 uses
  %i.ev = getelementptr i8, ptr %i.dv, i64 %i.eu
  %i.ew = getelementptr i8, ptr %.0.lcssa.i22.i66, i64 %i.eu
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next246, %vector.body240 ] ; 2 uses
  %i.ex = shl i64 %index241, 2                    ; 2 uses
  %next.gep242 = getelementptr i8, ptr %i.dv, i64 %i.ex ; 2 uses
  %next.gep243 = getelementptr i8, ptr %.0.lcssa.i22.i66, i64 %i.ex ; 2 uses
  %i.ey = getelementptr i8, ptr %next.gep242, i64 16
  %wide.load244 = load <4 x i32>, ptr %next.gep242, align 4, !tbaa !35
  %wide.load245 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !35
  %i.ez = getelementptr i8, ptr %next.gep243, i64 16
  store <4 x i32> %wide.load244, ptr %next.gep243, align 4, !tbaa !35
  store <4 x i32> %wide.load245, ptr %i.ez, align 4, !tbaa !35
  %index.next246 = add nuw i64 %index241, 8       ; 2 uses
  %i.fa = icmp eq i64 %index.next246, %n.vec239
  br i1 %i.fa, label %middle.block247, label %vector.body240, !llvm.loop !3953

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.er, %n.vec239
  br i1 %cmp.n248, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i24.i68.preheader282

.lr.ph.i24.i68.preheader282:                      ; preds = %vector.memcheck233, %.lr.ph.i24.i68.preheader, %middle.block247
  %.012.i.i69.ph = phi ptr [ %i.dv, %vector.memcheck233 ], [ %i.dv, %.lr.ph.i24.i68.preheader ], [ %i.ev, %middle.block247 ]
  %.0911.i.i70.ph = phi ptr [ %.0.lcssa.i22.i66, %vector.memcheck233 ], [ %.0.lcssa.i22.i66, %.lr.ph.i24.i68.preheader ], [ %i.ew, %middle.block247 ]
  br label %.lr.ph.i24.i68

.lr.ph.i24.i68:                                   ; preds = %.lr.ph.i24.i68.preheader282, %.lr.ph.i24.i68
  %.012.i.i69 = phi ptr [ %i.fc, %.lr.ph.i24.i68 ], [ %.012.i.i69.ph, %.lr.ph.i24.i68.preheader282 ] ; 2 uses
  %.0911.i.i70 = phi ptr [ %i.fd, %.lr.ph.i24.i68 ], [ %.0911.i.i70.ph, %.lr.ph.i24.i68.preheader282 ] ; 2 uses
  %i.fb = load i32, ptr %.012.i.i69, align 4, !tbaa !35
  store i32 %i.fb, ptr %.0911.i.i70, align 4, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i69, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i70, i64 4
  %.not.i25.i71 = icmp eq ptr %i.fc, %.114.i48
  br i1 %.not.i25.i71, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, label %.lr.ph.i24.i68, !llvm.loop !3954

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72: ; preds = %.lr.ph.i.i55, %.lr.ph.i24.i68, %middle.block212, %middle.block247, %bb.i, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65
  %i.fe = phi ptr [ %i.dw, %middle.block247 ], [ %i.dw, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i65 ], [ %.pre111, %bb.i ], [ %.pre111, %middle.block212 ], [ %i.dw, %.lr.ph.i24.i68 ], [ %.pre111, %.lr.ph.i.i55 ] ; 4 uses
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !129
  %.not27.i = icmp eq ptr %.114.i48, %1
  br i1 %.not27.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i73.preheader

.lr.ph.i73.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.db
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73.preheader, %bb.k
  %indvar254 = phi i64 [ 0, %.lr.ph.i73.preheader ], [ %indvar.next255, %bb.k ] ; 2 uses
  %.030.i = phi ptr [ %i.ff, %.lr.ph.i73.preheader ], [ %.030..i, %bb.k ] ; 7 uses
  %.01929.i = phi ptr [ %1, %.lr.ph.i73.preheader ], [ %..01929.i, %bb.k ] ; 3 uses
  %.02128.i = phi ptr [ %.114.i48, %.lr.ph.i73.preheader ], [ %i.gh, %bb.k ] ; 5 uses
  %i.fg = icmp eq ptr %0, %.01929.i
  br i1 %i.fg, label %.lr.ph.i.i.i75.preheader, label %bb.k

.lr.ph.i.i.i75.preheader:                         ; preds = %.lr.ph.i73
  %.030.i252.le = ptrtoaddr ptr %.030.i to i64    ; 2 uses
  %i.fh = ptrtoaddr ptr %i.fe to i64
  %i.fi = add i64 %.030.i252.le, -4
  %i.fj = sub i64 %i.fi, %i.fh                    ; 2 uses
  %i.fk = lshr i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check258 = icmp ult i64 %i.fj, 92
  br i1 %min.iters.check258, label %.lr.ph.i.i.i75.preheader276, label %vector.memcheck251

vector.memcheck251:                               ; preds = %.lr.ph.i.i.i75.preheader
  %i.fm = shl i64 %indvar254, 2
  %i.fn = sub i64 %i.fm, %.114.i48253.le
  %i.fo = add i64 %i.fn, %.030.i252.le
  %i.fp = add i64 %i.fo, -1
  %diff.check256 = icmp ult i64 %i.fp, 31
  br i1 %diff.check256, label %.lr.ph.i.i.i75.preheader276, label %vector.ph259

vector.ph259:                                     ; preds = %vector.memcheck251
  %n.vec260 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fq = mul i64 %n.vec260, -4                   ; 2 uses
  %i.fr = getelementptr i8, ptr %.02128.i, i64 %i.fq
  %i.fs = getelementptr i8, ptr %.030.i, i64 %i.fq
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph259
  %index262 = phi i64 [ 0, %vector.ph259 ], [ %index.next267, %vector.body261 ] ; 2 uses
  %i.ft = mul i64 %index262, -4                   ; 2 uses
  %next.gep263 = getelementptr i8, ptr %.02128.i, i64 %i.ft ; 2 uses
  %next.gep264 = getelementptr i8, ptr %.030.i, i64 %i.ft ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %next.gep264, i64 -16
  %i.fv = getelementptr inbounds i8, ptr %next.gep264, i64 -32
  %wide.load265 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !35
  %wide.load266 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !35
  %i.fw = getelementptr inbounds i8, ptr %next.gep263, i64 -16
  %i.fx = getelementptr inbounds i8, ptr %next.gep263, i64 -32
  store <4 x i32> %wide.load265, ptr %i.fw, align 4, !tbaa !35
  store <4 x i32> %wide.load266, ptr %i.fx, align 4, !tbaa !35
  %index.next267 = add nuw i64 %index262, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next267, %n.vec260
  br i1 %i.fy, label %middle.block268, label %vector.body261, !llvm.loop !3955

middle.block268:                                  ; preds = %vector.body261
  %cmp.n269 = icmp eq i64 %i.fl, %n.vec260
  br i1 %cmp.n269, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i.i.i75.preheader276

.lr.ph.i.i.i75.preheader276:                      ; preds = %vector.memcheck251, %.lr.ph.i.i.i75.preheader, %middle.block268
  %.010.i.i.i76.ph = phi ptr [ %.02128.i, %vector.memcheck251 ], [ %.02128.i, %.lr.ph.i.i.i75.preheader ], [ %i.fr, %middle.block268 ]
  %.079.i.i.i77.ph = phi ptr [ %.030.i, %vector.memcheck251 ], [ %.030.i, %.lr.ph.i.i.i75.preheader ], [ %i.fs, %middle.block268 ]
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph.i.i.i75.preheader276, %.lr.ph.i.i.i75
  %.010.i.i.i76 = phi ptr [ %i.ga, %.lr.ph.i.i.i75 ], [ %.010.i.i.i76.ph, %.lr.ph.i.i.i75.preheader276 ]
  %.079.i.i.i77 = phi ptr [ %i.fz, %.lr.ph.i.i.i75 ], [ %.079.i.i.i77.ph, %.lr.ph.i.i.i75.preheader276 ]
  %i.fz = getelementptr inbounds i8, ptr %.079.i.i.i77, i64 -4 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %.010.i.i.i76, i64 -4 ; 2 uses
  %i.gb = load i32, ptr %i.fz, align 4, !tbaa !35
  store i32 %i.gb, ptr %i.ga, align 4, !tbaa !35
  %.not.i.i.i78 = icmp eq ptr %i.fe, %i.fz
  br i1 %.not.i.i.i78, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i.i.i75, !llvm.loop !3956

bb.k:                                             ; preds = %.lr.ph.i73
  %i.gc = getelementptr inbounds i8, ptr %.030.i, i64 -4 ; 2 uses
  %i.gd = getelementptr inbounds i8, ptr %.01929.i, i64 -4 ; 2 uses
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !35 ; 2 uses
  %i.gf = load i32, ptr %i.gd, align 4, !tbaa !35 ; 2 uses
  %i.gg = icmp slt i32 %i.ge, %i.gf               ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.ge, i32 %i.gf)
  %..01929.i = select i1 %i.gg, ptr %i.gd, ptr %.01929.i
  %.030..i = select i1 %i.gg, ptr %.030.i, ptr %i.gc ; 2 uses
  store i32 %..i, ptr %i.gh, align 4, !tbaa !35
  %.not.i74 = icmp eq ptr %i.fe, %.030..i
  %indvar.next255 = add i64 %indvar254, 1
  br i1 %.not.i74, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit, label %.lr.ph.i73, !llvm.loop !3957

_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiSB_NS0_7move_opEEEvT0_SD_T1_SE_SE_T_T2_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %bb.k, %.lr.ph.i.i.i75, %middle.block194, %middle.block268, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit72, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_NS0_9iter_sizeISC_E4typeESF_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond92 = and i1 %i.a, %i.b
  br i1 %or.cond92, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.06799 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.06898 = phi i64 [ %.169, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07096 = phi ptr [ %.171, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07294 = phi ptr [ %.173, %bb.n ], [ %1, %bb.a ] ; 11 uses
  %.07493 = phi ptr [ %.175, %bb.n ], [ %0, %bb.a ] ; 10 uses
  %i.c = or i64 %.06799, %.06898
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.07294, align 4, !tbaa !35 ; 2 uses
  %i.f = load i32, ptr %.07493, align 4, !tbaa !35 ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %i.e, ptr %.07493, align 4, !tbaa !35
  store i32 %i.f, ptr %.07294, align 4, !tbaa !35
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.h = add i64 %.06799, %.06898                 ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_SC_T0_(ptr noundef %.07493, ptr noundef %.07294, ptr noundef %.07096)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %.06898, %.06799
  br i1 %i.j, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.k = lshr i64 %.06898, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.07493, i64 %i.k ; 2 uses
  %.not15.i = icmp eq ptr %.07096, %.07294
  %.pre = ptrtoint ptr %.07294 to i64             ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPiiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SC_SC_RKT0_T1_.exit, label %.lr.ph.i

end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_NS0_9iter_sizeISF_E4typeET0_RT1_:bb.a
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = icmp ult i64 %1, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %1, 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %or.cond.i = icmp samesign ult i64 %1, 2
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph37.i.preheader

.lr.ph37.i.preheader:                             ; preds = %bb.b
  %.02233.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %.lr.ph37.i.preheader, %bb.e
  %.02236.i = phi ptr [ %.022.i, %bb.e ], [ %.02233.i, %.lr.ph37.i.preheader ] ; 4 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.e ], [ %0, %.lr.ph37.i.preheader ] ; 3 uses
  %i.g = load i32, ptr %.02236.i, align 4, !tbaa !35 ; 3 uses
  %i.h = load i32, ptr %.pn35.i, align 4, !tbaa !35 ; 2 uses
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph37.i
  store i32 %i.h, ptr %.02236.i, align 4, !tbaa !35
  %.not2628.i = icmp eq ptr %.pn35.i, %0
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.030.i = phi ptr [ %i.j, %bb.d ], [ %.pn35.i, %bb.c ] ; 3 uses
  %i.j = getelementptr i8, ptr %.030.i, i64 -4    ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35   ; 2 uses
  %i.l = icmp slt i32 %i.g, %i.k
  br i1 %i.l, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.021.lcssa.i = phi ptr [ %0, %bb.c ], [ %.030.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.021.lcssa.i, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.k, ptr %.030.i, align 4, !tbaa !35
  %.not26.i = icmp eq ptr %i.j, %0
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4491

bb.e:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 4 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %i.f
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph37.i, !llvm.loop !4492

bb.f:                                             ; preds = %bb.a
  %i.m = lshr i64 %1, 1
  %i.n = sub i64 %1, %i.m                         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !130
  %.not = icmp ugt i64 %i.n, %i.p
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.r = load ptr, ptr %2, align 8, !tbaa !127
  tail call void @_ZN5boost7movelib10merge_sortIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.q, ptr noundef %i.r)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !85
  %i.s = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEbT_T1_T0_RSG_SI_SI_SI_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.s, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.u = load i64, ptr %i.o, align 8, !tbaa !130
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !129  ; 2 uses
  %i.x = sub i64 %i.u, %i.w
  %.not.i31 = icmp ult i64 %i.x, %i.n
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %2, align 8, !tbaa !127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.w
  call void @_ZN5boost7movelib10merge_sortIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.t, ptr noundef %i.z)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SD_T0_(ptr noundef %0, ptr noundef nonnull %i.t)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.aa = load i64, ptr %i.b, align 8, !tbaa !85
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !85
  %i.ac = add i64 %i.ab, %i.aa                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.af = sub i64 0, %i.ae
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = sub i64 %1, %i.ac
  %i.ai = add i64 %i.ah, %i.ae
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !85
  %i.ak = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_RT1_T0_(ptr noundef %i.ag, i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.al = load i64, ptr %i.c, align 8, !tbaa !85  ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  %i.an = sub i64 %1, %i.al
  %i.ao = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEbT_RNS0_9iter_sizeISF_E4typeESF_SI_SI_SJ_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.am, i64 noundef %i.an, i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !85
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !85
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvbT_NS0_9iter_sizeISF_E4typeESI_SI_RT1_T0_(i1 noundef zeroext %i.ao, ptr noundef %0, i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SF_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.02233.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2534.i = icmp eq ptr %.02233.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2534.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.b, %bb.e
  %.02236.i = phi ptr [ %.022.i, %bb.e ], [ %.02233.i, %bb.b ] ; 4 uses
  %.pn35.i = phi ptr [ %.02236.i, %bb.e ], [ %0, %bb.b ] ; 3 uses
  %i.f = load i32, ptr %.02236.i, align 4, !tbaa !35 ; 3 uses
  %i.g = load i32, ptr %.pn35.i, align 4, !tbaa !35 ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph37.i
  store i32 %i.g, ptr %.02236.i, align 4, !tbaa !35
  %.not2628.i = icmp eq ptr %.pn35.i, %0
  br i1 %.not2628.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.030.i = phi ptr [ %i.i, %bb.d ], [ %.pn35.i, %bb.c ] ; 3 uses
  %i.i = getelementptr i8, ptr %.030.i, i64 -4    ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35   ; 2 uses
  %i.k = icmp slt i32 %i.f, %i.j
  br i1 %i.k, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.021.lcssa.i = phi ptr [ %0, %bb.c ], [ %.030.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.f, ptr %.021.lcssa.i, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.j, ptr %.030.i, align 4, !tbaa !35
  %.not26.i = icmp eq ptr %i.i, %0
  br i1 %.not26.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4491

bb.e:                                             ; preds = %.critedge.i, %.lr.ph37.i
  %.022.i = getelementptr inbounds nuw i8, ptr %.02236.i, i64 4 ; 2 uses
  %.not25.i = icmp eq ptr %.022.i, %1
  br i1 %.not25.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph37.i, !llvm.loop !4492

bb.f:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.d, 1                         ; 3 uses
  %i.m = sub i64 %i.d, %i.l                       ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T0_T1_(ptr noundef %i.n, ptr noundef %1, ptr noundef %2)
  tail call void @_ZN5boost7movelib15merge_sort_copyIPiS2_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEvT_SC_T0_T1_(ptr noundef %0, ptr noundef %i.n, ptr noundef %i.o)
  %.idx = shl nuw nsw i64 %i.m, 2
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %indvar = phi i64 [ 0, %bb.f ], [ %indvar.next, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %2, %bb.f ], [ %.1.i.i, %bb.g ] ; 7 uses
  %.01626.i.i = phi ptr [ %0, %bb.f ], [ %i.am, %bb.g ] ; 6 uses
  %.01725.i.i = phi ptr [ %i.o, %bb.f ], [ %.118.i.i, %bb.g ] ; 3 uses
  %i.q = icmp eq ptr %.01725.i.i, %1
  br i1 %i.q, label %.lr.ph.i.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i52.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %i.r = ptrtoaddr ptr %2 to i64
  %3 = add i64 %i.c, %i.r
  %i.s = add i64 %3, -4
  %4 = shl i64 %i.l, 2
  %i.t = add i64 %4, %.027.i.i52.le
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader56, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.x = shl i64 %indvar, 2
  %i.y = add i64 %i.x, %i.b
  %i.z = sub i64 %.027.i.i52.le, %i.y
  %diff.check = icmp ugt i64 %i.z, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, 9223372036854775800      ; 3 uses
  %i.aa = shl i64 %n.vec, 2                       ; 2 uses
  %i.ab = getelementptr i8, ptr %.01626.i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %.027.i.i, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.ad ; 2 uses
  %next.gep53 = getelementptr i8, ptr %.027.i.i, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !35
  %wide.load54 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !35
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load54, ptr %i.af, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph.i.i.i.i.preheader56

.lr.ph.i.i.i.i.preheader56:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ab, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ac, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader56, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader56 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader56 ] ; 2 uses
  %i.ah = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !35
  store i32 %i.ah, ptr %.010.i.i.i.i, align 4, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.ai, %i.p
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !4494

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ak = load i32, ptr %.027.i.i, align 4, !tbaa !35 ; 2 uses
  %i.al = load i32, ptr %.01725.i.i, align 4, !tbaa !35 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.ak, %i.al         ; 2 uses
  %.sink.i.i = tail call i32 @llvm.smin.i32(i32 %i.ak, i32 %i.al)
  %.118.idx.i.i = select i1 %.not20.i.i, i64 0, i64 4
  %.118.i.i = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 %.118.idx.i.i
  %.1.idx.i.i = select i1 %.not20.i.i, i64 4, i64 0
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 %.1.idx.i.i ; 2 uses
  store i32 %.sink.i.i, ptr %.01626.i.i, align 4, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.p
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit, label %.lr.ph.i.i, !llvm.loop !4495

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit: ; preds = %bb.g, %.lr.ph.i.i.i.i, %bb.e, %middle.block, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEmNS0_13adaptive_xbufIiS3_mEEEEbT_T1_T0_RSG_SI_SI_SI_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
  %i.d = icmp ult i64 %i.a, %i.b                  ; 2 uses
  %.neg.i.i.i = xor i64 %i.a, -1
  %i.e = select i1 %i.d, i64 %.neg.i.i.i, i64 0
  %.114.i.i.i = add i64 %i.e, %i.b
  %i.f = shl i64 %.01222.i.i.i, 2                 ; 2 uses
  %i.g = add i64 %i.f, 4
  %i.h = select i1 %i.d, i64 %i.g, i64 %i.f       ; 4 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %.114.i.i.i, i64 %i.c, i64 2) ; 2 uses
  %i.j = shl i64 %.01520.i.i.i, 4
  %i.k = icmp ult i64 %i.h, %i.i                  ; 2 uses
  %.neg.i.i.i.1 = xor i64 %i.h, -1
  %i.l = or disjoint i64 %i.h, 2
  %i.m = select i1 %i.k, i64 %.neg.i.i.i.1, i64 0
  %.114.i.i.i.1 = add i64 %i.m, %i.i
  %.1.i.i.i.1 = select i1 %i.k, i64 %i.l, i64 %i.h ; 2 uses
  %i.n = add nsw i32 %.023.i.i.i, -2              ; 2 uses
  %.not.i.i.i.1 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.1, label %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, label %bb.b, !llvm.loop !3916

_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i: ; preds = %bb.b
  %i.o = lshr exact i64 %.1.i.i.i.1, 1            ; 2 uses
  %i.p = urem i64 %1, %i.o
  %i.q = icmp ne i64 %i.p, 0
  %i.r = zext i1 %i.q to i64
  %i.s = add nuw i64 %i.o, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 16
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i, %.lr.ph.i.i.i
  %.011.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i ], [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ]
  %.0910.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ] ; 2 uses
  %i.u = lshr i64 %.0910.i.i.i, 1                 ; 2 uses
  %i.v = add nuw nsw i64 %.011.i.i.i, 1           ; 2 uses
  %i.w = icmp ugt i64 %.0910.i.i.i, 33
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, !llvm.loop !4496

_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i
  %.09.lcssa.i.i.i = phi i64 [ %i.s, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.u, %.lr.ph.i.i.i ] ; 4 uses
  %.0.lcssa.i.i.i = phi i64 [ 0, %_ZN5boost7movelib15detail_adaptive9ceil_sqrtImEET_S3_.exit.i ], [ %i.v, %.lr.ph.i.i.i ] ; 4 uses
  %i.x = shl i64 %.09.lcssa.i.i.i, %.0.lcssa.i.i.i
  %.not.i.i = icmp eq i64 %i.x, %i.s
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i
  %i.y = icmp samesign ult i64 %.09.lcssa.i.i.i, 16
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.z = add nuw nsw i64 %.09.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = add i64 %.0.lcssa.i.i.i, 1
  br label %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit

_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i, %bb.d, %bb.e
  %.0.i = phi i64 [ %.09.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %i.z, %bb.d ], [ 9, %bb.e ] ; 2 uses
  %i.ab = phi i64 [ %.0.lcssa.i.i.i, %_ZN5boost7movelib15detail_adaptive20floor_merge_multipleImEET_S3_RS3_S4_.exit.i.i ], [ %.0.lcssa.i.i.i, %bb.d ], [ %i.aa, %bb.e ]
  store i64 %.0.i, ptr %4, align 8, !tbaa !85
  %i.ac = shl i64 %.0.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit
  %storemerge = phi i64 [ %i.ac, %_ZN5boost7movelib15detail_adaptive18ceil_sqrt_multipleImEET_S3_PS3_.exit ], [ %i.af, %bb.f ] ; 8 uses
  store i64 %storemerge, ptr %3, align 8, !tbaa !85
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !130 ; 4 uses
  %i.af = shl i64 %storemerge, 1                  ; 3 uses
  %.not = icmp ult i64 %i.ae, %i.af
  br i1 %.not, label %.preheader88, label %bb.f, !llvm.loop !4497

.preheader88:                                     ; preds = %bb.f
  %i.ag = sub i64 %1, %storemerge                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.preheader88, %bb.g
  %.071.in = phi i64 [ %.071, %bb.g ], [ %storemerge, %.preheader88 ] ; 5 uses
  %.071 = add i64 %.071.in, -1                    ; 3 uses
  %i.ah = sub i64 %i.ag, %.071
  %i.ai = udiv i64 %i.ah, %storemerge
  %.not80 = icmp ult i64 %.071, %i.ai
  br i1 %.not80, label %bb.h, label %bb.g, !llvm.loop !4498

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread, label %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit

_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit: ; preds = %bb.h
  %i.aj = add i64 %i.ag, -1
  %i.ak = udiv i64 %i.aj, %storemerge
  %i.al = add i64 %i.ak, 1
  %i.am = load ptr, ptr %6, align 8, !tbaa !127   ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %storemerge
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ae
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = add i64 %i.ao, 7
  %i.as = and i64 %i.ar, -8                       ; 2 uses
  %.not10.i = icmp ule i64 %i.as, %i.aq
  %i.at = sub nuw i64 %i.aq, %i.as
  %i.au = lshr i64 %i.at, 3
  %i.av = icmp uge i64 %i.au, %i.al
  %i.aw = select i1 %.not10.i, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.i, label %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread

bb.i:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit
  store i64 0, ptr %2, align 8, !tbaa !85
  %i.ax = load i64, ptr %3, align 8, !tbaa !85
  store i64 %i.ax, ptr %5, align 8, !tbaa !85
  br label %.critedge

_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread: ; preds = %bb.h, %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit
  %.not81 = icmp uge i64 %i.ae, %storemerge       ; 2 uses
  %i.ay = select i1 %.not81, i64 %.071.in, i64 %i.af
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.ba = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive14collect_uniqueIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SG_SI_T0_RT1_(ptr noundef %0, ptr noundef %i.az, i64 noundef %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %6) ; 8 uses
  %i.bb = icmp eq i64 %i.ba, %.071.in
  %or.cond = and i1 %.not81, %i.bb
  %i.bc = load i64, ptr %3, align 8, !tbaa !85    ; 5 uses
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread
  store i64 %i.bc, ptr %5, align 8, !tbaa !85
  store i64 %.071.in, ptr %2, align 8, !tbaa !85
  br label %.critedge

bb.k:                                             ; preds = %_ZNK5boost7movelib13adaptive_xbufIiPimE25supports_aligned_trailingImEEbmm.exit.thread
  %i.bd = shl i64 %i.bc, 1
  %i.be = icmp eq i64 %i.ba, %i.bd
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i64 %i.ba, ptr %5, align 8, !tbaa !85
  %i.bf = load i64, ptr %3, align 8, !tbaa !85
  store i64 %i.bf, ptr %2, align 8, !tbaa !85
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.bg = add i64 %i.bc, %.071.in
  %.not82 = icmp ult i64 %i.ba, %i.bg
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 %i.bc, ptr %5, align 8, !tbaa !85
  %i.bh = load i64, ptr %3, align 8, !tbaa !85
  %i.bi = sub i64 %i.ba, %i.bh
  store i64 %i.bi, ptr %2, align 8, !tbaa !85
  br label %.critedge

bb.o:                                             ; preds = %bb.m
  %i.bj = icmp ult i64 %i.ba, 4
  br i1 %i.bj, label %.critedge, label %.preheader87

.preheader87:                                     ; preds = %bb.o, %.preheader87
  %storemerge83 = phi i64 [ %i.bl, %.preheader87 ], [ %i.bc, %bb.o ] ; 6 uses
  %i.bk = add i64 %storemerge83, -1
  %i.bl = and i64 %i.bk, %storemerge83            ; 2 uses
  %.not84 = icmp eq i64 %i.bl, 0
  br i1 %.not84, label %.preheader, label %.preheader87, !llvm.loop !4499

.preheader:                                       ; preds = %.preheader87
  store i64 %storemerge83, ptr %2, align 8, !tbaa !85
  %i.bm = icmp ugt i64 %storemerge83, %i.ba
  br i1 %i.bm, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bn = phi i64 [ %i.bo, %.lr.ph ], [ %storemerge83, %.preheader ]
  %i.bo = lshr i64 %i.bn, 1                       ; 4 uses
  %i.bp = icmp ugt i64 %i.bo, %i.ba
  br i1 %i.bp, label %.lr.ph, label %._crit_edge, !llvm.loop !4500

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.bo, ptr %2, align 8, !tbaa !85
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %.preheader
  %.lcssa = phi i64 [ %i.bo, %._crit_edge ], [ %storemerge83, %.preheader ]
  %i.bq = icmp ult i64 %.lcssa, 16
  %i.br = select i1 %i.bq, ptr %2, ptr @_ZN5boost7movelib15detail_adaptiveL34AdaptiveSortInsertionSortThresholdE
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !85
  store i64 %i.bs, ptr %4, align 8, !tbaa !85
  store i64 0, ptr %3, align 8, !tbaa !85
  %i.bt = load i64, ptr %2, align 8, !tbaa !85
  store i64 %i.bt, ptr %5, align 8, !tbaa !85
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.i, %bb.j, %bb.n, %bb.p, %bb.l
  %.1 = phi i1 [ true, %bb.i ], [ true, %bb.l ], [ true, %bb.p ], [ true, %bb.n ], [ true, %bb.j ], [ false, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_RT1_T0_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 5 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3 ; 11 uses
  %i.c = sub i64 %1, %3                           ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %.sroa.speculated63 = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.e) ; 12 uses
  %i.f = icmp ult i64 %.sroa.speculated63, %2
  %.not91 = icmp eq i64 %.sroa.speculated63, 0
  %.not = or i1 %i.f, %.not91
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 0, %.sroa.speculated63
  %i.h = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !129  ; 4 uses
  %.not.i = icmp ugt i64 %.sroa.speculated63, %i.j
  %i.k = load ptr, ptr %4, align 8, !tbaa !127    ; 10 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 2 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %.sroa.speculated63, 2    ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i
  %i.n = add i64 %.idx.i, -4                      ; 2 uses
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.n, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %i.q = shl i64 %3, 2
  %i.r = add i64 %i.q, %i.a
  %.neg = sub i64 %.idx.i, %i.r
  %i.s = add i64 %.neg, %i.l
  %i.t = add i64 %i.s, -1
  %diff.check = icmp ult i64 %i.t, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.p, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.k, i64 %i.u
  %i.w = getelementptr i8, ptr %i.h, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.x ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.h, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep119, align 4, !tbaa !35
  %wide.load120 = load <4 x i32>, ptr %i.y, align 4, !tbaa !35
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load120, ptr %i.z, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !4501

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.m
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !4502

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.j, 2                     ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 %.idx26.i ; 5 uses
  %.not8.i17.i = icmp eq i64 %i.j, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.af = add i64 %.idx26.i, -4                   ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.af, 92
  br i1 %min.iters.check125, label %.lr.ph.i18.i.preheader199, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i18.i.preheader
  %i.ai = shl i64 %3, 2
  %i.aj = add i64 %i.ai, %i.a
  %i.ak = shl i64 %.sroa.speculated63, 2
  %.neg191 = sub i64 %i.ak, %i.aj
  %i.al = add i64 %.neg191, %i.l
  %i.am = add i64 %i.al, -1
  %diff.check123 = icmp ult i64 %i.am, 31
  br i1 %diff.check123, label %.lr.ph.i18.i.preheader199, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec127 = and i64 %i.ah, 9223372036854775800  ; 3 uses
  %i.an = shl i64 %n.vec127, 2                    ; 2 uses
  %i.ao = getelementptr i8, ptr %i.k, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.h, i64 %i.an
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next134, %vector.body128 ] ; 2 uses
  %i.aq = shl i64 %index129, 2                    ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.h, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep131, i64 16
  %wide.load132 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !35
  %wide.load133 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !35
  %i.as = getelementptr i8, ptr %next.gep130, i64 16
  store <4 x i32> %wide.load132, ptr %next.gep130, align 4, !tbaa !35
  store <4 x i32> %wide.load133, ptr %i.as, align 4, !tbaa !35
  %index.next134 = add nuw i64 %index129, 8       ; 2 uses
  %i.at = icmp eq i64 %index.next134, %n.vec127
  br i1 %i.at, label %middle.block135, label %vector.body128, !llvm.loop !4503

middle.block135:                                  ; preds = %vector.body128
  %cmp.n136 = icmp eq i64 %i.ah, %n.vec127
  br i1 %cmp.n136, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader199

.lr.ph.i18.i.preheader199:                        ; preds = %vector.memcheck122, %.lr.ph.i18.i.preheader, %middle.block135
  %.010.i19.i.ph = phi ptr [ %i.k, %vector.memcheck122 ], [ %i.k, %.lr.ph.i18.i.preheader ], [ %i.ao, %middle.block135 ]
  %.079.i20.i.ph = phi ptr [ %i.h, %vector.memcheck122 ], [ %i.h, %.lr.ph.i18.i.preheader ], [ %i.ap, %middle.block135 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader199, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.aw, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader199 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.av, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader199 ] ; 2 uses
  %i.au = load i32, ptr %.079.i20.i, align 4, !tbaa !35
  store i32 %i.au, ptr %.010.i19.i, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.av, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4504

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block135, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.k, %bb.c ], [ %i.ao, %middle.block135 ], [ %i.aw, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i140 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %.sroa.speculated63, 2  ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.h, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.ay = add i64 %.idx27.i, -4
  %5 = shl i64 %i.j, 2
  %i.az = sub i64 %i.ay, %5                       ; 2 uses
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check143 = icmp ult i64 %i.az, 92
  br i1 %min.iters.check143, label %.lr.ph.i24.i.preheader198, label %vector.memcheck139

vector.memcheck139:                               ; preds = %.lr.ph.i24.i.preheader
  %i.bc = add i64 %.idx26.i, %i.a
  %i.bd = shl i64 %3, 2
  %i.be = add i64 %i.bc, %i.bd
  %.neg192 = sub i64 %.idx27.i, %i.be
  %i.bf = add i64 %.neg192, %.0.lcssa.i22.i140
  %i.bg = add i64 %i.bf, -1
  %diff.check141 = icmp ult i64 %i.bg, 31
  br i1 %diff.check141, label %.lr.ph.i24.i.preheader198, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck139
  %n.vec145 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.bh = shl i64 %n.vec145, 2                    ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ae, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bh
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %i.bk = shl i64 %index147, 2                    ; 2 uses
  %next.gep148 = getelementptr i8, ptr %i.ae, i64 %i.bk ; 2 uses
  %next.gep149 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bk ; 2 uses
  %i.bl = getelementptr i8, ptr %next.gep148, i64 16
  %wide.load150 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !35
  %wide.load151 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !35
  %i.bm = getelementptr i8, ptr %next.gep149, i64 16
  store <4 x i32> %wide.load150, ptr %next.gep149, align 4, !tbaa !35
  store <4 x i32> %wide.load151, ptr %i.bm, align 4, !tbaa !35
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.bn, label %middle.block153, label %vector.body146, !llvm.loop !4505

middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.bb, %n.vec145
  br i1 %cmp.n154, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader198

.lr.ph.i24.i.preheader198:                        ; preds = %vector.memcheck139, %.lr.ph.i24.i.preheader, %middle.block153
  %.012.i.i.ph = phi ptr [ %i.ae, %vector.memcheck139 ], [ %i.ae, %.lr.ph.i24.i.preheader ], [ %i.bi, %middle.block153 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck139 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bj, %middle.block153 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader198, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bp, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader198 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bq, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader198 ] ; 2 uses
  %i.bo = load i32, ptr %.012.i.i, align 4, !tbaa !35
  store i32 %i.bo, ptr %.0911.i.i, align 4, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bp, %i.ax
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !4506

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block153, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %.sroa.speculated63, ptr %i.i, align 8, !tbaa !129
  %i.br = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_insertion_sort_step_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_T1_(ptr noundef %i.b, i64 noundef %i.c, i64 noundef %2) ; 3 uses
  %i.bs = sub i64 0, %i.br
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bs
  %i.bu = sub i64 %.sroa.speculated63, %i.br
  %i.bv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.bt, i64 noundef %i.c, i64 noundef %i.br, i64 noundef %3, i64 noundef %i.bu) ; 8 uses
  %.not46.not = icmp ugt i64 %3, %i.e
  br i1 %.not46.not, label %bb.d, label %.lr.ph.i53.preheader

bb.d:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit
  %i.bw = load ptr, ptr %4, align 8, !tbaa !127   ; 2 uses
  %i.bx = ptrtoaddr ptr %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.sroa.speculated63 ; 2 uses
  %i.bz = sub i64 0, %i.bv                        ; 3 uses
  %.not8.i = icmp eq i64 %i.bv, 0
  br i1 %.not8.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.c ; 4 uses
  %.idx = shl nsw i64 %i.bz, 2
  %i.cc = getelementptr inbounds i8, ptr %i.by, i64 %.idx ; 4 uses
  %i.cd = add i64 %i.bv, 4611686018427387903
  %i.ce = and i64 %i.cd, 4611686018427387903      ; 2 uses
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check177 = icmp samesign ult i64 %i.ce, 23
  br i1 %min.iters.check177, label %.lr.ph.i.preheader196, label %vector.memcheck174

vector.memcheck174:                               ; preds = %.lr.ph.i.preheader
  %i.cg = shl i64 %1, 2
  %i.ch = add i64 %i.cg, %i.a
  %i.ci = shl i64 %.sroa.speculated63, 2
  %i.cj = add i64 %i.ci, %i.bx
  %i.ck = sub i64 %i.cj, %i.ch
  %diff.check175 = icmp ugt i64 %i.ck, -32
  br i1 %diff.check175, label %.lr.ph.i.preheader196, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck174
  %n.vec179 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec179, 2                    ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cb, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cl
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %i.co = shl i64 %index181, 2                    ; 2 uses
  %next.gep182 = getelementptr i8, ptr %i.cb, i64 %i.co ; 2 uses
  %next.gep183 = getelementptr i8, ptr %i.cc, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep183, i64 16
  %wide.load184 = load <4 x i32>, ptr %next.gep183, align 4, !tbaa !35
  %wide.load185 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !35
  %i.cq = getelementptr i8, ptr %next.gep182, i64 16
  store <4 x i32> %wide.load184, ptr %next.gep182, align 4, !tbaa !35
  store <4 x i32> %wide.load185, ptr %i.cq, align 4, !tbaa !35
  %index.next186 = add nuw i64 %index181, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.cr, label %middle.block187, label %vector.body180, !llvm.loop !4507

middle.block187:                                  ; preds = %vector.body180
  %cmp.n188 = icmp eq i64 %i.cf, %n.vec179
  br i1 %cmp.n188, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i.preheader196

.lr.ph.i.preheader196:                            ; preds = %vector.memcheck174, %.lr.ph.i.preheader, %middle.block187
  %.010.i.ph = phi ptr [ %i.cb, %vector.memcheck174 ], [ %i.cb, %.lr.ph.i.preheader ], [ %i.cm, %middle.block187 ]
  %.079.i.ph = phi ptr [ %i.cc, %vector.memcheck174 ], [ %i.cc, %.lr.ph.i.preheader ], [ %i.cn, %middle.block187 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader196, %.lr.ph.i
  %.010.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader196 ] ; 2 uses
  %.079.i = phi ptr [ %i.ct, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader196 ] ; 2 uses
  %i.cs = load i32, ptr %.079.i, align 4, !tbaa !35
  store i32 %i.cs, ptr %.010.i, align 4, !tbaa !35
  %i.ct = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i47 = icmp eq ptr %i.ct, %i.by
  br i1 %.not.i47, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, label %.lr.ph.i, !llvm.loop !4508

bb.e:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %2, i64 16) ; 9 uses
  %i.cv = icmp ugt i64 %i.c, %.sroa.speculated.i
  br i1 %i.cv, label %.lr.ph.i50, label %._crit_edge.i

.lr.ph.i50:                                       ; preds = %bb.e
  %.idx33.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %or.cond.i.i = icmp ult i64 %2, 2
  br i1 %or.cond.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, label %.lr.ph37.i.preheader.i

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i: ; preds = %.lr.ph.i50, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i
  %.034.us.i = phi i64 [ %i.cw, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i ], [ 0, %.lr.ph.i50 ]
  %i.cw = add i64 %.034.us.i, %.sroa.speculated.i ; 3 uses
  %i.cx = sub i64 %i.c, %i.cw
  %i.cy = icmp ugt i64 %i.cx, %.sroa.speculated.i
  br i1 %i.cy, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, label %._crit_edge.i, !llvm.loop !4509

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph.i50, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i
  %.034.i = phi i64 [ %i.dh, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i ], [ 0, %.lr.ph.i50 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx33.i
  %.02233.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.h, %.lr.ph37.i.preheader.i
  %.02236.i.i = phi ptr [ %.022.i.i, %bb.h ], [ %.02233.i.i, %.lr.ph37.i.preheader.i ] ; 4 uses
  %.pn35.i.i = phi ptr [ %.02236.i.i, %bb.h ], [ %i.cz, %.lr.ph37.i.preheader.i ] ; 3 uses
  %i.db = load i32, ptr %.02236.i.i, align 4, !tbaa !35 ; 3 uses
  %i.dc = load i32, ptr %.pn35.i.i, align 4, !tbaa !35 ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph37.i.i
  store i32 %i.dc, ptr %.02236.i.i, align 4, !tbaa !35
  %.not2628.i.i = icmp eq ptr %.pn35.i.i, %i.cz
  br i1 %.not2628.i.i, label %.critedge.i.i, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.f, %bb.g
  %.030.i.i = phi ptr [ %i.de, %bb.g ], [ %.pn35.i.i, %bb.f ] ; 3 uses
  %i.de = getelementptr i8, ptr %.030.i.i, i64 -4 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35 ; 2 uses
  %i.dg = icmp slt i32 %i.db, %i.df
  br i1 %i.dg, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i51, %bb.f
  %.021.lcssa.i.i = phi ptr [ %i.cz, %bb.f ], [ %i.cz, %bb.g ], [ %.030.i.i, %.lr.ph.i.i51 ]
  store i32 %i.db, ptr %.021.lcssa.i.i, align 4, !tbaa !35
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i51
  store i32 %i.df, ptr %.030.i.i, align 4, !tbaa !35
  %.not26.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i51, !llvm.loop !4491

bb.h:                                             ; preds = %.critedge.i.i, %.lr.ph37.i.i
  %.022.i.i = getelementptr inbounds nuw i8, ptr %.02236.i.i, i64 4 ; 2 uses
  %.not25.i.i = icmp eq ptr %.022.i.i, %i.da
  br i1 %.not25.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, label %.lr.ph37.i.i, !llvm.loop !4492

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i: ; preds = %bb.h
  %i.dh = add i64 %.034.i, %.sroa.speculated.i    ; 3 uses
  %i.di = sub i64 %i.c, %i.dh
  %i.dj = icmp ugt i64 %i.di, %.sroa.speculated.i
  br i1 %i.dj, label %.lr.ph37.i.preheader.i, label %._crit_edge.i, !llvm.loop !4509

._crit_edge.i:                                    ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i, %bb.e
  %.0.lcssa.i48 = phi i64 [ 0, %bb.e ], [ %i.cw, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.us.i ], [ %i.dh, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i ] ; 2 uses
  %.idx.i49 = shl nuw nsw i64 %.0.lcssa.i48, 2    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i49 ; 6 uses
  %.idx32.i = shl nuw nsw i64 %i.c, 2             ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx32.i
  %.not.i15.i = icmp samesign eq i64 %.0.lcssa.i48, %i.c
  %i.dm = add nuw nsw i64 %.idx.i49, 4
  %.not2534.i17.i = icmp samesign eq i64 %i.dm, %.idx32.i
  %or.cond.i18.i = select i1 %.not.i15.i, i1 true, i1 %.not2534.i17.i
  br i1 %or.cond.i18.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.preheader.i

.lr.ph37.i19.preheader.i:                         ; preds = %._crit_edge.i
  %.02233.i16.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  br label %.lr.ph37.i19.i

.lr.ph37.i19.i:                                   ; preds = %bb.k, %.lr.ph37.i19.preheader.i
  %.02236.i20.i = phi ptr [ %.022.i22.i, %bb.k ], [ %.02233.i16.i, %.lr.ph37.i19.preheader.i ] ; 4 uses
  %.pn35.i21.i = phi ptr [ %.02236.i20.i, %bb.k ], [ %i.dk, %.lr.ph37.i19.preheader.i ] ; 3 uses
  %i.dn = load i32, ptr %.02236.i20.i, align 4, !tbaa !35 ; 3 uses
  %i.do = load i32, ptr %.pn35.i21.i, align 4, !tbaa !35 ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph37.i19.i
  store i32 %i.do, ptr %.02236.i20.i, align 4, !tbaa !35
  %.not2628.i24.i = icmp eq ptr %.pn35.i21.i, %i.dk
  br i1 %.not2628.i24.i, label %.critedge.i27.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.i, %bb.j
  %.030.i26.i = phi ptr [ %i.dq, %bb.j ], [ %.pn35.i21.i, %bb.i ] ; 3 uses
  %i.dq = getelementptr i8, ptr %.030.i26.i, i64 -4 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !35 ; 2 uses
  %i.ds = icmp slt i32 %i.dn, %i.dr
  br i1 %i.ds, label %bb.j, label %.critedge.i27.i

.critedge.i27.i:                                  ; preds = %bb.j, %.lr.ph.i25.i, %bb.i
  %.021.lcssa.i28.i = phi ptr [ %i.dk, %bb.i ], [ %i.dk, %bb.j ], [ %.030.i26.i, %.lr.ph.i25.i ]
  store i32 %i.dn, ptr %.021.lcssa.i28.i, align 4, !tbaa !35
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i25.i
  store i32 %i.dr, ptr %.030.i26.i, align 4, !tbaa !35
  %.not26.i29.i = icmp eq ptr %i.dq, %i.dk
  br i1 %.not26.i29.i, label %.critedge.i27.i, label %.lr.ph.i25.i, !llvm.loop !4491

bb.k:                                             ; preds = %.critedge.i27.i, %.lr.ph37.i19.i
  %.022.i22.i = getelementptr inbounds nuw i8, ptr %.02236.i20.i, i64 4 ; 2 uses
  %.not25.i23.i = icmp eq ptr %.022.i22.i, %i.dl
  br i1 %.not25.i23.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.i, !llvm.loop !4492

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread: ; preds = %.lr.ph.i, %middle.block187, %bb.d
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bz
  %i.du = sub i64 %3, %i.bv
  %i.dv = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef nonnull %i.dt, i64 noundef %i.c, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.du) ; 0 uses
  br label %bb.l

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit:           ; preds = %bb.k, %._crit_edge.i
  %i.dw = sub nsw i64 0, %.sroa.speculated.i
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.dz = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPiEET_S3_S3_S3_(ptr noundef %i.dx, ptr noundef %i.b, ptr noundef %i.dy) ; 0 uses
  %i.ea = sub i64 %3, %.sroa.speculated.i
  %i.eb = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.dx, i64 noundef %i.c, i64 noundef %.sroa.speculated.i, i64 noundef %3, i64 noundef %i.ea) ; 0 uses
  br label %bb.l

.lr.ph.i53.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit
  %.pre = sub i64 0, %i.bv
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.pre
  %i.ed = sub i64 %3, %i.bv
  %i.ee = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_(ptr noundef %i.ec, i64 noundef %i.c, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.ed) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  %i.ef = load ptr, ptr %4, align 8, !tbaa !127   ; 5 uses
  %.idx86 = shl nuw nsw i64 %.sroa.speculated63, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx86
  %i.eh = add nsw i64 %.idx86, -4                 ; 2 uses
  %i.ei = lshr exact i64 %i.eh, 2
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check160 = icmp ult i64 %i.eh, 44
  %i.ek = ptrtoaddr ptr %i.ef to i64
  %i.el = sub i64 %i.ek, %i.a
  %diff.check158 = icmp ugt i64 %i.el, -32
  %or.cond = select i1 %min.iters.check160, i1 true, i1 %diff.check158
  br i1 %or.cond, label %.lr.ph.i53.preheader197, label %vector.ph161

vector.ph161:                                     ; preds = %.lr.ph.i53.preheader
  %n.vec162 = and i64 %i.ej, 9223372036854775800  ; 3 uses
  %i.em = shl i64 %n.vec162, 2                    ; 2 uses
  %i.en = getelementptr i8, ptr %0, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.em
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph161
  %index164 = phi i64 [ 0, %vector.ph161 ], [ %index.next169, %vector.body163 ] ; 2 uses
  %i.ep = shl i64 %index164, 2                    ; 2 uses
  %next.gep165 = getelementptr i8, ptr %0, i64 %i.ep ; 2 uses
  %next.gep166 = getelementptr i8, ptr %i.ef, i64 %i.ep ; 2 uses
  %i.eq = getelementptr i8, ptr %next.gep166, i64 16
  %wide.load167 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !35
  %wide.load168 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !35
  %i.er = getelementptr i8, ptr %next.gep165, i64 16
  store <4 x i32> %wide.load167, ptr %next.gep165, align 4, !tbaa !35
  store <4 x i32> %wide.load168, ptr %i.er, align 4, !tbaa !35
  %index.next169 = add nuw i64 %index164, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.es, label %middle.block170, label %vector.body163, !llvm.loop !4510

middle.block170:                                  ; preds = %vector.body163
  %cmp.n171 = icmp eq i64 %i.ej, %n.vec162
  br i1 %cmp.n171, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, label %.lr.ph.i53.preheader197

.lr.ph.i53.preheader197:                          ; preds = %.lr.ph.i53.preheader, %middle.block170
  %.010.i54.ph = phi ptr [ %0, %.lr.ph.i53.preheader ], [ %i.en, %middle.block170 ]
  %.079.i55.ph = phi ptr [ %i.ef, %.lr.ph.i53.preheader ], [ %i.eo, %middle.block170 ]
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.preheader197, %.lr.ph.i53
  %.010.i54 = phi ptr [ %i.ev, %.lr.ph.i53 ], [ %.010.i54.ph, %.lr.ph.i53.preheader197 ] ; 2 uses
  %.079.i55 = phi ptr [ %i.eu, %.lr.ph.i53 ], [ %.079.i55.ph, %.lr.ph.i53.preheader197 ] ; 2 uses
  %i.et = load i32, ptr %.079.i55, align 4, !tbaa !35
  store i32 %i.et, ptr %.010.i54, align 4, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i55, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i54, i64 4
  %.not.i56 = icmp eq ptr %i.eu, %i.eg
  br i1 %.not.i56, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, label %.lr.ph.i53, !llvm.loop !4511

bb.l:                                             ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59:         ; preds = %.lr.ph.i53, %middle.block170, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !129
  %.not.i60 = icmp eq i64 %i.ex, 0
  br i1 %.not.i60, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59
  store i64 0, ptr %i.ew, align 8, !tbaa !129
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, %.preheader.preheader.i.i
  %i.ey = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.ey)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEbT_RNS0_9iter_sizeISF_E4typeESF_SI_SI_SJ_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %5, align 8, !tbaa !85     ; 13 uses
  %i.d = getelementptr [4 x i8], ptr %2, i64 %i.c ; 8 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !85
  %i.g = add i64 %i.f, %i.c                       ; 2 uses
  %i.h = icmp ugt i64 %i.e, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.c, 0
  %or.cond143.not189 = and i1 %.not139, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ule i64 %i.c, %i.j
  %or.cond187 = select i1 %or.cond143.not189, i1 %i.k, i1 false ; 8 uses
  br i1 %or.cond187, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !129  ; 4 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !127    ; 8 uses
  %i.o = ptrtoaddr ptr %i.n to i64                ; 2 uses
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.c, 2                   ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %2, i64 %.idx.i
  %i.q = add i64 %.idx.i, -4                      ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.q, 44
  %i.t = sub i64 %i.a, %i.o
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond434 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond434, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.u = shl i64 %n.vec, 2                        ; 2 uses
  %i.v = getelementptr i8, ptr %i.n, i64 %i.u
  %i.w = getelementptr i8, ptr %2, i64 %i.u
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.x = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.n, i64 %i.x ; 2 uses
  %next.gep247 = getelementptr i8, ptr %2, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep247, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !35
  %wide.load248 = load <4 x i32>, ptr %i.y, align 4, !tbaa !35
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load248, ptr %i.z, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !4512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %.thread, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.preheader.i ], [ %i.v, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %.lr.ph.i.preheader.i ], [ %i.w, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !4513

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 2                     ; 4 uses
  %i.ae = getelementptr inbounds i8, ptr %2, i64 %.idx26.i ; 5 uses
  %.not8.i17.i = icmp eq i64 %i.m, 0
  br i1 %.not8.i17.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader

.lr.ph.i18.i.preheader:                           ; preds = %bb.c
  %i.af = add i64 %.idx26.i, -4                   ; 2 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check253 = icmp ult i64 %i.af, 44
  %i.ai = sub i64 %i.a, %i.o
  %diff.check251 = icmp ugt i64 %i.ai, -32
  %or.cond435 = select i1 %min.iters.check253, i1 true, i1 %diff.check251
  br i1 %or.cond435, label %.lr.ph.i18.i.preheader453, label %vector.ph254

vector.ph254:                                     ; preds = %.lr.ph.i18.i.preheader
  %n.vec255 = and i64 %i.ah, 9223372036854775800  ; 3 uses
  %i.aj = shl i64 %n.vec255, 2                    ; 2 uses
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 %i.aj
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 2 uses
  %i.am = shl i64 %index257, 2                    ; 2 uses
  %next.gep258 = getelementptr i8, ptr %i.n, i64 %i.am ; 2 uses
  %next.gep259 = getelementptr i8, ptr %2, i64 %i.am ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep259, i64 16
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !35
  %wide.load261 = load <4 x i32>, ptr %i.an, align 4, !tbaa !35
  %i.ao = getelementptr i8, ptr %next.gep258, i64 16
  store <4 x i32> %wide.load260, ptr %next.gep258, align 4, !tbaa !35
  store <4 x i32> %wide.load261, ptr %i.ao, align 4, !tbaa !35
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.ap, label %middle.block263, label %vector.body256, !llvm.loop !4514

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.ah, %n.vec255
  br i1 %cmp.n264, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i.preheader453

.lr.ph.i18.i.preheader453:                        ; preds = %.lr.ph.i18.i.preheader, %middle.block263
  %.010.i19.i.ph = phi ptr [ %i.n, %.lr.ph.i18.i.preheader ], [ %i.ak, %middle.block263 ]
  %.079.i20.i.ph = phi ptr [ %2, %.lr.ph.i18.i.preheader ], [ %i.al, %middle.block263 ]
  br label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i18.i.preheader453, %.lr.ph.i18.i
  %.010.i19.i = phi ptr [ %i.as, %.lr.ph.i18.i ], [ %.010.i19.i.ph, %.lr.ph.i18.i.preheader453 ] ; 2 uses
  %.079.i20.i = phi ptr [ %i.ar, %.lr.ph.i18.i ], [ %.079.i20.i.ph, %.lr.ph.i18.i.preheader453 ] ; 2 uses
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !35
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4515

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block263, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.ak, %middle.block263 ], [ %i.as, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i268 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 2                 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.au = add i64 %.idx27.i, -4
  %7 = shl i64 %i.m, 2
  %i.av = sub i64 %i.au, %7                       ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check271 = icmp ult i64 %i.av, 60
  br i1 %min.iters.check271, label %.lr.ph.i24.i.preheader452, label %vector.memcheck267

vector.memcheck267:                               ; preds = %.lr.ph.i24.i.preheader
  %i.ay = add i64 %.idx26.i, %i.a
  %i.az = sub i64 %i.ay, %.0.lcssa.i22.i268
  %diff.check269 = icmp ugt i64 %i.az, -32
  br i1 %diff.check269, label %.lr.ph.i24.i.preheader452, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck267
  %n.vec273 = and i64 %i.ax, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec273, 2                    ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ae, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.ba
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next280, %vector.body274 ] ; 2 uses
  %i.bd = shl i64 %index275, 2                    ; 2 uses
  %next.gep276 = getelementptr i8, ptr %i.ae, i64 %i.bd ; 2 uses
  %next.gep277 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep276, i64 16
  %wide.load278 = load <4 x i32>, ptr %next.gep276, align 4, !tbaa !35
  %wide.load279 = load <4 x i32>, ptr %i.be, align 4, !tbaa !35
  %i.bf = getelementptr i8, ptr %next.gep277, i64 16
  store <4 x i32> %wide.load278, ptr %next.gep277, align 4, !tbaa !35
  store <4 x i32> %wide.load279, ptr %i.bf, align 4, !tbaa !35
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.bg, label %middle.block281, label %vector.body274, !llvm.loop !4516

middle.block281:                                  ; preds = %vector.body274
  %cmp.n282 = icmp eq i64 %i.ax, %n.vec273
  br i1 %cmp.n282, label %.thread, label %.lr.ph.i24.i.preheader452

.lr.ph.i24.i.preheader452:                        ; preds = %vector.memcheck267, %.lr.ph.i24.i.preheader, %middle.block281
  %.012.i.i.ph = phi ptr [ %i.ae, %vector.memcheck267 ], [ %i.ae, %.lr.ph.i24.i.preheader ], [ %i.bb, %middle.block281 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck267 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bc, %middle.block281 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader452, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bi, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader452 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bj, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader452 ] ; 2 uses
  %i.bh = load i32, ptr %.012.i.i, align 4, !tbaa !35
  store i32 %i.bh, ptr %.0911.i.i, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !4517

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block281, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !129
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %scevgep303 = getelementptr i8, ptr %2, i64 %i.bl
  %scevgep340 = getelementptr i8, ptr %2, i64 %i.bl
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bm, -4
  %i.bo = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.bo
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bp = select i1 %.1, i1 %i.ca, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !85
  %i.bq = sub i64 %i.g, %spec.select
  store i64 %i.bq, ptr %1, align 8, !tbaa !85
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bt, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.hd, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ] ; 2 uses
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 13 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.ca, %bb.s ]
  %i.br = load i64, ptr %5, align 8, !tbaa !85    ; 2 uses
  %i.bs = load i64, ptr %1, align 8, !tbaa !85    ; 4 uses
  %i.bt = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.br, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.bu = lshr i64 %i.bs, 1                       ; 3 uses
  %i.bv = sub i64 %i.bs, %i.bu                    ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 3
  br i1 %i.bw, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bx = udiv i64 %i.bt, %i.bu
  %.not192 = icmp ult i64 %i.bv, %i.bx
  br i1 %.not192, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.e, %bb.f
  %i.by = udiv i64 %i.bt, %i.bs
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.d, %bb.f, %.critedge.i
  %.1 = phi i1 [ true, %bb.f ], [ false, %.critedge.i ], [ true, %bb.d ] ; 10 uses
  %.1.i = phi i64 [ %i.bu, %bb.f ], [ %i.by, %.critedge.i ], [ %i.br, %bb.d ] ; 14 uses
  %i.bz = and i64 %.0130204, 1
  %i.ca = icmp eq i64 %i.bz, 0                    ; 9 uses
  %i.cb = urem i64 %i.e, %i.bt                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cb, %.0205
  %i.cc = select i1 %.not.i145, i64 0, i64 %i.cb  ; 5 uses
  %spec.select15.i = sub i64 %i.e, %i.cc          ; 5 uses
  %i.cd = icmp ne i64 %.0130204, 0
  %or.cond = and i1 %i.cd, %.0131203
  %or.cond3 = select i1 %or.cond, i1 %.0134200, i1 false
  br i1 %or.cond3, label %bb.g, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ca, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ce = sub i64 0, %.0132202
  %i.cf = getelementptr [4 x i8], ptr %i.d, i64 %i.ce ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133201, 0        ; 2 uses
  br i1 %or.cond187, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.preheader.i148

.lr.ph.i.preheader.i148:                          ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0133201 ; 3 uses
  %.idx13.i = shl i64 %.0133201, 2                ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx13.i ; 3 uses
  %i.ci = add i64 %.idx13.i, -4                   ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check365 = icmp ult i64 %i.ci, 28
  %i.cl = shl i64 %.0132202, 2
  %diff.check363 = icmp ugt i64 %i.cl, -32
  %or.cond436 = select i1 %min.iters.check365, i1 true, i1 %diff.check363
  br i1 %or.cond436, label %.lr.ph.i.i149.preheader, label %vector.ph366

vector.ph366:                                     ; preds = %.lr.ph.i.preheader.i148
  %n.vec367 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec367, -4                   ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ch, i64 %i.cm
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next374, %vector.body368 ] ; 2 uses
  %i.cp = mul i64 %index369, -4                   ; 2 uses
  %next.gep370 = getelementptr i8, ptr %i.cg, i64 %i.cp ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep371, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep371, i64 -32
  %wide.load372 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !35
  %wide.load373 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !35
  %i.cs = getelementptr inbounds i8, ptr %next.gep370, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep370, i64 -32
  store <4 x i32> %wide.load372, ptr %i.cs, align 4, !tbaa !35
  store <4 x i32> %wide.load373, ptr %i.ct, align 4, !tbaa !35
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.cu, label %middle.block375, label %vector.body368, !llvm.loop !4518

middle.block375:                                  ; preds = %vector.body368
  %cmp.n376 = icmp eq i64 %i.ck, %n.vec367
  br i1 %cmp.n376, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149.preheader

.lr.ph.i.i149.preheader:                          ; preds = %.lr.ph.i.preheader.i148, %middle.block375
  %.010.i.i150.ph = phi ptr [ %i.cg, %.lr.ph.i.preheader.i148 ], [ %i.cn, %middle.block375 ]
  %.079.i.i151.ph = phi ptr [ %i.ch, %.lr.ph.i.preheader.i148 ], [ %i.co, %middle.block375 ]
  br label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %.lr.ph.i.i149.preheader, %.lr.ph.i.i149
  %.010.i.i150 = phi ptr [ %i.cw, %.lr.ph.i.i149 ], [ %.010.i.i150.ph, %.lr.ph.i.i149.preheader ]
  %.079.i.i151 = phi ptr [ %i.cv, %.lr.ph.i.i149 ], [ %.079.i.i151.ph, %.lr.ph.i.i149.preheader ]
  %i.cv = getelementptr inbounds i8, ptr %.079.i.i151, i64 -4 ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %.010.i.i150, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !35
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !35
  %.not.i.i152 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i152, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149, !llvm.loop !4519

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.cy = getelementptr [4 x i8], ptr %i.d, i64 %.0133201 ; 5 uses
  %.idx.i147 = shl i64 %.0133201, 2               ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cf, i64 %.idx.i147 ; 5 uses
  %i.da = add i64 %.idx.i147, -4                  ; 2 uses
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESF_SH_SH_SH_SH_T0_T1_:bb.a

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.eq, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.ep, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %i.er = getelementptr i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i52 = icmp eq ptr %.1.i51, %i.dp
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i52, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53, label %.lr.ph.i46, !llvm.loop !4590

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53: ; preds = %bb.k, %bb.g
  %.024.lcssa.i54 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 9 uses
  %.023.lcssa.i55 = phi ptr [ %i.dn, %bb.g ], [ %i.er, %bb.k ] ; 7 uses
  %.024.lcssa.i54148 = ptrtoaddr ptr %.024.lcssa.i54 to i64 ; 2 uses
  %.not27.i56 = icmp eq ptr %.023.lcssa.i55, %.024.lcssa.i54
  %.not8.i.i28.i57 = icmp eq ptr %.024.lcssa.i54, %i.do
  %or.cond38.i58 = or i1 %.not8.i.i28.i57, %.not27.i56
  br i1 %or.cond38.i58, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader

.lr.ph.i.i29.i59.preheader:                       ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %i.es = add i64 %.idx, %.0.lcssa147
  %i.et = add i64 %i.es, -4
  %i.eu = sub i64 %i.et, %.024.lcssa.i54148       ; 2 uses
  %i.ev = lshr i64 %i.eu, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.eu, 28
  br i1 %min.iters.check, label %.lr.ph.i.i29.i59.preheader276, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i29.i59.preheader
  %scevgep = getelementptr i8, ptr %.024.lcssa.i54, i64 4
  %i.ex = add i64 %.0.lcssa147, -4
  %i.ey = add i64 %i.ex, %.idx
  %i.ez = sub i64 %i.ey, %.024.lcssa.i54148
  %i.fa = and i64 %i.ez, -4                       ; 2 uses
  %scevgep149 = getelementptr i8, ptr %scevgep, i64 %i.fa
  %scevgep150 = getelementptr i8, ptr %.023.lcssa.i55, i64 4
  %scevgep151 = getelementptr i8, ptr %scevgep150, i64 %i.fa
  %bound0 = icmp ult ptr %.024.lcssa.i54, %scevgep151
  %bound1 = icmp ult ptr %.023.lcssa.i55, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i29.i59.preheader276, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ew, 9223372036854775800     ; 3 uses
  %i.fb = shl i64 %n.vec, 2                       ; 2 uses
  %i.fc = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fb
  %i.fd = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fe = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.023.lcssa.i55, i64 %i.fe ; 3 uses
  %next.gep152 = getelementptr i8, ptr %.024.lcssa.i54, i64 %i.fe ; 3 uses
  %i.ff = getelementptr i8, ptr %next.gep152, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !35, !alias.scope !4607, !noalias !4610
  %wide.load153 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !35, !alias.scope !4607, !noalias !4610
  %i.fg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load154 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !35, !alias.scope !4610
  %wide.load155 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !35, !alias.scope !4610
  store <4 x i32> %wide.load154, ptr %next.gep152, align 4, !tbaa !35, !alias.scope !4607, !noalias !4610
  store <4 x i32> %wide.load155, ptr %i.ff, align 4, !tbaa !35, !alias.scope !4607, !noalias !4610
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35, !alias.scope !4610
  store <4 x i32> %wide.load153, ptr %i.fg, align 4, !tbaa !35, !alias.scope !4610
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %middle.block, label %vector.body, !llvm.loop !4612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ew, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59.preheader276

.lr.ph.i.i29.i59.preheader276:                    ; preds = %vector.memcheck, %.lr.ph.i.i29.i59.preheader, %middle.block
  %.010.i.i30.i60.ph = phi ptr [ %.023.lcssa.i55, %vector.memcheck ], [ %.023.lcssa.i55, %.lr.ph.i.i29.i59.preheader ], [ %i.fc, %middle.block ]
  %.079.i.i31.i61.ph = phi ptr [ %.024.lcssa.i54, %vector.memcheck ], [ %.024.lcssa.i54, %.lr.ph.i.i29.i59.preheader ], [ %i.fd, %middle.block ]
  br label %.lr.ph.i.i29.i59

.lr.ph.i.i29.i59:                                 ; preds = %.lr.ph.i.i29.i59.preheader276, %.lr.ph.i.i29.i59
  %.010.i.i30.i60 = phi ptr [ %i.fl, %.lr.ph.i.i29.i59 ], [ %.010.i.i30.i60.ph, %.lr.ph.i.i29.i59.preheader276 ] ; 3 uses
  %.079.i.i31.i61 = phi ptr [ %i.fk, %.lr.ph.i.i29.i59 ], [ %.079.i.i31.i61.ph, %.lr.ph.i.i29.i59.preheader276 ] ; 3 uses
  %i.fi = load i32, ptr %.079.i.i31.i61, align 4, !tbaa !35
  %i.fj = load i32, ptr %.010.i.i30.i60, align 4, !tbaa !35
  store i32 %i.fj, ptr %.079.i.i31.i61, align 4, !tbaa !35
  store i32 %i.fi, ptr %.010.i.i30.i60, align 4, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i.i31.i61, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i.i30.i60, i64 4
  %.not.i.i32.i62 = icmp eq ptr %i.fk, %i.do
  br i1 %.not.i.i32.i62, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i29.i59, !llvm.loop !4613

bb.l:                                             ; preds = %._crit_edge
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.04186, i64 %1
  %i.fn = sub i64 0, %.04285                      ; 4 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.fo = getelementptr [4 x i8], ptr %.0.lcssa, i64 %i.fn ; 5 uses
  %.reass = add i64 %.04186159, %invariant.op
  %i.fp = sub i64 %.reass, %.0.lcssa147           ; 2 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = add nuw nsw i64 %i.fq, 1                ; 2 uses
  %min.iters.check196 = icmp ult i64 %i.fp, 28
  br i1 %min.iters.check196, label %.lr.ph.i.i.preheader279, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph.i.i.preheader
  %scevgep189 = getelementptr i8, ptr %.0.lcssa, i64 4 ; 2 uses
  %i.fs = add i64 %i.e, %.04186159
  %i.ft = sub i64 %i.fs, %.0.lcssa147
  %i.fu = and i64 %i.ft, -4                       ; 2 uses
  %scevgep190 = getelementptr i8, ptr %scevgep189, i64 %i.fu
  %i.fv = shl i64 %.04285, 2
  %i.fw = sub i64 %i.fu, %i.fv
  %scevgep191 = getelementptr i8, ptr %scevgep189, i64 %i.fw
  %bound0192 = icmp ult ptr %.0.lcssa, %scevgep191
  %bound1193 = icmp ult ptr %i.fo, %scevgep190
  %found.conflict194 = and i1 %bound0192, %bound1193
  br i1 %found.conflict194, label %.lr.ph.i.i.preheader279, label %vector.ph197

vector.ph197:                                     ; preds = %vector.memcheck188
  %n.vec198 = and i64 %i.fr, 9223372036854775800  ; 3 uses
  %i.fx = shl i64 %n.vec198, 2                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fo, i64 %i.fx
  %i.fz = getelementptr i8, ptr %.0.lcssa, i64 %i.fx
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph197
  %index200 = phi i64 [ 0, %vector.ph197 ], [ %index.next207, %vector.body199 ] ; 2 uses
  %i.ga = shl i64 %index200, 2                    ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.fo, i64 %i.ga ; 3 uses
  %next.gep202 = getelementptr i8, ptr %.0.lcssa, i64 %i.ga ; 3 uses
  %i.gb = getelementptr i8, ptr %next.gep202, i64 16 ; 2 uses
  %wide.load203 = load <4 x i32>, ptr %next.gep202, align 4, !tbaa !35, !alias.scope !4614, !noalias !4617
  %wide.load204 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !35, !alias.scope !4614, !noalias !4617
  %i.gc = getelementptr i8, ptr %next.gep201, i64 16 ; 2 uses
  %wide.load205 = load <4 x i32>, ptr %next.gep201, align 4, !tbaa !35, !alias.scope !4617
  %wide.load206 = load <4 x i32>, ptr %i.gc, align 4, !tbaa !35, !alias.scope !4617
  store <4 x i32> %wide.load205, ptr %next.gep202, align 4, !tbaa !35, !alias.scope !4614, !noalias !4617
  store <4 x i32> %wide.load206, ptr %i.gb, align 4, !tbaa !35, !alias.scope !4614, !noalias !4617
  store <4 x i32> %wide.load203, ptr %next.gep201, align 4, !tbaa !35, !alias.scope !4617
  store <4 x i32> %wide.load204, ptr %i.gc, align 4, !tbaa !35, !alias.scope !4617
  %index.next207 = add nuw i64 %index200, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next207, %n.vec198
  br i1 %i.gd, label %middle.block208, label %vector.body199, !llvm.loop !4619

middle.block208:                                  ; preds = %vector.body199
  %cmp.n209 = icmp eq i64 %i.fr, %n.vec198
  br i1 %cmp.n209, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.preheader279

.lr.ph.i.i.preheader279:                          ; preds = %vector.memcheck188, %.lr.ph.i.i.preheader, %middle.block208
  %.010.i.i.ph = phi ptr [ %i.fo, %vector.memcheck188 ], [ %i.fo, %.lr.ph.i.i.preheader ], [ %i.fy, %middle.block208 ]
  %.079.i.i.ph = phi ptr [ %.0.lcssa, %vector.memcheck188 ], [ %.0.lcssa, %.lr.ph.i.i.preheader ], [ %i.fz, %middle.block208 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader279, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.gh, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader279 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.gg, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader279 ] ; 3 uses
  %i.ge = load i32, ptr %.079.i.i, align 4, !tbaa !35
  %i.gf = load i32, ptr %.010.i.i, align 4, !tbaa !35
  store i32 %i.gf, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.ge, ptr %.010.i.i, align 4, !tbaa !35
  %i.gg = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.gg, %i.fm
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i, !llvm.loop !4620

_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i63, %.lr.ph.i.i29.i59, %middle.block208, %middle.block180, %middle.block, %bb.l, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53
  %.pre-phi = phi i64 [ %i.dm, %middle.block180 ], [ %i.dm, %middle.block ], [ %i.dm, %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit.i53 ], [ %i.fn, %bb.l ], [ %i.fn, %middle.block208 ], [ %i.dm, %.lr.ph.i.i.i63 ], [ %i.dm, %.lr.ph.i.i29.i59 ], [ %i.fn, %.lr.ph.i.i ]
  %i.gi = getelementptr inbounds [4 x i8], ptr %.04186, i64 %.pre-phi
  %i.gj = sub i64 %.04087, %.04285                ; 2 uses
  %i.gk = icmp ult i64 %i.f, %3
  %i.gl = icmp uge i64 %i.gj, %i.f
  %i.gm = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %i.gm, label %.preheader, label %._crit_edge88, !llvm.loop !4621

._crit_edge88:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.f, %_ZN5boost7movelib13op_merge_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_SD_SD_SD_T0_T1_.exit67 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = shl i64 %2, 1                            ; 10 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 3 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 60
  %i.o = shl i64 %2, 2
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = mul i64 %n.vec, -4                       ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr i8, ptr %i.g, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.s ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.g, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %next.gep142, i64 -16
  %i.u = getelementptr inbounds i8, ptr %next.gep142, i64 -32
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !35
  %wide.load143 = load <4 x i32>, ptr %i.u, align 4, !tbaa !35
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.w = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !35
  store <4 x i32> %wide.load143, ptr %i.w, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4622

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader266

.lr.ph.i.i.preheader266:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader266, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader266 ]
  %.079.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader266 ]
  %i.y = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !35
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !35
  %.not.i.i = icmp eq ptr %i.f, %i.y
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !4623

bb.c:                                             ; preds = %bb.a
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.be, %bb.d ], [ %i.ad, %bb.c ] ; 5 uses
  %.02442.i = phi ptr [ %.024..i, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %..025.i, %bb.d ], [ %i.ab, %bb.c ] ; 7 uses
  %i.ae = icmp eq ptr %.02442.i, %i.ab
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i146.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.af = udiv i64 %1, %i.b
  %i.ag = mul i64 %2, %i.af
  %5 = add i64 %.02541.i146.le, -4
  %6 = shl i64 %i.ag, 3
  %i.ah = add i64 %6, %i.a
  %i.ai = sub i64 %5, %i.ah                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check149 = icmp ult i64 %i.ai, 124
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.preheader259, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.al = add i64 %.idx68, %i.a
  %.neg = mul i64 %1, -4
  %.neg241 = sub i64 %.neg, %i.al
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %.neg241
  %i.ao = add i64 %i.an, %.02541.i146.le
  %i.ap = add i64 %i.ao, -1
  %diff.check147 = icmp ult i64 %i.ap, 31
  br i1 %diff.check147, label %.lr.ph.i.i.i.preheader259, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck145
  %n.vec151 = and i64 %i.ak, 9223372036854775800  ; 3 uses
  %i.aq = mul i64 %n.vec151, -4                   ; 2 uses
  %i.ar = getelementptr i8, ptr %.043.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %.02541.i, i64 %i.aq
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 2 uses
  %i.at = mul i64 %index153, -4                   ; 2 uses
  %next.gep154 = getelementptr i8, ptr %.043.i, i64 %i.at ; 2 uses
  %next.gep155 = getelementptr i8, ptr %.02541.i, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep155, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep155, i64 -32
  %wide.load156 = load <4 x i32>, ptr %i.au, align 4, !tbaa !35
  %wide.load157 = load <4 x i32>, ptr %i.av, align 4, !tbaa !35
  %i.aw = getelementptr inbounds i8, ptr %next.gep154, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %next.gep154, i64 -32
  store <4 x i32> %wide.load156, ptr %i.aw, align 4, !tbaa !35
  store <4 x i32> %wide.load157, ptr %i.ax, align 4, !tbaa !35
  %index.next158 = add nuw i64 %index153, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.ay, label %middle.block159, label %vector.body152, !llvm.loop !4624

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.ak, %n.vec151
  br i1 %cmp.n160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i.preheader259

.lr.ph.i.i.i.preheader259:                        ; preds = %vector.memcheck145, %.lr.ph.i.i.i.preheader, %middle.block159
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck145 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block159 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck145 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block159 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader259, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ]
  %.079.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ]
  %i.az = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !35
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.f, %i.az
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !4625

bb.d:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !35 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !35 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg               ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bg)
  %..025.i = select i1 %i.bh, ptr %i.bd, ptr %.02541.i ; 2 uses
  %.024..i = select i1 %i.bh, ptr %.02442.i, ptr %i.bc ; 2 uses
  store i32 %..i, ptr %i.be, align 4, !tbaa !35
  %.not.i = icmp eq ptr %i.f, %..025.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4626

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ac, %bb.c ], [ %.024..i, %bb.d ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.ad, %bb.c ], [ %i.be, %bb.d ] ; 5 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ab, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.0.lcssa.i165 = ptrtoaddr ptr %.0.lcssa.i to i64
  %.024.lcssa.i164 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bi = udiv i64 %1, %i.b
  %i.bj = shl i64 %i.bi, 3
  %i.bk = or disjoint i64 %i.bj, 4
  %i.bl = mul i64 %2, %i.bk
  %i.bm = add i64 %.024.lcssa.i164, -4
  %i.bn = add i64 %i.bl, %i.a
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.bo, 44
  %i.br = sub i64 %.0.lcssa.i165, %.024.lcssa.i164
  %diff.check166 = icmp ugt i64 %i.br, -32
  %or.cond247 = or i1 %min.iters.check168, %diff.check166
  br i1 %or.cond247, label %.lr.ph.i.i30.i.preheader258, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i30.i.preheader
  %n.vec170 = and i64 %i.bq, 9223372036854775800  ; 3 uses
  %i.bs = mul i64 %n.vec170, -4                   ; 2 uses
  %i.bt = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bs
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.bv = mul i64 %index172, -4                   ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bv ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep174, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep174, i64 -32
  %wide.load175 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !35
  %wide.load176 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !35
  %i.by = getelementptr inbounds i8, ptr %next.gep173, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep173, i64 -32
  store <4 x i32> %wide.load175, ptr %i.by, align 4, !tbaa !35
  store <4 x i32> %wide.load176, ptr %i.bz, align 4, !tbaa !35
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.ca, label %middle.block178, label %vector.body171, !llvm.loop !4627

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.bq, %n.vec170
  br i1 %cmp.n179, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader258

.lr.ph.i.i30.i.preheader258:                      ; preds = %.lr.ph.i.i30.i.preheader, %middle.block178
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.bt, %middle.block178 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.bu, %middle.block178 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader258, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cc, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader258 ]
  %.079.i.i32.i = phi ptr [ %i.cb, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader258 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !35
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !35
  %.not.i.i33.i = icmp eq ptr %i.ab, %i.cb
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i, !llvm.loop !4628

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block159, %middle.block178, %._crit_edge.i, %bb.b
  %.not4378 = icmp eq i64 %i.e, 0
  br i1 %.not4378, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  %.idx69 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx69, 0
  br i1 %.not40.i44, label %._crit_edge.i53.us.preheader, label %.lr.ph.i45.preheader.preheader

._crit_edge.i53.us.preheader:                     ; preds = %.lr.ph
  %invariant.gep = getelementptr i8, ptr %0, i64 %.idx
  br label %._crit_edge.i53.us

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ce = shl i64 %2, 3
  %i.cf = shl i64 %2, 3
  %i.cg = shl i64 %2, 3
  %i.ch = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i53.us:                               ; preds = %._crit_edge.i53.us.preheader, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us
  %.079.us = phi i64 [ %i.ci, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us ], [ %i.e, %._crit_edge.i53.us.preheader ] ; 2 uses
  %i.ci = sub i64 %.079.us, %i.b                  ; 3 uses
  %.idx81 = shl nuw nsw i64 %i.ci, 2              ; 2 uses
  %.idx80 = shl nuw nsw i64 %.079.us, 2           ; 2 uses
  %.not28.i56.us = icmp eq i64 %.idx80, %.idx81
  br i1 %.not28.i56.us, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, label %.lr.ph.i.i30.i59.us.preheader

.lr.ph.i.i30.i59.us.preheader:                    ; preds = %._crit_edge.i53.us
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx81
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx80
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %.lr.ph.i.i30.i59.us.preheader
  %index231 = phi i64 [ 0, %.lr.ph.i.i30.i59.us.preheader ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.ck = mul i64 %index231, -4                   ; 2 uses
  %next.gep232 = getelementptr i8, ptr %gep, i64 %i.ck ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep233, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep233, i64 -32
  %wide.load234 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !35
  %wide.load235 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !35
  %i.cn = getelementptr inbounds i8, ptr %next.gep232, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep232, i64 -32
  store <4 x i32> %wide.load234, ptr %i.cn, align 4, !tbaa !35
  store <4 x i32> %wide.load235, ptr %i.co, align 4, !tbaa !35
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next236, 4611686018427387904
  br i1 %i.cp, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, label %vector.body230, !llvm.loop !4629

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us: ; preds = %vector.body230, %._crit_edge.i53.us
  %.not43.us = icmp eq i64 %i.ci, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i53.us, !llvm.loop !4630

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67
  %indvar184 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next185, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67 ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_:bb.a
  %.02541.i48 = phi ptr [ %i.cw, %.lr.ph.i45.preheader ], [ %..025.i50, %bb.e ] ; 7 uses
  %i.cz = icmp eq ptr %.02442.i47, %i.cw
  br i1 %i.cz, label %.lr.ph.i.i.i63.preheader, label %bb.e

.lr.ph.i.i.i63.preheader:                         ; preds = %.lr.ph.i45
  %.02541.i48183.le = ptrtoaddr ptr %.02541.i48 to i64 ; 2 uses
  %i.da = udiv i64 %1, %i.b
  %i.db = shl nuw i64 %i.da, 1
  %i.dc = add i64 %i.db, 4611686018427387902
  %i.dd = mul i64 %2, %i.dc
  %i.de = shl i64 %i.dd, 2
  %i.df = add i64 %i.de, %i.a
  %reass.sub243 = sub i64 %i.cs, %i.df
  %i.dg = add i64 %reass.sub243, -4
  %i.dh = add i64 %i.dg, %.02541.i48183.le        ; 2 uses
  %i.di = lshr i64 %i.dh, 2
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check190 = icmp ult i64 %i.dh, 76
  br i1 %min.iters.check190, label %.lr.ph.i.i.i63.preheader250, label %vector.memcheck182

vector.memcheck182:                               ; preds = %.lr.ph.i.i.i63.preheader
  %i.dk = udiv i64 %1, %i.b
  %i.dl = shl i64 %i.dk, 3
  %.neg245 = sub nuw nsw i64 -4, %i.dl
  %.neg246 = mul i64 %.neg245, %2
  %i.dm = sub i64 %.neg246, %i.a
  %i.dn = add i64 %i.ct, %i.dm
  %i.do = shl i64 %indvar186, 2
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %.02541.i48183.le
  %i.dr = add i64 %i.dq, -1
  %diff.check188 = icmp ult i64 %i.dr, 31
  br i1 %diff.check188, label %.lr.ph.i.i.i63.preheader250, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck182
  %n.vec192 = and i64 %i.dj, 9223372036854775800  ; 3 uses
  %i.ds = mul i64 %n.vec192, -4                   ; 2 uses
  %i.dt = getelementptr i8, ptr %.043.i46, i64 %i.ds
  %i.du = getelementptr i8, ptr %.02541.i48, i64 %i.ds
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %i.dv = mul i64 %index194, -4                   ; 2 uses
  %next.gep195 = getelementptr i8, ptr %.043.i46, i64 %i.dv ; 2 uses
  %next.gep196 = getelementptr i8, ptr %.02541.i48, i64 %i.dv ; 2 uses
  %i.dw = getelementptr inbounds i8, ptr %next.gep196, i64 -16
  %i.dx = getelementptr inbounds i8, ptr %next.gep196, i64 -32
  %wide.load197 = load <4 x i32>, ptr %i.dw, align 4, !tbaa !35
  %wide.load198 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !35
  %i.dy = getelementptr inbounds i8, ptr %next.gep195, i64 -16
  %i.dz = getelementptr inbounds i8, ptr %next.gep195, i64 -32
  store <4 x i32> %wide.load197, ptr %i.dy, align 4, !tbaa !35
  store <4 x i32> %wide.load198, ptr %i.dz, align 4, !tbaa !35
  %index.next199 = add nuw i64 %index194, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.ea, label %middle.block200, label %vector.body193, !llvm.loop !4631

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %i.dj, %n.vec192
  br i1 %cmp.n201, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63.preheader250

.lr.ph.i.i.i63.preheader250:                      ; preds = %vector.memcheck182, %.lr.ph.i.i.i63.preheader, %middle.block200
  %.010.i.i.i64.ph = phi ptr [ %.043.i46, %vector.memcheck182 ], [ %.043.i46, %.lr.ph.i.i.i63.preheader ], [ %i.dt, %middle.block200 ]
  %.079.i.i.i65.ph = phi ptr [ %.02541.i48, %vector.memcheck182 ], [ %.02541.i48, %.lr.ph.i.i.i63.preheader ], [ %i.du, %middle.block200 ]
  br label %.lr.ph.i.i.i63

.lr.ph.i.i.i63:                                   ; preds = %.lr.ph.i.i.i63.preheader250, %.lr.ph.i.i.i63
  %.010.i.i.i64 = phi ptr [ %i.ec, %.lr.ph.i.i.i63 ], [ %.010.i.i.i64.ph, %.lr.ph.i.i.i63.preheader250 ]
  %.079.i.i.i65 = phi ptr [ %i.eb, %.lr.ph.i.i.i63 ], [ %.079.i.i.i65.ph, %.lr.ph.i.i.i63.preheader250 ]
  %i.eb = getelementptr inbounds i8, ptr %.079.i.i.i65, i64 -4 ; 3 uses
  %i.ec = getelementptr inbounds i8, ptr %.010.i.i.i64, i64 -4 ; 2 uses
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !35
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !35
  %.not.i.i.i66 = icmp eq ptr %i.cv, %i.eb
  br i1 %.not.i.i.i66, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i.i63, !llvm.loop !4632

bb.e:                                             ; preds = %.lr.ph.i45
  %i.ee = getelementptr inbounds i8, ptr %.02442.i47, i64 -4 ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.02541.i48, i64 -4 ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %.043.i46, i64 -4 ; 7 uses
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !35 ; 2 uses
  %i.ei = load i32, ptr %i.ef, align 4, !tbaa !35 ; 2 uses
  %i.ej = icmp slt i32 %i.eh, %i.ei               ; 2 uses
  %..i49 = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ei)
  %..025.i50 = select i1 %i.ej, ptr %i.ef, ptr %.02541.i48 ; 2 uses
  %.024..i51 = select i1 %i.ej, ptr %.02442.i47, ptr %i.ee ; 8 uses
  store i32 %..i49, ptr %i.eg, align 4, !tbaa !35
  %.not.i52 = icmp eq ptr %i.cv, %..025.i50
  %indvar.next187 = add i64 %indvar186, 1
  br i1 %.not.i52, label %._crit_edge.i53.loopexit, label %.lr.ph.i45, !llvm.loop !4626

._crit_edge.i53.loopexit:                         ; preds = %bb.e
  %.024..i51205.le = ptrtoaddr ptr %.024..i51 to i64 ; 2 uses
  %.not28.i56 = icmp eq ptr %.024..i51, %i.eg
  %.not8.i.i29.i57 = icmp eq ptr %i.cw, %.024..i51
  %or.cond.i58 = or i1 %.not8.i.i29.i57, %.not28.i56
  br i1 %or.cond.i58, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59.preheader

.lr.ph.i.i30.i59.preheader:                       ; preds = %._crit_edge.i53.loopexit
  %i.ek = udiv i64 %1, %i.b
  %i.el = shl i64 %i.ek, 3
  %i.em = add i64 %i.el, -4
  %i.en = mul i64 %2, %i.em
  %i.eo = add i64 %i.en, %i.a
  %reass.sub = sub i64 %i.cq, %i.eo
  %i.ep = add i64 %reass.sub, -4
  %i.eq = add i64 %i.ep, %.024..i51205.le         ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.eq, 76
  br i1 %min.iters.check208, label %.lr.ph.i.i30.i59.preheader251, label %vector.memcheck204

vector.memcheck204:                               ; preds = %.lr.ph.i.i30.i59.preheader
  %i.et = shl i64 %i.d, 3
  %i.eu = or disjoint i64 %i.et, 4
  %i.ev = mul i64 %2, %i.eu
  %i.ew = add i64 %i.ev, %i.a
  %reass.sub242 = sub i64 %i.cr, %i.ew
  %i.ex = shl i64 %indvar186, 2
  %op.rdx = add i64 %.024..i51205.le, 3
  %op.rdx248 = add i64 %i.ex, %reass.sub242
  %op.rdx249 = add i64 %op.rdx, %op.rdx248
  %diff.check206 = icmp ult i64 %op.rdx249, 31
  br i1 %diff.check206, label %.lr.ph.i.i30.i59.preheader251, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck204
  %n.vec210 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec210, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.eg, i64 %i.ey
  %i.fa = getelementptr i8, ptr %.024..i51, i64 %i.ey
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %i.fb = mul i64 %index212, -4                   ; 2 uses
  %next.gep213 = getelementptr i8, ptr %i.eg, i64 %i.fb ; 2 uses
  %next.gep214 = getelementptr i8, ptr %.024..i51, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep214, i64 -16
  %i.fd = getelementptr inbounds i8, ptr %next.gep214, i64 -32
  %wide.load215 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !35
  %wide.load216 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !35
  %i.fe = getelementptr inbounds i8, ptr %next.gep213, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep213, i64 -32
  store <4 x i32> %wide.load215, ptr %i.fe, align 4, !tbaa !35
  store <4 x i32> %wide.load216, ptr %i.ff, align 4, !tbaa !35
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.fg, label %middle.block218, label %vector.body211, !llvm.loop !4633

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %i.es, %n.vec210
  br i1 %cmp.n219, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59.preheader251

.lr.ph.i.i30.i59.preheader251:                    ; preds = %vector.memcheck204, %.lr.ph.i.i30.i59.preheader, %middle.block218
  %.010.i.i31.i60.ph = phi ptr [ %i.eg, %vector.memcheck204 ], [ %i.eg, %.lr.ph.i.i30.i59.preheader ], [ %i.ez, %middle.block218 ]
  %.079.i.i32.i61.ph = phi ptr [ %.024..i51, %vector.memcheck204 ], [ %.024..i51, %.lr.ph.i.i30.i59.preheader ], [ %i.fa, %middle.block218 ]
  br label %.lr.ph.i.i30.i59

.lr.ph.i.i30.i59:                                 ; preds = %.lr.ph.i.i30.i59.preheader251, %.lr.ph.i.i30.i59
  %.010.i.i31.i60 = phi ptr [ %i.fi, %.lr.ph.i.i30.i59 ], [ %.010.i.i31.i60.ph, %.lr.ph.i.i30.i59.preheader251 ]
  %.079.i.i32.i61 = phi ptr [ %i.fh, %.lr.ph.i.i30.i59 ], [ %.079.i.i32.i61.ph, %.lr.ph.i.i30.i59.preheader251 ]
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i32.i61, i64 -4 ; 3 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i31.i60, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !35
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !35
  %.not.i.i33.i62 = icmp eq ptr %i.cw, %i.fh
  br i1 %.not.i.i33.i62, label %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, label %.lr.ph.i.i30.i59, !llvm.loop !4634

_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67: ; preds = %.lr.ph.i.i30.i59, %.lr.ph.i.i.i63, %middle.block218, %middle.block200, %._crit_edge.i53.loopexit
  %.not43 = icmp eq i64 %i.cu, 0
  %indvar.next185 = add i64 %indvar184, 1
  br i1 %.not43, label %._crit_edge, label %.lr.ph.i45.preheader, !llvm.loop !4630

._crit_edge:                                      ; preds = %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67, %_ZN5boost7movelib14op_merge_rightIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_SD_SD_SD_T0_T1_.exit67.us, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 13 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not6.i.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 60
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader316, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = udiv i64 %1, %i.b
  %i.p = shl i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 4
  %i.r = mul i64 %2, %i.q
  %scevgep = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %i.f, %i.h
  %bound1 = icmp ult ptr %scevgep, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader316, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.s = mul i64 %n.vec, -4                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep150 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %next.gep150, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep150, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !35, !alias.scope !4635, !noalias !4638
  %wide.load151 = load <4 x i32>, ptr %i.x, align 4, !tbaa !35, !alias.scope !4635, !noalias !4638
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load152 = load <4 x i32>, ptr %i.y, align 4, !tbaa !35, !alias.scope !4638
  %wide.load153 = load <4 x i32>, ptr %i.z, align 4, !tbaa !35, !alias.scope !4638
  store <4 x i32> %wide.load152, ptr %i.w, align 4, !tbaa !35, !alias.scope !4635, !noalias !4638
  store <4 x i32> %wide.load153, ptr %i.x, align 4, !tbaa !35, !alias.scope !4635, !noalias !4638
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !35, !alias.scope !4638
  store <4 x i32> %wide.load151, ptr %i.z, align 4, !tbaa !35, !alias.scope !4638
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !4640

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.preheader316

.lr.ph.i.i.preheader316:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader316, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader316 ]
  %.057.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader316 ]
  %i.ab = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 3 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !35
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !35
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !35
  %.not.i.i = icmp eq ptr %i.f, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i, !llvm.loop !4641

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bp, %bb.g ], [ %i.ah, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.ag, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.af, %bb.c ] ; 9 uses
  %i.ai = icmp eq ptr %.02442.i, %i.af
  br i1 %i.ai, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i157.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.aj = udiv i64 %1, %i.b
  %i.ak = mul i64 %2, %i.aj
  %5 = add i64 %.02541.i157.le, -4
  %6 = shl i64 %i.ak, 3
  %i.al = add i64 %6, %i.a
  %i.am = sub i64 %5, %i.al                       ; 2 uses
  %i.an = lshr i64 %i.am, 2
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check165 = icmp ult i64 %i.am, 156
  br i1 %min.iters.check165, label %.lr.ph.i.i.i.preheader309, label %vector.memcheck155

vector.memcheck155:                               ; preds = %.lr.ph.i.i.i.preheader
  %scevgep156 = getelementptr i8, ptr %.02541.i, i64 -4
  %i.ap = udiv i64 %1, %i.b
  %i.aq = mul i64 %2, %i.ap
  %i.ar = shl i64 %i.aq, 3
  %i.as = add i64 %i.ar, %i.a
  %reass.sub = sub i64 %.02541.i157.le, %i.as
  %i.at = add i64 %reass.sub, -4
  %i.au = lshr i64 %i.at, 2
  %i.av = mul i64 %i.au, -4                       ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep156, i64 %i.av
  %.idx67291 = add i64 %2, %1
  %i.aw = shl i64 %.idx67291, 2
  %i.ax = add i64 %i.aw, -4
  %i.ay = shl i64 %indvar, 2
  %i.az = sub i64 %i.ax, %i.ay
  %scevgep159 = getelementptr i8, ptr %0, i64 %i.az
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %i.av
  %bound0161 = icmp ult ptr %scevgep158, %.043.i
  %bound1162 = icmp ult ptr %scevgep160, %.02541.i
  %found.conflict163 = and i1 %bound0161, %bound1162
  br i1 %found.conflict163, label %.lr.ph.i.i.i.preheader309, label %vector.ph166

vector.ph166:                                     ; preds = %vector.memcheck155
  %n.vec167 = and i64 %i.ao, 9223372036854775800  ; 3 uses
  %i.ba = mul i64 %n.vec167, -4                   ; 2 uses
  %i.bb = getelementptr i8, ptr %.043.i, i64 %i.ba
  %i.bc = getelementptr i8, ptr %.02541.i, i64 %i.ba
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph166
  %index169 = phi i64 [ 0, %vector.ph166 ], [ %index.next176, %vector.body168 ] ; 2 uses
  %i.bd = mul i64 %index169, -4                   ; 2 uses
  %next.gep170 = getelementptr i8, ptr %.043.i, i64 %i.bd ; 2 uses
  %next.gep171 = getelementptr i8, ptr %.02541.i, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep171, i64 -16 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %next.gep171, i64 -32 ; 2 uses
  %wide.load172 = load <4 x i32>, ptr %i.be, align 4, !tbaa !35, !alias.scope !4642, !noalias !4645
  %wide.load173 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !35, !alias.scope !4642, !noalias !4645
  %i.bg = getelementptr inbounds i8, ptr %next.gep170, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %next.gep170, i64 -32 ; 2 uses
  %wide.load174 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !35, !alias.scope !4645
  %wide.load175 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !35, !alias.scope !4645
  store <4 x i32> %wide.load174, ptr %i.be, align 4, !tbaa !35, !alias.scope !4642, !noalias !4645
  store <4 x i32> %wide.load175, ptr %i.bf, align 4, !tbaa !35, !alias.scope !4642, !noalias !4645
  store <4 x i32> %wide.load172, ptr %i.bg, align 4, !tbaa !35, !alias.scope !4645
  store <4 x i32> %wide.load173, ptr %i.bh, align 4, !tbaa !35, !alias.scope !4645
  %index.next176 = add nuw i64 %index169, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next176, %n.vec167
  br i1 %i.bi, label %middle.block177, label %vector.body168, !llvm.loop !4647

middle.block177:                                  ; preds = %vector.body168
  %cmp.n178 = icmp eq i64 %i.ao, %n.vec167
  br i1 %cmp.n178, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i.preheader309

.lr.ph.i.i.i.preheader309:                        ; preds = %vector.memcheck155, %.lr.ph.i.i.i.preheader, %middle.block177
  %.08.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck155 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block177 ]
  %.057.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck155 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block177 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader309, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %.057.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader309 ]
  %i.bj = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 3 uses
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !35
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !35
  store i32 %i.bl, ptr %i.bk, align 4, !tbaa !35
  %.not.i.i.i = icmp eq ptr %i.f, %i.bj
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i.i, !llvm.loop !4648

bb.d:                                             ; preds = %.lr.ph.i
  %i.bn = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 5 uses
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !35 ; 2 uses
  %i.br = load i32, ptr %i.bo, align 4, !tbaa !35 ; 2 uses
  %i.bs = icmp slt i32 %i.bq, %i.br
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !35 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !35
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !35
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !35
  store i32 %i.bt, ptr %i.bn, align 4, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bo, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bn, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !4649

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ag, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ah, %bb.c ], [ %i.bp, %bb.g ] ; 7 uses
  %.024.lcssa.i182 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not6.i.i29.i = icmp eq ptr %i.af, %.024.lcssa.i
  %or.cond.i = or i1 %.not6.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %i.bu = udiv i64 %1, %i.b
  %i.bv = shl i64 %i.bu, 3
  %i.bw = or disjoint i64 %i.bv, 4
  %i.bx = mul i64 %2, %i.bw
  %i.by = add i64 %.024.lcssa.i182, -4
  %i.bz = add i64 %i.bx, %i.a
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = lshr i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check189 = icmp ult i64 %i.ca, 108
  br i1 %min.iters.check189, label %.lr.ph.i.i30.i.preheader308, label %vector.memcheck181

vector.memcheck181:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.cd = udiv i64 %1, %i.b
  %i.ce = shl i64 %i.cd, 3
  %i.cf = or disjoint i64 %i.ce, 4
  %i.cg = mul i64 %2, %i.cf
  %i.ch = add i64 %i.cg, %i.a
  %reass.sub293 = sub i64 %i.ch, %.024.lcssa.i182
  %.not292 = add i64 %reass.sub293, 3
  %i.ci = and i64 %.not292, -4                    ; 2 uses
  %scevgep183 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.ci
  %scevgep184 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ci
  %bound0185 = icmp ult ptr %scevgep183, %.0.lcssa.i
  %bound1186 = icmp ult ptr %scevgep184, %.024.lcssa.i
  %found.conflict187 = and i1 %bound0185, %bound1186
  br i1 %found.conflict187, label %.lr.ph.i.i30.i.preheader308, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck181
  %n.vec191 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cj = mul i64 %n.vec191, -4                   ; 2 uses
  %i.ck = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 2 uses
  %i.cm = mul i64 %index193, -4                   ; 2 uses
  %next.gep194 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cm ; 2 uses
  %next.gep195 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cm ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %next.gep195, i64 -16 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %next.gep195, i64 -32 ; 2 uses
  %wide.load196 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !35, !alias.scope !4650, !noalias !4653
  %wide.load197 = load <4 x i32>, ptr %i.co, align 4, !tbaa !35, !alias.scope !4650, !noalias !4653
  %i.cp = getelementptr inbounds i8, ptr %next.gep194, i64 -16 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep194, i64 -32 ; 2 uses
  %wide.load198 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !35, !alias.scope !4653
  %wide.load199 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !35, !alias.scope !4653
  store <4 x i32> %wide.load198, ptr %i.cn, align 4, !tbaa !35, !alias.scope !4650, !noalias !4653
  store <4 x i32> %wide.load199, ptr %i.co, align 4, !tbaa !35, !alias.scope !4650, !noalias !4653
  store <4 x i32> %wide.load196, ptr %i.cp, align 4, !tbaa !35, !alias.scope !4653
  store <4 x i32> %wide.load197, ptr %i.cq, align 4, !tbaa !35, !alias.scope !4653
  %index.next200 = add nuw i64 %index193, 8       ; 2 uses
  %i.cr = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.cr, label %middle.block201, label %vector.body192, !llvm.loop !4655

middle.block201:                                  ; preds = %vector.body192
  %cmp.n202 = icmp eq i64 %i.cc, %n.vec191
  br i1 %cmp.n202, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i.preheader308

.lr.ph.i.i30.i.preheader308:                      ; preds = %vector.memcheck181, %.lr.ph.i.i30.i.preheader, %middle.block201
  %.08.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck181 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ck, %middle.block201 ]
  %.057.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck181 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.cl, %middle.block201 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader308, %.lr.ph.i.i30.i
  %.08.i.i31.i = phi ptr [ %i.ct, %.lr.ph.i.i30.i ], [ %.08.i.i31.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %.057.i.i32.i = phi ptr [ %i.cs, %.lr.ph.i.i30.i ], [ %.057.i.i32.i.ph, %.lr.ph.i.i30.i.preheader308 ]
  %i.cs = getelementptr inbounds i8, ptr %.057.i.i32.i, i64 -4 ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.08.i.i31.i, i64 -4 ; 3 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !35
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !35
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !35
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !35
  %.not.i.i33.i = icmp eq ptr %i.af, %i.cs
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit, label %.lr.ph.i.i30.i, !llvm.loop !4656

_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block177, %middle.block201, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7swap_opclIPiS3_EET0_NS0_10backward_tET_S6_S4_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  br i1 %.not40.i44, label %._crit_edge.i52.us.preheader, label %.lr.ph.i45.preheader.preheader
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_:bb.a
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !4131  ; 2 uses
  %i.ft = icmp eq ptr %i.fn, %i.fs
  br i1 %i.ft, label %.sink.split.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = icmp eq ptr %i.fs, %i.r
  br i1 %i.fu, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

.sink.split.i:                                    ; preds = %bb.z, %bb.y
  %.sink.i = phi ptr [ %i.r, %bb.y ], [ %i.fn, %bb.z ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !4131
  %.pre191 = load ptr, ptr %1, align 8, !tbaa !4131
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit, %bb.z, %.sink.split.i
  %i.fv = phi ptr [ %i.r, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPiEES4_EET0_T_S6_S5_.exit ], [ %i.r, %bb.z ], [ %.pre191, %.sink.split.i ]
  store ptr %i.ba, ptr %3, align 8, !tbaa !4004
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 2 uses
  store ptr %i.fw, ptr %1, align 8, !tbaa !4131
  %i.fx = icmp ne i64 %.0140, 0
  %.neg = sext i1 %i.fx to i64
  %i.fy = add i64 %.0140, %.neg
  %i.fz = icmp ne i64 %i.az, 0
  %.neg24 = sext i1 %i.fz to i64
  %i.ga = add i64 %.sroa.speculated, %.neg24
  %i.gb = add i64 %.095139, -1                    ; 2 uses
  %.not = icmp eq i64 %i.gb, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5934

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPiEEEEvT_S8_RS8_T0_SA_SA_.exit, %bb.a
  %i.gc = load ptr, ptr %6, align 8, !tbaa !4004
  store ptr %i.gc, ptr %0, align 8, !tbaa !4004
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_13adaptive_xbufIiS3_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130  ; 7 uses
  %.not = icmp ult i64 %i.i, %.sroa.speculated
  %i.j = load ptr, ptr %3, align 8, !tbaa !5935, !nonnull !849 ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.j, ptr %7, align 8, !tbaa !3986
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !129
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.b
  store i64 0, ptr %i.k, align 8, !tbaa !129
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %4, align 8, !tbaa !127    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.n = icmp eq ptr %0, %1
  %i.o = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.n, %i.o
  br i1 %or.cond.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %0, align 4, !tbaa !35     ; 4 uses
  store i32 %i.p, ptr %i.m, align 4, !tbaa !35
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
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4, !tbaa !35
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !5937

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i.preheader24

.lr.ph.i.i.preheader24:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %storemerge10.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader24, %.lr.ph.i.i
  %storemerge10.i.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge10.i.i.ph, %.lr.ph.i.i.preheader24 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %storemerge10.i.i
  store i32 %i.p, ptr %i.w, align 4, !tbaa !35
  %storemerge.i.i = add i64 %storemerge10.i.i, 1  ; 2 uses
  %.not.i.i = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i, label %.lr.ph.i.i, !llvm.loop !5938

_ZN5boost7movelib13adaptive_xbufIiPimE16initialize_untilEmRi.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.e
  store i32 %i.p, ptr %0, align 4, !tbaa !35
  store ptr %i.j, ptr %6, align 8, !tbaa !3986
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.m, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES2_EEvT_SE_SE_T0_T1_NS0_9iter_sizeISE_E4typeE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.j, ptr %5, align 8, !tbaa !3986
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
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_13adaptive_xbufIiS2_mEEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 13 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.d, !llvm.loop !5939

_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 7 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129  ; 4 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  %.pre = load ptr, ptr %4, align 8, !tbaa !127   ; 7 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !35
  %wide.load149 = load <4 x i32>, ptr %i.ac, align 4, !tbaa !35
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !35
  store <4 x i32> %wide.load149, ptr %i.ad, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !5940

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
  %i.af = load i32, ptr %.079.i.i, align 4, !tbaa !35
  store i32 %i.af, ptr %.010.i.i, align 4, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i.i, !llvm.loop !5941

bb.f:                                             ; preds = %_ZN5boost7movelib11upper_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.idx26.i = shl i64 %i.s, 2                     ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.114.i, i64 %.idx26.i ; 5 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !127   ; 8 uses
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
  %wide.load161 = load <4 x i32>, ptr %next.gep160, align 4, !tbaa !35
  %wide.load162 = load <4 x i32>, ptr %i.at, align 4, !tbaa !35
  %i.au = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %wide.load161, ptr %next.gep159, align 4, !tbaa !35
  store <4 x i32> %wide.load162, ptr %i.au, align 4, !tbaa !35
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next163, %n.vec156
  br i1 %i.av, label %middle.block164, label %vector.body157, !llvm.loop !5942

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
  %i.aw = load i32, ptr %.079.i20.i, align 4, !tbaa !35
  store i32 %i.aw, ptr %.010.i19.i, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ax, %i.ai
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !5943

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block164, %bb.f
  %.0.lcssa.i22.i = phi ptr [ %i.aj, %bb.f ], [ %i.aq, %middle.block164 ], [ %i.ay, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i169 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.not10.i.i = icmp eq i64 %.idx26.i, %i.p
  br i1 %.not10.i.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.az = add i64 %i.d, -4
  %5 = shl i64 %i.s, 2
  %i.ba = add i64 %5, %.114.i147.le
  %i.bb = sub i64 %i.az, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 2
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.bb, 60
  br i1 %min.iters.check172, label %.lr.ph.i24.i.preheader299, label %vector.memcheck168

vector.memcheck168:                               ; preds = %.lr.ph.i24.i.preheader
  %i.be = add i64 %.idx26.i, %.114.i147.le
  %i.bf = sub i64 %i.be, %.0.lcssa.i22.i169
  %diff.check170 = icmp ugt i64 %i.bf, -32
  br i1 %diff.check170, label %.lr.ph.i24.i.preheader299, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck168
  %n.vec174 = and i64 %i.bd, 9223372036854775800  ; 3 uses
  %i.bg = shl i64 %n.vec174, 2                    ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ai, i64 %i.bg
  %i.bi = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bg
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %i.bj = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.ai, i64 %i.bj ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.0.lcssa.i22.i, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load179 = load <4 x i32>, ptr %next.gep177, align 4, !tbaa !35
  %wide.load180 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !35
  %i.bl = getelementptr i8, ptr %next.gep178, i64 16
  store <4 x i32> %wide.load179, ptr %next.gep178, align 4, !tbaa !35
  store <4 x i32> %wide.load180, ptr %i.bl, align 4, !tbaa !35
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.bm, label %middle.block182, label %vector.body175, !llvm.loop !5944

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.bd, %n.vec174
  br i1 %cmp.n183, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i.preheader299

.lr.ph.i24.i.preheader299:                        ; preds = %vector.memcheck168, %.lr.ph.i24.i.preheader, %middle.block182
  %.012.i.i.ph = phi ptr [ %i.ai, %vector.memcheck168 ], [ %i.ai, %.lr.ph.i24.i.preheader ], [ %i.bh, %middle.block182 ]
  %.0911.i.i.ph = phi ptr [ %.0.lcssa.i22.i, %vector.memcheck168 ], [ %.0.lcssa.i22.i, %.lr.ph.i24.i.preheader ], [ %i.bi, %middle.block182 ]
  br label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.preheader299, %.lr.ph.i24.i
  %.012.i.i = phi ptr [ %i.bo, %.lr.ph.i24.i ], [ %.012.i.i.ph, %.lr.ph.i24.i.preheader299 ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.bp, %.lr.ph.i24.i ], [ %.0911.i.i.ph, %.lr.ph.i24.i.preheader299 ] ; 2 uses
  %i.bn = load i32, ptr %.012.i.i, align 4, !tbaa !35
  store i32 %i.bn, ptr %.0911.i.i, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bo, %1
  br i1 %.not.i25.i, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, label %.lr.ph.i24.i, !llvm.loop !5945

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block182, %bb.e, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.bq = phi ptr [ %i.aj, %middle.block182 ], [ %i.aj, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i ], [ %.pre, %bb.e ], [ %.pre, %middle.block ], [ %i.aj, %.lr.ph.i24.i ], [ %.pre, %.lr.ph.i.i ] ; 3 uses
  store i64 %i.q, ptr %i.r, align 8, !tbaa !129
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.p ; 2 uses
  %.not24.i = icmp eq ptr %1, %.114.i
  br i1 %.not24.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 2 uses
  %.027.i = phi ptr [ %.1.i41, %bb.g ], [ %i.bq, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 7 uses
  %.01626.i = phi ptr [ %i.cp, %bb.g ], [ %.114.i, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 6 uses
  %.01725.i = phi ptr [ %.118.i, %bb.g ], [ %1, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit ] ; 3 uses
  %i.bs = icmp eq ptr %.01725.i, %2
  br i1 %i.bs, label %.lr.ph.i.i.i.preheader, label %bb.g

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i40
  %.027.i187.le = ptrtoaddr ptr %.027.i to i64    ; 2 uses
  %i.bt = ptrtoaddr ptr %i.bq to i64
  %i.bu = add i64 %i.bt, %i.d
  %i.bv = add i64 %i.bu, -4
  %i.bw = add i64 %.114.i147.le, %.027.i187.le
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check190 = icmp ult i64 %i.bx, 76
  br i1 %min.iters.check190, label %.lr.ph.i.i.i.preheader292, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.ca = shl i64 %indvar, 2
  %i.cb = add i64 %i.ca, %.114.i147.le
  %i.cc = sub i64 %.027.i187.le, %i.cb
  %diff.check188 = icmp ugt i64 %i.cc, -32
  br i1 %diff.check188, label %.lr.ph.i.i.i.preheader292, label %vector.ph191

vector.ph191:                                     ; preds = %vector.memcheck186
  %n.vec192 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec192, 2                    ; 2 uses
  %i.ce = getelementptr i8, ptr %.01626.i, i64 %i.cd
  %i.cf = getelementptr i8, ptr %.027.i, i64 %i.cd
  br label %vector.body193

vector.body193:                                   ; preds = %vector.body193, %vector.ph191
  %index194 = phi i64 [ 0, %vector.ph191 ], [ %index.next199, %vector.body193 ] ; 2 uses
  %i.cg = shl i64 %index194, 2                    ; 2 uses
  %next.gep195 = getelementptr i8, ptr %.01626.i, i64 %i.cg ; 2 uses
  %next.gep196 = getelementptr i8, ptr %.027.i, i64 %i.cg ; 2 uses
  %i.ch = getelementptr i8, ptr %next.gep196, i64 16
  %wide.load197 = load <4 x i32>, ptr %next.gep196, align 4, !tbaa !35
  %wide.load198 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !35
  %i.ci = getelementptr i8, ptr %next.gep195, i64 16
  store <4 x i32> %wide.load197, ptr %next.gep195, align 4, !tbaa !35
  store <4 x i32> %wide.load198, ptr %i.ci, align 4, !tbaa !35
  %index.next199 = add nuw i64 %index194, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next199, %n.vec192
  br i1 %i.cj, label %middle.block200, label %vector.body193, !llvm.loop !5946

middle.block200:                                  ; preds = %vector.body193
  %cmp.n201 = icmp eq i64 %i.bz, %n.vec192
  br i1 %cmp.n201, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i.preheader292

.lr.ph.i.i.i.preheader292:                        ; preds = %vector.memcheck186, %.lr.ph.i.i.i.preheader, %middle.block200
  %.010.i.i.i.ph = phi ptr [ %.01626.i, %vector.memcheck186 ], [ %.01626.i, %.lr.ph.i.i.i.preheader ], [ %i.ce, %middle.block200 ]
  %.079.i.i.i.ph = phi ptr [ %.027.i, %vector.memcheck186 ], [ %.027.i, %.lr.ph.i.i.i.preheader ], [ %i.cf, %middle.block200 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader292, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader292 ] ; 2 uses
  %.079.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader292 ] ; 2 uses
  %i.ck = load i32, ptr %.079.i.i.i, align 4, !tbaa !35
  store i32 %i.ck, ptr %.010.i.i.i, align 4, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 4 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cl, %i.br
  br i1 %.not.i.i.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i, !llvm.loop !5947

bb.g:                                             ; preds = %.lr.ph.i40
  %i.cn = load i32, ptr %.027.i, align 4, !tbaa !35 ; 2 uses
  %i.co = load i32, ptr %.01725.i, align 4, !tbaa !35 ; 2 uses
  %.not20.i = icmp slt i32 %i.cn, %i.co           ; 2 uses
  %.sink.i = tail call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.co)
  %.118.idx.i = select i1 %.not20.i, i64 0, i64 4
  %.118.i = getelementptr inbounds nuw i8, ptr %.01725.i, i64 %.118.idx.i
  %.1.idx.i = select i1 %.not20.i, i64 4, i64 0
  %.1.i41 = getelementptr inbounds nuw i8, ptr %.027.i, i64 %.1.idx.i ; 2 uses
  store i32 %.sink.i, ptr %.01626.i, align 4, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %.01626.i, i64 4
  %.not.i42 = icmp eq ptr %.1.i41, %i.br
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i42, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i40, !llvm.loop !4495

.lr.ph.i44:                                       ; preds = %bb.c
  %i.cq = ashr exact i64 %i.h, 2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i44
  %.018.i45 = phi i64 [ %i.cq, %.lr.ph.i44 ], [ %.1.i50, %bb.h ] ; 2 uses
  %.01317.i46 = phi ptr [ %1, %.lr.ph.i44 ], [ %.114.i49, %bb.h ] ; 2 uses
  %i.cr = lshr i64 %.018.i45, 1                   ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.01317.i46, i64 %i.cr ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !35
  %.not15.i47 = icmp slt i32 %i.b, %i.ct          ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %.neg.i48 = xor i64 %i.cr, -1
  %i.cv = add i64 %.018.i45, %.neg.i48
  %.114.i49 = select i1 %.not15.i47, ptr %.01317.i46, ptr %i.cu ; 10 uses
  %.1.i50 = select i1 %.not15.i47, i64 %i.cr, i64 %i.cv ; 2 uses
  %.not.i51 = icmp eq i64 %.1.i50, 0
  br i1 %.not.i51, label %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit, label %bb.h, !llvm.loop !4321

_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.h
  %.114.i49259.le = ptrtoaddr ptr %.114.i49 to i64
  %i.cw = ptrtoint ptr %.114.i49 to i64
  %i.cx = sub i64 %i.cw, %i.d                     ; 3 uses
  %i.cy = ashr exact i64 %i.cx, 2                 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !129 ; 4 uses
  %.not.i53 = icmp ugt i64 %i.cy, %i.da
  br i1 %.not.i53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.not8.i.i54 = icmp eq ptr %.114.i49, %1
  %.pre117 = load ptr, ptr %4, align 8, !tbaa !127 ; 7 uses
  br i1 %.not8.i.i54, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i.i56.preheader

.lr.ph.i.i56.preheader:                           ; preds = %bb.i
  %.pre117205 = ptrtoaddr ptr %.pre117 to i64
  %i.db = ptrtoaddr ptr %.114.i49 to i64
  %i.dc = add i64 %i.db, -4
  %i.dd = sub i64 %i.dc, %i.d                     ; 2 uses
  %i.de = lshr i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 2 uses
  %min.iters.check208 = icmp ult i64 %i.dd, 44
  %i.dg = sub i64 %i.d, %.pre117205
  %diff.check206 = icmp ugt i64 %i.dg, -32
  %or.cond280 = select i1 %min.iters.check208, i1 true, i1 %diff.check206
  br i1 %or.cond280, label %.lr.ph.i.i56.preheader290, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.i.i56.preheader
  %n.vec210 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec210, 2                    ; 2 uses
  %i.di = getelementptr i8, ptr %.pre117, i64 %i.dh
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %i.dk = shl i64 %index212, 2                    ; 2 uses
  %next.gep213 = getelementptr i8, ptr %.pre117, i64 %i.dk ; 2 uses
  %next.gep214 = getelementptr i8, ptr %1, i64 %i.dk ; 2 uses
  %i.dl = getelementptr i8, ptr %next.gep214, i64 16
  %wide.load215 = load <4 x i32>, ptr %next.gep214, align 4, !tbaa !35
  %wide.load216 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !35
  %i.dm = getelementptr i8, ptr %next.gep213, i64 16
  store <4 x i32> %wide.load215, ptr %next.gep213, align 4, !tbaa !35
  store <4 x i32> %wide.load216, ptr %i.dm, align 4, !tbaa !35
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.dn, label %middle.block218, label %vector.body211, !llvm.loop !5948

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %i.df, %n.vec210
  br i1 %cmp.n219, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i.i56.preheader290

.lr.ph.i.i56.preheader290:                        ; preds = %.lr.ph.i.i56.preheader, %middle.block218
  %.010.i.i57.ph = phi ptr [ %.pre117, %.lr.ph.i.i56.preheader ], [ %i.di, %middle.block218 ]
  %.079.i.i58.ph = phi ptr [ %1, %.lr.ph.i.i56.preheader ], [ %i.dj, %middle.block218 ]
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader290, %.lr.ph.i.i56
  %.010.i.i57 = phi ptr [ %i.dq, %.lr.ph.i.i56 ], [ %.010.i.i57.ph, %.lr.ph.i.i56.preheader290 ] ; 2 uses
  %.079.i.i58 = phi ptr [ %i.dp, %.lr.ph.i.i56 ], [ %.079.i.i58.ph, %.lr.ph.i.i56.preheader290 ] ; 2 uses
  %i.do = load i32, ptr %.079.i.i58, align 4, !tbaa !35
  store i32 %i.do, ptr %.010.i.i57, align 4, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %.079.i.i58, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i57, i64 4
  %.not.i.i59 = icmp eq ptr %i.dp, %.114.i49
  br i1 %.not.i.i59, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i.i56, !llvm.loop !5949

bb.j:                                             ; preds = %_ZN5boost7movelib11lower_boundIPiiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SE_SE_RKT0_T1_.exit
  %.idx26.i60 = shl i64 %i.da, 2                  ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %.idx26.i60 ; 5 uses
  %i.ds = load ptr, ptr %4, align 8, !tbaa !127   ; 8 uses
  %.not8.i17.i61 = icmp eq i64 %i.da, 0
  br i1 %.not8.i17.i61, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66, label %.lr.ph.i18.i62.preheader

.lr.ph.i18.i62.preheader:                         ; preds = %bb.j
  %i.dt = ptrtoaddr ptr %i.ds to i64
  %i.du = add i64 %.idx26.i60, -4                 ; 2 uses
  %i.dv = lshr exact i64 %i.du, 2
  %i.dw = add nuw nsw i64 %i.dv, 1                ; 2 uses
  %min.iters.check225 = icmp ult i64 %i.du, 44
  %i.dx = sub i64 %i.d, %i.dt
  %diff.check223 = icmp ugt i64 %i.dx, -32
  %or.cond281 = select i1 %min.iters.check225, i1 true, i1 %diff.check223
  br i1 %or.cond281, label %.lr.ph.i18.i62.preheader289, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i18.i62.preheader
  %n.vec227 = and i64 %i.dw, 9223372036854775800  ; 3 uses
  %i.dy = shl i64 %n.vec227, 2                    ; 2 uses
  %i.dz = getelementptr i8, ptr %i.ds, i64 %i.dy  ; 2 uses
  %i.ea = getelementptr i8, ptr %1, i64 %i.dy
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next234, %vector.body228 ] ; 2 uses
  %i.eb = shl i64 %index229, 2                    ; 2 uses
  %next.gep230 = getelementptr i8, ptr %i.ds, i64 %i.eb ; 2 uses
  %next.gep231 = getelementptr i8, ptr %1, i64 %i.eb ; 2 uses
  %i.ec = getelementptr i8, ptr %next.gep231, i64 16
  %wide.load232 = load <4 x i32>, ptr %next.gep231, align 4, !tbaa !35
  %wide.load233 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !35
  %i.ed = getelementptr i8, ptr %next.gep230, i64 16
  store <4 x i32> %wide.load232, ptr %next.gep230, align 4, !tbaa !35
  store <4 x i32> %wide.load233, ptr %i.ed, align 4, !tbaa !35
  %index.next234 = add nuw i64 %index229, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.ee, label %middle.block235, label %vector.body228, !llvm.loop !5950

middle.block235:                                  ; preds = %vector.body228
  %cmp.n236 = icmp eq i64 %i.dw, %n.vec227
  br i1 %cmp.n236, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66, label %.lr.ph.i18.i62.preheader289

.lr.ph.i18.i62.preheader289:                      ; preds = %.lr.ph.i18.i62.preheader, %middle.block235
  %.010.i19.i63.ph = phi ptr [ %i.ds, %.lr.ph.i18.i62.preheader ], [ %i.dz, %middle.block235 ]
  %.079.i20.i64.ph = phi ptr [ %1, %.lr.ph.i18.i62.preheader ], [ %i.ea, %middle.block235 ]
  br label %.lr.ph.i18.i62

.lr.ph.i18.i62:                                   ; preds = %.lr.ph.i18.i62.preheader289, %.lr.ph.i18.i62
  %.010.i19.i63 = phi ptr [ %i.eh, %.lr.ph.i18.i62 ], [ %.010.i19.i63.ph, %.lr.ph.i18.i62.preheader289 ] ; 2 uses
  %.079.i20.i64 = phi ptr [ %i.eg, %.lr.ph.i18.i62 ], [ %.079.i20.i64.ph, %.lr.ph.i18.i62.preheader289 ] ; 2 uses
  %i.ef = load i32, ptr %.079.i20.i64, align 4, !tbaa !35
  store i32 %i.ef, ptr %.010.i19.i63, align 4, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %.079.i20.i64, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.010.i19.i63, i64 4 ; 2 uses
  %.not.i21.i65 = icmp eq ptr %i.eg, %i.dr
  br i1 %.not.i21.i65, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66, label %.lr.ph.i18.i62, !llvm.loop !5951

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66:     ; preds = %.lr.ph.i18.i62, %middle.block235, %bb.j
  %.0.lcssa.i22.i67 = phi ptr [ %i.ds, %bb.j ], [ %i.dz, %middle.block235 ], [ %i.eh, %.lr.ph.i18.i62 ] ; 5 uses
  %.0.lcssa.i22.i67240 = ptrtoaddr ptr %.0.lcssa.i22.i67 to i64
  %.not10.i.i68 = icmp eq i64 %.idx26.i60, %i.cx
  br i1 %.not10.i.i68, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69.preheader

.lr.ph.i24.i69.preheader:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66
  %i.ei = ptrtoaddr ptr %.114.i49 to i64
  %i.ej = add i64 %i.ei, -4
  %6 = shl i64 %i.da, 2
  %i.ek = add i64 %6, %i.d
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = lshr i64 %i.el, 2
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check243 = icmp ult i64 %i.el, 60
  br i1 %min.iters.check243, label %.lr.ph.i24.i69.preheader288, label %vector.memcheck239

vector.memcheck239:                               ; preds = %.lr.ph.i24.i69.preheader
  %i.eo = add i64 %.idx26.i60, %i.d
  %i.ep = sub i64 %i.eo, %.0.lcssa.i22.i67240
  %diff.check241 = icmp ugt i64 %i.ep, -32
  br i1 %diff.check241, label %.lr.ph.i24.i69.preheader288, label %vector.ph244

vector.ph244:                                     ; preds = %vector.memcheck239
  %n.vec245 = and i64 %i.en, 9223372036854775800  ; 3 uses
  %i.eq = shl i64 %n.vec245, 2                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.dr, i64 %i.eq
  %i.es = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.eq
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next252, %vector.body246 ] ; 2 uses
  %i.et = shl i64 %index247, 2                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.dr, i64 %i.et ; 2 uses
  %next.gep249 = getelementptr i8, ptr %.0.lcssa.i22.i67, i64 %i.et ; 2 uses
  %i.eu = getelementptr i8, ptr %next.gep248, i64 16
  %wide.load250 = load <4 x i32>, ptr %next.gep248, align 4, !tbaa !35
  %wide.load251 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !35
  %i.ev = getelementptr i8, ptr %next.gep249, i64 16
  store <4 x i32> %wide.load250, ptr %next.gep249, align 4, !tbaa !35
  store <4 x i32> %wide.load251, ptr %i.ev, align 4, !tbaa !35
  %index.next252 = add nuw i64 %index247, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next252, %n.vec245
  br i1 %i.ew, label %middle.block253, label %vector.body246, !llvm.loop !5952

middle.block253:                                  ; preds = %vector.body246
  %cmp.n254 = icmp eq i64 %i.en, %n.vec245
  br i1 %cmp.n254, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69.preheader288

.lr.ph.i24.i69.preheader288:                      ; preds = %vector.memcheck239, %.lr.ph.i24.i69.preheader, %middle.block253
  %.012.i.i70.ph = phi ptr [ %i.dr, %vector.memcheck239 ], [ %i.dr, %.lr.ph.i24.i69.preheader ], [ %i.er, %middle.block253 ]
  %.0911.i.i71.ph = phi ptr [ %.0.lcssa.i22.i67, %vector.memcheck239 ], [ %.0.lcssa.i22.i67, %.lr.ph.i24.i69.preheader ], [ %i.es, %middle.block253 ]
  br label %.lr.ph.i24.i69

.lr.ph.i24.i69:                                   ; preds = %.lr.ph.i24.i69.preheader288, %.lr.ph.i24.i69
  %.012.i.i70 = phi ptr [ %i.ey, %.lr.ph.i24.i69 ], [ %.012.i.i70.ph, %.lr.ph.i24.i69.preheader288 ] ; 2 uses
  %.0911.i.i71 = phi ptr [ %i.ez, %.lr.ph.i24.i69 ], [ %.0911.i.i71.ph, %.lr.ph.i24.i69.preheader288 ] ; 2 uses
  %i.ex = load i32, ptr %.012.i.i70, align 4, !tbaa !35
  store i32 %i.ex, ptr %.0911.i.i71, align 4, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i70, i64 4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i71, i64 4
  %.not.i25.i72 = icmp eq ptr %i.ey, %.114.i49
  br i1 %.not.i25.i72, label %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, label %.lr.ph.i24.i69, !llvm.loop !5953

_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73: ; preds = %.lr.ph.i.i56, %.lr.ph.i24.i69, %middle.block218, %middle.block253, %bb.i, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66
  %i.fa = phi ptr [ %i.ds, %middle.block253 ], [ %i.ds, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i66 ], [ %.pre117, %bb.i ], [ %.pre117, %middle.block218 ], [ %i.ds, %.lr.ph.i24.i69 ], [ %.pre117, %.lr.ph.i.i56 ] ; 4 uses
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !129
  %.not28.i = icmp eq ptr %.114.i49, %1
  br i1 %.not28.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i74.preheader

.lr.ph.i74.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.cx
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader, %bb.k
  %indvar260 = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %indvar.next261, %bb.k ] ; 2 uses
  %.031.i = phi ptr [ %1, %.lr.ph.i74.preheader ], [ %.031..i, %bb.k ] ; 3 uses
  %.01930.i = phi ptr [ %i.fb, %.lr.ph.i74.preheader ], [ %..01930.i, %bb.k ] ; 7 uses
  %.02129.i = phi ptr [ %.114.i49, %.lr.ph.i74.preheader ], [ %i.gc, %bb.k ] ; 5 uses
  %i.fc = icmp eq ptr %0, %.031.i
  br i1 %i.fc, label %.lr.ph.i.i.i77.preheader, label %bb.k

.lr.ph.i.i.i77.preheader:                         ; preds = %.lr.ph.i74
  %.01930.i258.le = ptrtoaddr ptr %.01930.i to i64 ; 2 uses
  %i.fd = ptrtoaddr ptr %i.fa to i64
  %i.fe = add i64 %.01930.i258.le, -4
  %i.ff = sub i64 %i.fe, %i.fd                    ; 2 uses
  %i.fg = lshr i64 %i.ff, 2
  %i.fh = add nuw nsw i64 %i.fg, 1                ; 2 uses
  %min.iters.check264 = icmp ult i64 %i.ff, 92
  br i1 %min.iters.check264, label %.lr.ph.i.i.i77.preheader282, label %vector.memcheck257

vector.memcheck257:                               ; preds = %.lr.ph.i.i.i77.preheader
  %i.fi = shl i64 %indvar260, 2
  %i.fj = sub i64 %i.fi, %.114.i49259.le
  %i.fk = add i64 %i.fj, %.01930.i258.le
  %i.fl = add i64 %i.fk, -1
  %diff.check262 = icmp ult i64 %i.fl, 31
  br i1 %diff.check262, label %.lr.ph.i.i.i77.preheader282, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck257
  %n.vec266 = and i64 %i.fh, 9223372036854775800  ; 3 uses
  %i.fm = mul i64 %n.vec266, -4                   ; 2 uses
  %i.fn = getelementptr i8, ptr %.02129.i, i64 %i.fm
  %i.fo = getelementptr i8, ptr %.01930.i, i64 %i.fm
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph265
  %index268 = phi i64 [ 0, %vector.ph265 ], [ %index.next273, %vector.body267 ] ; 2 uses
  %i.fp = mul i64 %index268, -4                   ; 2 uses
  %next.gep269 = getelementptr i8, ptr %.02129.i, i64 %i.fp ; 2 uses
  %next.gep270 = getelementptr i8, ptr %.01930.i, i64 %i.fp ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %next.gep270, i64 -16
  %i.fr = getelementptr inbounds i8, ptr %next.gep270, i64 -32
  %wide.load271 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !35
  %wide.load272 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !35
  %i.fs = getelementptr inbounds i8, ptr %next.gep269, i64 -16
  %i.ft = getelementptr inbounds i8, ptr %next.gep269, i64 -32
  store <4 x i32> %wide.load271, ptr %i.fs, align 4, !tbaa !35
  store <4 x i32> %wide.load272, ptr %i.ft, align 4, !tbaa !35
  %index.next273 = add nuw i64 %index268, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.fu, label %middle.block274, label %vector.body267, !llvm.loop !5954

middle.block274:                                  ; preds = %vector.body267
  %cmp.n275 = icmp eq i64 %i.fh, %n.vec266
  br i1 %cmp.n275, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i77.preheader282

.lr.ph.i.i.i77.preheader282:                      ; preds = %vector.memcheck257, %.lr.ph.i.i.i77.preheader, %middle.block274
  %.010.i.i.i78.ph = phi ptr [ %.02129.i, %vector.memcheck257 ], [ %.02129.i, %.lr.ph.i.i.i77.preheader ], [ %i.fn, %middle.block274 ]
  %.079.i.i.i79.ph = phi ptr [ %.01930.i, %vector.memcheck257 ], [ %.01930.i, %.lr.ph.i.i.i77.preheader ], [ %i.fo, %middle.block274 ]
  br label %.lr.ph.i.i.i77

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i77.preheader282, %.lr.ph.i.i.i77
  %.010.i.i.i78 = phi ptr [ %i.fw, %.lr.ph.i.i.i77 ], [ %.010.i.i.i78.ph, %.lr.ph.i.i.i77.preheader282 ]
  %.079.i.i.i79 = phi ptr [ %i.fv, %.lr.ph.i.i.i77 ], [ %.079.i.i.i79.ph, %.lr.ph.i.i.i77.preheader282 ]
  %i.fv = getelementptr inbounds i8, ptr %.079.i.i.i79, i64 -4 ; 3 uses
  %i.fw = getelementptr inbounds i8, ptr %.010.i.i.i78, i64 -4 ; 2 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !35
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !35
  %.not.i.i.i80 = icmp eq ptr %i.fa, %i.fv
  br i1 %.not.i.i.i80, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i.i.i77, !llvm.loop !5955

bb.k:                                             ; preds = %.lr.ph.i74
  %i.fy = getelementptr inbounds i8, ptr %.01930.i, i64 -4 ; 2 uses
  %i.fz = getelementptr inbounds i8, ptr %.031.i, i64 -4 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !35 ; 2 uses
  %i.gb = load i32, ptr %i.fy, align 4, !tbaa !35 ; 2 uses
  %.not24.i75 = icmp slt i32 %i.ga, %i.gb         ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.02129.i, i64 -4 ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.ga, i32 %i.gb)
  %..01930.i = select i1 %.not24.i75, ptr %i.fy, ptr %.01930.i ; 2 uses
  %.031..i = select i1 %.not24.i75, ptr %.031.i, ptr %i.fz
  store i32 %..i, ptr %i.gc, align 4, !tbaa !35
  %.not.i76 = icmp eq ptr %i.fa, %..01930.i
  %indvar.next261 = add i64 %indvar260, 1
  br i1 %.not.i76, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit, label %.lr.ph.i74, !llvm.loop !5956

_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEPiSD_NS0_7move_opEEEvT0_SF_T1_SG_SG_T_T2_.exit: ; preds = %bb.g, %.lr.ph.i.i.i, %bb.k, %.lr.ph.i.i.i77, %middle.block200, %middle.block274, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit73, %_ZN5boost7movelib13adaptive_xbufIiPimE11move_assignIS2_EEvT_m.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPiS2_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef align 8 dead_on_return %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 7 uses
  %i.b = ptrtoaddr ptr %5 to i64                  ; 6 uses
  %8 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::range_xbuf", align 8 ; 6 uses
  %10 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %11 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %12 = alloca %"struct.boost::movelib::antistable", align 8 ; 2 uses
  %i.c = icmp ne i64 %4, 0
  %i.d = icmp ne i64 %3, 0
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %.not = icmp ugt i64 %3, %6
  %.not76 = icmp ugt i64 %4, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %6
  store ptr %5, ptr %9, align 8, !tbaa !4374
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %5, ptr %i.f, align 8, !tbaa !4376
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.g, align 8, !tbaa !4377
  %i.h = load ptr, ptr %7, align 8, !tbaa !5935, !nonnull !849
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.h, ptr %8, align 8, !tbaa !3986
  call void @_ZN5boost7movelib17op_buffered_mergeIPiNS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opENS0_10range_xbufIS2_mSE_EEEEvT_SH_SH_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  %i.l = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %.not91 = icmp slt i32 %i.k, %i.l
  br i1 %.not91, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test11movable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.loopexit, %.preheader.i12
  %.sroa.0.0..sroa.0.0..sroa.0.0.22 = phi ptr [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22.pre, %.preheader.i12 ], [ %i.bw, %._crit_edge.i18.loopexit ] ; 2 uses
  %.sroa.02.0.lcssa.i19 = phi ptr [ %i.bo, %.preheader.i12 ], [ %.sroa.02.1.i16, %._crit_edge.i18.loopexit ] ; 2 uses
  %i.by = load i32, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !865, !noalias !8419
  store i32 %i.by, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, align 4, !tbaa !865, !noalias !8419
  store i32 0, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !865, !noalias !8419
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, i64 4
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph.i4
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !865, !noalias !8419 ; 4 uses
  %i.cb = load i32, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., align 4, !tbaa !865, !noalias !8419 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.preheader7.i10, label %bb.v

.preheader7.i10:                                  ; preds = %bb.s, %bb.t
  %i.cd = phi ptr [ %i.ce, %bb.t ], [ %i.bo, %bb.s ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 4 uses
  %.not5.i11 = icmp eq ptr %i.ce, %i.bj
  br i1 %.not5.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader7.i10
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !865, !noalias !8419
  %i.cg = icmp slt i32 %i.ca, %i.cf
  br i1 %i.cg, label %bb.u, label %.preheader7.i10, !llvm.loop !8413

bb.u:                                             ; preds = %bb.t, %.preheader7.i10
  store ptr %i.ce, ptr %.sroa.031, align 8, !tbaa !909, !noalias !8419
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21 = load ptr, ptr %.sroa.0, align 8, !tbaa !909, !noalias !8419 ; 2 uses
  store i32 %i.ca, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !865, !noalias !8419
  store i32 0, ptr %i.bo, align 4, !tbaa !865, !noalias !8419
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ch = icmp slt i32 %i.cb, %i.ca               ; 2 uses
  %..i5 = select i1 %i.ch, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bo
  %.25.i6 = select i1 %i.ch, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.ci, ptr %.sink23.i8, align 8, !tbaa !909, !noalias !8419
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !909, !noalias !8419 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bj
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !8414

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !1987, !noalias !8419
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge94
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.p, %._crit_edge94 ], [ %i.ab, %.preheader66 ], [ %i.r, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.ax, %._crit_edge.i ], [ %i.bz, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test11movable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre, %.split ], [ %i.ab, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !909
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.109") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !1987   ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !928
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1839 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !850    ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter83 = and i64 %3, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !865
  store i32 %i.k, ptr %i.i, align 4, !tbaa !865
  store i32 0, ptr %4, align 4, !tbaa !865
  %i.l = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !865
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !865
  %i.s = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !865
  store i32 %i.w, ptr %i.v, align 4, !tbaa !865
  store i32 0, ptr %i.u, align 4, !tbaa !865
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !8422

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !865
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !865
  store i32 0, ptr %i.ag, align 4, !tbaa !865
  %i.aj = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !865
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !865
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !865
  store i32 %i.au, ptr %i.as, align 4, !tbaa !865
  store i32 0, ptr %i.ar, align 4, !tbaa !865
  %i.av = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !8423

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl nuw nsw i64 %i.e, 2
  %5 = add i64 %i.az, %i.h
  %i.ba = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bb = add i64 %6, %i.ac
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bf = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = add i64 %i.bf, %i.h
  %i.bi = add i64 %i.bh, -4
  %i.bj = shl i64 %3, 2                           ; 2 uses
  %i.bk = add i64 %i.bj, %i.ac
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 %i.bg, %i.bm
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bn
  %i.bo = add nsw i64 %i.bf, -4
  %i.bp = add i64 %i.bj, %i.bm
  %i.bq = sub i64 %i.bo, %i.bp
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %i.ag
  %bound1 = icmp ult ptr %scevgep22, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ag, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bu ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !865, !alias.scope !8424
  %wide.load24 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !865, !alias.scope !8424
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !865, !alias.scope !8427, !noalias !8424
  store <4 x i32> %wide.load24, ptr %i.by, align 4, !tbaa !865, !alias.scope !8427, !noalias !8424
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !865, !alias.scope !8424
  store <4 x i32> zeroinitializer, ptr %i.bw, align 4, !tbaa !865, !alias.scope !8424
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !8429

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !865
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !865
  store i32 0, ptr %i.ca, align 4, !tbaa !865
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ca
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !8430

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cd = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cd
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.ce = and i64 %3, 7
  %i.cf = shl i64 %n.vec35, 2                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ci = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !865, !alias.scope !8431
  %wide.load41 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !865, !alias.scope !8431
  %i.ck = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !865, !alias.scope !8434, !noalias !8431
  store <4 x i32> %wide.load41, ptr %i.ck, align 4, !tbaa !865, !alias.scope !8434, !noalias !8431
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !865, !alias.scope !8431
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !865, !alias.scope !8431
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cl, label %middle.block43, label %vector.body36, !llvm.loop !8436

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ce, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block43 ] ; 2 uses
  %i.cm = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cn = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.co = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !865
  store i32 %i.co, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !865
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !865
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !8437

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = icmp ult i64 %i.cm, 3
  br i1 %i.cr, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !865
  store i32 %i.cs, ptr %.048.i.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !865
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !865
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !865
  store i32 0, ptr %i.ct, align 4, !tbaa !865
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !865
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !865
  store i32 0, ptr %i.cw, align 4, !tbaa !865
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = load i32, ptr %i.cz, align 4, !tbaa !865
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !865
  store i32 0, ptr %i.cz, align 4, !tbaa !865
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !8438

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i49.i.i.i ], [ %i.df, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !865
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !865
  %i.dh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dj, %i.i
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i53.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !6420

.lr.ph.i.i53.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i53.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i53.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeET0_RT1_:bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !865
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !865
  store i32 0, ptr %.pn36.i, align 4, !tbaa !865
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !865  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !865
  %i.p = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !865
  store i32 0, ptr %i.m, align 4, !tbaa !865
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8992

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !8993

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub i64 %1, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !8475
  %.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.w = load ptr, ptr %2, align 8, !tbaa !8392
  tail call void @_ZN5boost7movelib10merge_sortIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.w)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !85
  %i.x = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !8475
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !8390 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %.not.i31 = icmp ult i64 %i.ac, %i.s
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !8392
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  call void @_ZN5boost7movelib10merge_sortIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.ae)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef nonnull %i.y)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !85
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %1, %i.ah
  %i.an = add i64 %i.am, %i.aj
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !85
  %i.ap = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !85  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = sub i64 %1, %i.aq
  %i.at = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !85
  %i.av = load i64, ptr %i.c, align 8, !tbaa !85
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %i.at, ptr noundef %0, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !865 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !865
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !865
  %i.j = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !865
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !865
  store i32 0, ptr %.pn36.i, align 4, !tbaa !865
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !865  ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !865
  %i.p = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !865
  store i32 0, ptr %i.m, align 4, !tbaa !865
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !8992

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !8993

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.e, 1                         ; 6 uses
  %i.s = sub i64 %i.e, %i.r                       ; 10 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test11movable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.u)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %cond = icmp eq i64 %i.s, 0
  br i1 %cond, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %2, %bb.g ] ; 11 uses
  %.01626.i.i = phi ptr [ %i.ay, %bb.k ], [ %0, %bb.g ] ; 8 uses
  %.01725.i.i = phi ptr [ %.118.i.i, %bb.k ], [ %i.u, %bb.g ] ; 5 uses
  %i.w = icmp eq ptr %.01725.i.i, %1
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i65.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = add i64 %i.d, %i.a
  %i.x = add i64 %3, -4
  %4 = shl i64 %i.r, 2
  %i.y = add i64 %4, %.027.i.i65.le
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %indvar, 2
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = add i64 %i.d, %i.a
  %i.af = add i64 %i.ae, -4
  %i.ag = shl i64 %i.r, 2
  %i.ah = add i64 %i.ag, %.027.i.i65.le
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep67 = getelementptr i8, ptr %.027.i.i, i64 4
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.aj
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep68
  %bound1 = icmp ult ptr %.027.i.i, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01626.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.027.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.an ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.027.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep69, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !865, !alias.scope !8994
  %wide.load70 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !865, !alias.scope !8994
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !865, !alias.scope !8997, !noalias !8994
  store <4 x i32> %wide.load70, ptr %i.ap, align 4, !tbaa !865, !alias.scope !8997, !noalias !8994
  store <4 x i32> zeroinitializer, ptr %next.gep69, align 4, !tbaa !865, !alias.scope !8994
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !865, !alias.scope !8994
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !8999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i.preheader73

.lr.ph.i.i.i.i.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader73, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !865
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !865
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.v
  br i1 %.not.i.i.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !9000

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.au = load i32, ptr %.027.i.i, align 4, !tbaa !865 ; 2 uses
  %i.av = load i32, ptr %.01725.i.i, align 4, !tbaa !865 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.au, %i.av
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.av, ptr %.01626.i.i, align 4, !tbaa !865
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !865
  %i.aw = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.au, ptr %.01626.i.i, align 4, !tbaa !865
  store i32 0, ptr %.027.i.i, align 4, !tbaa !865
  %i.ax = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.aw, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i, !llvm.loop !9001

.lr.ph.i27.preheader:                             ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %xtraiter79 = and i64 %i.s, 3                   ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.in.i.prol = phi i64 [ %i.az, %.lr.ph.i27.prol ], [ %i.s, %.lr.ph.i27.preheader ]
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.az = add i64 %.in.i.prol, -1                 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !865
  %i.bb = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !9002

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.in.i.unr = phi i64 [ %i.s, %.lr.ph.i27.preheader ], [ %i.az, %.lr.ph.i27.prol ]
  %i.bd = sub i64 %i.r, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27
  %.in.i = phi i64 [ %i.br, %.lr.ph.i27 ], [ %.in.i.unr, %.lr.ph.i27.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !865
  %i.bh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !865
  %i.bl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -12
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !865
  %i.bp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.br = add i64 %.in.i, -4                      ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !865
  %i.bt = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %.not.i28.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i28.3, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test11movable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27, !llvm.loop !9003

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.not1.i30 = icmp eq i64 %i.s, 0
  br i1 %.not1.i30, label %_ZN5boost7movelib10destruct_nINS_9container4test11movable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.in.i32.prol = phi i64 [ %i.bw, %.lr.ph.i31.prol ], [ %i.s, %.lr.ph.i31.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.bw = add i64 %.in.i32.prol, -1               ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !865
  %i.by = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !9004

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.in.i32.unr = phi i64 [ %i.s, %.lr.ph.i31.preheader ], [ %i.bw, %.lr.ph.i31.prol ]
  %i.ca = sub i64 %i.r, %i.e
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5boost7movelib10destruct_nINS_9container4test11movable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.in.i32 = phi i64 [ %i.co, %.lr.ph.i31 ], [ %.in.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !865
  %i.ce = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !865
  %i.ci = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cl = getelementptr i8, ptr %i.ck, i64 -12
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !865
  %i.cm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.co = add i64 %.in.i32, -4                    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.co
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !865
  %i.cq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !865
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !865
  %i.ae = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !865
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !865
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !865
  %i.ah = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !8561

_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !9171

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !865
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !865
  %i.aw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !865
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !865
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !865
  %i.az = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !8561

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !865
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !865
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !865 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !865
  %i.bh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !865
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !865
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !865
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !865
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !865
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !865
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !9170

_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !865
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !865
  %i.bp = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !865
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !865
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !865
  %i.bs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !8561

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !865
  store i32 0, ptr %.079.i.i, align 4, !tbaa !865
  %i.ca = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !865
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !865
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !865
  %i.cd = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !8561

_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test11movable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub i64 %.04089, %.04287                ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !9172

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test11movable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 13 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = udiv i64 %1, %i.b
  %i.p = shl i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 4
  %i.r = mul i64 %2, %i.q
  %scevgep = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %scevgep, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.s = mul i64 %n.vec, -4                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !865, !alias.scope !9173
  %wide.load139 = load <4 x i32>, ptr %i.x, align 4, !tbaa !865, !alias.scope !9173
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.z = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !865, !alias.scope !9176, !noalias !9173
  store <4 x i32> %wide.load139, ptr %i.z, align 4, !tbaa !865, !alias.scope !9176, !noalias !9173
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !865, !alias.scope !9173
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !865, !alias.scope !9173
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !9178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader292

.lr.ph.i.i.preheader292:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader292, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %.079.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !865
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !865
  store i32 0, ptr %i.ab, align 4, !tbaa !865
  %.not.i.i = icmp eq ptr %i.f, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !9179

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bn, %bb.g ], [ %i.ag, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.af, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ae, %bb.c ] ; 9 uses
  %i.ah = icmp eq ptr %.02442.i, %i.ae
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i143.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ai = udiv i64 %1, %i.b
  %i.aj = mul i64 %2, %i.ai
  %5 = add i64 %.02541.i143.le, -4
  %6 = shl i64 %i.aj, 3
  %i.ak = add i64 %6, %i.a
  %i.al = sub i64 %5, %i.ak                       ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.al, 188
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader285, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67267 = add i64 %2, %1
  %i.ao = shl i64 %.idx67267, 2
  %i.ap = add i64 %i.ao, -4
  %i.aq = shl i64 %indvar, 2
  %i.ar = sub i64 %i.ap, %i.aq
  %scevgep142 = getelementptr i8, ptr %0, i64 %i.ar
  %i.as = udiv i64 %1, %i.b
  %i.at = mul i64 %2, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, %i.a
  %reass.sub = sub i64 %.02541.i143.le, %i.av
  %i.aw = add i64 %reass.sub, -4
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = mul i64 %i.ax, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep142, i64 %i.ay
  %scevgep145 = getelementptr i8, ptr %.02541.i, i64 -4
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.ay
  %bound0147 = icmp ult ptr %scevgep144, %.02541.i
  %bound1148 = icmp ult ptr %scevgep146, %.043.i
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i.preheader285, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck141
  %n.vec153 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.az = mul i64 %n.vec153, -4                   ; 2 uses
  %i.ba = getelementptr i8, ptr %.043.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.02541.i, i64 %i.az
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.bc = mul i64 %index155, -4                   ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.043.i, i64 %i.bc ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.02541.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !865, !alias.scope !9180
  %wide.load159 = load <4 x i32>, ptr %i.be, align 4, !tbaa !865, !alias.scope !9180
  %i.bf = getelementptr inbounds i8, ptr %next.gep156, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %next.gep156, i64 -32
  store <4 x i32> %wide.load158, ptr %i.bf, align 4, !tbaa !865, !alias.scope !9183, !noalias !9180
  store <4 x i32> %wide.load159, ptr %i.bg, align 4, !tbaa !865, !alias.scope !9183, !noalias !9180
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !865, !alias.scope !9180
  store <4 x i32> zeroinitializer, ptr %i.be, align 4, !tbaa !865, !alias.scope !9180
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.bh, label %middle.block161, label %vector.body154, !llvm.loop !9185

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.an, %n.vec153
  br i1 %cmp.n162, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader285

.lr.ph.i.i.i.preheader285:                        ; preds = %vector.memcheck141, %.lr.ph.i.i.i.preheader, %middle.block161
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck141 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block161 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck141 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block161 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader285, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %.079.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %i.bi = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !865
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !865
  store i32 0, ptr %i.bi, align 4, !tbaa !865
  %.not.i.i.i = icmp eq ptr %i.f, %i.bi
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !9186

bb.d:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !865 ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !865 ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !865
  store i32 0, ptr %i.bm, align 4, !tbaa !865
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !865
  store i32 0, ptr %i.bl, align 4, !tbaa !865
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bm, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bl, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !9187

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.af, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.c ], [ %i.bn, %bb.g ] ; 7 uses
  %.024.lcssa.i166 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ae, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %i.br = udiv i64 %1, %i.b
  %i.bs = shl i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, 4
  %i.bu = mul i64 %2, %i.bt
  %i.bv = add i64 %.024.lcssa.i166, -4
  %i.bw = add i64 %i.bu, %i.a
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check173, label %.lr.ph.i.i30.i.preheader284, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.ca = udiv i64 %1, %i.b
  %i.cb = shl i64 %i.ca, 3
  %i.cc = or disjoint i64 %i.cb, 4
  %i.cd = mul i64 %2, %i.cc
  %i.ce = add i64 %i.cd, %i.a
  %reass.sub269 = sub i64 %i.ce, %.024.lcssa.i166
  %.not268 = add i64 %reass.sub269, 3
  %i.cf = and i64 %.not268, -4                    ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cf
  %scevgep168 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cf
  %bound0169 = icmp ult ptr %scevgep167, %.024.lcssa.i
  %bound1170 = icmp ult ptr %scevgep168, %.0.lcssa.i
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i30.i.preheader284, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec175, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cg
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.cj = mul i64 %index177, -4                   ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep179, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep179, i64 -32 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !865, !alias.scope !9188
  %wide.load181 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !865, !alias.scope !9188
  %i.cm = getelementptr inbounds i8, ptr %next.gep178, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep178, i64 -32
  store <4 x i32> %wide.load180, ptr %i.cm, align 4, !tbaa !865, !alias.scope !9191, !noalias !9188
  store <4 x i32> %wide.load181, ptr %i.cn, align 4, !tbaa !865, !alias.scope !9191, !noalias !9188
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !865, !alias.scope !9188
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !865, !alias.scope !9188
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.co, label %middle.block183, label %vector.body176, !llvm.loop !9193

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.bz, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader284

.lr.ph.i.i30.i.preheader284:                      ; preds = %vector.memcheck165, %.lr.ph.i.i30.i.preheader, %middle.block183
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck165 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ch, %middle.block183 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck165 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ci, %middle.block183 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader284, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cq, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %.079.i.i32.i = phi ptr [ %i.cp, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !865
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !865
  store i32 0, ptr %i.cp, align 4, !tbaa !865
  %.not.i.i33.i = icmp eq ptr %i.ae, %i.cp
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !9194

_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block161, %middle.block183, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test11movable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  %i.cs = mul i64 %2, -8                          ; 2 uses
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ct = shl i64 %2, 3
  %i.cu = shl i64 %2, 3
  %i.cv = mul i64 %2, -8
  %i.cw = shl i64 %2, 3
end_hunk_7
begin_hunk_8_@_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.109") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !850
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !909
  br label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.r, %bb.e ], [ %.pre35, %bb.f ]
  %i.ad = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0192956, %i.ad            ; 3 uses
  %i.ae = ptrtoint ptr %.0163055 to i64
  %i.af = ptrtoint ptr %.0192956 to i64           ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.03154 to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %.120 = select i1 %.not, ptr %.0192956, ptr %i.ad
  %.117 = select i1 %.not, ptr %.0163055, ptr %i.ah
  %.1 = select i1 %.not, ptr %.03154, ptr %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !909
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !909
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !909   ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !10273

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.109") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.185", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !1987   ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !928
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1839 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !1987   ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !850    ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter84 = and i64 %3, 1
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !865, !noalias !10280
  store i32 %i.l, ptr %i.j, align 4, !tbaa !865, !noalias !10280
  store i32 0, ptr %i.g, align 4, !tbaa !865, !noalias !10280
  %i.m = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10280
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10280
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr87 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr87, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !865, !noalias !10280
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !865, !noalias !10280
  store i32 0, ptr %i.s, align 4, !tbaa !865, !noalias !10280
  %i.u = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10280 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10280
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !865, !noalias !10280
  store i32 %i.y, ptr %i.x, align 4, !tbaa !865, !noalias !10280
  store i32 0, ptr %i.w, align 4, !tbaa !865, !noalias !10280
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35, !noalias !10280
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10283

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !865
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !865
  store i32 0, ptr %i.ai, align 4, !tbaa !865
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !865
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !865
  %i.ar = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !865
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !865
  store i32 0, ptr %i.at, align 4, !tbaa !865
  %i.ax = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !8423

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bb, %i.i
  %i.bc = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bd = add i64 %7, %i.ae
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bi = add nsw i64 %i.bh, -4
  %i.bj = add i64 %i.bh, %i.i
  %i.bk = add i64 %i.bj, -4
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bl, %i.ae
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = and i64 %i.bn, -4                       ; 2 uses
  %i.bp = sub i64 %i.bi, %i.bo
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bp
  %i.bq = add nsw i64 %i.bh, -4
  %i.br = add i64 %i.bl, %i.bo
  %i.bs = sub i64 %i.bq, %i.br
  %scevgep20 = getelementptr i8, ptr %i.h, i64 %i.bs
  %bound0 = icmp ult ptr %scevgep, %i.ai
  %bound1 = icmp ult ptr %scevgep20, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.j, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.ai, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bw ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !865, !alias.scope !10284
  %wide.load22 = load <4 x i32>, ptr %i.by, align 4, !tbaa !865, !alias.scope !10284
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !865, !alias.scope !10287, !noalias !10284
  store <4 x i32> %wide.load22, ptr %i.ca, align 4, !tbaa !865, !alias.scope !10287, !noalias !10284
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !865, !alias.scope !10284
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !865, !alias.scope !10284
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !10289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader73

.lr.ph.i40.i.i.i.preheader73:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader73, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader73 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader73 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !865
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !865
  store i32 0, ptr %i.cc, align 4, !tbaa !865
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !10290

_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test11movable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check31 = icmp ult i64 %3, 8
  br i1 %min.iters.check31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck24

vector.memcheck24:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.a, i64 %i.cf
  %scevgep26 = getelementptr i8, ptr %i.g, i64 %i.cf
  %bound027 = icmp ult ptr %i.a, %scevgep26
  %bound128 = icmp ult ptr %i.g, %scevgep25
  %found.conflict29 = and i1 %bound027, %bound128
  br i1 %found.conflict29, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck24
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cg = shl i64 %n.vec33, 2                     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.g, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.cj = and i64 %3, 7
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.ck = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.g, i64 %i.ck ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.a, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !865, !alias.scope !10291, !noalias !10294
  %wide.load39 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !865, !alias.scope !10291, !noalias !10294
  %i.cm = getelementptr i8, ptr %next.gep37, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep37, align 4, !tbaa !865, !alias.scope !10297, !noalias !10299
  store <4 x i32> %wide.load39, ptr %i.cm, align 4, !tbaa !865, !alias.scope !10297, !noalias !10299
  store <4 x i32> zeroinitializer, ptr %next.gep36, align 4, !tbaa !865, !alias.scope !10291, !noalias !10294
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !865, !alias.scope !10291, !noalias !10294
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cn, label %middle.block41, label %vector.body34, !llvm.loop !10300

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck24, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.ph71 = phi ptr [ %i.g, %vector.memcheck24 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block41 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck24 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block41 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck24 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test11movable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block41 ] ; 4 uses
  %i.co = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter74 = and i64 %.035.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cp = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.ph71, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cq = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !865, !noalias !10294
  store i32 %i.cr, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !865, !noalias !10294
  store i32 0, ptr %i.cp, align 4, !tbaa !865, !noalias !10294
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter74
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10301

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph71, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %i.cu = icmp ult i64 %i.co, 3
  br i1 %i.cu, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.cv = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !865, !noalias !10294
  store i32 %i.cw, ptr %.06.i.i.i.i.i, align 4, !tbaa !865, !noalias !10294
  store i32 0, ptr %i.cv, align 4, !tbaa !865, !noalias !10294
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !865, !noalias !10294
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !865, !noalias !10294
  store i32 0, ptr %i.cx, align 4, !tbaa !865, !noalias !10294
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !865, !noalias !10294
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !865, !noalias !10294
  store i32 0, ptr %i.da, align 4, !tbaa !865, !noalias !10294
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.df = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !865, !noalias !10294
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !865, !noalias !10294
  store i32 0, ptr %i.dd, align 4, !tbaa !865, !noalias !10294
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test11movable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10302

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i49.i.i.i ], [ %i.dj, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !865
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !865
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !865
  %i.dl = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dn, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !6420

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check53 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check53, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %scevgep48 = getelementptr i8, ptr %i.g, i64 %i.af
  %bound049 = icmp ult ptr %i.a, %scevgep48
  %bound150 = icmp ult ptr %i.g, %i.j
  %found.conflict51 = and i1 %bound049, %bound150
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test12copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ch = icmp slt i32 %i.cb, %i.ca               ; 2 uses
  %..i5 = select i1 %i.ch, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bo
  %.25.i6 = select i1 %i.ch, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.ci, ptr %.sink23.i8, align 8, !tbaa !2704, !noalias !10889
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !2704, !noalias !10889 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bj
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !10884

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !2466, !noalias !10889
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge94
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.p, %._crit_edge94 ], [ %i.ab, %.preheader66 ], [ %i.r, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.ax, %._crit_edge.i ], [ %i.bz, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test12copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre, %.split ], [ %i.ab, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !2704
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !2466   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !2300
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !2271 ; 4 uses
  %i.g = sub i64 %i.d, %i.f
  %.not = icmp ugt i64 %3, %i.g
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !2275   ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.f ; 13 uses
  %i.j = icmp eq ptr %i.i, %i.b
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.k = add i64 %3, -1
  %xtraiter78 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.018.i.i.i.i.prol = phi i64 [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01417.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.0.016.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.prol ], [ %4, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i.prol) ]
  %i.l = load i32, ptr %.sroa.0.016.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.l, ptr %.01417.i.i.i.i.prol, align 4, !tbaa !2263
  %i.m = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i.prol, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i.prol, i64 4 ; 2 uses
  %i.q = add i64 %.018.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !10892

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp ult i64 %i.k, 3
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.s = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.s, ptr %.01417.i.i.i.i, align 4, !tbaa !2263
  %i.t = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 4 uses
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.x = load i32, ptr %i.v, align 4, !tbaa !2263
  store i32 %i.x, ptr %i.w, align 4, !tbaa !2263
  %i.y = add i32 %i.t, 2
  store i32 %i.y, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !2263
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !2263
  %i.ac = add i32 %i.t, 3
  store i32 %i.ac, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 12
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !2263
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !2263
  %i.ag = add i32 %i.t, 4
  store i32 %i.ag, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 16
  %i.aj = add i64 %.018.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10893

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ak = ptrtoint ptr %i.i to i64
  %i.al = ptrtoint ptr %i.b to i64                ; 4 uses
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.an, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = sub i64 0, %3
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.ao ; 6 uses
  %i.aq = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.ar, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i10.i.i.prol ], [ %i.ap, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i10.i.i.prol ], [ %i.i, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.ar = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.as = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.as, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !2263
  %i.at = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !10894

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ar, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ap, %bb.f ], [ %i.av, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.aw, %.lr.ph.i.i10.i.i.prol ]
  %i.ax = icmp ult i64 %i.aq, 3
  br i1 %i.ax, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ay = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.ay, ptr %.01618.i.i.i.i, align 4, !tbaa !2263
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 4 uses
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !2263
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !2263
  %i.be = add i32 %i.az, 2
  store i32 %i.be, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !2263
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !2263
  %i.bi = add i32 %i.az, 3
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bl = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bm = load i32, ptr %i.bj, align 4, !tbaa !2263
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !2263
  %i.bn = add i32 %i.az, 4
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bo = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10895

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.b, %i.ap
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bq = ptrtoaddr ptr %i.h to i64
  %i.br = shl nuw nsw i64 %i.f, 2
  %5 = add i64 %i.br, %i.bq
  %i.bs = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bt = add i64 %6, %i.al
  %i.bu = sub i64 %i.bs, %i.bt                    ; 2 uses
  %i.bv = lshr i64 %i.bu, 2
  %i.bw = add nuw nsw i64 %i.bv, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bu, 60
  %i.bx = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bw, 9223372036854775800     ; 3 uses
  %i.by = mul i64 %n.vec, -4                      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.ap, i64 %i.by
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.cb ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ap, i64 %i.cb ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %next.gep23, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %next.gep23, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !2263
  %wide.load24 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !2263
  %i.ce = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cf = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !2263
  store <4 x i32> %wide.load24, ptr %i.cf, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !10896

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader68

.lr.ph.i40.i.i.i.preheader68:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bz, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i40.i.i.i.preheader ], [ %i.ca, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader68, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %.079.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader68 ]
  %i.ch = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.ci = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !2263
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !2263
  %.not.i41.i.i.i = icmp eq ptr %i.b, %i.ch
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !10897

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check29 = icmp ult i64 %3, 8
  %i.ck = sub i64 %i.a, %i.al
  %diff.check27 = icmp ugt i64 %i.ck, -32
  %or.cond62 = select i1 %min.iters.check29, i1 true, i1 %diff.check27
  br i1 %or.cond62, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec31 = and i64 %3, -8                       ; 3 uses
  %i.cl = and i64 %3, 7
  %i.cm = shl i64 %n.vec31, 2                     ; 2 uses
  %i.cn = getelementptr i8, ptr %i.b, i64 %i.cm
  %i.co = getelementptr i8, ptr %4, i64 %i.cm
  br label %vector.body32

vector.body32:                                    ; preds = %vector.body32, %vector.ph30
  %index33 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body32 ] ; 2 uses
  %i.cp = shl i64 %index33, 2                     ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.b, i64 %i.cp ; 2 uses
  %next.gep35 = getelementptr i8, ptr %4, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load36 = load <4 x i32>, ptr %next.gep35, align 4, !tbaa !2263
  %wide.load37 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !2263
  %i.cr = getelementptr i8, ptr %next.gep34, i64 16
  store <4 x i32> %wide.load36, ptr %next.gep34, align 4, !tbaa !2263
  store <4 x i32> %wide.load37, ptr %i.cr, align 4, !tbaa !2263
  %index.next38 = add nuw i64 %index33, 8         ; 2 uses
  %i.cs = icmp eq i64 %index.next38, %n.vec31
  br i1 %i.cs, label %middle.block39, label %vector.body32, !llvm.loop !10898

middle.block39:                                   ; preds = %vector.body32
  %cmp.n40 = icmp eq i64 %3, %n.vec31
  br i1 %cmp.n40, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block39
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cl, %middle.block39 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cn, %middle.block39 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.co, %middle.block39 ] ; 2 uses
  %i.ct = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter69 = and i64 %.09.i.i.i.i.i.ph, 7      ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cu = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.cv = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.cv, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !2263
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10899

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cx, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cw, %.lr.ph.i.i.i.i.i.prol ]
  %i.cy = icmp ult i64 %i.ct, 7
  br i1 %i.cy, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cz = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.cz, ptr %.048.i.i.i.i.i, align 4, !tbaa !2263
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !2263
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !2263
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !2263
  store i32 %i.df, ptr %i.de, align 4, !tbaa !2263
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.di = load i32, ptr %i.dg, align 4, !tbaa !2263
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !2263
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !2263
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !2263
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 20
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !2263
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !2263
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 24
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !2263
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !2263
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 28
  %i.dt = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 28
  %i.du = add i64 %.09.i.i.i.i.i, -8              ; 2 uses
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !2263
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !2263
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.du, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !10900

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.ec, %.lr.ph.i49.i.i.i ], [ %i.b, %.lr.ph.i49.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ed, %.lr.ph.i49.i.i.i ], [ %i.dy, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dz = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !2263
  store i32 %i.dz, ptr %.01517.i.i.i.i, align 4, !tbaa !2263
  %i.ea = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ec = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.ec, %i.i
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i53.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !10901

.lr.ph.i.i53.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check47 = icmp ult i64 %i.an, 8
  %i.ee = sub i64 %i.a, %i.al
  %diff.check45 = icmp ugt i64 %i.ee, -32
  %or.cond63 = select i1 %min.iters.check47, i1 true, i1 %diff.check45
  br i1 %or.cond63, label %.lr.ph.i.i53.i.i.i.preheader65, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph.i.i53.i.i.i.preheader
  %n.vec49 = and i64 %i.an, -8                    ; 3 uses
  %i.ef = and i64 %i.an, 7
  %i.eg = shl nsw i64 %n.vec49, 2                 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.b, i64 %i.eg
  %i.ei = getelementptr i8, ptr %4, i64 %i.eg     ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph48
  %index51 = phi i64 [ 0, %vector.ph48 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %i.ej = shl i64 %index51, 2                     ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.b, i64 %i.ej ; 2 uses
  %next.gep53 = getelementptr i8, ptr %4, i64 %i.ej ; 2 uses
  %i.ek = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load54 = load <4 x i32>, ptr %next.gep53, align 4, !tbaa !2263
  %wide.load55 = load <4 x i32>, ptr %i.ek, align 4, !tbaa !2263
  %i.el = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %wide.load54, ptr %next.gep52, align 4, !tbaa !2263
  store <4 x i32> %wide.load55, ptr %i.el, align 4, !tbaa !2263
  %index.next56 = add nuw i64 %index51, 8         ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeET0_RT1_:bb.a
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !2263
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  %i.j = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !2263
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !2263
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2263 ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !2263
  %i.p = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !2263
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !11315

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !11316

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub i64 %1, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !10965
  %.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.w = load ptr, ptr %2, align 8, !tbaa !10862
  tail call void @_ZN5boost7movelib10merge_sortIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.w)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !85
  %i.x = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !10965
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !10860 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %.not.i31 = icmp ult i64 %i.ac, %i.s
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !10862
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  call void @_ZN5boost7movelib10merge_sortIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.ae)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef nonnull %i.y)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !85
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %1, %i.ah
  %i.an = add i64 %i.am, %i.aj
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !85
  %i.ap = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !85  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = sub i64 %1, %i.aq
  %i.at = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !85
  %i.av = load i64, ptr %i.c, align 8, !tbaa !85
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %i.at, ptr noundef %0, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 5 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 4 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 4 uses
  %i.f = load i32, ptr %.037.i, align 4, !tbaa !2263 ; 3 uses
  %i.g = load i32, ptr %.pn36.i, align 4, !tbaa !2263
  %i.h = icmp slt i32 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  %i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.k = load i32, ptr %.pn36.i, align 4, !tbaa !2263
  store i32 %i.k, ptr %.037.i, align 4, !tbaa !2263
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.l, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.l = getelementptr i8, ptr %.02231.i, i64 -4  ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2263 ; 2 uses
  %i.n = icmp slt i32 %i.f, %i.m
  br i1 %i.n, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.f, ptr %.022.lcssa.i, align 4, !tbaa !2263
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.p = add i32 %i.o, -1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.m, ptr %.02231.i, align 4, !tbaa !2263
  %.not27.i = icmp eq ptr %i.l, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !11315

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !11316

bb.f:                                             ; preds = %bb.a
  %i.q = lshr i64 %i.d, 1                         ; 5 uses
  %i.r = sub i64 %i.d, %i.q                       ; 10 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.s, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test12copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.s, ptr noundef %i.t)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.r, 2
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %cond = icmp eq i64 %i.r, 0
  br i1 %cond, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.h
  %indvar = phi i64 [ %indvar.next, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %.1.i.i, %bb.h ], [ %2, %bb.g ] ; 7 uses
  %.01626.i.i = phi ptr [ %i.ar, %bb.h ], [ %0, %bb.g ] ; 6 uses
  %.01725.i.i = phi ptr [ %.118.i.i, %bb.h ], [ %i.t, %bb.g ] ; 3 uses
  %i.v = icmp eq ptr %.01725.i.i, %1
  br i1 %i.v, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i63.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %i.w = ptrtoaddr ptr %2 to i64
  %3 = add i64 %i.c, %i.w
  %i.x = add i64 %3, -4
  %4 = shl i64 %i.q, 2
  %i.y = add i64 %4, %.027.i.i63.le
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader68, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %indvar, 2
  %i.ad = add i64 %i.ac, %i.b
  %i.ae = sub i64 %.027.i.i63.le, %i.ad
  %diff.check = icmp ugt i64 %i.ae, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.af = shl i64 %n.vec, 2                       ; 2 uses
  %i.ag = getelementptr i8, ptr %.01626.i.i, i64 %i.af
  %i.ah = getelementptr i8, ptr %.027.i.i, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.ai ; 2 uses
  %next.gep64 = getelementptr i8, ptr %.027.i.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep64, align 4, !tbaa !2263
  %wide.load65 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !2263
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !2263
  store <4 x i32> %wide.load65, ptr %i.ak, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !11317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i.preheader68

.lr.ph.i.i.i.i.preheader68:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader68, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader68 ] ; 2 uses
  %i.am = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.am, ptr %.010.i.i.i.i, align 4, !tbaa !2263
  %i.an = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.u
  br i1 %.not.i.i.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !11318

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.ap = load i32, ptr %.027.i.i, align 4, !tbaa !2263 ; 2 uses
  %i.aq = load i32, ptr %.01725.i.i, align 4, !tbaa !2263 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.ap, %i.aq         ; 2 uses
  %.sink.i.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq)
  %.118.idx.i.i = select i1 %.not20.i.i, i64 0, i64 4
  %.118.i.i = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 %.118.idx.i.i
  %.1.idx.i.i = select i1 %.not20.i.i, i64 4, i64 0
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 %.1.idx.i.i ; 2 uses
  store i32 %.sink.i.i, ptr %.01626.i.i, align 4, !tbaa !2263
  %i.ar = getelementptr inbounds nuw i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.u
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i, !llvm.loop !11319

.lr.ph.i27.preheader:                             ; preds = %bb.h, %.lr.ph.i.i.i.i, %middle.block
  %xtraiter74 = and i64 %i.r, 3                   ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.in.i.prol = phi i64 [ %i.as, %.lr.ph.i27.prol ], [ %i.r, %.lr.ph.i27.preheader ]
  %prol.iter76 = phi i64 [ %prol.iter76.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.as = add i64 %.in.i.prol, -1                 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.as
  store i32 -2147483648, ptr %i.at, align 4, !tbaa !2263
  %i.au = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.av = add i32 %i.au, -1
  store i32 %i.av, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %prol.iter76.next = add i64 %prol.iter76, 1     ; 2 uses
  %prol.iter76.cmp.not = icmp eq i64 %prol.iter76.next, %xtraiter74
  br i1 %prol.iter76.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !11320

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.in.i.unr = phi i64 [ %i.r, %.lr.ph.i27.preheader ], [ %i.as, %.lr.ph.i27.prol ]
  %i.aw = sub i64 %i.q, %i.d
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27
  %.in.i = phi i64 [ %i.bk, %.lr.ph.i27 ], [ %.in.i.unr, %.lr.ph.i27.prol.loopexit ] ; 4 uses
  %i.ay = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  store i32 -2147483648, ptr %i.az, align 4, !tbaa !2263
  %i.ba = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bc = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  store i32 -2147483648, ptr %i.bd, align 4, !tbaa !2263
  %i.be = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bf = add i32 %i.be, -1
  store i32 %i.bf, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bg = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 -12
  store i32 -2147483648, ptr %i.bh, align 4, !tbaa !2263
  %i.bi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bk = add i64 %.in.i, -4                      ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bk
  store i32 -2147483648, ptr %i.bl, align 4, !tbaa !2263
  %i.bm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %.not.i28.3 = icmp eq i64 %i.bk, 0
  br i1 %.not.i28.3, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27, !llvm.loop !11321

bb.i:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %.not1.i30 = icmp eq i64 %i.r, 0
  br i1 %.not1.i30, label %_ZN5boost7movelib10destruct_nINS_9container4test12copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.i
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.in.i32.prol = phi i64 [ %i.bp, %.lr.ph.i31.prol ], [ %i.r, %.lr.ph.i31.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.bp = add i64 %.in.i32.prol, -1               ; 3 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bp
  store i32 -2147483648, ptr %i.bq, align 4, !tbaa !2263
  %i.br = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bs = add i32 %i.br, -1
  store i32 %i.bs, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !11322

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.in.i32.unr = phi i64 [ %i.r, %.lr.ph.i31.preheader ], [ %i.bp, %.lr.ph.i31.prol ]
  %i.bt = sub i64 %i.q, %i.d
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %_ZN5boost7movelib10destruct_nINS_9container4test12copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.in.i32 = phi i64 [ %i.ch, %.lr.ph.i31 ], [ %.in.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 4 uses
  %i.bv = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 -2147483648, ptr %i.bw, align 4, !tbaa !2263
  %i.bx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.by = add i32 %i.bx, -1
  store i32 %i.by, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bz = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  store i32 -2147483648, ptr %i.ca, align 4, !tbaa !2263
  %i.cb = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cc = add i32 %i.cb, -1
  store i32 %i.cc, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cd = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ce = getelementptr i8, ptr %i.cd, i64 -12
  store i32 -2147483648, ptr %i.ce, align 4, !tbaa !2263
  %i.cf = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cg = add i32 %i.cf, -1
  store i32 %i.cg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ch = add i64 %.in.i32, -4                    ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ch
  store i32 -2147483648, ptr %i.ci, align 4, !tbaa !2263
  %i.cj = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ck = add i32 %i.cj, -1
  store i32 %i.ck, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %.not.i33.3 = icmp eq i64 %i.ch, 0
  br i1 %.not.i33.3, label %_ZN5boost7movelib10destruct_nINS_9container4test12copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31, !llvm.loop !11321

_ZN5boost7movelib10destruct_nINS_9container4test12copyable_intEPS4_ED2Ev.exit34: ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31, %bb.i
  resume { ptr, i32 } %i.bo

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test12copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27, %bb.e, %bb.g, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023.i.i.i = phi i32 [ 32, %bb.a ], [ %i.n, %bb.b ]
  %.01222.i.i.i = phi i64 [ 0, %bb.a ], [ %.1.i.i.i.1, %bb.b ] ; 2 uses
  %.01321.i.i.i = phi i64 [ 0, %bb.a ], [ %.114.i.i.i.1, %bb.b ]
  %.01520.i.i.i = phi i64 [ %1, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  %i.a = shl i64 %.01222.i.i.i, 1                 ; 2 uses
  %i.b = tail call i64 @llvm.fshl.i64(i64 %.01321.i.i.i, i64 %.01520.i.i.i, i64 2) ; 2 uses
  %i.c = shl i64 %.01520.i.i.i, 2
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  %i.ae = phi i32 [ %i.ah, %.lr.ph.i.i31.i ], [ %i.ad, %.lr.ph.preheader.i.i29.i ]
  %.010.i.i32.i = phi ptr [ %i.ak, %.lr.ph.i.i31.i ], [ %.023.lcssa.i, %.lr.ph.preheader.i.i29.i ] ; 3 uses
  %.079.i.i33.i = phi ptr [ %i.aj, %.lr.ph.i.i31.i ], [ %.024.lcssa.i, %.lr.ph.preheader.i.i29.i ] ; 3 uses
  %i.af = load i32, ptr %.079.i.i33.i, align 4, !tbaa !2263
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ag = load i32, ptr %.010.i.i32.i, align 4, !tbaa !2263
  store i32 %i.ag, ptr %.079.i.i33.i, align 4, !tbaa !2263
  store i32 %i.af, ptr %.010.i.i32.i, align 4, !tbaa !2263
  %i.ah = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i33.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i32.i, i64 4
  %.not.i.i34.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i34.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i31.i, !llvm.loop !11007

_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i31.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03985, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04192, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !11394

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04192, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa81 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa81, %.04291
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04291                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04291, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04192, i64 %.idx74 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not45.i45 = icmp samesign eq i64 %i.at, %.idx74
  br i1 %.not45.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02248.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02347.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 5 uses
  %.02446.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02446.i49, %i.ar
  br i1 %i.au, label %.lr.ph.preheader.i.i.i67, label %bb.h

.lr.ph.preheader.i.i.i67:                         ; preds = %.lr.ph.i46
  %.pre.i.i.i68 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.av = add i32 %.pre.i.i.i68, 1
  br label %.lr.ph.i.i.i69

.lr.ph.i.i.i69:                                   ; preds = %.lr.ph.i.i.i69, %.lr.ph.preheader.i.i.i67
  %i.aw = phi i32 [ %i.az, %.lr.ph.i.i.i69 ], [ %i.av, %.lr.ph.preheader.i.i.i67 ]
  %.010.i.i.i70 = phi ptr [ %i.bc, %.lr.ph.i.i.i69 ], [ %.02347.i48, %.lr.ph.preheader.i.i.i67 ] ; 3 uses
  %.079.i.i.i71 = phi ptr [ %i.bb, %.lr.ph.i.i.i69 ], [ %.02248.i47, %.lr.ph.preheader.i.i.i67 ] ; 3 uses
  %i.ax = load i32, ptr %.079.i.i.i71, align 4, !tbaa !2263
  store i32 %i.aw, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = load i32, ptr %.010.i.i.i70, align 4, !tbaa !2263
  store i32 %i.ay, ptr %.079.i.i.i71, align 4, !tbaa !2263
  store i32 %i.ax, ptr %.010.i.i.i70, align 4, !tbaa !2263
  %i.az = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i71, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i70, i64 4
  %.not.i.i.i72 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i72, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, label %.lr.ph.i.i.i69, !llvm.loop !11007

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02248.i47, align 4, !tbaa !2263
  %i.be = load i32, ptr %.02446.i49, align 4, !tbaa !2263
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02347.i48, align 4, !tbaa !2263 ; 2 uses
  %i.bh = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02248.i47, align 4, !tbaa !2263
  store i32 %i.bj, ptr %.02347.i48, align 4, !tbaa !2263
  store i32 %i.bg, ptr %.02248.i47, align 4, !tbaa !2263
  %i.bk = getelementptr inbounds nuw i8, ptr %.02248.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02446.i49, align 4, !tbaa !2263
  store i32 %i.bl, ptr %.02347.i48, align 4, !tbaa !2263
  store i32 %i.bg, ptr %.02446.i49, align 4, !tbaa !2263
  %i.bm = getelementptr inbounds nuw i8, ptr %.02446.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02446.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02248.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.02347.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !11393

_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond40.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond40.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, label %.lr.ph.preheader.i.i29.i61

.lr.ph.preheader.i.i29.i61:                       ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre.i.i30.i62 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bo = add i32 %.pre.i.i30.i62, 1
  br label %.lr.ph.i.i31.i63

.lr.ph.i.i31.i63:                                 ; preds = %.lr.ph.i.i31.i63, %.lr.ph.preheader.i.i29.i61
  %i.bp = phi i32 [ %i.bs, %.lr.ph.i.i31.i63 ], [ %i.bo, %.lr.ph.preheader.i.i29.i61 ]
  %.010.i.i32.i64 = phi ptr [ %i.bv, %.lr.ph.i.i31.i63 ], [ %.023.lcssa.i57, %.lr.ph.preheader.i.i29.i61 ] ; 3 uses
  %.079.i.i33.i65 = phi ptr [ %i.bu, %.lr.ph.i.i31.i63 ], [ %.024.lcssa.i56, %.lr.ph.preheader.i.i29.i61 ] ; 3 uses
  %i.bq = load i32, ptr %.079.i.i33.i65, align 4, !tbaa !2263
  store i32 %i.bp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.br = load i32, ptr %.010.i.i32.i64, align 4, !tbaa !2263
  store i32 %i.br, ptr %.079.i.i33.i65, align 4, !tbaa !2263
  store i32 %i.bq, ptr %.010.i.i32.i64, align 4, !tbaa !2263
  %i.bs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i33.i65, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i32.i64, i64 4
  %.not.i.i34.i66 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i34.i66, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, label %.lr.ph.i.i31.i63, !llvm.loop !11007

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04192, i64 %1
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  %.pre = sub i64 0, %.04291                      ; 3 uses
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.bx = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %.pre
  %.pre.i.i = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.by = add i32 %.pre.i.i, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.bz = phi i32 [ %i.cc, %.lr.ph.i.i ], [ %i.by, %.lr.ph.preheader.i.i ]
  %.010.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.bx, %.lr.ph.preheader.i.i ] ; 3 uses
  %.079.i.i = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ca = load i32, ptr %.079.i.i, align 4, !tbaa !2263
  store i32 %i.bz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.cb = load i32, ptr %.010.i.i, align 4, !tbaa !2263
  store i32 %i.cb, ptr %.079.i.i, align 4, !tbaa !2263
  store i32 %i.ca, ptr %.010.i.i, align 4, !tbaa !2263
  %i.cc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.cd = add i32 %i.cc, -1
  store i32 %i.cd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ce, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, label %.lr.ph.i.i, !llvm.loop !11007

_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i69, %.lr.ph.i.i31.i63, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i69 ], [ %.pre, %bb.l ], [ %i.ap, %.lr.ph.i.i31.i63 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %.pre, %.lr.ph.i.i ]
  %i.cg = getelementptr inbounds [4 x i8], ptr %.04192, i64 %.pre-phi
  %i.ch = sub i64 %.04093, %.04291                ; 2 uses
  %i.ci = icmp ult i64 %i.d, %3
  %i.cj = icmp uge i64 %i.ch, %i.d
  %i.ck = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %i.ck, label %.preheader, label %._crit_edge94, !llvm.loop !11395

._crit_edge94:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit73 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %i.b = shl i64 %2, 1                            ; 10 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %2 ; 3 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 60
  %i.o = shl i64 %2, 2
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader266, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.p = mul i64 %n.vec, -4                       ; 2 uses
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  %i.r = getelementptr i8, ptr %i.g, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.s ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.g, i64 %i.s ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %next.gep142, i64 -16
  %i.u = getelementptr inbounds i8, ptr %next.gep142, i64 -32
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !2263
  %wide.load143 = load <4 x i32>, ptr %i.u, align 4, !tbaa !2263
  %i.v = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.w = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.v, align 4, !tbaa !2263
  store <4 x i32> %wide.load143, ptr %i.w, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !11396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader266

.lr.ph.i.i.preheader266:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.q, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader266, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader266 ]
  %.079.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader266 ]
  %i.y = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 3 uses
  %i.z = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !2263
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !2263
  %.not.i.i = icmp eq ptr %i.f, %i.y
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !11397

bb.c:                                             ; preds = %bb.a
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx68 ; 4 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.be, %bb.d ], [ %i.ad, %bb.c ] ; 5 uses
  %.02442.i = phi ptr [ %.024..i, %bb.d ], [ %i.ac, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %..025.i, %bb.d ], [ %i.ab, %bb.c ] ; 7 uses
  %i.ae = icmp eq ptr %.02442.i, %i.ab
  br i1 %i.ae, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i146.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.af = udiv i64 %1, %i.b
  %i.ag = mul i64 %2, %i.af
  %5 = add i64 %.02541.i146.le, -4
  %6 = shl i64 %i.ag, 3
  %i.ah = add i64 %6, %i.a
  %i.ai = sub i64 %5, %i.ah                       ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check149 = icmp ult i64 %i.ai, 124
  br i1 %min.iters.check149, label %.lr.ph.i.i.i.preheader259, label %vector.memcheck145

vector.memcheck145:                               ; preds = %.lr.ph.i.i.i.preheader
  %i.al = add i64 %.idx68, %i.a
  %.neg = mul i64 %1, -4
  %.neg241 = sub i64 %.neg, %i.al
  %i.am = shl i64 %indvar, 2
  %i.an = add i64 %i.am, %.neg241
  %i.ao = add i64 %i.an, %.02541.i146.le
  %i.ap = add i64 %i.ao, -1
  %diff.check147 = icmp ult i64 %i.ap, 31
  br i1 %diff.check147, label %.lr.ph.i.i.i.preheader259, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck145
  %n.vec151 = and i64 %i.ak, 9223372036854775800  ; 3 uses
  %i.aq = mul i64 %n.vec151, -4                   ; 2 uses
  %i.ar = getelementptr i8, ptr %.043.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %.02541.i, i64 %i.aq
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body152 ] ; 2 uses
  %i.at = mul i64 %index153, -4                   ; 2 uses
  %next.gep154 = getelementptr i8, ptr %.043.i, i64 %i.at ; 2 uses
  %next.gep155 = getelementptr i8, ptr %.02541.i, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %next.gep155, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep155, i64 -32
  %wide.load156 = load <4 x i32>, ptr %i.au, align 4, !tbaa !2263
  %wide.load157 = load <4 x i32>, ptr %i.av, align 4, !tbaa !2263
  %i.aw = getelementptr inbounds i8, ptr %next.gep154, i64 -16
  %i.ax = getelementptr inbounds i8, ptr %next.gep154, i64 -32
  store <4 x i32> %wide.load156, ptr %i.aw, align 4, !tbaa !2263
  store <4 x i32> %wide.load157, ptr %i.ax, align 4, !tbaa !2263
  %index.next158 = add nuw i64 %index153, 8       ; 2 uses
  %i.ay = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.ay, label %middle.block159, label %vector.body152, !llvm.loop !11398

middle.block159:                                  ; preds = %vector.body152
  %cmp.n160 = icmp eq i64 %i.ak, %n.vec151
  br i1 %cmp.n160, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader259

.lr.ph.i.i.i.preheader259:                        ; preds = %vector.memcheck145, %.lr.ph.i.i.i.preheader, %middle.block159
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck145 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ar, %middle.block159 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck145 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.as, %middle.block159 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader259, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ]
  %.079.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader259 ]
  %i.az = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !2263
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !2263
  %.not.i.i.i = icmp eq ptr %i.f, %i.az
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !11399

bb.d:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %.043.i, i64 -4 ; 3 uses
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !2263 ; 2 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !2263 ; 2 uses
  %i.bh = icmp slt i32 %i.bf, %i.bg               ; 2 uses
  %..i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bg)
  %..025.i = select i1 %i.bh, ptr %i.bd, ptr %.02541.i ; 2 uses
  %.024..i = select i1 %i.bh, ptr %.02442.i, ptr %i.bc ; 2 uses
  store i32 %..i, ptr %i.be, align 4, !tbaa !2263
  %.not.i = icmp eq ptr %i.f, %..025.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11400

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.024.lcssa.i = phi ptr [ %i.ac, %bb.c ], [ %.024..i, %bb.d ] ; 6 uses
  %.0.lcssa.i = phi ptr [ %i.ad, %bb.c ], [ %i.be, %bb.d ] ; 5 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ab, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %.0.lcssa.i165 = ptrtoaddr ptr %.0.lcssa.i to i64
  %.024.lcssa.i164 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %i.bi = udiv i64 %1, %i.b
  %i.bj = shl i64 %i.bi, 3
  %i.bk = or disjoint i64 %i.bj, 4
  %i.bl = mul i64 %2, %i.bk
  %i.bm = add i64 %.024.lcssa.i164, -4
  %i.bn = add i64 %i.bl, %i.a
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.bo, 44
  %i.br = sub i64 %.0.lcssa.i165, %.024.lcssa.i164
  %diff.check166 = icmp ugt i64 %i.br, -32
  %or.cond247 = or i1 %min.iters.check168, %diff.check166
  br i1 %or.cond247, label %.lr.ph.i.i30.i.preheader258, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph.i.i30.i.preheader
  %n.vec170 = and i64 %i.bq, 9223372036854775800  ; 3 uses
  %i.bs = mul i64 %n.vec170, -4                   ; 2 uses
  %i.bt = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bs
  %i.bu = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bs
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %vector.ph169
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next177, %vector.body171 ] ; 2 uses
  %i.bv = mul i64 %index172, -4                   ; 2 uses
  %next.gep173 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.bv ; 2 uses
  %next.gep174 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.bv ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep174, i64 -16
  %i.bx = getelementptr inbounds i8, ptr %next.gep174, i64 -32
  %wide.load175 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !2263
  %wide.load176 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !2263
  %i.by = getelementptr inbounds i8, ptr %next.gep173, i64 -16
  %i.bz = getelementptr inbounds i8, ptr %next.gep173, i64 -32
  store <4 x i32> %wide.load175, ptr %i.by, align 4, !tbaa !2263
  store <4 x i32> %wide.load176, ptr %i.bz, align 4, !tbaa !2263
  %index.next177 = add nuw i64 %index172, 8       ; 2 uses
  %i.ca = icmp eq i64 %index.next177, %n.vec170
  br i1 %i.ca, label %middle.block178, label %vector.body171, !llvm.loop !11401

middle.block178:                                  ; preds = %vector.body171
  %cmp.n179 = icmp eq i64 %i.bq, %n.vec170
  br i1 %cmp.n179, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader258

.lr.ph.i.i30.i.preheader258:                      ; preds = %.lr.ph.i.i30.i.preheader, %middle.block178
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.bt, %middle.block178 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.bu, %middle.block178 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader258, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cc, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader258 ]
  %.079.i.i32.i = phi ptr [ %i.cb, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader258 ]
  %i.cb = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 3 uses
  %i.cc = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !2263
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !2263
  %.not.i.i33.i = icmp eq ptr %i.ab, %i.cb
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !11402

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block159, %middle.block178, %._crit_edge.i, %bb.b
  %.not4378 = icmp eq i64 %i.e, 0
  br i1 %.not4378, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx69 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx69, 0
  br i1 %.not40.i44, label %._crit_edge.i53.us.preheader, label %.lr.ph.i45.preheader.preheader

._crit_edge.i53.us.preheader:                     ; preds = %.lr.ph
  %invariant.gep = getelementptr i8, ptr %0, i64 %.idx
  br label %._crit_edge.i53.us

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ce = shl i64 %2, 3
  %i.cf = shl i64 %2, 3
  %i.cg = shl i64 %2, 3
  %i.ch = shl i64 %2, 3
  br label %.lr.ph.i45.preheader

._crit_edge.i53.us:                               ; preds = %._crit_edge.i53.us.preheader, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67.us
  %.079.us = phi i64 [ %i.ci, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67.us ], [ %i.e, %._crit_edge.i53.us.preheader ] ; 2 uses
  %i.ci = sub i64 %.079.us, %i.b                  ; 3 uses
  %.idx81 = shl nuw nsw i64 %i.ci, 2              ; 2 uses
  %.idx80 = shl nuw nsw i64 %.079.us, 2           ; 2 uses
  %.not28.i56.us = icmp eq i64 %.idx80, %.idx81
  br i1 %.not28.i56.us, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67.us, label %.lr.ph.i.i30.i59.us.preheader

.lr.ph.i.i30.i59.us.preheader:                    ; preds = %._crit_edge.i53.us
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx81
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.idx80
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %.lr.ph.i.i30.i59.us.preheader
  %index231 = phi i64 [ 0, %.lr.ph.i.i30.i59.us.preheader ], [ %index.next236, %vector.body230 ] ; 2 uses
  %i.ck = mul i64 %index231, -4                   ; 2 uses
  %next.gep232 = getelementptr i8, ptr %gep, i64 %i.ck ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep233, i64 -16
  %i.cm = getelementptr inbounds i8, ptr %next.gep233, i64 -32
  %wide.load234 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !2263
  %wide.load235 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !2263
  %i.cn = getelementptr inbounds i8, ptr %next.gep232, i64 -16
  %i.co = getelementptr inbounds i8, ptr %next.gep232, i64 -32
  store <4 x i32> %wide.load234, ptr %i.cn, align 4, !tbaa !2263
  store <4 x i32> %wide.load235, ptr %i.co, align 4, !tbaa !2263
  %index.next236 = add nuw i64 %index231, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next236, 4611686018427387904
  br i1 %i.cp, label %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67.us, label %vector.body230, !llvm.loop !11403

_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67.us: ; preds = %vector.body230, %._crit_edge.i53.us
  %.not43.us = icmp eq i64 %i.ci, 0
  br i1 %.not43.us, label %._crit_edge, label %._crit_edge.i53.us, !llvm.loop !11404

.lr.ph.i45.preheader:                             ; preds = %.lr.ph.i45.preheader.preheader, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67
  %indvar184 = phi i64 [ 0, %.lr.ph.i45.preheader.preheader ], [ %indvar.next185, %_ZN5boost7movelib14op_merge_rightIPNS_9container4test12copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7move_opEEEvT_SF_SF_SF_T0_T1_.exit67 ] ; 5 uses
end_hunk_11
begin_hunk_12_@_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a
bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !2704
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !2704  ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !12196

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.230", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2466   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2300
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2271 ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2466   ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !2275   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter79 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.m = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2263, !noalias !12203
  store i32 %i.n, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12203
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12206

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr82 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.u = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.unr82, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2263, !noalias !12203
  store i32 %i.v, ptr %.01214.i.i.i.i, align 4, !tbaa !2263, !noalias !12203
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203 ; 4 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !2263, !noalias !12203
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !2263, !noalias !12203
  %i.ab = add i32 %i.w, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !2263, !noalias !12203
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !2263, !noalias !12203
  %i.af = add i32 %i.w, 3
  store i32 %i.af, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !2263, !noalias !12203
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !2263, !noalias !12203
  %i.aj = add i32 %i.w, 4
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12203
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.am = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12207

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.aq, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub i64 0, %3
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar ; 6 uses
  %i.at = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i.prol ], [ %i.as, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.au = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.av = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.av, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !2263
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12208

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.as, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp ult i64 %i.at, 3
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !2263
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 4 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !2263
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !2263
  %i.bh = add i32 %i.bc, 2
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !2263
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !2263
  %i.bl = add i32 %i.bc, 3
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bo = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2263
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2263
  %i.bq = add i32 %i.bc, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10895

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.as
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bt = ptrtoaddr ptr %i.i to i64
  %i.bu = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bu, %i.bt
  %i.bv = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bw = add i64 %7, %i.ao
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 60
  %i.ca = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.as, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.as, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !2263
  %wide.load22 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !2263
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !2263
  store <4 x i32> %wide.load22, ptr %i.ci, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !12209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader67

.lr.ph.i40.i.i.i.preheader67:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i40.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader67, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !2263
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !2263
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ck
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12210

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cn = sub i64 %i.h, %i.ao
  %diff.check25 = icmp ugt i64 %i.cn, -32
  %or.cond60 = select i1 %min.iters.check27, i1 true, i1 %diff.check25
  br i1 %or.cond60, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.co = shl i64 %n.vec29, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.g, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.a, i64 %i.co
  %i.cr = and i64 %3, 7
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cs = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 %i.cs ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load34 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !2263, !noalias !12211
  %wide.load35 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !2263, !noalias !12211
  %i.cu = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load34, ptr %next.gep33, align 4, !tbaa !2263, !noalias !12211
  store <4 x i32> %wide.load35, ptr %i.cu, align 4, !tbaa !2263, !noalias !12211
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.cv, label %middle.block37, label %vector.body30, !llvm.loop !12214

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n38, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block37
  %.ph65 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block37 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block37 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block37 ] ; 4 uses
  %i.cw = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter68 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cx = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cy = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.cz, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12211
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12215

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.dc = icmp ult i64 %i.cw, 7
  br i1 %i.dc, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dd = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.de, ptr %.06.i.i.i.i.i, align 4, !tbaa !2263, !noalias !12211
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !2263, !noalias !12211
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2263, !noalias !12211
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !2263, !noalias !12211
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !2263, !noalias !12211
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !2263, !noalias !12211
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !2263, !noalias !12211
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.dz = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !2263, !noalias !12211
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !2263, !noalias !12211
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12216

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i49.i.i.i ], [ %i.ed, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ee = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.ee, ptr %.01517.i.i.i.i, align 4, !tbaa !2263
  %i.ef = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.eh, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !10901

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check45 = icmp ult i64 %i.aq, 8
  %i.ej = sub i64 %i.h, %i.ao
  %diff.check43 = icmp ugt i64 %i.ej, -32
  %or.cond61 = select i1 %min.iters.check45, i1 true, i1 %diff.check43
  br i1 %or.cond61, label %.lr.ph.i.i52.i.i.i.preheader63, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec47 = and i64 %i.aq, -8                    ; 3 uses
  %i.ek = shl nsw i64 %n.vec47, 2                 ; 2 uses
  %i.el = getelementptr i8, ptr %i.g, i64 %i.ek   ; 2 uses
  %i.em = getelementptr i8, ptr %i.a, i64 %i.ek
  %i.en = and i64 %i.aq, 7
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.eo = shl i64 %index49, 2                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.g, i64 %i.eo ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.a, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load52 = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !2263, !noalias !12217
  %wide.load53 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !2263, !noalias !12217
  %i.eq = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load52, ptr %next.gep51, align 4, !tbaa !2263, !noalias !12217
  store <4 x i32> %wide.load53, ptr %i.eq, align 4, !tbaa !2263, !noalias !12217
  %index.next54 = add nuw i64 %index49, 8         ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN5boost9container3dtl9flat_treeINS0_4test12copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SH_:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !2263
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !12339

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test12copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEENSA_ISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.232", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2466   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2300
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2271 ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2466   ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !2275   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter79 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.m = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2263, !noalias !12340
  store i32 %i.n, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12340
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12343

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr82 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.u = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.unr82, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2263, !noalias !12340
  store i32 %i.v, ptr %.01214.i.i.i.i, align 4, !tbaa !2263, !noalias !12340
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340 ; 4 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !2263, !noalias !12340
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !2263, !noalias !12340
  %i.ab = add i32 %i.w, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !2263, !noalias !12340
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !2263, !noalias !12340
  %i.af = add i32 %i.w, 3
  store i32 %i.af, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !2263, !noalias !12340
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !2263, !noalias !12340
  %i.aj = add i32 %i.w, 4
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12340
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.am = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12344

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.aq, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub i64 0, %3
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar ; 6 uses
  %i.at = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i.prol ], [ %i.as, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.au = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.av = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.av, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !2263
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12345

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.as, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp ult i64 %i.at, 3
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !2263
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 4 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !2263
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !2263
  %i.bh = add i32 %i.bc, 2
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !2263
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !2263
  %i.bl = add i32 %i.bc, 3
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bo = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2263
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2263
  %i.bq = add i32 %i.bc, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10895

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.as
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bt = ptrtoaddr ptr %i.i to i64
  %i.bu = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bu, %i.bt
  %i.bv = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bw = add i64 %7, %i.ao
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 60
  %i.ca = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.as, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.as, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !2263
  %wide.load22 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !2263
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !2263
  store <4 x i32> %wide.load22, ptr %i.ci, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !12346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader67

.lr.ph.i40.i.i.i.preheader67:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i40.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader67, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !2263
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !2263
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ck
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12347

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cn = sub i64 %i.h, %i.ao
  %diff.check25 = icmp ugt i64 %i.cn, -32
  %or.cond60 = select i1 %min.iters.check27, i1 true, i1 %diff.check25
  br i1 %or.cond60, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.co = shl i64 %n.vec29, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.g, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.a, i64 %i.co
  %i.cr = and i64 %3, 7
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cs = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 %i.cs ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load34 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !2263, !noalias !12348
  %wide.load35 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !2263, !noalias !12348
  %i.cu = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load34, ptr %next.gep33, align 4, !tbaa !2263, !noalias !12348
  store <4 x i32> %wide.load35, ptr %i.cu, align 4, !tbaa !2263, !noalias !12348
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.cv, label %middle.block37, label %vector.body30, !llvm.loop !12351

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n38, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block37
  %.ph65 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block37 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block37 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block37 ] ; 4 uses
  %i.cw = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter68 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cx = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cy = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.cz, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12348
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12352

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.dc = icmp ult i64 %i.cw, 7
  br i1 %i.dc, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dd = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.de, ptr %.06.i.i.i.i.i, align 4, !tbaa !2263, !noalias !12348
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !2263, !noalias !12348
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2263, !noalias !12348
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !2263, !noalias !12348
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !2263, !noalias !12348
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !2263, !noalias !12348
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !2263, !noalias !12348
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.dz = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !2263, !noalias !12348
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !2263, !noalias !12348
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12353

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i49.i.i.i ], [ %i.ed, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ee = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.ee, ptr %.01517.i.i.i.i, align 4, !tbaa !2263
  %i.ef = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.eh, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !10901

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check45 = icmp ult i64 %i.aq, 8
  %i.ej = sub i64 %i.h, %i.ao
  %diff.check43 = icmp ugt i64 %i.ej, -32
  %or.cond61 = select i1 %min.iters.check45, i1 true, i1 %diff.check43
  br i1 %or.cond61, label %.lr.ph.i.i52.i.i.i.preheader63, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec47 = and i64 %i.aq, -8                    ; 3 uses
  %i.ek = shl nsw i64 %n.vec47, 2                 ; 2 uses
  %i.el = getelementptr i8, ptr %i.g, i64 %i.ek   ; 2 uses
  %i.em = getelementptr i8, ptr %i.a, i64 %i.ek
  %i.en = and i64 %i.aq, 7
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.eo = shl i64 %index49, 2                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.g, i64 %i.eo ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.a, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load52 = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !2263, !noalias !12354
  %wide.load53 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !2263, !noalias !12354
  %i.eq = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load52, ptr %next.gep51, align 4, !tbaa !2263, !noalias !12354
  store <4 x i32> %wide.load53, ptr %i.eq, align 4, !tbaa !2263, !noalias !12354
  %index.next54 = add nuw i64 %index49, 8         ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN5boost9container3dtl9flat_treeINS0_4test12copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SH_:bb.a
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !2263
  %i.do = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !12433

_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test12copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test12copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEESC_RKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.233", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2466   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2300
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2271 ; 4 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2466   ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !2275   ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 13 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.l = add i64 %3, -1
  %xtraiter79 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.m = phi ptr [ %i.q, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2263, !noalias !12434
  store i32 %i.n, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12434
  %i.o = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12437

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr82 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %i.t = icmp ult i64 %i.l, 3
  br i1 %i.t, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.u = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.unr82, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.am, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.v = load i32, ptr %i.u, align 4, !tbaa !2263, !noalias !12434
  store i32 %i.v, ptr %.01214.i.i.i.i, align 4, !tbaa !2263, !noalias !12434
  %i.w = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434 ; 4 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !2263, !noalias !12434
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !2263, !noalias !12434
  %i.ab = add i32 %i.w, 2
  store i32 %i.ab, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !2263, !noalias !12434
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !2263, !noalias !12434
  %i.af = add i32 %i.w, 3
  store i32 %i.af, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !2263, !noalias !12434
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !2263, !noalias !12434
  %i.aj = add i32 %i.w, 4
  store i32 %i.aj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35, !noalias !12434
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.am = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !12438

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.an = ptrtoint ptr %i.j to i64
  %i.ao = ptrtoint ptr %i.a to i64                ; 4 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.aq, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = sub i64 0, %3
  %i.as = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ar ; 6 uses
  %i.at = add i64 %3, -1
  %xtraiter = and i64 %3, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i10.i.i.prol
  %.020.i.i.i.i.prol = phi i64 [ %i.au, %.lr.ph.i.i10.i.i.prol ], [ %3, %bb.f ]
  %.0819.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i.prol ], [ %i.as, %bb.f ] ; 2 uses
  %.01618.i.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i10.i.i.prol ], [ %i.j, %bb.f ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i10.i.i.prol ], [ 0, %bb.f ]
  %i.au = add i64 %.020.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i.prol) ]
  %i.av = load i32, ptr %.0819.i.i.i.i.prol, align 4, !tbaa !2263
  store i32 %i.av, ptr %.01618.i.i.i.i.prol, align 4, !tbaa !2263
  %i.aw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i.prol, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol, !llvm.loop !12439

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.as, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp ult i64 %i.at, 3
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !2263
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35 ; 4 uses
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !2263
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !2263
  %i.bh = add i32 %i.bc, 2
  store i32 %i.bh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !2263
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !2263
  %i.bl = add i32 %i.bc, 3
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 12
  %i.bn = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 12
  %i.bo = add i64 %.020.i.i.i.i, -4               ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2263
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2263
  %i.bq = add i32 %i.bc, 4
  store i32 %i.bq, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 16
  %.not.i.i11.i.i.3 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i11.i.i.3, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !10895

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.as
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bt = ptrtoaddr ptr %i.i to i64
  %i.bu = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bu, %i.bt
  %i.bv = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bw = add i64 %7, %i.ao
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bx, 60
  %i.ca = shl i64 %3, 2
  %diff.check = icmp ugt i64 %i.ca, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i40.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i40.i.i.i.preheader
  %n.vec = and i64 %i.bz, 9223372036854775800     ; 3 uses
  %i.cb = mul i64 %n.vec, -4                      ; 2 uses
  %i.cc = getelementptr i8, ptr %i.j, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.as, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.ce ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.as, i64 %i.ce ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %next.gep21, i64 -16
  %i.cg = getelementptr inbounds i8, ptr %next.gep21, i64 -32
  %wide.load = load <4 x i32>, ptr %i.cf, align 4, !tbaa !2263
  %wide.load22 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !2263
  %i.ch = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ci = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ch, align 4, !tbaa !2263
  store <4 x i32> %wide.load22, ptr %i.ci, align 4, !tbaa !2263
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !12440

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader67

.lr.ph.i40.i.i.i.preheader67:                     ; preds = %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.cc, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.as, %.lr.ph.i40.i.i.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader67, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %.079.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader67 ]
  %i.ck = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !2263
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !2263
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ck
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !12441

_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test12copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check27 = icmp ult i64 %3, 8
  %i.cn = sub i64 %i.h, %i.ao
  %diff.check25 = icmp ugt i64 %i.cn, -32
  %or.cond60 = select i1 %min.iters.check27, i1 true, i1 %diff.check25
  br i1 %or.cond60, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec29 = and i64 %3, -8                       ; 3 uses
  %i.co = shl i64 %n.vec29, 2                     ; 2 uses
  %i.cp = getelementptr i8, ptr %i.g, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.a, i64 %i.co
  %i.cr = and i64 %3, 7
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %i.cs = shl i64 %index31, 2                     ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 %i.cs ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.a, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load34 = load <4 x i32>, ptr %next.gep32, align 4, !tbaa !2263, !noalias !12442
  %wide.load35 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !2263, !noalias !12442
  %i.cu = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %wide.load34, ptr %next.gep33, align 4, !tbaa !2263, !noalias !12442
  store <4 x i32> %wide.load35, ptr %i.cu, align 4, !tbaa !2263, !noalias !12442
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.cv = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.cv, label %middle.block37, label %vector.body30, !llvm.loop !12445

middle.block37:                                   ; preds = %vector.body30
  %cmp.n38 = icmp eq i64 %3, %n.vec29
  br i1 %cmp.n38, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block37
  %.ph65 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cp, %middle.block37 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cq, %middle.block37 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test12copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cr, %middle.block37 ] ; 4 uses
  %i.cw = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter68 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cx = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.prol ], [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cy = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.cz, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2263, !noalias !12442
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12446

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph65, %.lr.ph.i.i.i.i.i.preheader ], [ %i.da, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.prol ]
  %i.dc = icmp ult i64 %i.cw, 7
  br i1 %i.dc, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dd = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.de, ptr %.06.i.i.i.i.i, align 4, !tbaa !2263, !noalias !12442
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !2263, !noalias !12442
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2263, !noalias !12442
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !2263, !noalias !12442
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !2263, !noalias !12442
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !2263, !noalias !12442
  %i.du = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !2263, !noalias !12442
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dd, i64 28
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.dz = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ea = load i32, ptr %i.dx, align 4, !tbaa !2263, !noalias !12442
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !2263, !noalias !12442
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test12copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !12447

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.eh, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 2 uses
  %.01517.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i49.i.i.i ], [ %i.ed, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.ee = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2263
  store i32 %i.ee, ptr %.01517.i.i.i.i, align 4, !tbaa !2263
  %i.ef = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.eh, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !10901

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check45 = icmp ult i64 %i.aq, 8
  %i.ej = sub i64 %i.h, %i.ao
  %diff.check43 = icmp ugt i64 %i.ej, -32
  %or.cond61 = select i1 %min.iters.check45, i1 true, i1 %diff.check43
  br i1 %or.cond61, label %.lr.ph.i.i52.i.i.i.preheader63, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %n.vec47 = and i64 %i.aq, -8                    ; 3 uses
  %i.ek = shl nsw i64 %n.vec47, 2                 ; 2 uses
  %i.el = getelementptr i8, ptr %i.g, i64 %i.ek   ; 2 uses
  %i.em = getelementptr i8, ptr %i.a, i64 %i.ek
  %i.en = and i64 %i.aq, 7
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph46
  %index49 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.eo = shl i64 %index49, 2                     ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.g, i64 %i.eo ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.a, i64 %i.eo ; 2 uses
  %i.ep = getelementptr i8, ptr %next.gep50, i64 16
  %wide.load52 = load <4 x i32>, ptr %next.gep50, align 4, !tbaa !2263, !noalias !12448
  %wide.load53 = load <4 x i32>, ptr %i.ep, align 4, !tbaa !2263, !noalias !12448
  %i.eq = getelementptr i8, ptr %next.gep51, i64 16
  store <4 x i32> %wide.load52, ptr %next.gep51, align 4, !tbaa !2263, !noalias !12448
  store <4 x i32> %wide.load53, ptr %i.eq, align 4, !tbaa !2263, !noalias !12448
  %index.next54 = add nuw i64 %index49, 8         ; 2 uses
end_hunk_14
begin_hunk_15_@_ZN5boost7movelib29inplace_set_unique_differenceINS_9container12vec_iteratorIPNS2_4test24movable_and_copyable_intELb0EEES7_NS2_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SG_SG_T0_SH_T1_:bb.a

._crit_edge.i18:                                  ; preds = %._crit_edge.i18.loopexit, %.preheader.i12
  %.sroa.0.0..sroa.0.0..sroa.0.0.22 = phi ptr [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.22.pre, %.preheader.i12 ], [ %i.bw, %._crit_edge.i18.loopexit ] ; 2 uses
  %.sroa.02.0.lcssa.i19 = phi ptr [ %i.bo, %.preheader.i12 ], [ %.sroa.02.1.i16, %._crit_edge.i18.loopexit ] ; 2 uses
  %i.by = load i32, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !2745, !noalias !13066
  store i32 %i.by, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, align 4, !tbaa !2745, !noalias !13066
  store i32 0, ptr %.sroa.02.0.lcssa.i19, align 4, !tbaa !2745, !noalias !13066
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0.22, i64 4
  br label %.loopexit

bb.s:                                             ; preds = %.lr.ph.i4
  %i.ca = load i32, ptr %i.bo, align 4, !tbaa !2745, !noalias !13066 ; 4 uses
  %i.cb = load i32, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., align 4, !tbaa !2745, !noalias !13066 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.preheader7.i10, label %bb.v

.preheader7.i10:                                  ; preds = %bb.s, %bb.t
  %i.cd = phi ptr [ %i.ce, %bb.t ], [ %i.bo, %bb.s ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 4 uses
  %.not5.i11 = icmp eq ptr %i.ce, %i.bj
  br i1 %.not5.i11, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.preheader7.i10
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !2745, !noalias !13066
  %i.cg = icmp slt i32 %i.ca, %i.cf
  br i1 %i.cg, label %bb.u, label %.preheader7.i10, !llvm.loop !13060

bb.u:                                             ; preds = %bb.t, %.preheader7.i10
  store ptr %i.ce, ptr %.sroa.031, align 8, !tbaa !3145, !noalias !13066
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21 = load ptr, ptr %.sroa.0, align 8, !tbaa !3145, !noalias !13066 ; 2 uses
  store i32 %i.ca, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, align 4, !tbaa !2745, !noalias !13066
  store i32 0, ptr %i.bo, align 4, !tbaa !2745, !noalias !13066
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.ch = icmp slt i32 %i.cb, %i.ca               ; 2 uses
  %..i5 = select i1 %i.ch, ptr %.sroa.025.0..sroa.025.0..sroa.025.0..sroa.025.0., ptr %i.bo
  %.25.i6 = select i1 %i.ch, ptr %.sroa.025, ptr %.sroa.031
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink24.i7 = phi ptr [ %..i5, %bb.v ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.21, %bb.u ]
  %.sink23.i8 = phi ptr [ %.25.i6, %bb.v ], [ %.sroa.0, %bb.u ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink24.i7, i64 4
  store ptr %i.ci, ptr %.sink23.i8, align 8, !tbaa !3145, !noalias !13066
  %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32 = load ptr, ptr %.sroa.031, align 8, !tbaa !3145, !noalias !13066 ; 2 uses
  %.not.i9 = icmp eq ptr %.sroa.031.0..sroa.031.0..sroa.031.0..sroa.031.0.32, %i.bj
  br i1 %.not.i9, label %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, label %.lr.ph.i4, !llvm.loop !13061

_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit: ; preds = %bb.w
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load ptr, ptr %.sroa.0, align 8, !tbaa !2906, !noalias !13066
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %bb.f, %.preheader67, %.preheader66, %bb.a, %._crit_edge.i18, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit, %._crit_edge.i, %.loopexit.loopexit, %._crit_edge94
  %.sroa.036.0..sroa.036.0..sroa.036.0..sink = phi ptr [ %i.p, %._crit_edge94 ], [ %i.ab, %.preheader66 ], [ %i.r, %.preheader67 ], [ %.sroa.036.0..sroa.036.0..sroa.036.0..sroa.036.0..pre, %.loopexit.loopexit ], [ %i.ax, %._crit_edge.i ], [ %i.bz, %._crit_edge.i18 ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_ZN5boost7movelib21set_unique_differenceINS_13move_iteratorINS_9container12vec_iteratorIPNS3_4test24movable_and_copyable_intELb0EEEEES8_S8_NS3_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEET1_T_SJ_T0_SK_SI_T2_.exit20.loopexit ], [ %i.a, %bb.a ], [ %.pre, %.split ], [ %i.ab, %bb.f ]
  store ptr %.sroa.036.0..sroa.036.0..sroa.036.0..sink, ptr %0, align 8, !tbaa !3145
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEENS0_12vec_iteratorISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !2906   ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2782
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2753 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !2757   ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e ; 19 uses
  %i.j = icmp eq ptr %i.i, %i.a
  %.not15.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter83 = and i64 %3, 1
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.k = load i32, ptr %4, align 4, !tbaa !2745
  store i32 %i.k, ptr %i.i, align 4, !tbaa !2745
  store i32 0, ptr %4, align 4, !tbaa !2745
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.p = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.018.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %.01417.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.016.i.i.i.i.unr = phi ptr [ %4, %.lr.ph.i.i.i.i.preheader ], [ %i.n, %.lr.ph.i.i.i.i.prol ]
  %i.q = icmp eq i64 %3, 1
  br i1 %i.q, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.018.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i ], [ %.018.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01417.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %.01417.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %.sroa.0.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i.i.i) ]
  %i.r = load i32, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.r, ptr %.01417.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.sroa.0.016.i.i.i.i, align 4, !tbaa !2745
  %i.s = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35 ; 2 uses
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 4 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 4
  %i.w = load i32, ptr %i.u, align 4, !tbaa !2745
  store i32 %i.w, ptr %i.v, align 4, !tbaa !2745
  store i32 0, ptr %i.u, align 4, !tbaa !2745
  %i.x = add i32 %i.s, 2
  store i32 %i.x, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.01417.i.i.i.i, i64 8
  %i.aa = add i64 %.018.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !13069

bb.d:                                             ; preds = %bb.b
  br i1 %.not15.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ab = ptrtoint ptr %i.i to i64
  %i.ac = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = ashr exact i64 %i.ad, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ae, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = sub i64 0, %3
  %i.ag = getelementptr [4 x i8], ptr %i.i, i64 %i.af ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.ah = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !2745
  store i32 %i.ai, ptr %i.i, align 4, !tbaa !2745
  store i32 0, ptr %i.ag, align 4, !tbaa !2745
  %i.aj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.ah, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ag, %bb.f ], [ %i.al, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.i, %bb.f ], [ %i.am, %.lr.ph.i.i10.i.i.prol ]
  %i.an = icmp eq i64 %3, 1
  br i1 %i.an, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.ax, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.ao = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.ao, ptr %.01618.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.at = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !2745
  store i32 %i.au, ptr %i.as, align 4, !tbaa !2745
  store i32 0, ptr %i.ar, align 4, !tbaa !2745
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.at, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !13070

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ag
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.az = shl nuw nsw i64 %i.e, 2
  %5 = add i64 %i.az, %i.h
  %i.ba = add i64 %5, -4
  %6 = shl i64 %3, 2
  %i.bb = add i64 %6, %i.ac
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bc, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bf = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bg = add nsw i64 %i.bf, -4
  %i.bh = add i64 %i.bf, %i.h
  %i.bi = add i64 %i.bh, -4
  %i.bj = shl i64 %3, 2                           ; 2 uses
  %i.bk = add i64 %i.bj, %i.ac
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = and i64 %i.bl, -4                       ; 2 uses
  %i.bn = sub i64 %i.bg, %i.bm
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.bn
  %i.bo = add nsw i64 %i.bf, -4
  %i.bp = add i64 %i.bj, %i.bm
  %i.bq = sub i64 %i.bo, %i.bp
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bq
  %bound0 = icmp ult ptr %scevgep, %i.ag
  %bound1 = icmp ult ptr %scevgep22, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.be, 9223372036854775800     ; 3 uses
  %i.br = mul i64 %n.vec, -4                      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.i, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ag, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bu ; 2 uses
  %next.gep23 = getelementptr i8, ptr %i.ag, i64 %i.bu ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %next.gep23, i64 -16 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %next.gep23, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bv, align 4, !tbaa !2745, !alias.scope !13071
  %wide.load24 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !2745, !alias.scope !13071
  %i.bx = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.by = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bx, align 4, !tbaa !2745, !alias.scope !13074, !noalias !13071
  store <4 x i32> %wide.load24, ptr %i.by, align 4, !tbaa !2745, !alias.scope !13074, !noalias !13071
  store <4 x i32> zeroinitializer, ptr %i.bv, align 4, !tbaa !2745, !alias.scope !13071
  store <4 x i32> zeroinitializer, ptr %i.bw, align 4, !tbaa !2745, !alias.scope !13071
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !13076

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.be, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader74

.lr.ph.i40.i.i.i.preheader74:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.i, %vector.memcheck ], [ %i.i, %.lr.ph.i40.i.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i40.i.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader74, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %.079.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader74 ]
  %i.ca = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !2745
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !2745
  store i32 0, ptr %i.ca, align 4, !tbaa !2745
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.ca
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !13077

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check33 = icmp ult i64 %3, 8
  br i1 %min.iters.check33, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck26

vector.memcheck26:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cd = shl i64 %3, 2                           ; 2 uses
  %scevgep27 = getelementptr i8, ptr %i.a, i64 %i.cd
  %scevgep28 = getelementptr i8, ptr %4, i64 %i.cd
  %bound029 = icmp ult ptr %i.a, %scevgep28
  %bound130 = icmp ult ptr %4, %scevgep27
  %found.conflict31 = and i1 %bound029, %bound130
  br i1 %found.conflict31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck26
  %n.vec35 = and i64 %3, -8                       ; 3 uses
  %i.ce = and i64 %3, 7
  %i.cf = shl i64 %n.vec35, 2                     ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf
  %i.ch = getelementptr i8, ptr %4, i64 %i.cf
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.ci = shl i64 %index37, 2                     ; 2 uses
  %next.gep38 = getelementptr i8, ptr %i.a, i64 %i.ci ; 2 uses
  %next.gep39 = getelementptr i8, ptr %4, i64 %i.ci ; 3 uses
  %i.cj = getelementptr i8, ptr %next.gep39, i64 16 ; 2 uses
  %wide.load40 = load <4 x i32>, ptr %next.gep39, align 4, !tbaa !2745, !alias.scope !13078
  %wide.load41 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !13078
  %i.ck = getelementptr i8, ptr %next.gep38, i64 16
  store <4 x i32> %wide.load40, ptr %next.gep38, align 4, !tbaa !2745, !alias.scope !13081, !noalias !13078
  store <4 x i32> %wide.load41, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !13081, !noalias !13078
  store <4 x i32> zeroinitializer, ptr %next.gep39, align 4, !tbaa !2745, !alias.scope !13078
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !13078
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.cl = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.cl, label %middle.block43, label %vector.body36, !llvm.loop !13083

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %3, %n.vec35
  br i1 %cmp.n44, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck26, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block43
  %.09.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck26 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ce, %middle.block43 ] ; 4 uses
  %.048.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck26 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cg, %middle.block43 ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.ph = phi ptr [ %4, %vector.memcheck26 ], [ %4, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block43 ] ; 2 uses
  %i.cm = add i64 %.09.i.i.i.i.i.ph, -1
  %xtraiter75 = and i64 %.09.i.i.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  br i1 %lcmp.mod76.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.048.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.07.i.i.i.i.i.prol = phi ptr [ %i.cp, %.lr.ph.i.i.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cn = add i64 %.09.i.i.i.i.i.prol, -1         ; 2 uses
  %i.co = load i32, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !2745
  store i32 %i.co, ptr %.048.i.i.i.i.i.prol, align 4, !tbaa !2745
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i.prol, align 4, !tbaa !2745
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.prol, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter75
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !13084

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.048.i.i.i.i.i.unr = phi ptr [ %.048.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.07.i.i.i.i.i.unr = phi ptr [ %.sroa.0.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = icmp ult i64 %i.cm, 3
  br i1 %i.cr, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.09.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.048.i.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i ], [ %.048.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cs = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.cs, ptr %.048.i.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.sroa.0.07.i.i.i.i.i, align 4, !tbaa !2745
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 4
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !2745
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !2745
  store i32 0, ptr %i.ct, align 4, !tbaa !2745
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 8
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !2745
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !2745
  store i32 0, ptr %i.cw, align 4, !tbaa !2745
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 12 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 12
  %i.db = add i64 %.09.i.i.i.i.i, -4              ; 2 uses
  %i.dc = load i32, ptr %i.cz, align 4, !tbaa !2745
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !2745
  store i32 0, ptr %i.cz, align 4, !tbaa !2745
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.048.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorIPS3_EEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !13085

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i12.i.i = phi ptr [ %i.dj, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i49.i.i.i ], [ %i.df, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dg = load i32, ptr %.018.i.i12.i.i, align 4, !tbaa !2745
  store i32 %i.dg, ptr %.01517.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.018.i.i12.i.i, align 4, !tbaa !2745
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %.018.i.i12.i.i, i64 4 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dj, %i.i
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i53.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !13086

.lr.ph.i.i53.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check55 = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check55, label %.lr.ph.i.i53.i.i.i.preheader71, label %vector.memcheck48

vector.memcheck48:                                ; preds = %.lr.ph.i.i53.i.i.i.preheader
  %scevgep50 = getelementptr i8, ptr %4, i64 %i.ad
  %bound051 = icmp ult ptr %i.a, %scevgep50
  %bound152 = icmp ult ptr %4, %i.i
  %found.conflict53 = and i1 %bound051, %bound152
end_hunk_15
begin_hunk_16_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeET0_RT1_:bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !2745
  store i32 0, ptr %.pn36.i, align 4, !tbaa !2745
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2745 ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !2745
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !2745
  store i32 0, ptr %i.m, align 4, !tbaa !2745
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !13640

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !13641

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub i64 %1, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13123
  %.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.w = load ptr, ptr %2, align 8, !tbaa !13039
  tail call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.w)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !85
  %i.x = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSI_SK_SK_SK_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !13123
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13037 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %.not.i31 = icmp ult i64 %i.ac, %i.s
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !13039
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.ae)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef nonnull %i.y)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !85
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %1, %i.ah
  %i.an = add i64 %i.am, %i.aj
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !85
  %i.ap = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_(ptr noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !85  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = sub i64 %1, %i.aq
  %i.at = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !85
  %i.av = load i64, ptr %i.c, align 8, !tbaa !85
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %i.at, ptr noundef %0, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !2745 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !2745
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !2745
  store i32 0, ptr %.pn36.i, align 4, !tbaa !2745
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2745 ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !2745
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !2745
  store i32 0, ptr %i.m, align 4, !tbaa !2745
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !13640

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph38.i, !llvm.loop !13641

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.e, 1                         ; 6 uses
  %i.s = sub i64 %i.e, %i.r                       ; 10 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.u)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %cond = icmp eq i64 %i.s, 0
  br i1 %cond, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %2, %bb.g ] ; 11 uses
  %.01626.i.i = phi ptr [ %i.ay, %bb.k ], [ %0, %bb.g ] ; 8 uses
  %.01725.i.i = phi ptr [ %.118.i.i, %bb.k ], [ %i.u, %bb.g ] ; 5 uses
  %i.w = icmp eq ptr %.01725.i.i, %1
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i65.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = add i64 %i.d, %i.a
  %i.x = add i64 %3, -4
  %4 = shl i64 %i.r, 2
  %i.y = add i64 %4, %.027.i.i65.le
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %indvar, 2
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = add i64 %i.d, %i.a
  %i.af = add i64 %i.ae, -4
  %i.ag = shl i64 %i.r, 2
  %i.ah = add i64 %i.ag, %.027.i.i65.le
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep67 = getelementptr i8, ptr %.027.i.i, i64 4
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.aj
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep68
  %bound1 = icmp ult ptr %.027.i.i, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01626.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.027.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.an ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.027.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep69, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !2745, !alias.scope !13642
  %wide.load70 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !2745, !alias.scope !13642
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !2745, !alias.scope !13645, !noalias !13642
  store <4 x i32> %wide.load70, ptr %i.ap, align 4, !tbaa !2745, !alias.scope !13645, !noalias !13642
  store <4 x i32> zeroinitializer, ptr %next.gep69, align 4, !tbaa !2745, !alias.scope !13642
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !2745, !alias.scope !13642
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !13647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i.preheader73

.lr.ph.i.i.i.i.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader73, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !2745
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.v
  br i1 %.not.i.i.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !13648

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.au = load i32, ptr %.027.i.i, align 4, !tbaa !2745 ; 2 uses
  %i.av = load i32, ptr %.01725.i.i, align 4, !tbaa !2745 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.au, %i.av
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.av, ptr %.01626.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !2745
  %i.aw = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.au, ptr %.01626.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.027.i.i, align 4, !tbaa !2745
  %i.ax = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.aw, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i, !llvm.loop !13649

.lr.ph.i27.preheader:                             ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %xtraiter79 = and i64 %i.s, 3                   ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.in.i.prol = phi i64 [ %i.az, %.lr.ph.i27.prol ], [ %i.s, %.lr.ph.i27.preheader ]
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.az = add i64 %.in.i.prol, -1                 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !2745
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !13650

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.in.i.unr = phi i64 [ %i.s, %.lr.ph.i27.preheader ], [ %i.az, %.lr.ph.i27.prol ]
  %i.bd = sub i64 %i.r, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27
  %.in.i = phi i64 [ %i.br, %.lr.ph.i27 ], [ %.in.i.unr, %.lr.ph.i27.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !2745
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !2745
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -12
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !2745
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = add i64 %.in.i, -4                      ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !2745
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not.i28.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i28.3, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEES7_NS_11move_detail8identityIS7_EEEEPS7_EEvT0_SE_T_.exit, label %.lr.ph.i27, !llvm.loop !13651

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.not1.i30 = icmp eq i64 %i.s, 0
  br i1 %.not1.i30, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.in.i32.prol = phi i64 [ %i.bw, %.lr.ph.i31.prol ], [ %i.s, %.lr.ph.i31.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.bw = add i64 %.in.i32.prol, -1               ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !2745
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !13652

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.in.i32.unr = phi i64 [ %i.s, %.lr.ph.i31.preheader ], [ %i.bw, %.lr.ph.i31.prol ]
  %i.ca = sub i64 %i.r, %i.e
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.in.i32 = phi i64 [ %i.co, %.lr.ph.i31 ], [ %.in.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !2745
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !2745
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cl = getelementptr i8, ptr %i.ck, i64 -12
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !2745
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.co = add i64 %.in.i32, -4                    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.co
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !2745
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
end_hunk_16
begin_hunk_17_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_:bb.a
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !2745
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !2745
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !2745
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !2745
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !13209

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !13819

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !2745
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !2745
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !2745
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !2745
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !13209

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !2745
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !2745
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !2745 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !2745
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !2745
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !2745
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !2745
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !2745
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !2745
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !2745
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !13818

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !2745
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !2745
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !13209

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i, align 4, !tbaa !2745
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !2745
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !2745
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !2745
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !13209

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub i64 %.04089, %.04287                ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !13820

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareISt4lessIS4_ES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SF_SF_SF_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 13 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = udiv i64 %1, %i.b
  %i.p = shl i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 4
  %i.r = mul i64 %2, %i.q
  %scevgep = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %scevgep, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.s = mul i64 %n.vec, -4                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !2745, !alias.scope !13821
  %wide.load139 = load <4 x i32>, ptr %i.x, align 4, !tbaa !2745, !alias.scope !13821
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.z = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !2745, !alias.scope !13824, !noalias !13821
  store <4 x i32> %wide.load139, ptr %i.z, align 4, !tbaa !2745, !alias.scope !13824, !noalias !13821
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !2745, !alias.scope !13821
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !2745, !alias.scope !13821
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !13826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader292

.lr.ph.i.i.preheader292:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader292, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %.079.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !2745
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !2745
  store i32 0, ptr %i.ab, align 4, !tbaa !2745
  %.not.i.i = icmp eq ptr %i.f, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !13827

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bn, %bb.g ], [ %i.ag, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.af, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ae, %bb.c ] ; 9 uses
  %i.ah = icmp eq ptr %.02442.i, %i.ae
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i143.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ai = udiv i64 %1, %i.b
  %i.aj = mul i64 %2, %i.ai
  %5 = add i64 %.02541.i143.le, -4
  %6 = shl i64 %i.aj, 3
  %i.ak = add i64 %6, %i.a
  %i.al = sub i64 %5, %i.ak                       ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.al, 188
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader285, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67267 = add i64 %2, %1
  %i.ao = shl i64 %.idx67267, 2
  %i.ap = add i64 %i.ao, -4
  %i.aq = shl i64 %indvar, 2
  %i.ar = sub i64 %i.ap, %i.aq
  %scevgep142 = getelementptr i8, ptr %0, i64 %i.ar
  %i.as = udiv i64 %1, %i.b
  %i.at = mul i64 %2, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, %i.a
  %reass.sub = sub i64 %.02541.i143.le, %i.av
  %i.aw = add i64 %reass.sub, -4
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = mul i64 %i.ax, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep142, i64 %i.ay
  %scevgep145 = getelementptr i8, ptr %.02541.i, i64 -4
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.ay
  %bound0147 = icmp ult ptr %scevgep144, %.02541.i
  %bound1148 = icmp ult ptr %scevgep146, %.043.i
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i.preheader285, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck141
  %n.vec153 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.az = mul i64 %n.vec153, -4                   ; 2 uses
  %i.ba = getelementptr i8, ptr %.043.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.02541.i, i64 %i.az
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.bc = mul i64 %index155, -4                   ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.043.i, i64 %i.bc ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.02541.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !2745, !alias.scope !13828
  %wide.load159 = load <4 x i32>, ptr %i.be, align 4, !tbaa !2745, !alias.scope !13828
  %i.bf = getelementptr inbounds i8, ptr %next.gep156, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %next.gep156, i64 -32
  store <4 x i32> %wide.load158, ptr %i.bf, align 4, !tbaa !2745, !alias.scope !13831, !noalias !13828
  store <4 x i32> %wide.load159, ptr %i.bg, align 4, !tbaa !2745, !alias.scope !13831, !noalias !13828
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !2745, !alias.scope !13828
  store <4 x i32> zeroinitializer, ptr %i.be, align 4, !tbaa !2745, !alias.scope !13828
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.bh, label %middle.block161, label %vector.body154, !llvm.loop !13833

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.an, %n.vec153
  br i1 %cmp.n162, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader285

.lr.ph.i.i.i.preheader285:                        ; preds = %vector.memcheck141, %.lr.ph.i.i.i.preheader, %middle.block161
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck141 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block161 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck141 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block161 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader285, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %.079.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %i.bi = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !2745
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !2745
  store i32 0, ptr %i.bi, align 4, !tbaa !2745
  %.not.i.i.i = icmp eq ptr %i.f, %i.bi
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !13834

bb.d:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !2745 ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2745 ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2745
  store i32 0, ptr %i.bm, align 4, !tbaa !2745
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !2745
  store i32 0, ptr %i.bl, align 4, !tbaa !2745
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bm, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bl, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !13835

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.af, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.c ], [ %i.bn, %bb.g ] ; 7 uses
  %.024.lcssa.i166 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ae, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %i.br = udiv i64 %1, %i.b
  %i.bs = shl i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, 4
  %i.bu = mul i64 %2, %i.bt
  %i.bv = add i64 %.024.lcssa.i166, -4
  %i.bw = add i64 %i.bu, %i.a
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check173, label %.lr.ph.i.i30.i.preheader284, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.ca = udiv i64 %1, %i.b
  %i.cb = shl i64 %i.ca, 3
  %i.cc = or disjoint i64 %i.cb, 4
  %i.cd = mul i64 %2, %i.cc
  %i.ce = add i64 %i.cd, %i.a
  %reass.sub269 = sub i64 %i.ce, %.024.lcssa.i166
  %.not268 = add i64 %reass.sub269, 3
  %i.cf = and i64 %.not268, -4                    ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cf
  %scevgep168 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cf
  %bound0169 = icmp ult ptr %scevgep167, %.024.lcssa.i
  %bound1170 = icmp ult ptr %scevgep168, %.0.lcssa.i
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i30.i.preheader284, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec175, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cg
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.cj = mul i64 %index177, -4                   ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep179, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep179, i64 -32 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !13836
  %wide.load181 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !13836
  %i.cm = getelementptr inbounds i8, ptr %next.gep178, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep178, i64 -32
  store <4 x i32> %wide.load180, ptr %i.cm, align 4, !tbaa !2745, !alias.scope !13839, !noalias !13836
  store <4 x i32> %wide.load181, ptr %i.cn, align 4, !tbaa !2745, !alias.scope !13839, !noalias !13836
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !13836
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !13836
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.co, label %middle.block183, label %vector.body176, !llvm.loop !13841

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.bz, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader284

.lr.ph.i.i30.i.preheader284:                      ; preds = %vector.memcheck165, %.lr.ph.i.i30.i.preheader, %middle.block183
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck165 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ch, %middle.block183 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck165 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ci, %middle.block183 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader284, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cq, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %.079.i.i32.i = phi ptr [ %i.cp, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !2745
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !2745
  store i32 0, ptr %i.cp, align 4, !tbaa !2745
  %.not.i.i33.i = icmp eq ptr %i.ae, %i.cp
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !13842

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block161, %middle.block183, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  %i.cs = mul i64 %2, -8                          ; 2 uses
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ct = shl i64 %2, 3
  %i.cu = shl i64 %2, 3
  %i.cv = mul i64 %2, -8
  %i.cw = shl i64 %2, 3
end_hunk_17
begin_hunk_18_@_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE24priv_set_difference_backINS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEENS0_3dtl23flat_tree_value_compareISt4lessIS3_ES3_NS_11move_detail8identityIS3_EEEEEEvT_SL_T0_:bb.a

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v
  call void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind nonnull writable sret(%"class.boost::container::vec_iterator.255") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.ab, i64 noundef 1, ptr nonnull align 4 dereferenceable(4) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.pre = load ptr, ptr %0, align 8, !tbaa !2757
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !3145
  br label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit

_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ac = phi ptr [ %i.r, %bb.e ], [ %.pre35, %bb.f ]
  %i.ad = phi ptr [ %i.q, %bb.e ], [ %.pre, %bb.f ] ; 6 uses
  %.not = icmp eq ptr %.0192956, %i.ad            ; 3 uses
  %i.ae = ptrtoint ptr %.0163055 to i64
  %i.af = ptrtoint ptr %.0192956 to i64           ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ad, i64 %i.ag
  %i.ai = ptrtoint ptr %.03154 to i64
  %i.aj = sub i64 %i.ai, %i.af
  %i.ak = getelementptr inbounds i8, ptr %i.ad, i64 %i.aj
  %.120 = select i1 %.not, ptr %.0192956, ptr %i.ad
  %.117 = select i1 %.not, ptr %.0163055, ptr %i.ah
  %.1 = select i1 %.not, ptr %.03154, ptr %i.ak
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !3145
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.am = icmp slt i32 %i.t, %i.s
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  store ptr %i.an, ptr %1, align 8, !tbaa !3145
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = phi ptr [ %i.an, %bb.h ], [ %i.r, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0163055, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit
  %i.aq = phi ptr [ %i.al, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ar = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.q, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.ad, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.p, %bb.i ]
  %.221 = phi ptr [ %.120, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.0192956, %bb.i ]
  %.218 = phi ptr [ %.117, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %i.ap, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE12emplace_backIJS3_EEERS3_DpOT_.exit ], [ %.03154, %bb.i ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !3145  ; 2 uses
  %.not24 = icmp eq ptr %i.aq, %i.at
  br i1 %.not24, label %.loopexit, label %bb.b, !llvm.loop !14926

.loopexit:                                        ; preds = %bb.j, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEESD_RKSC_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.278", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2906   ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2782
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2753 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2906   ; 17 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !2757   ; 7 uses
  %i.i = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.e ; 19 uses
  %i.k = icmp eq ptr %i.j, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter84 = and i64 %3, 1
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.l = load i32, ptr %i.g, align 4, !tbaa !2745, !noalias !14933
  store i32 %i.l, ptr %i.j, align 4, !tbaa !2745, !noalias !14933
  store i32 0, ptr %i.g, align 4, !tbaa !2745, !noalias !14933
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14933
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14933
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr87 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.o, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.q, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.preheader ], [ %i.p, %.lr.ph.i.i.i.i.prol ]
  %i.r = icmp eq i64 %3, 1
  br i1 %i.r, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %.unr87, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.015.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.t = load i32, ptr %i.s, align 4, !tbaa !2745, !noalias !14933
  store i32 %i.t, ptr %.01214.i.i.i.i, align 4, !tbaa !2745, !noalias !14933
  store i32 0, ptr %i.s, align 4, !tbaa !2745, !noalias !14933
  %i.u = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14933 ; 2 uses
  %i.v = add i32 %i.u, 1
  store i32 %i.v, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14933
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.y = load i32, ptr %i.w, align 4, !tbaa !2745, !noalias !14933
  store i32 %i.y, ptr %i.x, align 4, !tbaa !2745, !noalias !14933
  store i32 0, ptr %i.w, align 4, !tbaa !2745, !noalias !14933
  %i.z = add i32 %i.u, 2
  store i32 %i.z, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !14933
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.ac = add i64 %.015.i.i.i.i, -2               ; 2 uses
  %.not.i.i.i.i.1 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i.1, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !14936

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ad = ptrtoint ptr %i.j to i64
  %i.ae = ptrtoint ptr %i.a to i64                ; 3 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 2                 ; 9 uses
  %.not.i.i.i = icmp ult i64 %i.ag, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = sub i64 0, %3
  %i.ai = getelementptr [4 x i8], ptr %i.j, i64 %i.ah ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.aj = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !2745
  store i32 %i.ak, ptr %i.j, align 4, !tbaa !2745
  store i32 0, ptr %i.ai, align 4, !tbaa !2745
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.aj, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.ai, %bb.f ], [ %i.an, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.j, %bb.f ], [ %i.ao, %.lr.ph.i.i10.i.i.prol ]
  %i.ap = icmp eq i64 %3, 1
  br i1 %i.ap, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.aq = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.aq, ptr %.01618.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.av = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !2745
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !2745
  store i32 0, ptr %i.at, align 4, !tbaa !2745
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !13070

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.ai
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bb = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bb, %i.i
  %i.bc = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bd = add i64 %7, %i.ae
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bh = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bi = add nsw i64 %i.bh, -4
  %i.bj = add i64 %i.bh, %i.i
  %i.bk = add i64 %i.bj, -4
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %i.bm = add i64 %i.bl, %i.ae
  %i.bn = sub i64 %i.bk, %i.bm
  %i.bo = and i64 %i.bn, -4                       ; 2 uses
  %i.bp = sub i64 %i.bi, %i.bo
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.bp
  %i.bq = add nsw i64 %i.bh, -4
  %i.br = add i64 %i.bl, %i.bo
  %i.bs = sub i64 %i.bq, %i.br
  %scevgep20 = getelementptr i8, ptr %i.h, i64 %i.bs
  %bound0 = icmp ult ptr %scevgep, %i.ai
  %bound1 = icmp ult ptr %scevgep20, %i.j
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bg, 9223372036854775800     ; 3 uses
  %i.bt = mul i64 %n.vec, -4                      ; 2 uses
  %i.bu = getelementptr i8, ptr %i.j, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.ai, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %i.bw ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.ai, i64 %i.bw ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bx, align 4, !tbaa !2745, !alias.scope !14937
  %wide.load22 = load <4 x i32>, ptr %i.by, align 4, !tbaa !2745, !alias.scope !14937
  %i.bz = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.ca = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.bz, align 4, !tbaa !2745, !alias.scope !14940, !noalias !14937
  store <4 x i32> %wide.load22, ptr %i.ca, align 4, !tbaa !2745, !alias.scope !14940, !noalias !14937
  store <4 x i32> zeroinitializer, ptr %i.bx, align 4, !tbaa !2745, !alias.scope !14937
  store <4 x i32> zeroinitializer, ptr %i.by, align 4, !tbaa !2745, !alias.scope !14937
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !14942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader73

.lr.ph.i40.i.i.i.preheader73:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i40.i.i.i.preheader ], [ %i.bu, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.ai, %vector.memcheck ], [ %i.ai, %.lr.ph.i40.i.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader73, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader73 ]
  %.079.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader73 ]
  %i.cc = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !2745
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !2745
  store i32 0, ptr %i.cc, align 4, !tbaa !2745
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cc
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !14943

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check31 = icmp ult i64 %3, 8
  br i1 %min.iters.check31, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck24

vector.memcheck24:                                ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %i.cf = shl i64 %3, 2                           ; 2 uses
  %scevgep25 = getelementptr i8, ptr %i.a, i64 %i.cf
  %scevgep26 = getelementptr i8, ptr %i.g, i64 %i.cf
  %bound027 = icmp ult ptr %i.a, %scevgep26
  %bound128 = icmp ult ptr %i.g, %scevgep25
  %found.conflict29 = and i1 %bound027, %bound128
  br i1 %found.conflict29, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph32

vector.ph32:                                      ; preds = %vector.memcheck24
  %n.vec33 = and i64 %3, -8                       ; 3 uses
  %i.cg = shl i64 %n.vec33, 2                     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.g, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.a, i64 %i.cg
  %i.cj = and i64 %3, 7
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph32
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next40, %vector.body34 ] ; 2 uses
  %i.ck = shl i64 %index35, 2                     ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.g, i64 %i.ck ; 3 uses
  %next.gep37 = getelementptr i8, ptr %i.a, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep36, i64 16 ; 2 uses
  %wide.load38 = load <4 x i32>, ptr %next.gep36, align 4, !tbaa !2745, !alias.scope !14944, !noalias !14947
  %wide.load39 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !14944, !noalias !14947
  %i.cm = getelementptr i8, ptr %next.gep37, i64 16
  store <4 x i32> %wide.load38, ptr %next.gep37, align 4, !tbaa !2745, !alias.scope !14950, !noalias !14952
  store <4 x i32> %wide.load39, ptr %i.cm, align 4, !tbaa !2745, !alias.scope !14950, !noalias !14952
  store <4 x i32> zeroinitializer, ptr %next.gep36, align 4, !tbaa !2745, !alias.scope !14944, !noalias !14947
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !14944, !noalias !14947
  %index.next40 = add nuw i64 %index35, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next40, %n.vec33
  br i1 %i.cn, label %middle.block41, label %vector.body34, !llvm.loop !14953

middle.block41:                                   ; preds = %vector.body34
  %cmp.n42 = icmp eq i64 %3, %n.vec33
  br i1 %cmp.n42, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck24, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block41
  %.ph71 = phi ptr [ %i.g, %vector.memcheck24 ], [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ch, %middle.block41 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck24 ], [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ci, %middle.block41 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck24 ], [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cj, %middle.block41 ] ; 4 uses
  %i.co = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter74 = and i64 %.035.i.i.i.i.i.ph, 3     ; 2 uses
  %lcmp.mod75.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod75.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.cp = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i.prol ], [ %.ph71, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.cq = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !2745, !noalias !14947
  store i32 %i.cr, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2745, !noalias !14947
  store i32 0, ptr %i.cp, align 4, !tbaa !2745, !noalias !14947
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter74
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !14954

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph71, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %i.cu = icmp ult i64 %i.co, 3
  br i1 %i.cu, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.cv = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.06.i.i.i.i.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.035.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !2745, !noalias !14947
  store i32 %i.cw, ptr %.06.i.i.i.i.i, align 4, !tbaa !2745, !noalias !14947
  store i32 0, ptr %i.cv, align 4, !tbaa !2745, !noalias !14947
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !2745, !noalias !14947
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !2745, !noalias !14947
  store i32 0, ptr %i.cx, align 4, !tbaa !2745, !noalias !14947
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !2745, !noalias !14947
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !2745, !noalias !14947
  store i32 0, ptr %i.da, align 4, !tbaa !2745, !noalias !14947
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.df = add i64 %.035.i.i.i.i.i, -4             ; 2 uses
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !2745, !noalias !14947
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !2745, !noalias !14947
  store i32 0, ptr %i.dd, align 4, !tbaa !2745, !noalias !14947
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.df, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS_13move_iteratorINS0_12vec_iteratorIPS3_Lb0EEEEEEEEEvSC_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !14955

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i49.i.i.i ], [ %i.dj, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.dk = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.dk, ptr %.01517.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  %i.dl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.dn, %i.j
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !13086

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check53 = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check53, label %.lr.ph.i.i52.i.i.i.preheader69, label %vector.memcheck46

vector.memcheck46:                                ; preds = %.lr.ph.i.i52.i.i.i.preheader
  %scevgep48 = getelementptr i8, ptr %i.g, i64 %i.af
  %bound049 = icmp ult ptr %i.a, %scevgep48
  %bound150 = icmp ult ptr %i.g, %i.j
  %found.conflict51 = and i1 %bound049, %bound150
end_hunk_18
begin_hunk_19_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb1EEEEEvT_SH_:bb.a
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dm = add nuw i64 %.07.i.i.i32.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !13040

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i.i
  %.07.i.i.i32.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i.i ], [ %i.dm, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter43, 0
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !2745
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !15031

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEENSA_ISB_Lb0EEERKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.280", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2906   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2782
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2753 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2906   ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !2757   ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 16 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter76 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2745, !noalias !15032
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !2745, !noalias !15032
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !15035

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr79 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr79, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !2745, !noalias !15032
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !2745, !noalias !15032
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !2745, !noalias !15032
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !2745, !noalias !15032
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !2745, !noalias !15032
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !2745, !noalias !15032
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !2745, !noalias !15032
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !2745, !noalias !15032
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15032
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15036

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 5 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %i.as ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.au = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.av = load i32, ptr %i.at, align 4, !tbaa !2745
  store i32 %i.av, ptr %i.k, align 4, !tbaa !2745
  store i32 0, ptr %i.at, align 4, !tbaa !2745
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !2745
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !2745
  store i32 0, ptr %i.be, align 4, !tbaa !2745
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !13070

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bm = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bm, %i.j
  %i.bn = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bo = add i64 %7, %i.ap
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bs = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -4
  %i.bu = add i64 %i.bs, %i.j
  %i.bv = add i64 %i.bu, -4
  %i.bw = shl i64 %3, 2                           ; 2 uses
  %i.bx = add i64 %i.bw, %i.ap
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %i.ca = sub i64 %i.bt, %i.bz
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.ca
  %i.cb = add nsw i64 %i.bs, -4
  %i.cc = add i64 %i.bw, %i.bz
  %i.cd = sub i64 %i.cb, %i.cc
  %scevgep20 = getelementptr i8, ptr %i.i, i64 %i.cd
  %bound0 = icmp ult ptr %scevgep, %i.at
  %bound1 = icmp ult ptr %scevgep20, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.ce = mul i64 %n.vec, -4                      ; 2 uses
  %i.cf = getelementptr i8, ptr %i.k, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.at, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ch ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !2745, !alias.scope !15037
  %wide.load22 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !15037
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !15040, !noalias !15037
  store <4 x i32> %wide.load22, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !15040, !noalias !15037
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !2745, !alias.scope !15037
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !15037
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !15042

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader65

.lr.ph.i40.i.i.i.preheader65:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader65, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader65 ]
  %.079.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader65 ]
  %i.cn = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !2745
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !2745
  store i32 0, ptr %i.cn, align 4, !tbaa !2745
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cn
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15043

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check26 = icmp ult i64 %3, 8
  %i.cq = sub i64 %i.h, %i.ap
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check26, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec28 = and i64 %3, -8                       ; 3 uses
  %i.cr = shl i64 %n.vec28, 2                     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.g, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.a, i64 %i.cr
  %i.cu = and i64 %3, 7
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.cv = shl i64 %index30, 2                     ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.g, i64 %i.cv ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load33 = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !2745, !noalias !15044
  %wide.load34 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !2745, !noalias !15044
  %i.cx = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %wide.load33, ptr %next.gep32, align 4, !tbaa !2745, !noalias !15044
  store <4 x i32> %wide.load34, ptr %i.cx, align 4, !tbaa !2745, !noalias !15044
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.cy, label %middle.block36, label %vector.body29, !llvm.loop !15047

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %3, %n.vec28
  br i1 %cmp.n37, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block36
  %.ph63 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block36 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block36 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cu, %middle.block36 ] ; 4 uses
  %i.cz = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter66 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.da = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.ph63, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.db = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dc, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2745, !noalias !15044
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter66
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15048

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph63, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %i.df = icmp ult i64 %i.cz, 7
  br i1 %i.df, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dg = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dh, ptr %.06.i.i.i.i.i, align 4, !tbaa !2745, !noalias !15044
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2745, !noalias !15044
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !2745, !noalias !15044
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !2745, !noalias !15044
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !2745, !noalias !15044
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !2745, !noalias !15044
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !2745, !noalias !15044
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.ec = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !2745, !noalias !15044
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !2745, !noalias !15044
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb1EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15049

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i49.i.i.i ], [ %i.eg, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eh = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.eh, ptr %.01517.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.ek, %i.k
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !13086

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check44 = icmp ult i64 %i.ar, 8
  %i.em = sub i64 %i.h, %i.ap
  %diff.check42 = icmp ugt i64 %i.em, -32
  %or.cond59 = select i1 %min.iters.check44, i1 true, i1 %diff.check42
  br i1 %or.cond59, label %.lr.ph.i.i52.i.i.i.preheader61, label %vector.ph45
end_hunk_19
begin_hunk_20_@_ZN5boost9container3dtl9flat_treeINS0_4test24movable_and_copyable_intENS_11move_detail8identityIS4_EESt4lessIS4_ENS0_13new_allocatorIS4_EEE19insert_unique_rangeINS0_12vec_iteratorIPS4_Lb0EEEEEvT_SH_:bb.a
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dm = add nuw i64 %.07.i.i.i32.i.i, 4         ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !13040

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa: ; preds = %bb.n
  %lcmp.mod44.not = icmp eq i64 %xtraiter43, 0
  br i1 %lcmp.mod44.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %.preheader.i.i.i31.i.i
  %.07.i.i.i32.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i31.i.i ], [ %i.dm, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa ]
  %lcmp.mod45 = icmp ne i64 %xtraiter43, 0
  call void @llvm.assume(i1 %lcmp.mod45)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.07.i.i.i32.i.i.epil = phi i64 [ %.07.i.i.i32.i.i.epil.init, %.epil.preheader ], [ %i.dq, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.07.i.i.i32.i.i.epil
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !2745
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dp = add i32 %i.do, -1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.dq = add nuw i64 %.07.i.i.i32.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter43
  br i1 %epil.iter.cmp.not, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i, label %bb.o, !llvm.loop !15109

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i: ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit34.i.i.loopexit.unr-lcssa, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.ct

_ZN5boost9container3dtl33flat_tree_container_inplace_mergeINS0_6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS5_EEvEENS1_23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEEvRT_NSG_8iteratorET0_NSC_5bool_ILb1EEE.exit: ; preds = %bb.e, %bb.i, %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mED2Ev.exit.i.i, %bb.c, %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE5eraseENS0_12vec_iteratorIPS3_Lb1EEES9_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEESC_RKSB_mT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.255") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, ptr noundef align 8 dead_on_return %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.boost::container::dtl::insert_range_proxy.281", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !2906   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2782
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2753 ; 5 uses
  %i.f = sub i64 %i.c, %i.e
  %.not = icmp ugt i64 %3, %i.f
  %i.g = load ptr, ptr %4, align 8, !tbaa !2906   ; 10 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !2757   ; 5 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 16 uses
  %i.l = icmp eq ptr %i.k, %i.a
  %.not13.i.i.i.i = icmp eq i64 %3, 0             ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.m = add i64 %3, -1
  %xtraiter76 = and i64 %3, 3                     ; 2 uses
  %lcmp.mod77.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod77.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.n = phi ptr [ %i.r, %.lr.ph.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.015.i.i.i.i.prol = phi i64 [ %i.t, %.lr.ph.i.i.i.i.prol ], [ %3, %.lr.ph.i.i.i.i.preheader ]
  %.01214.i.i.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter78 = phi i64 [ %prol.iter78.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i.prol) ]
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2745, !noalias !15110
  store i32 %i.o, ptr %.01214.i.i.i.i.prol, align 4, !tbaa !2745, !noalias !15110
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.prol, i64 4 ; 2 uses
  %i.t = add i64 %.015.i.i.i.i.prol, -1           ; 2 uses
  %prol.iter78.next = add i64 %prol.iter78, 1     ; 2 uses
  %prol.iter78.cmp.not = icmp eq i64 %prol.iter78.next, %xtraiter76
  br i1 %prol.iter78.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !15113

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr79 = phi ptr [ %i.g, %.lr.ph.i.i.i.i.preheader ], [ %i.r, %.lr.ph.i.i.i.i.prol ]
  %.015.i.i.i.i.unr = phi i64 [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.i.prol ]
  %.01214.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.m, 3
  br i1 %i.u, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.v = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.unr79, %.lr.ph.i.i.i.i.prol.loopexit ] ; 5 uses
  %.015.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i.i.i ], [ %.015.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01214.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.01214.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i.i.i) ]
  %i.w = load i32, ptr %i.v, align 4, !tbaa !2745, !noalias !15110
  store i32 %i.w, ptr %.01214.i.i.i.i, align 4, !tbaa !2745, !noalias !15110
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !2745, !noalias !15110
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !2745, !noalias !15110
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !2745, !noalias !15110
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !2745, !noalias !15110
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !2745, !noalias !15110
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !2745, !noalias !15110
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35, !noalias !15110
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i, i64 16
  %i.an = add i64 %.015.i.i.i.i, -4               ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !15114

bb.d:                                             ; preds = %bb.b
  br i1 %.not13.i.i.i.i, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %bb.e, !prof !83

bb.e:                                             ; preds = %bb.d
  %i.ao = ptrtoint ptr %i.k to i64
  %i.ap = ptrtoint ptr %i.a to i64                ; 5 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 8 uses
  %.not.i.i.i = icmp ult i64 %i.ar, %3
  br i1 %.not.i.i.i, label %.lr.ph.i49.preheader.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = sub i64 0, %3
  %i.at = getelementptr [4 x i8], ptr %i.k, i64 %i.as ; 10 uses
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i10.i.i.prol.loopexit, label %.lr.ph.i.i10.i.i.prol

.lr.ph.i.i10.i.i.prol:                            ; preds = %bb.f
  %i.au = add nsw i64 %3, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.av = load i32, ptr %i.at, align 4, !tbaa !2745
  store i32 %i.av, ptr %i.k, align 4, !tbaa !2745
  store i32 0, ptr %i.at, align 4, !tbaa !2745
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  br label %.lr.ph.i.i10.i.i.prol.loopexit

.lr.ph.i.i10.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i10.i.i.prol, %bb.f
  %.020.i.i.i.i.unr = phi i64 [ %3, %bb.f ], [ %i.au, %.lr.ph.i.i10.i.i.prol ]
  %.0819.i.i.i.i.unr = phi ptr [ %i.at, %bb.f ], [ %i.ay, %.lr.ph.i.i10.i.i.prol ]
  %.01618.i.i.i.i.unr = phi ptr [ %i.k, %bb.f ], [ %i.az, %.lr.ph.i.i10.i.i.prol ]
  %i.ba = icmp eq i64 %3, 1
  br i1 %i.ba, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i

.lr.ph.i.i10.i.i:                                 ; preds = %.lr.ph.i.i10.i.i.prol.loopexit, %.lr.ph.i.i10.i.i
  %.020.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i10.i.i ], [ %.020.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ]
  %.0819.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i10.i.i ], [ %.0819.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  %.01618.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i10.i.i ], [ %.01618.i.i.i.i.unr, %.lr.ph.i.i10.i.i.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.i) ]
  %i.bb = load i32, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.bb, ptr %.01618.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.0819.i.i.i.i, align 4, !tbaa !2745
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 4
  %i.bg = add i64 %.020.i.i.i.i, -2               ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !2745
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !2745
  store i32 0, ptr %i.be, align 4, !tbaa !2745
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i.i.i.i, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.i, i64 8
  %.not.i.i11.i.i.1 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i11.i.i.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i, label %.lr.ph.i.i10.i.i, !llvm.loop !13070

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i: ; preds = %.lr.ph.i.i10.i.i, %.lr.ph.i.i10.i.i.prol.loopexit
  %.not8.i.i.i.i = icmp eq ptr %i.a, %i.at
  br i1 %.not8.i.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader

.lr.ph.i40.i.i.i.preheader:                       ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %i.bm = shl nuw nsw i64 %i.e, 2
  %6 = add i64 %i.bm, %i.j
  %i.bn = add i64 %6, -4
  %7 = shl i64 %3, 2
  %i.bo = add i64 %7, %i.ap
  %i.bp = sub i64 %i.bn, %i.bo                    ; 2 uses
  %i.bq = lshr i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bp, 156
  br i1 %min.iters.check, label %.lr.ph.i40.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i40.i.i.i.preheader
  %i.bs = shl nuw nsw i64 %i.e, 2                 ; 3 uses
  %i.bt = add nsw i64 %i.bs, -4
  %i.bu = add i64 %i.bs, %i.j
  %i.bv = add i64 %i.bu, -4
  %i.bw = shl i64 %3, 2                           ; 2 uses
  %i.bx = add i64 %i.bw, %i.ap
  %i.by = sub i64 %i.bv, %i.bx
  %i.bz = and i64 %i.by, -4                       ; 2 uses
  %i.ca = sub i64 %i.bt, %i.bz
  %scevgep = getelementptr i8, ptr %i.i, i64 %i.ca
  %i.cb = add nsw i64 %i.bs, -4
  %i.cc = add i64 %i.bw, %i.bz
  %i.cd = sub i64 %i.cb, %i.cc
  %scevgep20 = getelementptr i8, ptr %i.i, i64 %i.cd
  %bound0 = icmp ult ptr %scevgep, %i.at
  %bound1 = icmp ult ptr %scevgep20, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i40.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.br, 9223372036854775800     ; 3 uses
  %i.ce = mul i64 %n.vec, -4                      ; 2 uses
  %i.cf = getelementptr i8, ptr %i.k, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.at, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ch ; 2 uses
  %next.gep21 = getelementptr i8, ptr %i.at, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds i8, ptr %next.gep21, i64 -16 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %next.gep21, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ci, align 4, !tbaa !2745, !alias.scope !15115
  %wide.load22 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !15115
  %i.ck = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cl = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !15118, !noalias !15115
  store <4 x i32> %wide.load22, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !15118, !noalias !15115
  store <4 x i32> zeroinitializer, ptr %i.ci, align 4, !tbaa !2745, !alias.scope !15115
  store <4 x i32> zeroinitializer, ptr %i.cj, align 4, !tbaa !2745, !alias.scope !15115
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !15120

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.br, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i.preheader65

.lr.ph.i40.i.i.i.preheader65:                     ; preds = %vector.memcheck, %.lr.ph.i40.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.i40.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %i.at, %vector.memcheck ], [ %i.at, %.lr.ph.i40.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i40.i.i.i

.lr.ph.i40.i.i.i:                                 ; preds = %.lr.ph.i40.i.i.i.preheader65, %.lr.ph.i40.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i40.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader65 ]
  %.079.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i40.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i40.i.i.i.preheader65 ]
  %i.cn = getelementptr inbounds i8, ptr %.079.i.i.i.i, i64 -4 ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.010.i.i.i.i, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !2745
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !2745
  store i32 0, ptr %i.cn, align 4, !tbaa !2745
  %.not.i41.i.i.i = icmp eq ptr %i.a, %i.cn
  br i1 %.not.i41.i.i.i, label %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, label %.lr.ph.i40.i.i.i, !llvm.loop !15121

_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i: ; preds = %.lr.ph.i40.i.i.i, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit.i.i.i
  %min.iters.check26 = icmp ult i64 %3, 8
  %i.cq = sub i64 %i.h, %i.ap
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check26, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i
  %n.vec28 = and i64 %3, -8                       ; 3 uses
  %i.cr = shl i64 %n.vec28, 2                     ; 2 uses
  %i.cs = getelementptr i8, ptr %i.g, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.a, i64 %i.cr
  %i.cu = and i64 %3, 7
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph27
  %index30 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body29 ] ; 2 uses
  %i.cv = shl i64 %index30, 2                     ; 2 uses
  %next.gep31 = getelementptr i8, ptr %i.g, i64 %i.cv ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.a, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep31, i64 16
  %wide.load33 = load <4 x i32>, ptr %next.gep31, align 4, !tbaa !2745, !noalias !15122
  %wide.load34 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !2745, !noalias !15122
  %i.cx = getelementptr i8, ptr %next.gep32, i64 16
  store <4 x i32> %wide.load33, ptr %next.gep32, align 4, !tbaa !2745, !noalias !15122
  store <4 x i32> %wide.load34, ptr %i.cx, align 4, !tbaa !2745, !noalias !15122
  %index.next35 = add nuw i64 %index30, 8         ; 2 uses
  %i.cy = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.cy, label %middle.block36, label %vector.body29, !llvm.loop !15125

middle.block36:                                   ; preds = %vector.body29
  %cmp.n37 = icmp eq i64 %3, %n.vec28
  br i1 %cmp.n37, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i, %middle.block36
  %.ph63 = phi ptr [ %i.g, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cs, %middle.block36 ] ; 2 uses
  %.06.i.i.i.i.i.ph = phi ptr [ %i.a, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.ct, %middle.block36 ] ; 2 uses
  %.035.i.i.i.i.i.ph = phi i64 [ %3, %_ZN5boost9container13move_backwardIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit.i.i.i ], [ %i.cu, %middle.block36 ] ; 4 uses
  %i.cz = add i64 %.035.i.i.i.i.i.ph, -1
  %xtraiter66 = and i64 %.035.i.i.i.i.i.ph, 7     ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %i.da = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.ph63, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.06.i.i.i.i.i.prol = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i.prol ], [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.035.i.i.i.i.i.prol = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i.prol ], [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.db = add i64 %.035.i.i.i.i.i.prol, -1        ; 2 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dc, ptr %.06.i.i.i.i.i.prol, align 4, !tbaa !2745, !noalias !15122
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter66
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !15126

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.unr = phi ptr [ %.ph63, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %.06.i.i.i.i.i.unr = phi ptr [ %.06.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.de, %.lr.ph.i.i.i.i.i.prol ]
  %.035.i.i.i.i.i.unr = phi i64 [ %.035.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ], [ %i.db, %.lr.ph.i.i.i.i.i.prol ]
  %i.df = icmp ult i64 %i.cz, 7
  br i1 %i.df, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %i.dg = phi ptr [ %i.ee, %.lr.ph.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.06.i.i.i.i.i = phi ptr [ %i.ef, %.lr.ph.i.i.i.i.i ], [ %.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.035.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i ], [ %.035.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dh, ptr %.06.i.i.i.i.i, align 4, !tbaa !2745, !noalias !15122
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !2745, !noalias !15122
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 8
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !2745, !noalias !15122
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 12
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !2745, !noalias !15122
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 16
  %i.dt = load i32, ptr %i.dr, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !2745, !noalias !15122
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 20
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !2745, !noalias !15122
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 24
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !2745, !noalias !15122
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  %i.eb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 28
  %i.ec = add i64 %.035.i.i.i.i.i, -8             ; 2 uses
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !2745, !noalias !15122
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !2745, !noalias !15122
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN5boost9container6vectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyIS5_NS0_12vec_iteratorIPS3_Lb0EEEEEEEvSB_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !15127

.lr.ph.i49.preheader.i.i.i:                       ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %3
  br label %.lr.ph.i49.i.i.i

.lr.ph.i49.i.i.i:                                 ; preds = %.lr.ph.i49.i.i.i, %.lr.ph.i49.preheader.i.i.i
  %.018.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i49.i.i.i ], [ %i.a, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  %.01517.i.i.i.i = phi ptr [ %i.el, %.lr.ph.i49.i.i.i ], [ %i.eg, %.lr.ph.i49.preheader.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i.i.i) ]
  %i.eh = load i32, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.eh, ptr %.01517.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.018.i.i.i.i, align 4, !tbaa !2745
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ek = getelementptr inbounds nuw i8, ptr %.018.i.i.i.i, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01517.i.i.i.i, i64 4
  %.not.i50.i.i.i = icmp eq ptr %i.ek, %i.k
  br i1 %.not.i50.i.i.i, label %.lr.ph.i.i52.i.i.i.preheader, label %.lr.ph.i49.i.i.i, !llvm.loop !13086

.lr.ph.i.i52.i.i.i.preheader:                     ; preds = %.lr.ph.i49.i.i.i
  %min.iters.check44 = icmp ult i64 %i.ar, 8
  %i.em = sub i64 %i.h, %i.ap
  %diff.check42 = icmp ugt i64 %i.em, -32
  %or.cond59 = select i1 %min.iters.check44, i1 true, i1 %diff.check42
  br i1 %or.cond59, label %.lr.ph.i.i52.i.i.i.preheader61, label %vector.ph45
end_hunk_20
begin_hunk_21_@_ZN5boost7movelib15detail_adaptive18adaptive_sort_implIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISG_E4typeET0_RT1_:bb.a
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !2745
  store i32 0, ptr %.pn36.i, align 4, !tbaa !2745
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2745 ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !2745
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !2745
  store i32 0, ptr %i.m, align 4, !tbaa !2745
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16222

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %i.f
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph38.i, !llvm.loop !16223

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub i64 %1, %i.r                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13123
  %.not = icmp ugt i64 %i.s, %i.u
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.w = load ptr, ptr %2, align 8, !tbaa !13039
  tail call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.w)
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 0, ptr %i.b, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 0, ptr %i.c, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !85
  %i.x = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_paramsIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEEmNS0_13adaptive_xbufIS5_S6_mEEEEbT_T1_T0_RSH_SJ_SJ_SJ_RT2_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.x, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %i.z = load i64, ptr %i.t, align 8, !tbaa !13123
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13037 ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %.not.i31 = icmp ult i64 %i.ac, %i.s
  br i1 %.not.i31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %2, align 8, !tbaa !13039
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  call void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef nonnull %i.y, ptr noundef %i.ae)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SG_T0_RT1_.exit

bb.k:                                             ; preds = %bb.i
  call void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEEEEvT_SE_T0_(ptr noundef %0, ptr noundef nonnull %i.y)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SG_T0_RT1_.exit

bb.l:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !tbaa !85
  %i.ag = load i64, ptr %i.c, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load i64, ptr %i.d, align 8, !tbaa !85  ; 3 uses
  %i.ak = sub i64 0, %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.ak
  %i.am = sub i64 %1, %i.ah
  %i.an = add i64 %i.am, %i.aj
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !85
  %i.ap = call noundef i64 @_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_(ptr noundef %i.al, i64 noundef %i.an, i64 noundef %i.ao, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !85  ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = sub i64 %1, %i.aq
  %i.at = call noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %i.ar, i64 noundef %i.as, i64 noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.au = load i64, ptr %i.b, align 8, !tbaa !85
  %i.av = load i64, ptr %i.c, align 8, !tbaa !85
  call void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISG_E4typeESJ_SJ_RT1_T0_(i1 noundef zeroext %i.at, ptr noundef %0, i64 noundef %i.au, i64 noundef %i.av, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SG_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SG_T0_RT1_.exit: ; preds = %bb.k, %bb.j, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit: ; preds = %bb.e, %bb.b, %bb.g, %_ZN5boost7movelib15detail_adaptive11stable_sortIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib10merge_sortIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_T1_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = ashr exact i64 %i.d, 2                   ; 5 uses
  %i.f = icmp ult i64 %i.e, 17
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, %1
  %.034.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not2635.i = icmp eq ptr %.034.i, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2635.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %bb.b, %bb.e
  %.037.i = phi ptr [ %.0.i, %bb.e ], [ %.034.i, %bb.b ] ; 5 uses
  %.pn36.i = phi ptr [ %.037.i, %bb.e ], [ %0, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.037.i, align 4, !tbaa !2745 ; 3 uses
  %i.h = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph38.i
  store i32 0, ptr %.037.i, align 4, !tbaa !2745
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.l = load i32, ptr %.pn36.i, align 4, !tbaa !2745
  store i32 %i.l, ptr %.037.i, align 4, !tbaa !2745
  store i32 0, ptr %.pn36.i, align 4, !tbaa !2745
  %.not2729.i = icmp eq ptr %.pn36.i, %0
  br i1 %.not2729.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.02231.i = phi ptr [ %i.m, %bb.d ], [ %.pn36.i, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.02231.i, i64 -4  ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !2745 ; 2 uses
  %i.o = icmp slt i32 %i.g, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %bb.c
  %.022.lcssa.i = phi ptr [ %0, %bb.c ], [ %.02231.i, %.lr.ph.i ], [ %0, %bb.d ]
  store i32 %i.g, ptr %.022.lcssa.i, align 4, !tbaa !2745
  %i.p = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.n, ptr %.02231.i, align 4, !tbaa !2745
  store i32 0, ptr %i.m, align 4, !tbaa !2745
  %.not27.i = icmp eq ptr %i.m, %0
  br i1 %.not27.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !16222

bb.e:                                             ; preds = %.critedge.i, %.lr.ph38.i
  %.0.i = getelementptr inbounds nuw i8, ptr %.037.i, i64 4 ; 2 uses
  %.not26.i = icmp eq ptr %.0.i, %1
  br i1 %.not26.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph38.i, !llvm.loop !16223

bb.f:                                             ; preds = %bb.a
  %i.r = lshr i64 %i.e, 1                         ; 6 uses
  %i.s = sub i64 %i.e, %i.r                       ; 10 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  tail call void @_ZN5boost7movelib29merge_sort_uninitialized_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_T0_T1_(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  invoke void @_ZN5boost7movelib15merge_sort_copyIPNS_9container4test24movable_and_copyable_intES5_NS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEEEEvT_SD_T0_T1_(ptr noundef %0, ptr noundef %i.t, ptr noundef %i.u)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.s, 2
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %cond = icmp eq i64 %i.s, 0
  br i1 %cond, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %bb.k
  %indvar = phi i64 [ %indvar.next, %bb.k ], [ 0, %bb.g ] ; 2 uses
  %.027.i.i = phi ptr [ %.1.i.i, %bb.k ], [ %2, %bb.g ] ; 11 uses
  %.01626.i.i = phi ptr [ %i.ay, %bb.k ], [ %0, %bb.g ] ; 8 uses
  %.01725.i.i = phi ptr [ %.118.i.i, %bb.k ], [ %i.u, %bb.g ] ; 5 uses
  %i.w = icmp eq ptr %.01725.i.i, %1
  br i1 %i.w, label %.lr.ph.i.i.i.i.preheader, label %bb.h

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.i.i
  %.027.i.i65.le = ptrtoaddr ptr %.027.i.i to i64 ; 2 uses
  %3 = add i64 %i.d, %i.a
  %i.x = add i64 %3, -4
  %4 = shl i64 %i.r, 2
  %i.y = add i64 %4, %.027.i.i65.le
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 108
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ac = shl i64 %indvar, 2
  %i.ad = getelementptr i8, ptr %0, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.ad, i64 4
  %i.ae = add i64 %i.d, %i.a
  %i.af = add i64 %i.ae, -4
  %i.ag = shl i64 %i.r, 2
  %i.ah = add i64 %i.ag, %.027.i.i65.le
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = and i64 %i.ai, -4                       ; 2 uses
  %scevgep66 = getelementptr i8, ptr %scevgep, i64 %i.aj
  %scevgep67 = getelementptr i8, ptr %.027.i.i, i64 4
  %scevgep68 = getelementptr i8, ptr %scevgep67, i64 %i.aj
  %bound0 = icmp ult ptr %.01626.i.i, %scevgep68
  %bound1 = icmp ult ptr %.027.i.i, %scevgep66
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader73, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ak = shl i64 %n.vec, 2                       ; 2 uses
  %i.al = getelementptr i8, ptr %.01626.i.i, i64 %i.ak
  %i.am = getelementptr i8, ptr %.027.i.i, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.01626.i.i, i64 %i.an ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.027.i.i, i64 %i.an ; 3 uses
  %i.ao = getelementptr i8, ptr %next.gep69, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep69, align 4, !tbaa !2745, !alias.scope !16224
  %wide.load70 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !2745, !alias.scope !16224
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !2745, !alias.scope !16227, !noalias !16224
  store <4 x i32> %wide.load70, ptr %i.ap, align 4, !tbaa !2745, !alias.scope !16227, !noalias !16224
  store <4 x i32> zeroinitializer, ptr %next.gep69, align 4, !tbaa !2745, !alias.scope !16224
  store <4 x i32> zeroinitializer, ptr %i.ao, align 4, !tbaa !2745, !alias.scope !16224
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !16229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i.preheader73

.lr.ph.i.i.i.i.preheader73:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.010.i.i.i.i.ph = phi ptr [ %.01626.i.i, %vector.memcheck ], [ %.01626.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  %.079.i.i.i.i.ph = phi ptr [ %.027.i.i, %vector.memcheck ], [ %.027.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader73, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.010.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 2 uses
  %.079.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.079.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader73 ] ; 3 uses
  %i.ar = load i32, ptr %.079.i.i.i.i, align 4, !tbaa !2745
  store i32 %i.ar, ptr %.010.i.i.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i.i.i, align 4, !tbaa !2745
  %i.as = getelementptr inbounds nuw i8, ptr %.079.i.i.i.i, i64 4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.v
  br i1 %.not.i.i.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !16230

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.au = load i32, ptr %.027.i.i, align 4, !tbaa !2745 ; 2 uses
  %i.av = load i32, ptr %.01725.i.i, align 4, !tbaa !2745 ; 2 uses
  %.not20.i.i = icmp slt i32 %i.au, %i.av
  br i1 %.not20.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.av, ptr %.01626.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.01725.i.i, align 4, !tbaa !2745
  %i.aw = getelementptr inbounds nuw i8, ptr %.01725.i.i, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %i.au, ptr %.01626.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.027.i.i, align 4, !tbaa !2745
  %i.ax = getelementptr inbounds nuw i8, ptr %.027.i.i, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.118.i.i = phi ptr [ %i.aw, %bb.i ], [ %.01725.i.i, %bb.j ]
  %.1.i.i = phi ptr [ %.027.i.i, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = getelementptr i8, ptr %.01626.i.i, i64 4
  %.not.i.i = icmp eq ptr %.1.i.i, %i.v
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i, label %.lr.ph.i27.preheader, label %.lr.ph.i.i, !llvm.loop !16231

.lr.ph.i27.preheader:                             ; preds = %bb.k, %.lr.ph.i.i.i.i, %middle.block
  %xtraiter79 = and i64 %i.s, 3                   ; 2 uses
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  br i1 %lcmp.mod80.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol

.lr.ph.i27.prol:                                  ; preds = %.lr.ph.i27.preheader, %.lr.ph.i27.prol
  %.in.i.prol = phi i64 [ %i.az, %.lr.ph.i27.prol ], [ %i.s, %.lr.ph.i27.preheader ]
  %prol.iter81 = phi i64 [ %prol.iter81.next, %.lr.ph.i27.prol ], [ 0, %.lr.ph.i27.preheader ]
  %i.az = add i64 %.in.i.prol, -1                 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.az
  store i32 -2147483648, ptr %i.ba, align 4, !tbaa !2745
  %i.bb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %prol.iter81.next = add i64 %prol.iter81, 1     ; 2 uses
  %prol.iter81.cmp.not = icmp eq i64 %prol.iter81.next, %xtraiter79
  br i1 %prol.iter81.cmp.not, label %.lr.ph.i27.prol.loopexit, label %.lr.ph.i27.prol, !llvm.loop !16232

.lr.ph.i27.prol.loopexit:                         ; preds = %.lr.ph.i27.prol, %.lr.ph.i27.preheader
  %.in.i.unr = phi i64 [ %i.s, %.lr.ph.i27.preheader ], [ %i.az, %.lr.ph.i27.prol ]
  %i.bd = sub i64 %i.r, %i.e
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27.prol.loopexit, %.lr.ph.i27
  %.in.i = phi i64 [ %i.br, %.lr.ph.i27 ], [ %.in.i.unr, %.lr.ph.i27.prol.loopexit ] ; 4 uses
  %i.bf = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4
  store i32 -2147483648, ptr %i.bg, align 4, !tbaa !2745
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, -1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bj = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  store i32 -2147483648, ptr %i.bk, align 4, !tbaa !2745
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bm = add i32 %i.bl, -1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %.in.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 -12
  store i32 -2147483648, ptr %i.bo, align 4, !tbaa !2745
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, -1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = add i64 %.in.i, -4                      ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.br
  store i32 -2147483648, ptr %i.bs, align 4, !tbaa !2745
  %i.bt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.not.i28.3 = icmp eq i64 %i.br, 0
  br i1 %.not.i28.3, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareINS2_4test16less_transparentENS5_24movable_and_copyable_intENS_11move_detail8identityIS7_EEEEPS7_EEvT0_SD_T_.exit, label %.lr.ph.i27, !llvm.loop !13651

bb.l:                                             ; preds = %bb.f
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.not1.i30 = icmp eq i64 %i.s, 0
  br i1 %.not1.i30, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.l
  %xtraiter = and i64 %i.s, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol

.lr.ph.i31.prol:                                  ; preds = %.lr.ph.i31.preheader, %.lr.ph.i31.prol
  %.in.i32.prol = phi i64 [ %i.bw, %.lr.ph.i31.prol ], [ %i.s, %.lr.ph.i31.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i31.prol ], [ 0, %.lr.ph.i31.preheader ]
  %i.bw = add i64 %.in.i32.prol, -1               ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  store i32 -2147483648, ptr %i.bx, align 4, !tbaa !2745
  %i.by = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bz = add i32 %i.by, -1
  store i32 %i.bz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i31.prol.loopexit, label %.lr.ph.i31.prol, !llvm.loop !16233

.lr.ph.i31.prol.loopexit:                         ; preds = %.lr.ph.i31.prol, %.lr.ph.i31.preheader
  %.in.i32.unr = phi i64 [ %i.s, %.lr.ph.i31.preheader ], [ %i.bw, %.lr.ph.i31.prol ]
  %i.ca = sub i64 %i.r, %i.e
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %_ZN5boost7movelib10destruct_nINS_9container4test24movable_and_copyable_intEPS4_ED2Ev.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.prol.loopexit, %.lr.ph.i31
  %.in.i32 = phi i64 [ %i.co, %.lr.ph.i31 ], [ %.in.i32.unr, %.lr.ph.i31.prol.loopexit ] ; 4 uses
  %i.cc = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  store i32 -2147483648, ptr %i.cd, align 4, !tbaa !2745
  %i.ce = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = add i32 %i.ce, -1
  store i32 %i.cf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cg = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.ch = getelementptr i8, ptr %i.cg, i64 -8
  store i32 -2147483648, ptr %i.ch, align 4, !tbaa !2745
  %i.ci = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cj = add i32 %i.ci, -1
  store i32 %i.cj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ck = getelementptr [4 x i8], ptr %2, i64 %.in.i32
  %i.cl = getelementptr i8, ptr %i.ck, i64 -12
  store i32 -2147483648, ptr %i.cl, align 4, !tbaa !2745
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cn = add i32 %i.cm, -1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.co = add i64 %.in.i32, -4                    ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.co
  store i32 -2147483648, ptr %i.cp, align 4, !tbaa !2745
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
end_hunk_21
begin_hunk_22_@_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_:bb.a
  br i1 %or.cond38.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i

.lr.ph.i.i29.i:                                   ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i, %.lr.ph.i.i29.i
  %.010.i.i30.i = phi ptr [ %i.ak, %.lr.ph.i.i29.i ], [ %.023.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 3 uses
  %.079.i.i31.i = phi ptr [ %i.aj, %.lr.ph.i.i29.i ], [ %.024.lcssa.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i ] ; 4 uses
  %i.ad = load i32, ptr %.079.i.i31.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i31.i, align 4, !tbaa !2745
  %i.ae = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ag = load i32, ptr %.010.i.i30.i, align 4, !tbaa !2745
  store i32 %i.ag, ptr %.079.i.i31.i, align 4, !tbaa !2745
  store i32 %i.ad, ptr %.010.i.i30.i, align 4, !tbaa !2745
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ai = add i32 %i.ah, -1
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.079.i.i31.i, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i.i30.i, i64 4
  %.not.i.i32.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not.i.i32.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, label %.lr.ph.i.i29.i, !llvm.loop !13209

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i29.i, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i
  %i.al = add i64 %.03981, %i.d                   ; 4 uses
  %.0.idx = shl nuw nsw i64 %i.al, 2              ; 2 uses
  %.0 = getelementptr inbounds nuw i8, ptr %.04188, i64 %.0.idx ; 2 uses
  %i.am = sub i64 %1, %i.al                       ; 2 uses
  %i.an = icmp ugt i64 %i.am, %i.d
  br i1 %i.an, label %bb.b, label %._crit_edge, !llvm.loop !16400

._crit_edge:                                      ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit, %.preheader
  %.039.lcssa = phi i64 [ 0, %.preheader ], [ %i.al, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.idx.lcssa = phi i64 [ 0, %.preheader ], [ %.0.idx, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %.0.lcssa = phi ptr [ %.04188, %.preheader ], [ %.0, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ] ; 6 uses
  %.lcssa77 = phi i64 [ %1, %.preheader ], [ %i.am, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit ]
  %i.ao = icmp ugt i64 %.lcssa77, %.04287
  br i1 %i.ao, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.ap = sub i64 0, %.04287                      ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.ap ; 2 uses
  %.idx = shl nuw nsw i64 %.04287, 2              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.idx ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04188, i64 %.idx70 ; 2 uses
  %i.at = add nuw nsw i64 %.0.idx.lcssa, %.idx
  %.not43.i45 = icmp samesign eq i64 %i.at, %.idx70
  br i1 %.not43.i45, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.g, %bb.k
  %.02246.i47 = phi ptr [ %.1.i51, %bb.k ], [ %i.ar, %bb.g ] ; 6 uses
  %.02345.i48 = phi ptr [ %i.bn, %bb.k ], [ %i.aq, %bb.g ] ; 6 uses
  %.02444.i49 = phi ptr [ %.125.i50, %bb.k ], [ %.0.lcssa, %bb.g ] ; 6 uses
  %i.au = icmp eq ptr %.02444.i49, %i.ar
  br i1 %i.au, label %.lr.ph.i.i.i65, label %bb.h

.lr.ph.i.i.i65:                                   ; preds = %.lr.ph.i46, %.lr.ph.i.i.i65
  %.010.i.i.i66 = phi ptr [ %i.bc, %.lr.ph.i.i.i65 ], [ %.02345.i48, %.lr.ph.i46 ] ; 3 uses
  %.079.i.i.i67 = phi ptr [ %i.bb, %.lr.ph.i.i.i65 ], [ %.02246.i47, %.lr.ph.i46 ] ; 4 uses
  %i.av = load i32, ptr %.079.i.i.i67, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i.i67, align 4, !tbaa !2745
  %i.aw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ay = load i32, ptr %.010.i.i.i66, align 4, !tbaa !2745
  store i32 %i.ay, ptr %.079.i.i.i67, align 4, !tbaa !2745
  store i32 %i.av, ptr %.010.i.i.i66, align 4, !tbaa !2745
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %.079.i.i.i67, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.010.i.i.i66, i64 4
  %.not.i.i.i68 = icmp eq ptr %i.bb, %i.as
  br i1 %.not.i.i.i68, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, label %.lr.ph.i.i.i65, !llvm.loop !13209

bb.h:                                             ; preds = %.lr.ph.i46
  %i.bd = load i32, ptr %.02246.i47, align 4, !tbaa !2745
  %i.be = load i32, ptr %.02444.i49, align 4, !tbaa !2745
  %i.bf = icmp slt i32 %i.bd, %i.be
  %i.bg = load i32, ptr %.02345.i48, align 4, !tbaa !2745 ; 2 uses
  store i32 0, ptr %.02345.i48, align 4, !tbaa !2745
  %i.bh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bi = add i32 %i.bh, 1
  store i32 %i.bi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %.02246.i47, align 4, !tbaa !2745
  store i32 %i.bj, ptr %.02345.i48, align 4, !tbaa !2745
  store i32 %i.bg, ptr %.02246.i47, align 4, !tbaa !2745
  %i.bk = getelementptr inbounds nuw i8, ptr %.02246.i47, i64 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bl = load i32, ptr %.02444.i49, align 4, !tbaa !2745
  store i32 %i.bl, ptr %.02345.i48, align 4, !tbaa !2745
  store i32 %i.bg, ptr %.02444.i49, align 4, !tbaa !2745
  %i.bm = getelementptr inbounds nuw i8, ptr %.02444.i49, i64 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.125.i50 = phi ptr [ %.02444.i49, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.1.i51 = phi ptr [ %i.bk, %bb.i ], [ %.02246.i47, %bb.j ] ; 2 uses
  %.sink.in.i52 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %.sink.i53 = add i32 %.sink.in.i52, -1
  store i32 %.sink.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %.02345.i48, i64 4 ; 2 uses
  %.not.i54 = icmp eq ptr %.1.i51, %i.as
  br i1 %.not.i54, label %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, label %.lr.ph.i46, !llvm.loop !16399

_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55: ; preds = %bb.k, %bb.g
  %.024.lcssa.i56 = phi ptr [ %.0.lcssa, %bb.g ], [ %.125.i50, %bb.k ] ; 3 uses
  %.023.lcssa.i57 = phi ptr [ %i.aq, %bb.g ], [ %i.bn, %bb.k ] ; 2 uses
  %.not27.i58 = icmp eq ptr %.023.lcssa.i57, %.024.lcssa.i56
  %.not8.i.i28.i59 = icmp eq ptr %.024.lcssa.i56, %i.ar
  %or.cond38.i60 = or i1 %.not8.i.i28.i59, %.not27.i58
  br i1 %or.cond38.i60, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, label %.lr.ph.i.i29.i61

.lr.ph.i.i29.i61:                                 ; preds = %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55, %.lr.ph.i.i29.i61
  %.010.i.i30.i62 = phi ptr [ %i.bv, %.lr.ph.i.i29.i61 ], [ %.023.lcssa.i57, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 3 uses
  %.079.i.i31.i63 = phi ptr [ %i.bu, %.lr.ph.i.i29.i61 ], [ %.024.lcssa.i56, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ] ; 4 uses
  %i.bo = load i32, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  %i.bp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.br = load i32, ptr %.010.i.i30.i62, align 4, !tbaa !2745
  store i32 %i.br, ptr %.079.i.i31.i63, align 4, !tbaa !2745
  store i32 %i.bo, ptr %.010.i.i30.i62, align 4, !tbaa !2745
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.bu = getelementptr inbounds nuw i8, ptr %.079.i.i31.i63, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i.i30.i62, i64 4
  %.not.i.i32.i64 = icmp eq ptr %i.bu, %i.ar
  br i1 %.not.i.i32.i64, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, label %.lr.ph.i.i29.i61, !llvm.loop !13209

bb.l:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.04188, i64 %1
  %i.bx = sub i64 0, %.04287                      ; 3 uses
  %.not8.i.i = icmp samesign eq i64 %.039.lcssa, %1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.l
  %i.by = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.bx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.by, %.lr.ph.i.i.preheader ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %.0.lcssa, %.lr.ph.i.i.preheader ] ; 4 uses
  %i.bz = load i32, ptr %.079.i.i, align 4, !tbaa !2745
  store i32 0, ptr %.079.i.i, align 4, !tbaa !2745
  %i.ca = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cc = load i32, ptr %.010.i.i, align 4, !tbaa !2745
  store i32 %i.cc, ptr %.079.i.i, align 4, !tbaa !2745
  store i32 %i.bz, ptr %.010.i.i, align 4, !tbaa !2745
  %i.cd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.ce = add i32 %i.cd, -1
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.cf, %i.bw
  br i1 %.not.i.i, label %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, label %.lr.ph.i.i, !llvm.loop !13209

_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i65, %.lr.ph.i.i29.i61, %bb.l, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55
  %.pre-phi = phi i64 [ %i.ap, %.lr.ph.i.i.i65 ], [ %i.ap, %.lr.ph.i.i29.i61 ], [ %i.ap, %_ZN5boost7movelib7swap_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit.i55 ], [ %i.bx, %bb.l ], [ %i.bx, %.lr.ph.i.i ]
  %i.ch = getelementptr inbounds [4 x i8], ptr %.04188, i64 %.pre-phi
  %i.ci = sub i64 %.04089, %.04287                ; 2 uses
  %i.cj = icmp ult i64 %i.d, %3
  %i.ck = icmp uge i64 %i.ci, %i.d
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader, label %._crit_edge90, !llvm.loop !16401

._crit_edge90:                                    ; preds = %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69, %bb.a
  %.042.lcssa = phi i64 [ %2, %bb.a ], [ %i.d, %_ZN5boost7movelib13op_merge_leftIPNS_9container4test24movable_and_copyable_intENS2_3dtl23flat_tree_value_compareINS3_16less_transparentES4_NS_11move_detail8identityIS4_EEEENS0_7swap_opEEEvT_SE_SE_SE_T0_T1_.exit69 ]
  ret i64 %.042.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 8 uses
  %i.b = shl i64 %2, 1                            ; 13 uses
  %i.c = urem i64 %1, %i.b                        ; 3 uses
  %i.d = udiv i64 %1, %i.b
  %i.e = sub nuw i64 %1, %i.c                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %2
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.e ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not8.i.i = icmp eq i64 %i.c, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.g = getelementptr [4 x i8], ptr %0, i64 %1   ; 6 uses
  %i.h = getelementptr [4 x i8], ptr %i.g, i64 %2 ; 5 uses
  %i.i = shl i64 %1, 2
  %i.j = udiv i64 %1, %i.b
  %i.k = mul i64 %2, %i.j
  %3 = add i64 %i.i, -4
  %4 = shl i64 %i.k, 3
  %i.l = sub i64 %3, %4                           ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.l, 76
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader292, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = udiv i64 %1, %i.b
  %i.p = shl i64 %i.o, 3
  %i.q = or disjoint i64 %i.p, 4
  %i.r = mul i64 %2, %i.q
  %scevgep = getelementptr i8, ptr %0, i64 %i.r
  %bound0 = icmp ult ptr %scevgep, %i.g
  %bound1 = icmp ult ptr %i.f, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader292, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.n, 9223372036854775800      ; 3 uses
  %i.s = mul i64 %n.vec, -4                       ; 2 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.s
  %i.u = getelementptr i8, ptr %i.g, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = mul i64 %index, -4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.v ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.g, i64 %i.v ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %next.gep138, i64 -16 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %next.gep138, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.w, align 4, !tbaa !2745, !alias.scope !16402
  %wide.load139 = load <4 x i32>, ptr %i.x, align 4, !tbaa !2745, !alias.scope !16402
  %i.y = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.z = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.y, align 4, !tbaa !2745, !alias.scope !16405, !noalias !16402
  store <4 x i32> %wide.load139, ptr %i.z, align 4, !tbaa !2745, !alias.scope !16405, !noalias !16402
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !2745, !alias.scope !16402
  store <4 x i32> zeroinitializer, ptr %i.x, align 4, !tbaa !2745, !alias.scope !16402
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !16407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.n, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.preheader292

.lr.ph.i.i.preheader292:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.h, %vector.memcheck ], [ %i.h, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader292, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %.079.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader292 ]
  %i.ab = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !2745
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !2745
  store i32 0, ptr %i.ab, align 4, !tbaa !2745
  %.not.i.i = icmp eq ptr %i.f, %i.ab
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i, !llvm.loop !16408

bb.c:                                             ; preds = %bb.a
  %.idx67 = shl i64 %2, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx67 ; 4 uses
  %i.af = getelementptr [4 x i8], ptr %0, i64 %1  ; 3 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %2 ; 2 uses
  %.not40.i = icmp eq i64 %2, 0
  br i1 %.not40.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %indvar = phi i64 [ %indvar.next, %bb.g ], [ 0, %bb.c ] ; 2 uses
  %.043.i = phi ptr [ %i.bn, %bb.g ], [ %i.ag, %bb.c ] ; 6 uses
  %.02442.i = phi ptr [ %.1.i, %bb.g ], [ %i.af, %bb.c ] ; 3 uses
  %.02541.i = phi ptr [ %.126.i, %bb.g ], [ %i.ae, %bb.c ] ; 9 uses
  %i.ah = icmp eq ptr %.02442.i, %i.ae
  br i1 %i.ah, label %.lr.ph.i.i.i.preheader, label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i
  %.02541.i143.le = ptrtoaddr ptr %.02541.i to i64 ; 2 uses
  %i.ai = udiv i64 %1, %i.b
  %i.aj = mul i64 %2, %i.ai
  %5 = add i64 %.02541.i143.le, -4
  %6 = shl i64 %i.aj, 3
  %i.ak = add i64 %6, %i.a
  %i.al = sub i64 %5, %i.ak                       ; 2 uses
  %i.am = lshr i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check151 = icmp ult i64 %i.al, 188
  br i1 %min.iters.check151, label %.lr.ph.i.i.i.preheader285, label %vector.memcheck141

vector.memcheck141:                               ; preds = %.lr.ph.i.i.i.preheader
  %.idx67267 = add i64 %2, %1
  %i.ao = shl i64 %.idx67267, 2
  %i.ap = add i64 %i.ao, -4
  %i.aq = shl i64 %indvar, 2
  %i.ar = sub i64 %i.ap, %i.aq
  %scevgep142 = getelementptr i8, ptr %0, i64 %i.ar
  %i.as = udiv i64 %1, %i.b
  %i.at = mul i64 %2, %i.as
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.au, %i.a
  %reass.sub = sub i64 %.02541.i143.le, %i.av
  %i.aw = add i64 %reass.sub, -4
  %i.ax = lshr i64 %i.aw, 2
  %i.ay = mul i64 %i.ax, -4                       ; 2 uses
  %scevgep144 = getelementptr i8, ptr %scevgep142, i64 %i.ay
  %scevgep145 = getelementptr i8, ptr %.02541.i, i64 -4
  %scevgep146 = getelementptr i8, ptr %scevgep145, i64 %i.ay
  %bound0147 = icmp ult ptr %scevgep144, %.02541.i
  %bound1148 = icmp ult ptr %scevgep146, %.043.i
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %.lr.ph.i.i.i.preheader285, label %vector.ph152

vector.ph152:                                     ; preds = %vector.memcheck141
  %n.vec153 = and i64 %i.an, 9223372036854775800  ; 3 uses
  %i.az = mul i64 %n.vec153, -4                   ; 2 uses
  %i.ba = getelementptr i8, ptr %.043.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.02541.i, i64 %i.az
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 2 uses
  %i.bc = mul i64 %index155, -4                   ; 2 uses
  %next.gep156 = getelementptr i8, ptr %.043.i, i64 %i.bc ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.02541.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %next.gep157, i64 -16 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %next.gep157, i64 -32 ; 2 uses
  %wide.load158 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !2745, !alias.scope !16409
  %wide.load159 = load <4 x i32>, ptr %i.be, align 4, !tbaa !2745, !alias.scope !16409
  %i.bf = getelementptr inbounds i8, ptr %next.gep156, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %next.gep156, i64 -32
  store <4 x i32> %wide.load158, ptr %i.bf, align 4, !tbaa !2745, !alias.scope !16412, !noalias !16409
  store <4 x i32> %wide.load159, ptr %i.bg, align 4, !tbaa !2745, !alias.scope !16412, !noalias !16409
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !2745, !alias.scope !16409
  store <4 x i32> zeroinitializer, ptr %i.be, align 4, !tbaa !2745, !alias.scope !16409
  %index.next160 = add nuw i64 %index155, 8       ; 2 uses
  %i.bh = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.bh, label %middle.block161, label %vector.body154, !llvm.loop !16414

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.an, %n.vec153
  br i1 %cmp.n162, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i.preheader285

.lr.ph.i.i.i.preheader285:                        ; preds = %vector.memcheck141, %.lr.ph.i.i.i.preheader, %middle.block161
  %.010.i.i.i.ph = phi ptr [ %.043.i, %vector.memcheck141 ], [ %.043.i, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block161 ]
  %.079.i.i.i.ph = phi ptr [ %.02541.i, %vector.memcheck141 ], [ %.02541.i, %.lr.ph.i.i.i.preheader ], [ %i.bb, %middle.block161 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader285, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %.079.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i ], [ %.079.i.i.i.ph, %.lr.ph.i.i.i.preheader285 ]
  %i.bi = getelementptr inbounds i8, ptr %.079.i.i.i, i64 -4 ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.010.i.i.i, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !2745
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !2745
  store i32 0, ptr %i.bi, align 4, !tbaa !2745
  %.not.i.i.i = icmp eq ptr %i.f, %i.bi
  br i1 %.not.i.i.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i.i, !llvm.loop !16415

bb.d:                                             ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds i8, ptr %.02442.i, i64 -4 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.02541.i, i64 -4 ; 3 uses
  %i.bn = getelementptr i8, ptr %.043.i, i64 -4   ; 4 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !2745 ; 2 uses
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !2745 ; 2 uses
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !2745
  store i32 0, ptr %i.bm, align 4, !tbaa !2745
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !2745
  store i32 0, ptr %i.bl, align 4, !tbaa !2745
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.126.i = phi ptr [ %i.bm, %bb.e ], [ %.02541.i, %bb.f ] ; 2 uses
  %.1.i = phi ptr [ %.02442.i, %bb.e ], [ %i.bl, %bb.f ] ; 2 uses
  %.not.i = icmp eq ptr %i.f, %.126.i
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16416

._crit_edge.i:                                    ; preds = %bb.g, %bb.c
  %.024.lcssa.i = phi ptr [ %i.af, %bb.c ], [ %.1.i, %bb.g ] ; 9 uses
  %.0.lcssa.i = phi ptr [ %i.ag, %bb.c ], [ %i.bn, %bb.g ] ; 7 uses
  %.024.lcssa.i166 = ptrtoaddr ptr %.024.lcssa.i to i64 ; 2 uses
  %.not28.i = icmp eq ptr %.024.lcssa.i, %.0.lcssa.i
  %.not8.i.i29.i = icmp eq ptr %i.ae, %.024.lcssa.i
  %or.cond.i = or i1 %.not8.i.i29.i, %.not28.i
  br i1 %or.cond.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader

.lr.ph.i.i30.i.preheader:                         ; preds = %._crit_edge.i
  %i.br = udiv i64 %1, %i.b
  %i.bs = shl i64 %i.br, 3
  %i.bt = or disjoint i64 %i.bs, 4
  %i.bu = mul i64 %2, %i.bt
  %i.bv = add i64 %.024.lcssa.i166, -4
  %i.bw = add i64 %i.bu, %i.a
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = lshr i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check173 = icmp ult i64 %i.bx, 140
  br i1 %min.iters.check173, label %.lr.ph.i.i30.i.preheader284, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i.i30.i.preheader
  %i.ca = udiv i64 %1, %i.b
  %i.cb = shl i64 %i.ca, 3
  %i.cc = or disjoint i64 %i.cb, 4
  %i.cd = mul i64 %2, %i.cc
  %i.ce = add i64 %i.cd, %i.a
  %reass.sub269 = sub i64 %i.ce, %.024.lcssa.i166
  %.not268 = add i64 %reass.sub269, 3
  %i.cf = and i64 %.not268, -4                    ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cf
  %scevgep168 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cf
  %bound0169 = icmp ult ptr %scevgep167, %.024.lcssa.i
  %bound1170 = icmp ult ptr %scevgep168, %.0.lcssa.i
  %found.conflict171 = and i1 %bound0169, %bound1170
  br i1 %found.conflict171, label %.lr.ph.i.i30.i.preheader284, label %vector.ph174

vector.ph174:                                     ; preds = %vector.memcheck165
  %n.vec175 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.cg = mul i64 %n.vec175, -4                   ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cg
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph174
  %index177 = phi i64 [ 0, %vector.ph174 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.cj = mul i64 %index177, -4                   ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.cj ; 2 uses
  %next.gep179 = getelementptr i8, ptr %.024.lcssa.i, i64 %i.cj ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %next.gep179, i64 -16 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %next.gep179, i64 -32 ; 2 uses
  %wide.load180 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !16417
  %wide.load181 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !16417
  %i.cm = getelementptr inbounds i8, ptr %next.gep178, i64 -16
  %i.cn = getelementptr inbounds i8, ptr %next.gep178, i64 -32
  store <4 x i32> %wide.load180, ptr %i.cm, align 4, !tbaa !2745, !alias.scope !16420, !noalias !16417
  store <4 x i32> %wide.load181, ptr %i.cn, align 4, !tbaa !2745, !alias.scope !16420, !noalias !16417
  store <4 x i32> zeroinitializer, ptr %i.ck, align 4, !tbaa !2745, !alias.scope !16417
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !2745, !alias.scope !16417
  %index.next182 = add nuw i64 %index177, 8       ; 2 uses
  %i.co = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.co, label %middle.block183, label %vector.body176, !llvm.loop !16422

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.bz, %n.vec175
  br i1 %cmp.n184, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i.preheader284

.lr.ph.i.i30.i.preheader284:                      ; preds = %vector.memcheck165, %.lr.ph.i.i30.i.preheader, %middle.block183
  %.010.i.i31.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck165 ], [ %.0.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ch, %middle.block183 ]
  %.079.i.i32.i.ph = phi ptr [ %.024.lcssa.i, %vector.memcheck165 ], [ %.024.lcssa.i, %.lr.ph.i.i30.i.preheader ], [ %i.ci, %middle.block183 ]
  br label %.lr.ph.i.i30.i

.lr.ph.i.i30.i:                                   ; preds = %.lr.ph.i.i30.i.preheader284, %.lr.ph.i.i30.i
  %.010.i.i31.i = phi ptr [ %i.cq, %.lr.ph.i.i30.i ], [ %.010.i.i31.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %.079.i.i32.i = phi ptr [ %i.cp, %.lr.ph.i.i30.i ], [ %.079.i.i32.i.ph, %.lr.ph.i.i30.i.preheader284 ]
  %i.cp = getelementptr inbounds i8, ptr %.079.i.i32.i, i64 -4 ; 4 uses
  %i.cq = getelementptr inbounds i8, ptr %.010.i.i31.i, i64 -4 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !2745
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !2745
  store i32 0, ptr %i.cp, align 4, !tbaa !2745
  %.not.i.i33.i = icmp eq ptr %i.ae, %i.cp
  br i1 %.not.i.i33.i, label %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit, label %.lr.ph.i.i30.i, !llvm.loop !16423

_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i, %.lr.ph.i.i30.i, %middle.block, %middle.block161, %middle.block183, %._crit_edge.i, %bb.b
  %.not4377 = icmp eq i64 %i.e, 0
  br i1 %.not4377, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test24movable_and_copyable_intES6_EET0_NS0_10backward_tET_S9_S7_.exit
  %.idx68 = shl i64 %2, 2                         ; 2 uses
  %.idx = mul i64 %2, 12                          ; 2 uses
  %.not40.i44 = icmp eq i64 %.idx68, 0
  %i.cs = mul i64 %2, -8                          ; 2 uses
  br i1 %.not40.i44, label %._crit_edge.i52.us, label %.lr.ph.i45.preheader.preheader

.lr.ph.i45.preheader.preheader:                   ; preds = %.lr.ph
  %i.ct = shl i64 %2, 3
  %i.cu = shl i64 %2, 3
  %i.cv = mul i64 %2, -8
  %i.cw = shl i64 %2, 3
end_hunk_22
