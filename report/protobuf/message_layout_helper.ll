Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/message_layout_helper?download=true
inline.NumInlined: 1439
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.bf = load i64, ptr %i.be, align 8
  store i64 %i.bf, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bi = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bj = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i23, %.critedge.i ], [ %i.bh, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bk = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.bl = ptrtoint ptr %.sroa.019.0.lcssa.i22 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5                 ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i12.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i12.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i
  %.012.i.i.i.i.i13.i = phi i64 [ %i.cd, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %i.bn, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i14.i = phi ptr [ %i.cc, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i15.i = phi ptr [ %i.cb, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.sroa.019.0.lcssa.i22, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.bp = load ptr, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !37 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70
  %i.bs = load <2 x ptr>, ptr %.0910.i.i.i.i.i15.i, align 8, !tbaa !28
  store <2 x ptr> %i.bs, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !28
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i16.i = icmp eq ptr %i.bp, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i15.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i16.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i12.i
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bp to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bx) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i12.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %i.by, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 32 ; 2 uses
  %i.cd = add nsw i64 %.012.i.i.i.i.i13.i, -1
  %i.ce = icmp sgt i64 %.012.i.i.i.i.i13.i, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i12.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit, !llvm.loop !4

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i11.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ], [ %i.cc, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ] ; 2 uses
  %i.cf = sub i64 %i.a, %i.bk
  %i.cg = ashr exact i64 %i.cf, 5                 ; 2 uses
  %.not.i16 = icmp slt i64 %i.cg, %i.j
  br i1 %.not.i16, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit, label %.lr.ph.i15, !llvm.loop !145

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit, %bb.b
  %.sroa.019.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i11.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.cg, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.053, i64 %.lcssa.i)
  %i.ch = getelementptr inbounds [32 x i8], ptr %.sroa.019.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.ci = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_(ptr %.sroa.019.0.lcssa.i, ptr %i.ch, ptr %i.ch, ptr %1, ptr noundef %.0.lcssa.i) ; 0 uses
  %i.cj = shl nsw i64 %.053, 2                    ; 4 uses
  %.not25.i = icmp slt i64 %i.d, %i.cj
  br i1 %.not25.i, label %_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit
  %.idx39 = shl nsw i64 %.053, 6                  ; 2 uses
  %.idx40 = shl nsw i64 %.053, 7                  ; 2 uses
  %.not41 = icmp eq i64 %.idx39, %.idx40
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit
  %.sroa.018.027.i = phi ptr [ %i.fl, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ], [ %0, %.lr.ph.i17.preheader ] ; 2 uses
  %.026.i = phi ptr [ %i.cl, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ], [ %2, %.lr.ph.i17.preheader ] ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.026.i, i64 %.idx39 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.026.i, i64 %.idx40 ; 4 uses
  br i1 %.not41, label %._crit_edge.i, label %.lr.ph.i34

.lr.ph.i34:                                       ; preds = %.lr.ph.i17, %bb.n
  %.033.i = phi ptr [ %.1.i, %bb.n ], [ %.026.i, %.lr.ph.i17 ] ; 6 uses
  %.01632.i = phi ptr [ %.117.i, %bb.n ], [ %i.ck, %.lr.ph.i17 ] ; 6 uses
  %.sroa.0.031.i = phi ptr [ %i.dm, %bb.n ], [ %.sroa.018.027.i, %.lr.ph.i17 ] ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01632.i, i64 24 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %.033.i, i64 24 ; 2 uses
  %i.cp = load float, ptr %i.co, align 8, !tbaa !35
  %i.cq = fcmp olt float %i.cn, %i.cp
  %i.cr = load ptr, ptr %.sroa.0.031.i, align 8, !tbaa !37 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.cr, null ; 2 uses
  br i1 %i.cq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i34
  %i.cu = load <2 x ptr>, ptr %.01632.i, align 8, !tbaa !28
  store <2 x ptr> %i.cu, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %.01632.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !70
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01632.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cr to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cz) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36: ; preds = %bb.k, %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.db = load i64, ptr %i.cm, align 8
  store i64 %i.db, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %.01632.i, i64 32
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i34
  %i.dd = load <2 x ptr>, ptr %.033.i, align 8, !tbaa !28
  store <2 x ptr> %i.dd, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.de = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !70
  store ptr %i.df, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.033.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = ptrtoint ptr %i.ct to i64
  %i.dh = ptrtoint ptr %i.cr to i64
  %i.di = sub i64 %i.dg, %i.dh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.di) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i: ; preds = %bb.m, %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.dk = load i64, ptr %i.co, align 8
  store i64 %i.dk, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i, i64 32
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36
  %.117.i = phi ptr [ %i.dc, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36 ], [ %.01632.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %.1.i = phi ptr [ %.033.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i36 ], [ %i.dl, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 32 ; 2 uses
  %i.dn = icmp ne ptr %.1.i, %i.ck
  %i.do = icmp ne ptr %.117.i, %i.cl
  %i.dp = select i1 %i.dn, i1 %i.do, i1 false
  br i1 %i.dp, label %.lr.ph.i34, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i17
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.027.i, %.lr.ph.i17 ], [ %i.dm, %bb.n ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.ck, %.lr.ph.i17 ], [ %.117.i, %bb.n ] ; 2 uses
  %.0.lcssa.i26 = phi ptr [ %.026.i, %.lr.ph.i17 ], [ %.1.i, %bb.n ] ; 2 uses
  %i.dq = ptrtoint ptr %i.ck to i64
  %i.dr = ptrtoint ptr %.0.lcssa.i26 to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 5                 ; 2 uses
  %i.du = icmp sgt i64 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i28:                             ; preds = %._crit_edge.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i29 = phi i64 [ %i.ej, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33 ], [ %i.dt, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i30 = phi ptr [ %i.ei, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.0910.i.i.i.i.i.i31 = phi ptr [ %i.eh, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33 ], [ %.0.lcssa.i26, %._crit_edge.i ] ; 5 uses
  %i.dv = load ptr, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !37 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !70
  %i.dy = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i31, align 8, !tbaa !28
  store <2 x ptr> %i.dy, ptr %.0811.i.i.i.i.i.i30, align 8, !tbaa !28
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !70
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.dv, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i31, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i32, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i28
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = ptrtoint ptr %i.dv to i64
  %i.ed = sub i64 %i.eb, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ed) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i28
  %i.ee = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 24
  %i.eg = load i64, ptr %i.ef, align 8
  store i64 %i.eg, ptr %i.ee, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i31, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i30, i64 32 ; 2 uses
  %i.ej = add nsw i64 %.012.i.i.i.i.i.i29, -1
  %i.ek = icmp sgt i64 %.012.i.i.i.i.i.i29, 1
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i28, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i27 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ei, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i33 ]
  %i.el = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i27 to i64 ; 3 uses
  %i.em = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.en ; 2 uses
  %i.ep = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.eq = ptrtoint ptr %.016.lcssa.i to i64
  %i.er = sub i64 %i.ep, %i.eq
  %i.es = ashr exact i64 %i.er, 5                 ; 2 uses
  %i.et = icmp sgt i64 %i.es, 0
  br i1 %i.et, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit

.lr.ph.i.i.i.i.i21.i:                             ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %.012.i.i.i.i.i22.i = phi i64 [ %i.fi, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.es, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i = phi ptr [ %i.fh, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.eo, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i24.i = phi ptr [ %i.fg, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %.016.lcssa.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.eu = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !37 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !70
  %i.ex = load <2 x ptr>, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !28
  store <2 x ptr> %i.ex, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !28
  %i.ey = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !70
  store ptr %i.ez, ptr %i.ev, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i25.i = icmp eq ptr %i.eu, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i24.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i21.i
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = ptrtoint ptr %i.eu to i64
  %i.fc = sub i64 %i.fa, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fc) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i21.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 24
  %i.ff = load i64, ptr %i.fe, align 8
  store i64 %i.ff, ptr %i.fd, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 32
  %i.fh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 32 ; 2 uses
  %i.fi = add nsw i64 %.012.i.i.i.i.i22.i, -1
  %i.fj = icmp sgt i64 %.012.i.i.i.i.i22.i, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %3 = ptrtoint ptr %i.fh to i64
  br label %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit

_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit: ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i
  %.08.lcssa.i.i.i.i.i20.i = phi i64 [ %i.el, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %3, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i ]
  %i.fk = sub i64 %.08.lcssa.i.i.i.i.i20.i, %i.el
  %i.fl = getelementptr inbounds i8, ptr %i.eo, i64 %i.fk ; 2 uses
  %i.fm = sub i64 %i.i, %i.ep
  %i.fn = ashr exact i64 %i.fm, 5                 ; 2 uses
  %.not.i18 = icmp slt i64 %i.fn, %i.cj
  br i1 %.not.i18, label %_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit, label %.lr.ph.i17, !llvm.loop !146

_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit
  %.0.lcssa.i19 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit ], [ %i.cl, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit ], [ %i.fl, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.lcssa.i20 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit ], [ %i.fn, %_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_.exit ]
  %.sroa.speculated.i21 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i20)
  %i.fo = getelementptr inbounds [32 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i21 ; 2 uses
  %i.fp = tail call ptr @_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.fo, ptr noundef %i.fo, ptr noundef %i.e, ptr %.sroa.018.0.lcssa.i) ; 0 uses
  %i.fq = icmp slt i64 %i.cj, %i.d
  br i1 %i.fq, label %bb.b, label %._crit_edge, !llvm.loop !147

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_less_iterEEvT_SE_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_less_iterEEvT_SE_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_SE_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 5 uses
  %i.f = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  store ptr %i.k, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
  %i.u = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %bb.b
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.b ], [ %i.s, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ]
  tail call void @_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_(ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i, ptr %1, ptr %2, ptr %0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.v = ptrtoint ptr %2 to i64
  %i.w = ptrtoint ptr %1 to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 5                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit26

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.d, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25
  %.012.i.i.i.i.i21 = phi i64 [ %i.ao, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25 ], [ %i.y, %bb.d ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.an, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25 ], [ %5, %bb.d ] ; 5 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.am, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25 ], [ %1, %bb.d ] ; 5 uses
  %i.aa = load ptr, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !37 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  %i.ad = load <2 x ptr>, ptr %.0910.i.i.i.i.i23, align 8, !tbaa !28
  store <2 x ptr> %i.ad, ptr %.0811.i.i.i.i.i22, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.aa, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i23, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ai) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25: ; preds = %bb.e, %.lr.ph.i.i.i.i.i20
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  store i64 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32 ; 2 uses
  %i.ao = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.ap = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit26, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit26: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25, %bb.d
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %5, %bb.d ], [ %i.an, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i25 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i19, ptr %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit26, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_less_iterEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit22, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.013.025 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not26 = icmp eq ptr %.sroa.013.025, %1
  br i1 %.not26, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.013.028 = phi ptr [ %.sroa.013.025, %.lr.ph ], [ %.sroa.013.0, %bb.i ] ; 9 uses
  %.pn27 = phi ptr [ %0, %.lr.ph ], [ %.sroa.013.028, %bb.i ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn27, i64 56 ; 4 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !35
  %i.h = load float, ptr %i.b, align 8, !tbaa !35
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = load ptr, ptr %.sroa.013.028, align 8, !tbaa !37 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn27, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.pn27, i64 48 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013.028, i8 0, i64 24, i1 false)
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8
  %i.p = ptrtoint ptr %.sroa.013.028 to i64
  %i.q = sub i64 %i.p, %i.c
  %i.r = ashr exact i64 %i.q, 5                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.pn27, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ai, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.v, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.u, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %.sroa.013.028, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !37   ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !28
  store <2 x ptr> %i.z, ptr %i.v, align 8, !tbaa !28
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ae) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  %i.ai = add nsw i64 %.010.i.i.i.i.i, -1
end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_:bb.a
  %i.an = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.an, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !70
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.as) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.av = load i64, ptr %i.au, align 8
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ay = add nsw i64 %.012.i.i.i.i.i, -1
  %i.az = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ax, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 2 uses
  %i.ba = ptrtoint ptr %3 to i64
  %i.bb = ptrtoint ptr %.sroa.019.0.lcssa to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 5                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit18

