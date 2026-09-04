Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 67
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_":bb.a
_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.bj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.bk = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bl = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i, !llvm.loop !23

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %i.ap, %.critedge.i ], [ %i.bj, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bm = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.bn = ptrtoint ptr %.sroa.020.1.i to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.preheader.i.i.i.i.i12.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"

.lr.ph.preheader.i.i.i.i.i12.i:                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i
  %i.bq = udiv exact i64 %i.bo, 72
  br label %.lr.ph.i.i.i.i.i13.i

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i, %.lr.ph.preheader.i.i.i.i.i12.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.ce, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i ], [ %i.bq, %.lr.ph.preheader.i.i.i.i.i12.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.cd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i ], [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i12.i ] ; 4 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.cc, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i ], [ %.sroa.020.1.i, %.lr.ph.preheader.i.i.i.i.i12.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i15.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i16.i, i64 44, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 48 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 48 ; 2 uses
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !211 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 64 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !222
  %i.bw = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !223
  store <2 x ptr> %i.bw, ptr %i.br, align 8, !tbaa !223
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !222
  store ptr %i.by, ptr %i.bu, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bt, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = ptrtoint ptr %i.bt to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.cb) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i: ; preds = %bb.i, %.lr.ph.i.i.i.i.i13.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 72 ; 2 uses
  %i.ce = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.cf = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i13.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", !llvm.loop !23

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit": ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i
  %.08.lcssa.i.i.i.i.i11.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit.i ], [ %i.cd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18.i ] ; 2 uses
  %i.cg = sub i64 %i.a, %i.bm
  %i.ch = sdiv exact i64 %i.cg, 72                ; 2 uses
  %.not.i = icmp slt i64 %i.ch, %i.n
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i21, !llvm.loop !578

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.p, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i11.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.ch, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.056, i64 %.lcssa.i)
  %i.ci = getelementptr inbounds [72 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_"(ptr %.sroa.023.0.lcssa.i, ptr %i.ci, ptr %i.ci, ptr %1, ptr noundef %.0.lcssa.i)
  %i.cj = shl nsw i64 %.056, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.m, %i.cj
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit"
  %.idx43 = mul nsw i64 %.056, 144
  %.idx44 = mul nsw i64 %.056, 288
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.fi, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ], [ %0, %.lr.ph.i22.preheader ]
  %.030.i = phi ptr [ %i.cl, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ], [ %2, %.lr.ph.i22.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.030.i, i64 %.idx43 ; 3 uses
  %i.cl = getelementptr inbounds i8, ptr %.030.i, i64 %.idx44 ; 4 uses
  br label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i22, %bb.n
  %.034.i = phi ptr [ %.1.i, %bb.n ], [ %.030.i, %.lr.ph.i22 ] ; 6 uses
  %.01633.i = phi ptr [ %.117.i, %bb.n ], [ %i.ck, %.lr.ph.i22 ] ; 6 uses
  %.sroa.0.032.i = phi ptr [ %i.dl, %bb.n ], [ %.sroa.022.031.i, %.lr.ph.i22 ] ; 5 uses
  %i.cm = getelementptr i8, ptr %.01633.i, i64 36
  %.016.val.i = load i32, ptr %i.cm, align 4, !tbaa !220
  %i.cn = getelementptr i8, ptr %.034.i, i64 36
  %.0.val.i = load i32, ptr %i.cn, align 4, !tbaa !220
  %i.co = icmp sgt i32 %.016.val.i, %.0.val.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 48 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 64 ; 4 uses
  br i1 %i.co, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.032.i, ptr noundef nonnull align 8 dereferenceable(72) %.01633.i, i64 44, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %.01633.i, i64 48 ; 2 uses
  %i.cs = load ptr, ptr %i.cp, align 8, !tbaa !211 ; 3 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !222
  %i.cu = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !223
  store <2 x ptr> %i.cu, ptr %i.cp, align 8, !tbaa !223
  %i.cv = getelementptr inbounds nuw i8, ptr %.01633.i, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !222
  store ptr %i.cw, ptr %i.cq, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i39 = icmp eq ptr %i.cs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i39, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = sub i64 %i.cx, %i.cy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cz) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40:    ; preds = %bb.k, %bb.j
  %i.da = getelementptr inbounds nuw i8, ptr %.01633.i, i64 72
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.i38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.032.i, ptr noundef nonnull align 8 dereferenceable(72) %.034.i, i64 44, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.034.i, i64 48 ; 2 uses
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !211 ; 3 uses
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !222
  %i.de = load <2 x ptr>, ptr %i.db, align 8, !tbaa !223
  store <2 x ptr> %i.de, ptr %i.cp, align 8, !tbaa !223
  %i.df = getelementptr inbounds nuw i8, ptr %.034.i, i64 64
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !222
  store ptr %i.dg, ptr %i.cq, align 8, !tbaa !222
  %.not.i.i.i.i.i.i18.i = icmp eq ptr %i.dc, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i18.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = ptrtoint ptr %i.dc to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dj) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i:    ; preds = %bb.m, %bb.l
  %i.dk = getelementptr inbounds nuw i8, ptr %.034.i, i64 72
  br label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40
  %.117.i = phi ptr [ %i.da, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40 ], [ %.01633.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i ] ; 4 uses
  %.1.i = phi ptr [ %.034.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i40 ], [ %i.dk, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit19.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 72 ; 5 uses
  %i.dm = icmp ne ptr %.1.i, %i.ck
  %i.dn = icmp ne ptr %.117.i, %i.cl
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !24

._crit_edge.i:                                    ; preds = %bb.n
  %i.dp = ptrtoint ptr %i.ck to i64
  %i.dq = ptrtoint ptr %.1.i to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.dt = udiv exact i64 %i.dr, 72
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.eh, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37 ], [ %i.dt, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.eg, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37 ], [ %i.dl, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 4 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.ef, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i.i35, i64 44, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 48 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 48 ; 2 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !211 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 64 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !222
  %i.dz = load <2 x ptr>, ptr %i.dv, align 8, !tbaa !223
  store <2 x ptr> %i.dz, ptr %i.du, align 8, !tbaa !223
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !222
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i.i.i.i.i.i36 = icmp eq ptr %i.dw, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i36, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i32
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = ptrtoint ptr %i.dw to i64
  %i.ee = sub i64 %i.ec, %i.ed
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ee) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 72
  %i.eg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 72 ; 2 uses
  %i.eh = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.ei = icmp sgt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i, !llvm.loop !23