.lr.ph.i.i.i.i.i12:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17
  %.012.i.i.i.i.i13 = phi i64 [ %i.bt, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17 ], [ %i.bd, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 2 uses
  %.0811.i.i.i.i.i14 = phi ptr [ %i.bs, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 5 uses
  %.0910.i.i.i.i.i15 = phi ptr [ %i.br, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17 ], [ %.sroa.019.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ] ; 5 uses
  %i.bf = load ptr, ptr %.0811.i.i.i.i.i14, align 8, !tbaa !37 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !70
  %i.bi = load <2 x ptr>, ptr %.0910.i.i.i.i.i15, align 8, !tbaa !28
  store <2 x ptr> %i.bi, ptr %.0811.i.i.i.i.i14, align 8, !tbaa !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i16 = icmp eq ptr %i.bf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i15, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i16, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i12
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17: ; preds = %bb.h, %.lr.ph.i.i.i.i.i12
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 24
  %i.bq = load i64, ptr %i.bp, align 8
  store i64 %i.bq, ptr %i.bo, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14, i64 32 ; 2 uses
  %i.bt = add nsw i64 %.012.i.i.i.i.i13, -1
  %i.bu = icmp sgt i64 %.012.i.i.i.i.i13, 1
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit18, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit18: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit ], [ %i.bs, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17 ]
  ret ptr %.08.lcssa.i.i.i.i.i11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_less_iterEET0_T_SF_SF_SF_SE_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.033 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %.01632 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %.sroa.0.031 = phi ptr [ %i.ad, %bb.f ], [ %4, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01632, i64 24 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %.033, i64 24 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !35
  %i.h = fcmp olt float %i.e, %i.g
  %i.i = load ptr, ptr %.sroa.0.031, align 8, !tbaa !37 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null      ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.l = load <2 x ptr>, ptr %.01632, align 8, !tbaa !28
  store <2 x ptr> %i.l, ptr %.sroa.0.031, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %.01632, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  store ptr %i.n, ptr %i.j, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01632, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.q) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit: ; preds = %bb.b, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24
  %i.s = load i64, ptr %i.d, align 8
  store i64 %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.01632, i64 32
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.u = load <2 x ptr>, ptr %.033, align 8, !tbaa !28
  store <2 x ptr> %i.u, ptr %.sroa.0.031, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw i8, ptr %.033, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !70
  store ptr %i.w, ptr %i.j, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.033, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19: ; preds = %bb.d, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 24
  %i.ab = load i64, ptr %i.f, align 8
  store i64 %i.ab, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.033, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit
  %.117 = phi ptr [ %i.t, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ], [ %.01632, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19 ] ; 3 uses
  %.1 = phi ptr [ %.033, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ], [ %i.ac, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.031, i64 32 ; 2 uses
  %i.ae = icmp ne ptr %.1, %1
  %i.af = icmp ne ptr %.117, %3
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ad, %bb.f ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.f ] ; 2 uses
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = ptrtoint ptr %.0.lcssa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 5                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.ak, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %i.am = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %i.ap = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.ap, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  store ptr %i.ar, ptr %i.an, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = ptrtoint ptr %i.am to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.au) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ax = load i64, ptr %i.aw, align 8
  store i64 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.az, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ]
  %i.bc = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.bd = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.be ; 2 uses
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = ptrtoint ptr %.016.lcssa to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 5                 ; 2 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26
  %.012.i.i.i.i.i22 = phi i64 [ %i.bz, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26 ], [ %i.bj, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.by, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26 ], [ %i.bf, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ] ; 5 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.bx, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26 ], [ %.016.lcssa, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ] ; 5 uses
  %i.bl = load ptr, ptr %.0811.i.i.i.i.i23, align 8, !tbaa !37 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !70
  %i.bo = load <2 x ptr>, ptr %.0910.i.i.i.i.i24, align 8, !tbaa !28
  store <2 x ptr> %i.bo, ptr %.0811.i.i.i.i.i23, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70
  store ptr %i.bq, ptr %i.bm, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.bl, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i24, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bt) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26: ; preds = %bb.h, %.lr.ph.i.i.i.i.i21
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 24
  %i.bw = load i64, ptr %i.bv, align 8
  store i64 %i.bw, ptr %i.bu, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 32 ; 2 uses
  %i.bz = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.ca = icmp sgt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26
  %5 = ptrtoint ptr %i.by to i64
  br label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27: ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit
  %.08.lcssa.i.i.i.i.i20 = phi i64 [ %i.bc, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit ], [ %5, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit ]
  %i.cb = sub i64 %.08.lcssa.i.i.i.i.i20, %i.bc
  %i.cc = getelementptr inbounds i8, ptr %i.bf, i64 %i.cb
  ret ptr %i.cc
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not25 = icmp eq ptr %0, %1
  br i1 %.not25, label %.critedge12, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.028 = phi ptr [ %.1, %bb.g ], [ %0, %bb.a ]   ; 8 uses
  %.sroa.0.027 = phi ptr [ %i.aa, %bb.g ], [ %4, %bb.a ] ; 8 uses
  %.sroa.018.026 = phi ptr [ %.sroa.018.1, %bb.g ], [ %2, %bb.a ] ; 7 uses
  %.not21 = icmp eq ptr %.sroa.018.026, %3
  br i1 %.not21, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 24 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %.028, i64 24 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !35
  %i.e = fcmp olt float %i.b, %i.d
  %i.f = load ptr, ptr %.sroa.0.027, align 8, !tbaa !37 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null      ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x ptr>, ptr %.sroa.018.026, align 8, !tbaa !28
  store <2 x ptr> %i.i, ptr %.sroa.0.027, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  store ptr %i.k, ptr %i.g, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.026, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit: ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 24
  %i.p = load i64, ptr %i.a, align 8
  store i64 %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.018.026, i64 32
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.r = load <2 x ptr>, ptr %.028, align 8, !tbaa !28
  store <2 x ptr> %i.r, ptr %.sroa.0.027, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70
  store ptr %i.t, ptr %i.g, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.028, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = ptrtoint ptr %i.h to i64
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.w) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14: ; preds = %bb.e, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 24
  %i.y = load i64, ptr %i.c, align 8
  store i64 %i.y, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.028, i64 32
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit
  %.sroa.018.1 = phi ptr [ %i.q, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ], [ %.sroa.018.026, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14 ]
  %.1 = phi ptr [ %.028, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ], [ %i.z, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 32
  %.not = icmp eq ptr %.1, %1
  br i1 %.not, label %.critedge12, label %.lr.ph, !llvm.loop !150

.critedge:                                        ; preds = %.lr.ph
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = ptrtoint ptr %.028 to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 5                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %.critedge12

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.au, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.ae, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.at, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %.sroa.0.027, %.critedge ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.as, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %.028, %.critedge ] ; 5 uses
  %i.ag = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !70
  %i.aj = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.aj, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ag, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.ag to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ao) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = add nsw i64 %.012.i.i.i.i.i, -1
  %i.av = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i, label %.critedge12, !llvm.loop !4

.critedge12:                                      ; preds = %bb.g, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %bb.a, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_SB_NS0_5__ops15_Iter_less_iterEEvT_SE_T0_SF_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.u, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %4, %bb.b ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %3, %bb.b ] ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  %i.l = load <2 x ptr>, ptr %i.g, align 8, !tbaa !28
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !28
  %i.m = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70
  store ptr %i.n, ptr %i.j, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.q) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 8
  %i.u = add nsw i64 %.010.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, !llvm.loop !5

bb.d:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %2, %3
  br i1 %i.w, label %_ZSt13move_backwardIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit, %bb.e
  %.sroa.031.0.ph.pn = phi ptr [ %1, %bb.e ], [ %.sroa.031.0.ph, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ] ; 4 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.e ], [ %i.ad, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ]
  %.0.ph = phi ptr [ %i.x, %bb.e ], [ %.0, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit ]
  %.sroa.031.0.ph = getelementptr inbounds i8, ptr %.sroa.031.0.ph.pn, i64 -32 ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %.sroa.031.0.ph.pn, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.m
  %.sroa.0.0 = phi ptr [ %i.ad, %bb.m ], [ %.sroa.0.0.ph, %.outer ] ; 4 uses
  %.0 = phi ptr [ %i.bw, %bb.m ], [ %.0.ph, %.outer ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.aa = load float, ptr %i.z, align 8, !tbaa !35
  %i.ab = load float, ptr %i.y, align 8, !tbaa !35
  %i.ac = fcmp olt float %i.aa, %i.ab
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32 ; 6 uses
end_hunk_1
begin_hunk_2_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_":bb.a
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.bk, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bn = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bo = ptrtoint ptr %.sroa.019.0.lcssa.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i12.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.i.i.i.i.i12.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i
  %.012.i.i.i.i.i13.i = phi i64 [ %i.cg, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %i.bq, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i14.i = phi ptr [ %i.cf, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i15.i = phi ptr [ %i.ce, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.sroa.019.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.bs = load ptr, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !37 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.bv = load <2 x ptr>, ptr %.0910.i.i.i.i.i15.i, align 8, !tbaa !28
  store <2 x ptr> %i.bv, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i16.i = icmp eq ptr %i.bs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i15.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i16.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i12.i
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i12.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 32 ; 2 uses
  %i.cg = add nsw i64 %.012.i.i.i.i.i13.i, -1
  %i.ch = icmp sgt i64 %.012.i.i.i.i.i13.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i12.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit", !llvm.loop !4

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i11.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ], [ %i.cf, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ] ; 2 uses
  %i.ci = sub i64 %i.a, %i.bn
  %i.cj = ashr exact i64 %i.ci, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cj, %i.m
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i21, !llvm.loop !157

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i11.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.cj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa.i)
  %i.ck = getelementptr inbounds [32 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr %.sroa.023.0.lcssa.i, ptr %i.ck, ptr %i.ck, ptr %1, ptr noundef %.0.lcssa.i)
  %i.cl = shl nsw i64 %.059, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.cl
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.idx45 = shl nsw i64 %.059, 6                  ; 2 uses
  %.idx46 = shl nsw i64 %.059, 7                  ; 2 uses
  %.not47 = icmp eq i64 %.idx45, %.idx46
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.fn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ], [ %0, %.lr.ph.i22.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.cn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ], [ %2, %.lr.ph.i22.preheader ] ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %.030.i, i64 %.idx45 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %.030.i, i64 %.idx46 ; 4 uses
  br i1 %.not47, label %._crit_edge.i, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i22, %bb.n
  %.033.i40 = phi ptr [ %.1.i, %bb.n ], [ %.030.i, %.lr.ph.i22 ] ; 7 uses
  %.01632.i = phi ptr [ %.117.i, %bb.n ], [ %i.cm, %.lr.ph.i22 ] ; 7 uses
  %.sroa.0.031.i = phi ptr [ %i.do, %bb.n ], [ %.sroa.022.031.i, %.lr.ph.i22 ] ; 7 uses
  %i.co = getelementptr i8, ptr %.01632.i, i64 28
  %.016.val.i = load i32, ptr %i.co, align 4, !tbaa !38
  %i.cp = getelementptr i8, ptr %.033.i40, i64 28
  %.0.val.i = load i32, ptr %i.cp, align 4, !tbaa !38
  %i.cq = icmp ult i32 %.016.val.i, %.0.val.i
  %i.cr = load ptr, ptr %.sroa.0.031.i, align 8, !tbaa !37 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.cr, null ; 2 uses
  br i1 %i.cq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i39
  %i.cu = load <2 x ptr>, ptr %.01632.i, align 8, !tbaa !28
  store <2 x ptr> %i.cu, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %.01632.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !70
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01632.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cr to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cz) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42: ; preds = %bb.k, %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.01632.i, i64 24
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01632.i, i64 32
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i39
  %i.de = load <2 x ptr>, ptr %.033.i40, align 8, !tbaa !28
  store <2 x ptr> %i.de, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %.033.i40, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !70
  store ptr %i.dg, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.033.i40, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = ptrtoint ptr %i.ct to i64
  %i.di = ptrtoint ptr %i.cr to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.dj) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i: ; preds = %bb.m, %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i40, i64 24
  %i.dm = load i64, ptr %i.dl, align 8
  store i64 %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.033.i40, i64 32
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42
  %.117.i = phi ptr [ %i.dd, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42 ], [ %.01632.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %.1.i = phi ptr [ %.033.i40, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42 ], [ %i.dn, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 32 ; 2 uses
  %i.dp = icmp ne ptr %.1.i, %i.cm
  %i.dq = icmp ne ptr %.117.i, %i.cn
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.i39, label %._crit_edge.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i22
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i22 ], [ %i.do, %bb.n ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.cm, %.lr.ph.i22 ], [ %.117.i, %bb.n ] ; 2 uses
  %.0.lcssa.i31 = phi ptr [ %.030.i, %.lr.ph.i22 ], [ %.1.i, %bb.n ] ; 2 uses
  %i.ds = ptrtoint ptr %i.cm to i64
  %i.dt = ptrtoint ptr %.0.lcssa.i31 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 5                 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i33:                             ; preds = %._crit_edge.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.el, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %i.dv, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.ek, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.ej, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %.0.lcssa.i31, %._crit_edge.i ] ; 5 uses
  %i.dx = load ptr, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !37 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !70
  %i.ea = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !28
  store <2 x ptr> %i.ea, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.dx, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i36, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i37, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i33
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.dx to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ef) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i33
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 24
  %i.ei = load i64, ptr %i.eh, align 8
  store i64 %i.ei, ptr %i.eg, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 32 ; 2 uses
  %i.el = add nsw i64 %.012.i.i.i.i.i.i34, -1
  %i.em = icmp sgt i64 %.012.i.i.i.i.i.i34, 1
  br i1 %i.em, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ek, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ]
  %i.en = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.eo = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.ep ; 2 uses
  %i.er = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.es = ptrtoint ptr %.016.lcssa.i to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 5                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i21.i, label %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.i.i.i.i.i21.i:                             ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %.012.i.i.i.i.i22.i = phi i64 [ %i.fk, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.eu, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i = phi ptr [ %i.fj, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.eq, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i24.i = phi ptr [ %i.fi, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %.016.lcssa.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.ew = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !37 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = load <2 x ptr>, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !28
  store <2 x ptr> %i.ez, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70
  store ptr %i.fb, ptr %i.ex, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i25.i = icmp eq ptr %i.ew, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i24.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i21.i
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = ptrtoint ptr %i.ew to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fe) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i21.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 24
  %i.fh = load i64, ptr %i.fg, align 8
  store i64 %i.fh, ptr %i.ff, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 32 ; 2 uses
  %i.fk = add nsw i64 %.012.i.i.i.i.i22.i, -1
  %i.fl = icmp sgt i64 %.012.i.i.i.i.i22.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %3 = ptrtoint ptr %i.fj to i64
  br label %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i
  %.08.lcssa.i.i.i.i.i20.i = phi i64 [ %i.en, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %3, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i ]
  %i.fm = sub i64 %.08.lcssa.i.i.i.i.i20.i, %i.en
  %i.fn = getelementptr inbounds i8, ptr %i.eq, i64 %i.fm ; 2 uses
  %i.fo = sub i64 %i.l, %i.er
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %.not.i23 = icmp slt i64 %i.fp, %i.cl
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !158

"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.cn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.fn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.fp, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i25)
  %i.fq = getelementptr inbounds [32 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.fq, ptr noundef %i.fq, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.fr = icmp slt i64 %i.cl, %i.d
  br i1 %i.fr, label %bb.b, label %._crit_edge, !llvm.loop !159

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 5 uses
  %i.f = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  store ptr %i.k, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
  %i.u = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %bb.i
  %.028.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.0.027.i = phi ptr [ %i.av, %bb.i ], [ %0, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.018.026.i = phi ptr [ %.sroa.018.1.i, %bb.i ], [ %1, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 8 uses
  %.not21.i = icmp eq ptr %.sroa.018.026.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %.028.i, i64 28
  %.0.val.i = load i32, ptr %i.v, align 4, !tbaa !38
  %i.w = getelementptr i8, ptr %.sroa.018.026.i, i64 28
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !38
  %i.x = icmp ult i32 %.val.i.i, %.0.val.i
  %i.y = load ptr, ptr %.sroa.0.027.i, align 8, !tbaa !37 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null    ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load <2 x ptr>, ptr %.sroa.018.026.i, align 8, !tbaa !28
  store <2 x ptr> %i.ab, ptr %.sroa.0.027.i, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.026.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 32
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.al = load <2 x ptr>, ptr %.028.i, align 8, !tbaa !28
  store <2 x ptr> %i.al, ptr %.sroa.0.027.i, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70
  store ptr %i.an, ptr %i.z, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.028.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.aa to i64
  %i.ap = ptrtoint ptr %i.y to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.aq) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i: ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.028.i, i64 24
  %i.at = load i64, ptr %i.as, align 8
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.028.i, i64 32
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i
  %.sroa.018.1.i = phi ptr [ %i.ak, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i ], [ %.sroa.018.026.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i ]
  %.1.i = phi ptr [ %.028.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i ], [ %i.au, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 32
  %.not.i = icmp eq ptr %.1.i, %i.s
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !160

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aw = ptrtoint ptr %i.s to i64
  %i.ax = ptrtoint ptr %.028.i to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bp, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %i.az, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %.sroa.0.027.i, %.critedge.i ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %.028.i, %.critedge.i ] ; 5 uses
  %i.bb = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.be, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !70
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.bp = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_0EEEvT_SI_T0_SJ_T1_T2_.exit", !llvm.loop !4

bb.k:                                             ; preds = %bb.a
  %i.br = ptrtoint ptr %2 to i64
  %i.bs = ptrtoint ptr %1 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 5                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit30

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.k, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i25 = phi i64 [ %i.ck, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %i.bu, %bb.k ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.cj, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %5, %bb.k ] ; 5 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.ci, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %1, %bb.k ] ; 5 uses
  %i.bw = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !37 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = load <2 x ptr>, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !28
end_hunk_2
begin_hunk_3_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_":bb.a
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.bl = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bm = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i28, %.critedge.i ], [ %i.bk, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bn = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bo = ptrtoint ptr %.sroa.019.0.lcssa.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5                 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i.i12.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.i.i.i.i.i12.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i
  %.012.i.i.i.i.i13.i = phi i64 [ %i.cg, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %i.bq, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i14.i = phi ptr [ %i.cf, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i15.i = phi ptr [ %i.ce, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ], [ %.sroa.019.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.bs = load ptr, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !37 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !70
  %i.bv = load <2 x ptr>, ptr %.0910.i.i.i.i.i15.i, align 8, !tbaa !28
  store <2 x ptr> %i.bv, ptr %.0811.i.i.i.i.i14.i, align 8, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i16.i = icmp eq ptr %i.bs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i15.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i16.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i12.i
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = ptrtoint ptr %i.bs to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.ca) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i12.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  store i64 %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i15.i, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i14.i, i64 32 ; 2 uses
  %i.cg = add nsw i64 %.012.i.i.i.i.i13.i, -1
  %i.ch = icmp sgt i64 %.012.i.i.i.i.i13.i, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i12.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit", !llvm.loop !4

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %.08.lcssa.i.i.i.i.i11.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i ], [ %i.cf, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i17.i ] ; 2 uses
  %i.ci = sub i64 %i.a, %i.bn
  %i.cj = ashr exact i64 %i.ci, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cj, %i.m
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i21, !llvm.loop !165

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i11.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.cj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.059, i64 %.lcssa.i)
  %i.ck = getelementptr inbounds [32 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr %.sroa.023.0.lcssa.i, ptr %i.ck, ptr %i.ck, ptr %1, ptr noundef %.0.lcssa.i)
  %i.cl = shl nsw i64 %.059, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.cl
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit"
  %.idx45 = shl nsw i64 %.059, 6                  ; 2 uses
  %.idx46 = shl nsw i64 %.059, 7                  ; 2 uses
  %.not47 = icmp eq i64 %.idx45, %.idx46
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.fn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ], [ %0, %.lr.ph.i22.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.cn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ], [ %2, %.lr.ph.i22.preheader ] ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %.030.i, i64 %.idx45 ; 4 uses
  %i.cn = getelementptr inbounds i8, ptr %.030.i, i64 %.idx46 ; 4 uses
  br i1 %.not47, label %._crit_edge.i, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.lr.ph.i22, %bb.n
  %.033.i40 = phi ptr [ %.1.i, %bb.n ], [ %.030.i, %.lr.ph.i22 ] ; 7 uses
  %.01632.i = phi ptr [ %.117.i, %bb.n ], [ %i.cm, %.lr.ph.i22 ] ; 7 uses
  %.sroa.0.031.i = phi ptr [ %i.do, %bb.n ], [ %.sroa.022.031.i, %.lr.ph.i22 ] ; 7 uses
  %i.co = getelementptr i8, ptr %.01632.i, i64 28
  %.016.val.i = load i32, ptr %i.co, align 4, !tbaa !38
  %i.cp = getelementptr i8, ptr %.033.i40, i64 28
  %.0.val.i = load i32, ptr %i.cp, align 4, !tbaa !38
  %i.cq = icmp ugt i32 %.016.val.i, %.0.val.i
  %i.cr = load ptr, ptr %.sroa.0.031.i, align 8, !tbaa !37 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i.i.i.i41 = icmp eq ptr %i.cr, null ; 2 uses
  br i1 %i.cq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i39
  %i.cu = load <2 x ptr>, ptr %.01632.i, align 8, !tbaa !28
  store <2 x ptr> %i.cu, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw i8, ptr %.01632.i, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !70
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.01632.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cr to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.cz) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42: ; preds = %bb.k, %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.01632.i, i64 24
  %i.dc = load i64, ptr %i.db, align 8
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.01632.i, i64 32
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i39
  %i.de = load <2 x ptr>, ptr %.033.i40, align 8, !tbaa !28
  store <2 x ptr> %i.de, ptr %.sroa.0.031.i, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %.033.i40, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !70
  store ptr %i.dg, ptr %i.cs, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.033.i40, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i41, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = ptrtoint ptr %i.ct to i64
  %i.di = ptrtoint ptr %i.cr to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cr, i64 noundef %i.dj) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i: ; preds = %bb.m, %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24
  %i.dl = getelementptr inbounds nuw i8, ptr %.033.i40, i64 24
  %i.dm = load i64, ptr %i.dl, align 8
  store i64 %i.dm, ptr %i.dk, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.033.i40, i64 32
  br label %bb.n