_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.dl, %._crit_edge.i ], [ %i.eg, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i37 ]
  %i.ej = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.ek = ptrtoint ptr %i.dl to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.dl, i64 %i.el ; 3 uses
  %i.en = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.eo = ptrtoint ptr %.117.i to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.preheader.i.i.i.i.i21.i, label %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"

.lr.ph.preheader.i.i.i.i.i21.i:                   ; preds = %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %i.er = udiv exact i64 %i.ep, 72
  br label %.lr.ph.i.i.i.i.i22.i

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i, %.lr.ph.preheader.i.i.i.i.i21.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.ff, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i ], [ %i.er, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.fe, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i ], [ %i.em, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 4 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.fd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i21.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i24.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i25.i, i64 44, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 48 ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !211 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 64 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !222
  %i.ex = load <2 x ptr>, ptr %i.et, align 8, !tbaa !223
  store <2 x ptr> %i.ex, ptr %i.es, align 8, !tbaa !223
  %i.ey = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !222
  store ptr %i.ez, ptr %i.ev, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.eu, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i26.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.fa = ptrtoint ptr %i.ew to i64
  %i.fb = ptrtoint ptr %i.eu to i64
  %i.fc = sub i64 %i.fa, %i.fb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fc) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i: ; preds = %bb.p, %.lr.ph.i.i.i.i.i22.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 72
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 72 ; 2 uses
  %i.ff = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.fg = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i22.i, label %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", !llvm.loop !23