bb.n:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42
  %.117.i = phi ptr [ %i.dd, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42 ], [ %.01632.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %.1.i = phi ptr [ %.033.i40, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i42 ], [ %i.dn, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit19.i ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 32 ; 2 uses
  %i.dp = icmp ne ptr %.1.i, %i.cm
  %i.dq = icmp ne ptr %.117.i, %i.cn
  %i.dr = select i1 %i.dp, i1 %i.dq, i1 false
  br i1 %i.dr, label %.lr.ph.i39, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.n, %.lr.ph.i22
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i22 ], [ %i.do, %bb.n ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.cm, %.lr.ph.i22 ], [ %.117.i, %bb.n ] ; 2 uses
  %.0.lcssa.i31 = phi ptr [ %.030.i, %.lr.ph.i22 ], [ %.1.i, %bb.n ] ; 2 uses
  %i.ds = ptrtoint ptr %i.cm to i64
  %i.dt = ptrtoint ptr %.0.lcssa.i31 to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 5                 ; 2 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i

.lr.ph.i.i.i.i.i.i33:                             ; preds = %._crit_edge.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i34 = phi i64 [ %i.el, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %i.dv, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i35 = phi ptr [ %i.ek, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 5 uses
  %.0910.i.i.i.i.i.i36 = phi ptr [ %i.ej, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ], [ %.0.lcssa.i31, %._crit_edge.i ] ; 5 uses
  %i.dx = load ptr, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !37 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 16 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !70
  %i.ea = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i36, align 8, !tbaa !28
  store <2 x ptr> %i.ea, ptr %.0811.i.i.i.i.i.i35, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !70
  store ptr %i.ec, ptr %i.dy, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.i37 = icmp eq ptr %i.dx, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i36, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i37, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i33
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = ptrtoint ptr %i.dx to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ef) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i33
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 24
  %i.ei = load i64, ptr %i.eh, align 8
  store i64 %i.ei, ptr %i.eg, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i36, i64 32
  %i.ek = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i35, i64 32 ; 2 uses
  %i.el = add nsw i64 %.012.i.i.i.i.i.i34, -1
  %i.em = icmp sgt i64 %.012.i.i.i.i.i.i34, 1
  br i1 %i.em, label %.lr.ph.i.i.i.i.i.i33, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i32 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ek, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i38 ]
  %i.en = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i32 to i64 ; 3 uses
  %i.eo = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.ep ; 2 uses
  %i.er = ptrtoint ptr %i.cn to i64               ; 2 uses
  %i.es = ptrtoint ptr %.016.lcssa.i to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = ashr exact i64 %i.et, 5                 ; 2 uses
  %i.ev = icmp sgt i64 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i21.i, label %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

.lr.ph.i.i.i.i.i21.i:                             ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %.012.i.i.i.i.i22.i = phi i64 [ %i.fk, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.eu, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i23.i = phi ptr [ %i.fj, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %i.eq, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %.0910.i.i.i.i.i24.i = phi ptr [ %i.fi, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i ], [ %.016.lcssa.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ] ; 5 uses
  %i.ew = load ptr, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !37 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 16 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = load <2 x ptr>, ptr %.0910.i.i.i.i.i24.i, align 8, !tbaa !28
  store <2 x ptr> %i.ez, ptr %.0811.i.i.i.i.i23.i, align 8, !tbaa !28
  %i.fa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70
  store ptr %i.fb, ptr %i.ex, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i25.i = icmp eq ptr %i.ew, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i24.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i21.i
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = ptrtoint ptr %i.ew to i64
  %i.fe = sub i64 %i.fc, %i.fd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fe) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i21.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 24
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 24
  %i.fh = load i64, ptr %i.fg, align 8
  store i64 %i.fh, ptr %i.ff, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24.i, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23.i, i64 32 ; 2 uses
  %i.fk = add nsw i64 %.012.i.i.i.i.i22.i, -1
  %i.fl = icmp sgt i64 %.012.i.i.i.i.i22.i, 1
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i21.i, label %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i, !llvm.loop !4

_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i: ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i26.i
  %3 = ptrtoint ptr %i.fj to i64
  br label %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit"

"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit": ; preds = %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i
  %.08.lcssa.i.i.i.i.i20.i = phi i64 [ %i.en, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i ], [ %3, %_ZSt4moveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit27.loopexit.i ]
  %i.fm = sub i64 %.08.lcssa.i.i.i.i.i20.i, %i.en
  %i.fn = getelementptr inbounds i8, ptr %i.eq, i64 %i.fm ; 2 uses
  %i.fo = sub i64 %i.l, %i.er
  %i.fp = ashr exact i64 %i.fo, 5                 ; 2 uses
  %.not.i23 = icmp slt i64 %i.fp, %i.cl
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !166

"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit" ], [ %i.cn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit" ], [ %i.fn, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit" ], [ %i.fp, %"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i25)
  %i.fq = getelementptr inbounds [32 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEET0_T_SJ_SJ_SJ_SI_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.fq, ptr noundef %i.fq, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.fr = icmp slt i64 %i.cl, %i.d
  br i1 %i.fr, label %bb.b, label %._crit_edge, !llvm.loop !167

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS5_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_SI_T0_SJ_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.t, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.s, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.r, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 5 uses
  %i.f = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %i.i = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.i, ptr %.0811.i.i.i.i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !70
  store ptr %i.k, ptr %i.g, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.n) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.q = load i64, ptr %i.p, align 8
  store i64 %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.t = add nsw i64 %.012.i.i.i.i.i, -1
  %i.u = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !4

.lr.ph.i:                                         ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i, %bb.i
  %.028.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 9 uses
  %.sroa.0.027.i = phi ptr [ %i.av, %bb.i ], [ %0, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.018.026.i = phi ptr [ %.sroa.018.1.i, %bb.i ], [ %1, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i ] ; 8 uses
  %.not21.i = icmp eq ptr %.sroa.018.026.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr i8, ptr %.028.i, i64 28
  %.0.val.i = load i32, ptr %i.v, align 4, !tbaa !38
  %i.w = getelementptr i8, ptr %.sroa.018.026.i, i64 28
  %.val.i.i = load i32, ptr %i.w, align 4, !tbaa !38
  %i.x = icmp ugt i32 %.val.i.i, %.0.val.i
  %i.y = load ptr, ptr %.sroa.0.027.i, align 8, !tbaa !37 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !70  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null    ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load <2 x ptr>, ptr %.sroa.018.026.i, align 8, !tbaa !28
  store <2 x ptr> %i.ab, ptr %.sroa.0.027.i, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018.026.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 32
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.al = load <2 x ptr>, ptr %.028.i, align 8, !tbaa !28
  store <2 x ptr> %i.al, ptr %.sroa.0.027.i, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %.028.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70
  store ptr %i.an, ptr %i.z, align 8, !tbaa !70
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.028.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.aa to i64
  %i.ap = ptrtoint ptr %i.y to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.aq) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i: ; preds = %bb.h, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.028.i, i64 24
  %i.at = load i64, ptr %i.as, align 8
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.028.i, i64 32
  br label %bb.i

bb.i:                                             ; preds = %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i
  %.sroa.018.1.i = phi ptr [ %i.ak, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i ], [ %.sroa.018.026.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i ]
  %.1.i = phi ptr [ %.028.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i ], [ %i.au, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit14.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 32
  %.not.i = icmp eq ptr %.1.i, %i.s
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_SJ_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !168

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.aw = ptrtoint ptr %i.s to i64
  %i.ax = ptrtoint ptr %.028.i to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 5                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_SJ_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bp, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %i.az, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bo, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %.sroa.0.027.i, %.critedge.i ] ; 5 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i ], [ %.028.i, %.critedge.i ] ; 5 uses
  %i.bb = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !37 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = load <2 x ptr>, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !28
  store <2 x ptr> %i.be, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !70
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !70
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #21
  br label %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i

_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.bm = load i64, ptr %i.bl, align 8
  store i64 %i.bm, ptr %i.bk, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.bp = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bq = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN6google8protobuf8compiler3cpp10FieldGroupEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNS3_19MessageLayoutHelper24FillPaddingFromPartitionERSA_SF_mE3$_1EEEvT_SI_T0_SJ_T1_T2_.exit", !llvm.loop !4

bb.k:                                             ; preds = %bb.a
  %i.br = ptrtoint ptr %2 to i64
  %i.bs = ptrtoint ptr %1 to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 5                 ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8compiler3cpp10FieldGroupESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit30

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.k, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29
  %.012.i.i.i.i.i25 = phi i64 [ %i.ck, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %i.bu, %bb.k ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.cj, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %5, %bb.k ] ; 5 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.ci, %_ZN6google8protobuf8compiler3cpp10FieldGroupaSEOS3_.exit.i.i.i.i.i29 ], [ %1, %bb.k ] ; 5 uses
  %i.bw = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !37 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 16 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !70
  %i.bz = load <2 x ptr>, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !28
end_hunk_3