"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit": ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i, %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i
  %.08.lcssa.i.i.i.i.i20.i = phi ptr [ %i.em, %_ZSt4moveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEEET0_T_SB_SA_.exit.i ], [ %i.fe, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i27.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i20.i to i64
  %i.fh = sub i64 %3, %i.ej
  %i.fi = getelementptr inbounds i8, ptr %i.em, i64 %i.fh ; 2 uses
  %i.fj = sub i64 %i.l, %i.en
  %i.fk = sdiv exact i64 %i.fj, 72                ; 2 uses
  %.not.i23 = icmp slt i64 %i.fk, %i.cj
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !579

"_ZSt17__merge_sort_loopIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.cl, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.fi, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.fk, %"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa.i25)
  %i.fl = getelementptr inbounds [72 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEET0_T_SR_SR_SR_SQ_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.fl, ptr noundef %i.fl, ptr noundef nonnull %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.fm = icmp slt i64 %i.cj, %i.d
  br i1 %i.fm, label %bb.b, label %._crit_edge, !llvm.loop !580

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_10Tablebases15rank_root_movesERKNS2_10OptionsMapERNS2_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_SQ_T0_SR_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #4 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.s, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.r, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.q, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 44, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !211  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !222
  %i.k = load <2 x ptr>, ptr %i.g, align 8, !tbaa !223
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !223
  %i.l = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222
  store ptr %i.m, ptr %i.i, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.p) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 3 uses
  %i.s = add nsw i64 %.012.i.i.i.i.i, -1
  %i.t = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !23

.lr.ph.i:                                         ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %bb.i
  %.028.i = phi ptr [ %.1.i, %bb.i ], [ %5, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.0.027.i = phi ptr [ %i.at, %bb.i ], [ %0, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.018.026.i = phi ptr [ %.sroa.018.1.i, %bb.i ], [ %1, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ] ; 7 uses
  %.not21.i = icmp eq ptr %.sroa.018.026.i, %2
  br i1 %.not21.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr i8, ptr %.028.i, i64 36
  %.0.val.i = load i32, ptr %i.u, align 4, !tbaa !220
  %i.v = getelementptr i8, ptr %.sroa.018.026.i, i64 36
  %.val.i.i = load i32, ptr %i.v, align 4, !tbaa !220
  %i.w = icmp sgt i32 %.val.i.i, %.0.val.i
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 48 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 64 ; 4 uses
  br i1 %i.w, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.027.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.018.026.i, i64 44, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !211 ; 3 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !222
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !223
  store <2 x ptr> %i.ac, ptr %i.x, align 8, !tbaa !223
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !222
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ah) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i:      ; preds = %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.018.026.i, i64 72
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.027.i, ptr noundef nonnull align 8 dereferenceable(72) %.028.i, i64 44, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.028.i, i64 48 ; 2 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !211 ; 3 uses
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !222
  %i.am = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !223
  store <2 x ptr> %i.am, ptr %i.x, align 8, !tbaa !223
  %i.an = getelementptr inbounds nuw i8, ptr %.028.i, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !222
  store ptr %i.ao, ptr %i.y, align 8, !tbaa !222
  %.not.i.i.i.i.i.i13.i = icmp eq ptr %i.ak, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i13.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = ptrtoint ptr %i.ak to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ar) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i:    ; preds = %bb.h, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.028.i, i64 72
  br label %bb.i

bb.i:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i
  %.sroa.018.1.i = phi ptr [ %i.ai, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i ], [ %.sroa.018.026.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i ]
  %.1.i = phi ptr [ %.028.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i ], [ %i.as, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit14.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.027.i, i64 72
  %.not.i = icmp eq ptr %.1.i, %i.r
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !581

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.au = ptrtoint ptr %i.r to i64
  %i.av = ptrtoint ptr %.028.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ay = udiv exact i64 %i.aw, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bm, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bl, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i ], [ %.sroa.0.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bk, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i ], [ %.028.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i.i, i64 44, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !211 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !222
  %i.be = load <2 x ptr>, ptr %i.ba, align 8, !tbaa !223
  store <2 x ptr> %i.be, ptr %i.az, align 8, !tbaa !223
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !222
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !222
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #30
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72
  %i.bm = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bn = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_10Tablebases15rank_root_movesERKNS0_10OptionsMapERNS0_8PositionERS8_bRKSt8functionIFbvEEE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit", !llvm.loop !23

bb.k:                                             ; preds = %bb.a
  %i.bo = ptrtoint ptr %2 to i64
  %i.bp = ptrtoint ptr %1 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit31

.lr.ph.preheader.i.i.i.i.i24:                     ; preds = %bb.k
  %i.bs = udiv exact i64 %i.bq, 72
  br label %.lr.ph.i.i.i.i.i25

.lr.ph.i.i.i.i.i25:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i24
end_hunk_0
