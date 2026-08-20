inline.NumInlined: 24579
inline.NumDeleted: 2912
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_:bb.a
_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit133: ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread, %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit, %.preheader, %bb.c, %bb.a
  %.5 = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ %i.as, %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit ], [ 1, %.preheader ], [ %i.ag, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread ]
  ret i64 %.5
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_bbT0_RT1_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add i64 %2, %1
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = sub i64 %1, %3                           ; 3 uses
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %3 ; 2 uses
  br i1 %7, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !356  ; 2 uses
  %i.g = icmp ult i64 %i.f, %5
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %8, align 8, !tbaa !354
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load i16, ptr %0, align 1
  store i16 %i.j, ptr %i.i, align 1
  %storemerge.in6.i = load i64, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %storemerge7.i = add i64 %storemerge.in6.i, 1   ; 3 uses
  store i64 %storemerge7.i, ptr %i.e, align 8, !tbaa !356
  %.not8.i = icmp eq i64 %storemerge7.i, %5
  br i1 %.not8.i, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge7.i, %bb.d ]
  %storemerge.in9.i = phi i64 [ %storemerge.in.i, %.lr.ph.i ], [ %storemerge.in6.i, %bb.d ]
  %i.k = load ptr, ptr %8, align 8, !tbaa !354    ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %storemerge10.i
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %storemerge.in9.i
  %i.n = load i16, ptr %i.m, align 1
  store i16 %i.n, ptr %i.l, align 1
  %storemerge.in.i = load i64, ptr %i.e, align 8, !tbaa !356 ; 2 uses
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 3 uses
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !356
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.lr.ph.i, !llvm.loop !3089

bb.e:                                             ; preds = %bb.b
  %i.o = urem i64 %i.c, %5                        ; 3 uses
  %i.p = sub i64 %i.b, %i.o
  %i.q = urem i64 %i.p, %5                        ; 4 uses
  %i.r = add i64 %i.o, %i.q
  %i.s = sub i64 %i.b, %i.r                       ; 2 uses
  %i.t = udiv i64 %i.s, %5                        ; 2 uses
  br i1 %6, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr [2 x i8], ptr %i.d, i64 %i.o ; 3 uses
  %.not115.i = icmp ule i64 %5, %i.s
  %.not139.i = icmp eq i64 %i.q, 0
  %or.cond.i = and i1 %.not139.i, %.not115.i
  br i1 %or.cond.i, label %.lr.ph131.i, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit

.lr.ph131.i:                                      ; preds = %bb.f
  %.idx140.i = shl nuw nsw i64 %i.t, 1            ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx140.i
  %i.w = add nsw i64 %.idx140.i, -2               ; 2 uses
  %i.x = lshr exact i64 %i.w, 1
  %i.y = add nuw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol: ; preds = %.lr.ph131.i, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol
  %.0129.us.i.prol = phi ptr [ %i.aa, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %0, %.lr.ph131.i ]
  %.069128.us.i.prol = phi ptr [ %i.z, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %i.u, %.lr.ph131.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ 0, %.lr.ph131.i ]
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.069128.us.i.prol, i64 %5 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0129.us.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3090

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, %.lr.ph131.i
  %.069128.us.i.lcssa.unr = phi ptr [ poison, %.lr.ph131.i ], [ %.069128.us.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.0129.us.i.unr = phi ptr [ %0, %.lr.ph131.i ], [ %i.aa, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.069128.us.i.unr = phi ptr [ %i.u, %.lr.ph131.i ], [ %i.z, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %i.ab = icmp ult i64 %i.w, 14
  br i1 %i.ab, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i
  %.0129.us.i = phi ptr [ %i.ak, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.0129.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %.069128.us.i = phi ptr [ %i.aj, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.069128.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.069128.us.i, i64 %5
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %5
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %5
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %5
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %5
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %5
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %5 ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %5
  %i.ak = getelementptr inbounds nuw i8, ptr %.0129.us.i, i64 16 ; 2 uses
  %.not77.us.i.7 = icmp eq ptr %i.ak, %i.v
  br i1 %.not77.us.i.7, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !3091

_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %bb.f
  %.070.lcssa.i = phi ptr [ %i.d, %bb.f ], [ %.069128.us.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ], [ %i.ai, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ] ; 2 uses
  %i.al = mul i64 %i.t, %5
  %i.am = getelementptr [2 x i8], ptr %i.u, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.q
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %.070.lcssa.i to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.070.lcssa.i, ptr noundef %i.am, ptr noundef %i.an, i64 noundef %i.ar, i64 noundef %i.q)
  br label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !356 ; 3 uses
  %i.au = icmp ugt i64 %i.at, %5
  br i1 %i.au, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.g
  store i64 %5, ptr %i.as, align 8, !tbaa !356
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit: ; preds = %bb.g
  %i.av = icmp ult i64 %i.at, %5
  br i1 %i.av, label %bb.h, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85

bb.h:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit
  %i.aw = load ptr, ptr %8, align 8, !tbaa !354
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.at
  %i.ay = load i16, ptr %0, align 1
  store i16 %i.ay, ptr %i.ax, align 1
  %storemerge.in6.i76 = load i64, ptr %i.as, align 8, !tbaa !356 ; 2 uses
  %storemerge7.i77 = add i64 %storemerge.in6.i76, 1 ; 3 uses
  store i64 %storemerge7.i77, ptr %i.as, align 8, !tbaa !356
  %.not8.i78 = icmp eq i64 %storemerge7.i77, %5
  br i1 %.not8.i78, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.h, %.lr.ph.i79
  %storemerge10.i80 = phi i64 [ %storemerge.i83, %.lr.ph.i79 ], [ %storemerge7.i77, %bb.h ]
  %storemerge.in9.i81 = phi i64 [ %storemerge.in.i82, %.lr.ph.i79 ], [ %storemerge.in6.i76, %bb.h ]
  %i.az = load ptr, ptr %8, align 8, !tbaa !354   ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %storemerge10.i80
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %storemerge.in9.i81
  %i.bc = load i16, ptr %i.bb, align 1
  store i16 %i.bc, ptr %i.ba, align 1
  %storemerge.in.i82 = load i64, ptr %i.as, align 8, !tbaa !356 ; 2 uses
  %storemerge.i83 = add i64 %storemerge.in.i82, 1 ; 3 uses
  store i64 %storemerge.i83, ptr %i.as, align 8, !tbaa !356
  %.not.i84 = icmp eq i64 %storemerge.i83, %5
  br i1 %.not.i84, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85, label %.lr.ph.i79, !llvm.loop !3089

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85: ; preds = %.lr.ph.i79, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread, %bb.h, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit
  %i.bd = load ptr, ptr %8, align 8, !tbaa !354   ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %5
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = add i64 %i.bf, 7
  %i.bh = and i64 %i.bg, -8
  %i.bi = inttoptr i64 %i.bh to ptr               ; 4 uses
  %i.bj = urem i64 %i.c, %5                       ; 3 uses
  %i.bk = sub i64 %i.b, %i.bj
  %i.bl = urem i64 %i.bk, %5                      ; 2 uses
  %i.bm = add i64 %i.bj, %i.bl
  %i.bn = sub i64 %i.b, %i.bm
  %i.bo = udiv i64 %i.bn, %5                      ; 4 uses
  %i.bp = udiv i64 %i.c, %5                       ; 2 uses
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = shl i64 %i.bo, 3
  %i.bs = ashr exact i64 %i.br, 3                 ; 3 uses
  %.mask.i = and i64 %i.bo, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85
  %min.iters.check = icmp ult i64 %i.bs, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bt = and i64 %i.bo, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bs, %i.bt           ; 3 uses
  %i.bu = shl i64 %n.vec, 3
  %i.bv = getelementptr i8, ptr %i.bi, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bw ; 2 uses
  %i.bx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.bx, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !3092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bt, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader124

.lr.ph.i.i.preheader124:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader124, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ca, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.bz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ca = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.ca, %i.bs
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !3093

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.bi, ptr noundef %0, i64 noundef %5, i64 noundef %i.bj, i64 noundef %i.bp, i64 noundef %i.bq, i64 noundef %i.bl, ptr noundef %i.bd)
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !356
  %.not.i86 = icmp eq i64 %i.cb, 0
  br i1 %.not.i86, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  store i64 0, ptr %i.as, align 8, !tbaa !356
  br label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit

_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit: ; preds = %.lr.ph.i, %bb.e, %bb.c, %bb.d, %.preheader.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp eq i64 %3, 0
  %i.c = or i64 %4, %3
  %i.d = icmp eq i64 %i.c, 1
  %i.e = or i1 %i.b, %i.d
  %or.cond7988 = or i1 %i.a, %i.e
  br i1 %or.cond7988, label %_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_T0_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.06794 = phi i64 [ %.1, %bb.j ], [ %4, %bb.a ] ; 5 uses
  %.06893 = phi i64 [ %.169, %bb.j ], [ %3, %bb.a ] ; 5 uses
  %.07091 = phi ptr [ %.171, %bb.j ], [ %2, %bb.a ] ; 4 uses
  %.07290 = phi ptr [ %.173, %bb.j ], [ %1, %bb.a ] ; 9 uses
  %.07489 = phi ptr [ %.175, %bb.j ], [ %0, %bb.a ] ; 4 uses
  %i.f = add i64 %.06794, %.06893                 ; 2 uses
  %i.g = icmp ult i64 %i.f, 16
  br i1 %i.g, label %_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_T0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = icmp ugt i64 %.06893, %.06794
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = lshr i64 %.06893, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.07489, i64 %i.i
  %.not15.i = icmp eq ptr %.07091, %.07290
  br i1 %.not15.i, label %._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, label %.lr.ph.preheader.i

._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge: ; preds = %bb.c
  %.pre = ptrtoint ptr %.07290 to i64             ; 2 uses
  br label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.k = ptrtoint ptr %.07091 to i64
  %i.l = ptrtoint ptr %.07290 to i64              ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.n, %.lr.ph.preheader.i ] ; 2 uses
  %.01316.i = phi ptr [ %i.q, %.lr.ph.i ], [ %.07290, %.lr.ph.preheader.i ]
  %i.o = lshr i64 %.017.i, 1                      ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %.01316.i, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %.neg.i = xor i64 %i.o, -1
  %i.r = add i64 %.017.i, %.neg.i                 ; 2 uses
  %.not.i77 = icmp eq i64 %i.r, 0
  br i1 %.not.i77, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3081

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre101 = ptrtoint ptr %i.q to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi102 = phi i64 [ %.pre, %._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %.pre101, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %.pre-phi = phi i64 [ %.pre, %._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.l, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %.013.lcssa.i = phi ptr [ %.07290, %._ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit_crit_edge ], [ %i.q, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ]
  %i.s = sub i64 %.pre-phi102, %.pre-phi
  %i.t = ashr exact i64 %i.s, 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = lshr i64 %.06794, 1                      ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.07290, i64 %i.u
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit
  %.066 = phi ptr [ %i.j, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.07489, %bb.d ] ; 5 uses
  %.065 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.v, %bb.d ] ; 5 uses
  %.064 = phi i64 [ %i.i, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ 0, %bb.d ] ; 5 uses
  %.0 = phi i64 [ %i.t, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.u, %bb.d ] ; 5 uses
  %i.w = icmp eq ptr %.066, %.07290
  br i1 %i.w, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %.07290, %.065
  br i1 %i.x, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = ptrtoint ptr %.07290 to i64
  %i.z = ptrtoint ptr %.066 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 1
  %i.ac = sub nsw i64 0, %i.ab
  %i.ad = getelementptr inbounds [2 x i8], ptr %.065, i64 %i.ac
  br label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit

_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit: ; preds = %bb.g, %bb.e, %bb.f
  %.046.i = phi ptr [ %.066, %bb.f ], [ %.065, %bb.e ], [ %i.ad, %bb.g ] ; 4 uses
  %i.ae = add i64 %.0, %.064                      ; 2 uses
  %i.af = sub i64 %i.f, %i.ae
  %i.ag = icmp ult i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.07489, ptr noundef %.066, ptr noundef %.046.i, i64 noundef %.064, i64 noundef %.0)
  %i.ah = sub i64 %.06893, %.064
  %i.ai = sub i64 %.06794, %.0
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit
  %i.aj = sub i64 %.06893, %.064
  %i.ak = sub i64 %.06794, %.0
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.046.i, ptr noundef %.065, ptr noundef %.07091, i64 noundef %i.aj, i64 noundef %i.ak)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.175 = phi ptr [ %.046.i, %bb.h ], [ %.07489, %bb.i ]
  %.173 = phi ptr [ %.065, %bb.h ], [ %.066, %bb.i ]
  %.171 = phi ptr [ %.07091, %bb.h ], [ %.046.i, %bb.i ]
  %.169 = phi i64 [ %i.ah, %bb.h ], [ %.064, %bb.i ] ; 3 uses
  %.1 = phi i64 [ %i.ai, %bb.h ], [ %.0, %bb.i ]  ; 3 uses
  %i.al = icmp eq i64 %.1, 0
  %i.am = icmp eq i64 %.169, 0
  %i.an = or i64 %.1, %.169
  %i.ao = icmp eq i64 %i.an, 1
  %i.ap = or i1 %i.am, %i.ao
  %or.cond79 = or i1 %i.al, %i.ap
  br i1 %or.cond79, label %_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_T0_.exit, label %.lr.ph, !llvm.loop !3094

_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_T0_.exit: ; preds = %bb.j, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 4 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 3 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 2 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %i.d = add i64 %5, %4                           ; 5 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %3 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !14
  %.not198 = icmp eq i64 %i.d, 0
  br i1 %.not198, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.d)
  %.idx193 = shl i64 %2, 1                        ; 2 uses
  %.not121 = icmp ne i64 %6, 0
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr i8, ptr %7, i64 %.idx193   ; 2 uses
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph, %bb.p
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.z, %bb.p ] ; 3 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.bt, %bb.p ] ; 2 uses
  %.0209 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.p ] ; 2 uses
  %.0104208 = phi i64 [ %i.h, %.lr.ph ], [ %i.br, %bb.p ] ; 9 uses
  %.0106205 = phi ptr [ %0, %.lr.ph ], [ %i.bp, %bb.p ] ; 14 uses
  %.0108204 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.p ] ; 2 uses
  %.0111202 = phi ptr [ %i.f, %.lr.ph ], [ %i.bo, %bb.p ] ; 2 uses
  %.0114201 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.p ]
  %.0176200 = phi i64 [ %i.d, %.lr.ph ], [ %i.bu, %bb.p ] ; 3 uses
  %.0177199 = phi ptr [ %i.e, %.lr.ph ], [ %.2179, %bb.p ] ; 15 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.0, i64 %.0104208) ; 2 uses
  %i.m = add i64 %umax.i, 1
  %i.n = sub i64 %i.m, %.0104208                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.n, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check221 = icmp ult i64 %i.n, 32
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_:bb.a
  %.not.i39.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3081

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %.01316.i.i.i45.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.a
  %i.ar = ashr exact i64 %i.aq, 1                 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !356 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.ar, %i.at
  br i1 %.not.i40.i.i, label %iter.check62, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check62:                                     ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.at, 1                ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %1, i64 %.idx.i41.i.i ; 5 uses
  %i.av = load ptr, ptr %3, align 8, !tbaa !354   ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 %.idx.i41.i.i ; 5 uses
  %i.ax = add i64 %.idx.i41.i.i, %i.a
  %i.ay = sub i64 %.01316.i.i.i45.le, %i.ax
  %i.az = and i64 %.017.i.i.i, -2
  %i.ba = add i64 %i.ay, %i.az                    ; 3 uses
  %i.bb = lshr i64 %i.ba, 1
  %i.bc = add nuw i64 %i.bb, 1                    ; 5 uses
  %min.iters.check46 = icmp ult i64 %i.ba, 6
  %i.bd = ptrtoaddr ptr %i.av to i64
  %i.be = sub i64 %i.a, %i.bd
  %diff.check44 = icmp ugt i64 %i.be, -32
  %or.cond105 = select i1 %min.iters.check46, i1 true, i1 %diff.check44
  br i1 %or.cond105, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check47

vector.main.loop.iter.check47:                    ; preds = %iter.check62
  %min.iters.check48 = icmp ult i64 %i.ba, 30
  br i1 %min.iters.check48, label %vec.epilog.ph66, label %vector.ph49

vector.ph49:                                      ; preds = %vector.main.loop.iter.check47
  %i.bf = and i64 %i.bc, 12
  %n.vec50 = and i64 %i.bc, -16                   ; 4 uses
  %i.bg = shl i64 %n.vec50, 1                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.au, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.aw, i64 %i.bg
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %i.bj = shl i64 %index52, 1                     ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.au, i64 %i.bj ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.aw, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load55 = load <8 x i16>, ptr %next.gep53, align 1
  %wide.load56 = load <8 x i16>, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %next.gep54, i64 16
  store <8 x i16> %wide.load55, ptr %next.gep54, align 1
  store <8 x i16> %wide.load56, ptr %i.bl, align 1
  %index.next57 = add nuw i64 %index52, 16        ; 2 uses
  %i.bm = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.bm, label %middle.block58, label %vector.body51, !llvm.loop !3167

middle.block58:                                   ; preds = %vector.body51
  %cmp.n59 = icmp eq i64 %i.bc, %n.vec50
  br i1 %cmp.n59, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block58
  %min.epilog.iters.check65 = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph.i.i42.i.i.preheader, label %vec.epilog.ph66, !prof !3078

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check47, %vec.epilog.iter.check64
  %vec.epilog.resume.val60 = phi i64 [ %n.vec50, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check47 ]
  %n.vec67 = and i64 %i.bc, -4                    ; 3 uses
  %i.bn = shl i64 %n.vec67, 1                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.au, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.aw, i64 %i.bn
  br label %vec.epilog.vector.body68

vec.epilog.vector.body68:                         ; preds = %vec.epilog.vector.body68, %vec.epilog.ph66
  %index69 = phi i64 [ %vec.epilog.resume.val60, %vec.epilog.ph66 ], [ %index.next73, %vec.epilog.vector.body68 ] ; 2 uses
  %i.bq = shl i64 %index69, 1                     ; 2 uses
  %next.gep70 = getelementptr i8, ptr %i.au, i64 %i.bq
  %next.gep71 = getelementptr i8, ptr %i.aw, i64 %i.bq
  %wide.load72 = load <4 x i16>, ptr %next.gep70, align 1
  store <4 x i16> %wide.load72, ptr %next.gep71, align 1
  %index.next73 = add nuw i64 %index69, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next73, %n.vec67
  br i1 %i.br, label %vec.epilog.middle.block74, label %vec.epilog.vector.body68, !llvm.loop !3168

vec.epilog.middle.block74:                        ; preds = %vec.epilog.vector.body68
  %cmp.n75 = icmp eq i64 %i.bc, %n.vec67
  br i1 %cmp.n75, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i.preheader

.lr.ph.i.i42.i.i.preheader:                       ; preds = %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block74
  %.012.i.i43.i.i.ph = phi ptr [ %i.au, %iter.check62 ], [ %i.bh, %vec.epilog.iter.check64 ], [ %i.bo, %vec.epilog.middle.block74 ]
  %.0911.i.i44.i.i.ph = phi ptr [ %i.aw, %iter.check62 ], [ %i.bi, %vec.epilog.iter.check64 ], [ %i.bp, %vec.epilog.middle.block74 ]
  br label %.lr.ph.i.i42.i.i

.lr.ph.i.i42.i.i:                                 ; preds = %.lr.ph.i.i42.i.i.preheader, %.lr.ph.i.i42.i.i
  %.012.i.i43.i.i = phi ptr [ %i.bt, %.lr.ph.i.i42.i.i ], [ %.012.i.i43.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 3 uses
  %.0911.i.i44.i.i = phi ptr [ %i.bu, %.lr.ph.i.i42.i.i ], [ %.0911.i.i44.i.i.ph, %.lr.ph.i.i42.i.i.preheader ] ; 2 uses
  %i.bs = load i16, ptr %.012.i.i43.i.i, align 1
  store i16 %i.bs, ptr %.0911.i.i44.i.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i43.i.i, i64 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i44.i.i, i64 2
  %.not.i.i45.i.i = icmp eq ptr %.012.i.i43.i.i, %i.am
  br i1 %.not.i.i45.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i, label %.lr.ph.i.i42.i.i, !llvm.loop !3169

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i: ; preds = %.lr.ph.i.i42.i.i, %middle.block58, %vec.epilog.middle.block74, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !356
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit: ; preds = %._ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit_crit_edge, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i
  %i.bv = phi i64 [ %.pre, %._ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit_crit_edge ], [ %i.ar, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i ]
  %.not.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.d, %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !356
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

bb.e:                                             ; preds = %bb.a
  %i.bx = load ptr, ptr %3, align 8, !tbaa !354   ; 5 uses
  %i.by = icmp eq ptr %0, %1
  %i.bz = icmp eq ptr %1, %2
  %or.cond.i = or i1 %i.by, %i.bz
  br i1 %or.cond.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i15 = icmp eq i64 %i.i, 0
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load i16, ptr %0, align 1               ; 4 uses
  store i16 %i.ca, ptr %i.bx, align 1
  %.not8.i.i = icmp eq i64 %i.i, 1
  br i1 %.not8.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %iter.check89

iter.check89:                                     ; preds = %bb.g
  %i.cb = add i64 %i.i, -1                        ; 5 uses
  %min.iters.check78 = icmp ult i64 %i.i, 5
  br i1 %min.iters.check78, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check79

vector.main.loop.iter.check79:                    ; preds = %iter.check89
  %min.iters.check80 = icmp ult i64 %i.i, 17
  br i1 %min.iters.check80, label %vec.epilog.ph93, label %vector.ph81

vector.ph81:                                      ; preds = %vector.main.loop.iter.check79
  %i.cc = and i64 %i.cb, 12
  %n.vec82 = and i64 %i.cb, -16                   ; 4 uses
  %i.cd = or disjoint i64 %n.vec82, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next85, %vector.body83 ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %index84 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.cf, align 1
  store <8 x i16> %broadcast.splat, ptr %i.cg, align 1
  %index.next85 = add nuw i64 %index84, 16        ; 2 uses
  %i.ch = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.ch, label %middle.block86, label %vector.body83, !llvm.loop !3170

middle.block86:                                   ; preds = %vector.body83
  %cmp.n87 = icmp eq i64 %i.cb, %n.vec82
  br i1 %cmp.n87, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %vec.epilog.iter.check91

vec.epilog.iter.check91:                          ; preds = %middle.block86
  %min.epilog.iters.check92 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check92, label %.lr.ph.i.i.preheader, label %vec.epilog.ph93, !prof !3078

vec.epilog.ph93:                                  ; preds = %vector.main.loop.iter.check79, %vec.epilog.iter.check91
  %vec.epilog.resume.val88 = phi i64 [ %n.vec82, %vec.epilog.iter.check91 ], [ 0, %vector.main.loop.iter.check79 ]
  %n.vec94 = and i64 %i.cb, -4                    ; 3 uses
  %i.ci = or disjoint i64 %n.vec94, 1
  %broadcast.splatinsert95 = insertelement <4 x i16> poison, i16 %i.ca, i64 0
  %broadcast.splat96 = shufflevector <4 x i16> %broadcast.splatinsert95, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body97

vec.epilog.vector.body97:                         ; preds = %vec.epilog.vector.body97, %vec.epilog.ph93
  %index98 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph93 ], [ %index.next99, %vec.epilog.vector.body97 ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %index98
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store <4 x i16> %broadcast.splat96, ptr %i.ck, align 1
  %index.next99 = add nuw i64 %index98, 4         ; 2 uses
  %i.cl = icmp eq i64 %index.next99, %n.vec94
  br i1 %i.cl, label %vec.epilog.middle.block100, label %vec.epilog.vector.body97, !llvm.loop !3171

vec.epilog.middle.block100:                       ; preds = %vec.epilog.vector.body97
  %cmp.n101 = icmp eq i64 %i.cb, %n.vec94
  br i1 %cmp.n101, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check89, %vec.epilog.iter.check91, %vec.epilog.middle.block100
  %.sroa.7.0.i.ph = phi i64 [ 1, %iter.check89 ], [ %i.cd, %vec.epilog.iter.check91 ], [ %i.ci, %vec.epilog.middle.block100 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.7.0.i = phi i64 [ %storemerge.i.i, %.lr.ph.i.i ], [ %.sroa.7.0.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %.sroa.7.0.i
  store i16 %i.ca, ptr %i.cm, align 1
  %storemerge.i.i = add nuw i64 %.sroa.7.0.i, 1   ; 2 uses
  %.not.i.i16 = icmp eq i64 %storemerge.i.i, %i.i
  br i1 %.not.i.i16, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, label %.lr.ph.i.i, !llvm.loop !3172

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i: ; preds = %.lr.ph.i.i, %middle.block86, %vec.epilog.middle.block100, %bb.g
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g, ptr noundef nonnull %i.bx, i64 noundef %i.i)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.d, i64 noundef %i.g)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %bb.h, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i, %bb.e, %.preheader.preheader.i.i, %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond94 = and i1 %i.b, %i.a
  br i1 %or.cond94, label %.lr.ph, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit
  %.tr8598 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr8497 = phi i64 [ %3, %.lr.ph ], [ %i.s, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 5 uses
  %.tr8296 = phi ptr [ %1, %.lr.ph ], [ %.071, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 12 uses
  %.tr95 = phi ptr [ %0, %.lr.ph ], [ %.0.i, %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit ] ; 3 uses
  %.not = icmp ule i64 %.tr8497, %6
  %.not76 = icmp ule i64 %.tr8598, %6
  %or.cond77.not120 = or i1 %.not, %.not76
  %i.d = add i64 %.tr8598, %.tr8497
  %i.e = icmp ult i64 %i.d, 16
  %or.cond119 = or i1 %or.cond77.not120, %i.e
  br i1 %or.cond119, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i64 %.tr8497, %.tr8598
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = lshr i64 %.tr8497, 1                     ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %.tr95, i64 %i.g
  %.not15.i = icmp eq ptr %2, %.tr8296
  %.pre = ptrtoint ptr %.tr8296 to i64            ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.i = sub i64 %i.c, %.pre
  %i.j = ashr exact i64 %i.i, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.j, %.lr.ph.preheader.i ] ; 2 uses
  %.01316.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.tr8296, %.lr.ph.preheader.i ]
  %i.k = lshr i64 %.017.i, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %.01316.i, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.n = add i64 %.017.i, %.neg.i                 ; 2 uses
  %.not.i78 = icmp eq i64 %i.n, 0
  br i1 %.not.i78, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !3081

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre105 = ptrtoint ptr %i.m to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %bb.d, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit
  %.pre-phi106 = phi i64 [ %.pre105, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.d ]
  %.013.lcssa.i = phi ptr [ %i.m, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit ], [ %.tr8296, %bb.d ]
  %i.o = sub i64 %.pre-phi106, %.pre
  %i.p = ashr exact i64 %i.o, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = lshr i64 %.tr8598, 1                     ; 2 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.tr8296, i64 %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit
  %.071 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.r, %bb.e ] ; 8 uses
  %.070 = phi i64 [ %i.g, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ 0, %bb.e ] ; 2 uses
  %.069 = phi i64 [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %i.q, %bb.e ] ; 5 uses
  %.0 = phi ptr [ %i.h, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.tr95, %bb.e ] ; 7 uses
  %i.s = sub i64 %.tr8497, %.070                  ; 4 uses
  %i.t = icmp ule i64 %i.s, %.069
  %.not.i79 = icmp ugt i64 %.069, %6
  %or.cond.i80 = or i1 %i.t, %.not.i79
  br i1 %or.cond.i80, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not36.i = icmp eq i64 %.069, 0
  br i1 %.not36.i, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not8.i.i = icmp eq ptr %.tr8296, %.071
  %i.u = ptrtoaddr ptr %.071 to i64
  %i.v = ptrtoaddr ptr %.tr8296 to i64
  %reass.sub.i = sub i64 %i.u, %i.v
  %i.w = and i64 %reass.sub.i, -2
  %.0.lcssa.i.idx.i = select i1 %.not8.i.i, i64 0, i64 %i.w
  %i.x = getelementptr i8, ptr %.0, i64 %.0.lcssa.i.idx.i
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

bb.i:                                             ; preds = %bb.f
  %.not34.i = icmp ugt i64 %i.s, %6
  br i1 %.not34.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoaddr ptr %.tr8296 to i64
  %.not8.i45.i = icmp eq ptr %.tr8296, %.071
  %i.z = ptrtoaddr ptr %.071 to i64
  %reass.sub55.i = sub i64 %i.z, %i.y
  %i.aa = and i64 %reass.sub55.i, -2
  %.0.lcssa.i47.idx.i = select i1 %.not8.i45.i, i64 0, i64 %i.aa
  %.0.lcssa.i47.i = getelementptr i8, ptr %.0, i64 %.0.lcssa.i47.idx.i
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq ptr %.0, %.tr8296
  br i1 %i.ab, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq ptr %.tr8296, %.071
  br i1 %i.ac, label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = ptrtoint ptr %.tr8296 to i64
  %i.ae = ptrtoint ptr %.0 to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [2 x i8], ptr %.071, i64 %i.ah
  br label %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit

_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit: ; preds = %bb.m, %bb.g, %bb.h, %bb.j, %bb.k, %bb.l
  %.0.i = phi ptr [ %i.x, %bb.h ], [ %i.ai, %bb.m ], [ %.0.lcssa.i47.i, %bb.j ], [ %.0, %bb.g ], [ %.0, %bb.l ], [ %.071, %bb.k ] ; 2 uses
  tail call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_SH_T1_(ptr noundef %.tr95, ptr noundef %.0, ptr noundef %.0.i, i64 noundef %.070, i64 noundef %.069, ptr noundef %5, i64 noundef %6)
  %i.aj = sub i64 %.tr8598, %.069                 ; 2 uses
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = icmp ne i64 %i.s, 0
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.b, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_10range_xbufIS5_mNS0_7move_opEEEEEvT_SH_SH_T0_RT1_.exit: ; preds = %_ZN5boost7movelib15rotate_adaptiveIPSt4pairI5emptyS3_ES5_EET_S6_S6_S6_NS0_9iter_sizeIS6_E4typeES9_T0_S9_.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE24priv_set_difference_backIPKS4_NS0_3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS9_9select1stIS3_EEEEEEvT_SG_T0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %4 = alloca %"class.boost::container::vec_iterator", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not39 = icmp eq ptr %1, %2
  br i1 %.not39, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !34     ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.w, %bb.j ] ; 4 uses
  %.043 = phi ptr [ %i.d, %.lr.ph ], [ %.1, %bb.j ] ; 3 uses
  %.02542 = phi ptr [ %i.b, %.lr.ph ], [ %.126, %bb.j ] ; 3 uses
  %.02841 = phi ptr [ %i.b, %.lr.ph ], [ %.129, %bb.j ] ; 3 uses
  %.03140 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.j ] ; 6 uses
  %i.g = icmp eq ptr %.02542, %.043
  %i.h = load i64, ptr %i.a, align 8, !tbaa !32   ; 6 uses
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.h ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %.03140 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = ashr exact i64 %i.l, 1                   ; 3 uses
  %i.n = load i64, ptr %i.e, align 8, !tbaa !9, !noalias !3173
  %i.o = sub i64 %i.n, %i.h
  %.not.i.i = icmp ugt i64 %i.m, %i.o
  br i1 %.not.i.i, label %bb.f, label %bb.d, !prof !35

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ne ptr %i.f, null
  %i.q = icmp ne ptr %.03140, null
  %or.cond.i.i.i.i.i.i.i = and i1 %i.q, %i.p
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.e, label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %.03140, i64 %i.l, i1 false), !noalias !3173
  %.pre45 = load i64, ptr %i.a, align 8, !tbaa !16, !noalias !3173
  br label %_ZN5boost9container6vectorISt4pairI5emptyS3_EvvE40priv_insert_forward_range_expand_forwardINS0_3dtl18insert_range_proxyINS0_13new_allocatorIS4_EEPKS4_EEEEvPS4_mT_NS_11move_detail17integral_constantIbLb0EEE.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.au = lshr i64 %i.as, 1                       ; 3 uses
  %i.av = sub i64 %i.as, %i.au                    ; 2 uses
  %i.aw = icmp ugt i64 %i.av, 3
  br i1 %i.aw, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %bb.d
  %i.ax = udiv i64 %i.at, %i.au
  %.not159 = icmp ult i64 %i.av, %i.ax
  br i1 %.not159, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.d, %bb.e
  %i.ay = udiv i64 %i.at, %i.as
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.c, %bb.e, %.critedge.i
  %.1 = phi i1 [ true, %bb.e ], [ false, %.critedge.i ], [ true, %bb.c ] ; 8 uses
  %.1.i = phi i64 [ %i.au, %bb.e ], [ %i.ay, %.critedge.i ], [ %i.ar, %bb.c ] ; 8 uses
  %i.az = and i64 %.0130161, 1
  %i.ba = icmp eq i64 %i.az, 0                    ; 7 uses
  %.not140 = icmp eq i64 %i.as, 0
  br i1 %.not140, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bb = udiv i64 %i.at, %.1.i
  %i.bc = icmp ugt i64 %i.bb, 256
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ba
  %i.bd = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.bd
  %i.be = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.be, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ba
  %i.bf = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.bf
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.b, ptr noundef %i.bg, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %i.bh = load i64, ptr %i.am, align 8, !tbaa !356
  %i.bi = load ptr, ptr %6, align 8, !tbaa !354
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = add i64 %i.bk, 7
  %i.bm = and i64 %i.bl, -8
  %i.bn = inttoptr i64 %i.bm to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ba
  %i.bo = sub i64 0, %.1.i
  %.idx = select i1 %or.cond14, i64 0, i64 %i.bo
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.d, i64 %.idx
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %i.bn, ptr noundef %i.bp, i64 noundef %i.e, i64 noundef %.0162, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond156, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ba)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.bq = add i64 %.0130161, 1
  %i.br = icmp ugt i64 %i.e, %i.at
  br i1 %i.br, label %bb.c, label %._crit_edge, !llvm.loop !3192
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive25adaptive_sort_final_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvbT_NS0_9iter_sizeISH_E4typeESK_SK_RT1_T0_(i1 noundef zeroext %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 3 uses
  %6 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare", align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !356
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit: ; preds = %bb.a, %.preheader.preheader.i.i
  br i1 %0, label %bb.b, label %bb.h

bb.b:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %.idx74 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx74 ; 5 uses
  %.neg = mul i64 %2, -2                          ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 3 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %i.e, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %.idx76 = shl nuw nsw i64 %3, 1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx76 ; 4 uses
  %i.g = add nsw i64 %.idx74, %.neg               ; 2 uses
  %gepdiff77 = sub i64 %i.g, %.idx76
  %i.h = ashr exact i64 %gepdiff77, 1             ; 3 uses
  %gepdiff78 = sub nsw i64 0, %.neg
  %i.i = ashr exact i64 %gepdiff78, 1             ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !357  ; 8 uses
  %.not.i51 = icmp ult i64 %i.k, %.sroa.speculated.i
  br i1 %.not.i51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !356
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.c
  store i64 0, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %5, align 8, !tbaa !354    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.n = icmp eq i64 %.idx76, %i.g
  %i.o = icmp eq i64 %.neg, 0
  %or.cond.i.i = or i1 %i.o, %i.n
  br i1 %or.cond.i.i, label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i15.i = icmp eq i64 %i.k, 0
  br i1 %.not.i15.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i16, ptr %i.f, align 1              ; 4 uses
  store i16 %i.p, ptr %i.m, align 1
  %.not8.i.i.i = icmp eq i64 %i.k, 1
  br i1 %.not8.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %iter.check146

iter.check146:                                    ; preds = %bb.f
  %i.q = add i64 %i.k, -1                         ; 5 uses
  %min.iters.check135 = icmp ult i64 %i.k, 5
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check136

vector.main.loop.iter.check136:                   ; preds = %iter.check146
  %min.iters.check137 = icmp ult i64 %i.k, 17
  br i1 %min.iters.check137, label %vec.epilog.ph150, label %vector.ph138

vector.ph138:                                     ; preds = %vector.main.loop.iter.check136
  %i.r = and i64 %i.q, 12
  %n.vec139 = and i64 %i.q, -16                   ; 4 uses
  %i.s = or disjoint i64 %n.vec139, 1
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next142, %vector.body140 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index141 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 18
  store <8 x i16> %broadcast.splat, ptr %i.u, align 1
  store <8 x i16> %broadcast.splat, ptr %i.v, align 1
  %index.next142 = add nuw i64 %index141, 16      ; 2 uses
  %i.w = icmp eq i64 %index.next142, %n.vec139
  br i1 %i.w, label %middle.block143, label %vector.body140, !llvm.loop !3193

middle.block143:                                  ; preds = %vector.body140
  %cmp.n144 = icmp eq i64 %i.q, %n.vec139
  br i1 %cmp.n144, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %vec.epilog.iter.check148

vec.epilog.iter.check148:                         ; preds = %middle.block143
  %min.epilog.iters.check149 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check149, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph150, !prof !3078

vec.epilog.ph150:                                 ; preds = %vector.main.loop.iter.check136, %vec.epilog.iter.check148
  %vec.epilog.resume.val145 = phi i64 [ %n.vec139, %vec.epilog.iter.check148 ], [ 0, %vector.main.loop.iter.check136 ]
  %n.vec151 = and i64 %i.q, -4                    ; 3 uses
  %i.x = or disjoint i64 %n.vec151, 1
  %broadcast.splatinsert152 = insertelement <4 x i16> poison, i16 %i.p, i64 0
  %broadcast.splat153 = shufflevector <4 x i16> %broadcast.splatinsert152, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body154

vec.epilog.vector.body154:                        ; preds = %vec.epilog.vector.body154, %vec.epilog.ph150
  %index155 = phi i64 [ %vec.epilog.resume.val145, %vec.epilog.ph150 ], [ %index.next156, %vec.epilog.vector.body154 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index155
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store <4 x i16> %broadcast.splat153, ptr %i.z, align 1
  %index.next156 = add nuw i64 %index155, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.aa, label %vec.epilog.middle.block157, label %vec.epilog.vector.body154, !llvm.loop !3194

vec.epilog.middle.block157:                       ; preds = %vec.epilog.vector.body154
  %cmp.n158 = icmp eq i64 %i.q, %n.vec151
  br i1 %cmp.n158, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check146, %vec.epilog.iter.check148, %vec.epilog.middle.block157
  %.sroa.7.0.i.i.ph = phi i64 [ 1, %iter.check146 ], [ %i.s, %vec.epilog.iter.check148 ], [ %i.x, %vec.epilog.middle.block157 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.sroa.7.0.i.i = phi i64 [ %storemerge.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.7.0.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.sroa.7.0.i.i
  store i16 %i.p, ptr %i.ab, align 1
  %storemerge.i.i.i = add nuw i64 %.sroa.7.0.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %storemerge.i.i.i, %i.k
  br i1 %.not.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3195

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i: ; preds = %.lr.ph.i.i.i, %middle.block143, %vec.epilog.middle.block157, %bb.f
  store ptr %8, ptr %7, align 8, !tbaa !3196
  call void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairI5emptyS3_ES5_NS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_SJ_T1_(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull %i.m, i64 noundef %i.k, ptr noundef nonnull align 8 dead_on_return %7)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %8, ptr %6, align 8, !tbaa !3196
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEEEEvT_SG_SG_NS0_9iter_sizeISG_E4typeESJ_T0_(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.d, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i

_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i: ; preds = %bb.g, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS9_9select1stIS4_EEEEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SJ_SJ_T0_RT1_.exit: ; preds = %bb.c, %.preheader.preheader.i.i.i, %_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairI5emptyS3_ENS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS8_9select1stIS3_EEEEEES5_EEvT_SG_SG_T0_T1_NS0_9iter_sizeISG_E4typeE.exit.i
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.f, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

bb.h:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE5clearEv.exit
  %i.ac = add i64 %3, %2                          ; 5 uses
  %.idx = shl nuw nsw i64 %i.ac, 1                ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  tail call void @_ZN5boost7movelib15detail_adaptive11stable_sortIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEEvT_SH_T0_RT1_(ptr noundef %1, ptr noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !357 ; 2 uses
  %.not = icmp ult i64 %i.af, %i.ac
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.idx73 = shl nuw nsw i64 %4, 1                 ; 2 uses
  %.not.i.i52 = icmp eq i64 %i.ac, 0
  %.not37.i.i = icmp samesign eq i64 %.idx, %.idx73
  %or.cond.i.i53 = or i1 %.not.i.i52, %.not37.i.i
  br i1 %or.cond.i.i53, label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = ptrtoint ptr %i.ad to i64
  %gepdiff = sub nsw i64 %.idx73, %.idx           ; 2 uses
  %.not38.i.i = icmp ugt i64 %.idx, %gepdiff
  br i1 %.not38.i.i, label %.lr.ph.preheader.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i64, ptr %i.b, align 8, !tbaa !356 ; 2 uses
  %.not.i.i.i54 = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i.i54, label %iter.check, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i

iter.check:                                       ; preds = %bb.k
  %.idx.i.i.i = shl i64 %i.ah, 1                  ; 3 uses
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %.idx.i.i.i ; 5 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !354   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 %.idx.i.i.i ; 5 uses
  %i.al = add nsw i64 %.idx, -2
  %i.am = sub i64 %i.al, %.idx.i.i.i              ; 3 uses
  %i.an = lshr exact i64 %i.am, 1
  %i.ao = add nuw i64 %i.an, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.am, 6
  %i.ap = ptrtoaddr ptr %i.aj to i64
  %i.aq = sub i64 %i.a, %i.ap
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check87 = icmp ult i64 %i.am, 30
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.ao, 12
  %n.vec = and i64 %i.ao, -16                     ; 4 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ai, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ai, i64 %i.av ; 2 uses
  %next.gep88 = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load89 = load <8 x i16>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep88, i64 16
  store <8 x i16> %wide.load, ptr %next.gep88, align 1
  store <8 x i16> %wide.load89, ptr %i.ax, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !3198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !3078

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.ao, -4                    ; 3 uses
  %i.az = shl i64 %n.vec91, 1                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ai, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ak, i64 %i.az
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %i.bc = shl i64 %index92, 1                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %i.ai, i64 %i.bc
  %next.gep94 = getelementptr i8, ptr %i.ak, i64 %i.bc
  %wide.load95 = load <4 x i16>, ptr %next.gep93, align 1
  store <4 x i16> %wide.load95, ptr %next.gep94, align 1
  %index.next96 = add nuw i64 %index92, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3199

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.ao, %n.vec91
  br i1 %cmp.n97, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ai, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.ba, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ak, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.be = load i16, ptr %.012.i.i.i.i, align 1
  store i16 %i.be, ptr %.0911.i.i.i.i, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 2 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 2
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.ad
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3200

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.k
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !356
  br label %_ZN5boost7movelib14buffered_mergeIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEENS0_13adaptive_xbufIS4_S5_mEEEEvT_SG_SG_T0_RT1_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %bb.j
  %i.bh = ashr exact i64 %gepdiff, 1
  br label %.lr.ph.i.i.i55

.lr.ph.i.i.i55:                                   ; preds = %.lr.ph.i.i.i55, %.lr.ph.preheader.i.i.i
  %.017.i.i.i = phi i64 [ %i.bl, %.lr.ph.i.i.i55 ], [ %i.bh, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01316.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i55 ], [ %i.ad, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.bi = lshr i64 %.017.i.i.i, 1                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.01316.i.i.i, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 2 ; 2 uses
  %.neg.i.i.i = xor i64 %i.bi, -1
  %i.bl = add i64 %.017.i.i.i, %.neg.i.i.i        ; 2 uses
  %.not.i39.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i39.i.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i, label %.lr.ph.i.i.i55, !llvm.loop !3081

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i: ; preds = %.lr.ph.i.i.i55
  %.01316.i.i.i102.le = ptrtoaddr ptr %.01316.i.i.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bm, %i.ag
  %i.bo = ashr exact i64 %i.bn, 1                 ; 2 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !356 ; 2 uses
  %.not.i40.i.i = icmp ugt i64 %i.bo, %i.bp
  br i1 %.not.i40.i.i, label %iter.check119, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE11move_assignIS5_EEvT_m.exit46.i.i

iter.check119:                                    ; preds = %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.i.i
  %.idx.i41.i.i = shl i64 %i.bp, 1                ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.ad, i64 %.idx.i41.i.i ; 6 uses
  %i.br = load ptr, ptr %5, align 8, !tbaa !354   ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 %.idx.i41.i.i ; 6 uses
  %i.bt = add i64 %.idx.i41.i.i, %i.a
  %i.bu = add i64 %i.bt, %.idx
  %i.bv = sub i64 %.01316.i.i.i102.le, %i.bu
  %i.bw = and i64 %.017.i.i.i, -2
  %i.bx = add i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = lshr i64 %i.bx, 1
  %i.bz = add nuw i64 %i.by, 1                    ; 5 uses
  %min.iters.check103 = icmp ult i64 %i.bx, 6
  br i1 %min.iters.check103, label %.lr.ph.i.i42.i.i.preheader, label %vector.memcheck100

vector.memcheck100:                               ; preds = %iter.check119
  %i.ca = ptrtoaddr ptr %i.br to i64
  %i.cb = add i64 %.idx, %i.a
  %i.cc = sub i64 %i.cb, %i.ca
  %diff.check101 = icmp ugt i64 %i.cc, -32
  br i1 %diff.check101, label %.lr.ph.i.i42.i.i.preheader, label %vector.main.loop.iter.check104

vector.main.loop.iter.check104:                   ; preds = %vector.memcheck100
  %min.iters.check105 = icmp ult i64 %i.bx, 30
  br i1 %min.iters.check105, label %vec.epilog.ph123, label %vector.ph106

vector.ph106:                                     ; preds = %vector.main.loop.iter.check104
  %i.cd = and i64 %i.bz, 12
  %n.vec107 = and i64 %i.bz, -16                  ; 4 uses
  %i.ce = shl i64 %n.vec107, 1                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bq, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.bs, i64 %i.ce
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b:bb.a
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bn
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
  br i1 %.not8.i.i83, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88, label %iter.check228

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
  store <16 x i8> %vec.ind220, ptr %next.gep222, align 1, !tbaa !3215
  store <16 x i8> %step.add221, ptr %i.cd, align 1, !tbaa !3215
  %index.next223 = add nuw i64 %index219, 32      ; 2 uses
  %vec.ind.next224 = add <16 x i8> %vec.ind220, splat (i8 32)
  %i.ce = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.ce, label %middle.block225, label %vector.body218, !llvm.loop !3226

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.bz, %n.vec217
  br i1 %cmp.n226, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.i.i84.preheader, label %vec.epilog.ph232, !prof !3096

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
  store <4 x i8> %vec.ind239, ptr %next.gep240, align 1, !tbaa !3215
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i8> %vec.ind239, splat (i8 4)
  %i.ch = icmp eq i64 %index.next241, %n.vec233
  br i1 %i.ch, label %vec.epilog.middle.block243, label %vec.epilog.vector.body237, !llvm.loop !3227

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body237
  %cmp.n244 = icmp eq i64 %i.bz, %n.vec233
  br i1 %cmp.n244, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88, label %.lr.ph.i.i84.preheader

.lr.ph.i.i84.preheader:                           ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block243
  %.010.i.i85.ph = phi i64 [ 0, %iter.check228 ], [ %n.vec217, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block243 ]
  %.079.i.i86.ph = phi ptr [ %0, %iter.check228 ], [ %i.cc, %vec.epilog.iter.check230 ], [ %i.cf, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.lr.ph.i.i84.preheader, %.lr.ph.i.i84
  %.010.i.i85 = phi i64 [ %i.ck, %.lr.ph.i.i84 ], [ %.010.i.i85.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %.079.i.i86 = phi ptr [ %i.cj, %.lr.ph.i.i84 ], [ %.079.i.i86.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %i.ci = trunc i64 %.010.i.i85 to i8
  store i8 %i.ci, ptr %.079.i.i86, align 1, !tbaa !3215
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i86, i64 1
  %i.ck = add nuw i64 %.010.i.i85, 1              ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.ck, %i.bz
  br i1 %.not.i.i87, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88, label %.lr.ph.i.i84, !llvm.loop !3228

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88: ; preds = %.lr.ph.i.i84, %middle.block225, %vec.epilog.middle.block243, %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [2 x i8], ptr %.2119, i64 %i.cm
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88
  store ptr %i.cl, ptr %9, align 8, !tbaa !3229
  store ptr %i.co, ptr %10, align 8, !tbaa !3100
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit88
  store ptr %i.cl, ptr %11, align 8, !tbaa !3229
  store ptr %i.co, ptr %12, align 8, !tbaa !3100
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [2 x i8], ptr %.2119, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3231

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 4 uses
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

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us
  %.073119.us.us = phi i64 [ %i.z, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us.us = phi ptr [ %spec.select.us.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

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
  store <2 x i64> %vec.ind159, ptr %next.gep161, align 8, !tbaa !36
  store <2 x i64> %step.add160, ptr %i.v, align 8, !tbaa !36
  %index.next162 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next163 = add nuw <2 x i64> %vec.ind159, splat (i64 4)
  %i.w = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.w, label %middle.block164, label %vector.body157, !llvm.loop !3232

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.r, 0
  br i1 %cmp.n165, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader184

.lr.ph.i.i.us.us.preheader184:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block164
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec156, %middle.block164 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.t, %middle.block164 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader184, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.y, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.x, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.y = add nuw i64 %.010.i.i.us.us, 1           ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.y, %i.q
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !3233

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block164, %.lr.ph.split.us.split.us
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %.074118.us.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.o, i64 noundef %i.k)
  %i.z = add nuw i64 %.073119.us.us, 1            ; 2 uses
  %.not77.us.us = icmp eq i64 %i.z, %i.e          ; 2 uses
  %spec.select.idx.us.us = select i1 %.not77.us.us, i64 0, i64 %i.a
  %spec.select.us.us = getelementptr inbounds nuw [2 x i8], ptr %.074118.us.us, i64 %spec.select.idx.us.us
  br i1 %.not77.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !3234

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us
  %.073119.us = phi i64 [ %i.as, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us = phi ptr [ %spec.select.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader

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
  store <2 x i64> %vec.ind144, ptr %next.gep146, align 8, !tbaa !36
  store <2 x i64> %step.add145, ptr %i.ao, align 8, !tbaa !36
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next148 = add nuw <2 x i64> %vec.ind144, splat (i64 4)
  %i.ap = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ap, label %middle.block149, label %vector.body142, !llvm.loop !3235

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n150, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us.preheader186

.lr.ph.i.i.us.preheader186:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block149
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec141, %middle.block149 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.am, %middle.block149 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader186, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.ar, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.aq, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.ar = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !3236

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block149, %.lr.ph.split.us.split
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %.074118.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ah, i64 noundef %i.ad)
  %i.as = add nuw i64 %.073119.us, 1              ; 2 uses
  %.not77.us = icmp eq i64 %i.as, %i.e            ; 2 uses
  %spec.select.idx.us = select i1 %.not77.us, i64 0, i64 %i.a
  %spec.select.us = getelementptr inbounds nuw [2 x i8], ptr %.074118.us, i64 %spec.select.idx.us
  br i1 %.not77.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !3234

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit
  %.073119 = phi i64 [ %i.bl, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.074118 = phi ptr [ %spec.select, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit ], [ %1, %.lr.ph ] ; 2 uses
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
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader

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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, label %.lr.ph.i.i, !llvm.loop !3238

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [2 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3234

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.bn
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
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader

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
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !36
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !36
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add nuw <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3239

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add nuw i64 %.010.i.i87, 1              ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3240

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [2 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [2 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !3102
  store ptr %i.co, ptr %10, align 8, !tbaa !3100
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !3102
  store ptr %i.co, ptr %12, align 8, !tbaa !3100
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairI5emptySA_EEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessISA_ESB_NSF_9select1stISA_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [2 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3241

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 7 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 3 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3100   ; 7 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !3100   ; 6 uses
  %.idx365 = shl nsw i64 %2, 1                    ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.idx365 ; 5 uses
  %i.g = sub i64 0, %3                            ; 2 uses
  %.idx = shl i64 %i.g, 1                         ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 %.idx    ; 6 uses
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr [2 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = icmp eq i64 %5, 0                        ; 2 uses
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 2 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 5 uses
  %.not304 = icmp eq i64 %i.a, 0
  br i1 %.not304, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = mul i64 %2, -2
  %i.p = sub i64 0, %2
  br i1 %i.l, label %iter.check398, label %iter.check

iter.check398:                                    ; preds = %.lr.ph
  %i.q = add i64 %.sroa.speculated, 1             ; 7 uses
  %min.iters.check382 = icmp ult i64 %i.q, 4
  br i1 %min.iters.check382, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check383

vector.main.loop.iter.check383:                   ; preds = %iter.check398
  %min.iters.check384 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check384, label %vec.epilog.ph402, label %vector.ph385

vector.ph385:                                     ; preds = %vector.main.loop.iter.check383
  %i.r = and i64 %i.q, 28
  %n.vec386 = and i64 %i.q, -32                   ; 4 uses
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next391, %vector.body387 ]
  %vec.ind389 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph385 ], [ %vec.ind.next392, %vector.body387 ] ; 2 uses
  %index.next391 = add nuw i64 %index388, 32      ; 2 uses
  %vec.ind.next392 = add <16 x i64> %vec.ind389, splat (i64 32)
  %i.s = icmp eq i64 %index.next391, %n.vec386
  br i1 %i.s, label %middle.block393, label %vector.body387, !llvm.loop !3242

middle.block393:                                  ; preds = %vector.body387
  %step.add390 = add nuw <16 x i64> %vec.ind389, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi394 = extractelement <16 x i64> %step.add390, i64 14
  %cmp.n396 = icmp eq i64 %i.q, %n.vec386
  br i1 %cmp.n396, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %vec.epilog.iter.check400

vec.epilog.iter.check400:                         ; preds = %middle.block393
  %vector.recur.extract395 = extractelement <16 x i64> %step.add390, i64 15
  %min.epilog.iters.check401 = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check401, label %.lr.ph.split.us.preheader, label %vec.epilog.ph402, !prof !3096

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check383, %vec.epilog.iter.check400
  %vec.epilog.resume.val397 = phi i64 [ %n.vec386, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check383 ] ; 2 uses
  %n.vec403 = and i64 %i.q, -4                    ; 3 uses
  %broadcast.splatinsert404 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val397, i64 0
  %broadcast.splat405 = shufflevector <4 x i64> %broadcast.splatinsert404, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction406 = or disjoint <4 x i64> %broadcast.splat405, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body407

vec.epilog.vector.body407:                        ; preds = %vec.epilog.vector.body407, %vec.epilog.ph402
  %index408 = phi i64 [ %vec.epilog.resume.val397, %vec.epilog.ph402 ], [ %index.next410, %vec.epilog.vector.body407 ]
  %vec.ind409 = phi <4 x i64> [ %induction406, %vec.epilog.ph402 ], [ %vec.ind.next411, %vec.epilog.vector.body407 ] ; 3 uses
  %index.next410 = add nuw i64 %index408, 4       ; 2 uses
  %vec.ind.next411 = add <4 x i64> %vec.ind409, splat (i64 4)
  %i.t = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.t, label %vec.epilog.middle.block412, label %vec.epilog.vector.body407, !llvm.loop !3243

vec.epilog.middle.block412:                       ; preds = %vec.epilog.vector.body407
  %vector.recur.extract.for.phi413 = extractelement <4 x i64> %vec.ind409, i64 2
  %vector.recur.extract414 = extractelement <4 x i64> %vec.ind409, i64 3
  %cmp.n415 = icmp eq i64 %i.q, %n.vec403
  br i1 %cmp.n415, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block412
  %.018.i.us.ph = phi i64 [ 0, %iter.check398 ], [ %vector.recur.extract395, %vec.epilog.iter.check400 ], [ %vector.recur.extract414, %vec.epilog.middle.block412 ]
  %.0.i.us.ph = phi i64 [ 0, %iter.check398 ], [ %n.vec386, %vec.epilog.iter.check400 ], [ %n.vec403, %vec.epilog.middle.block412 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us
  %.018.i.us = phi i64 [ %.0.i.us, %.lr.ph.split.us ], [ %.018.i.us.ph, %.lr.ph.split.us.preheader ]
  %.0.i.us = phi i64 [ %i.u, %.lr.ph.split.us ], [ %.0.i.us.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.u = add i64 %.0.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %.0.i.us, %.sroa.speculated
  br i1 %exitcond.not.i.us, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us, label %.lr.ph.split.us, !llvm.loop !3244

_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us: ; preds = %.lr.ph.split.us, %vec.epilog.middle.block412, %middle.block393
  %.018.i.us.lcssa = phi i64 [ %vector.recur.extract.for.phi413, %vec.epilog.middle.block412 ], [ %vector.recur.extract.for.phi394, %middle.block393 ], [ %.018.i.us, %.lr.ph.split.us ]
  %i.v = add i64 %.018.i.us.lcssa, 2
  %i.w = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated, i64 %i.v)
  %.sroa.speculated242.us = tail call i64 @llvm.umin.i64(i64 %i.w, i64 %i.a) ; 3 uses
  %.not68 = icmp eq i64 %6, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br i1 %.not68, label %.thread.thread, label %.thread.thread341

.thread.thread341:                                ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit.us
  %i.x = icmp eq i64 %.idx, %.idx365
  %.neg270350 = mul i64 %6, -2                    ; 2 uses
  %i.y = getelementptr i8, ptr %i.k, i64 %.neg270350
  br label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEES8_S8_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit

iter.check:                                       ; preds = %.lr.ph, %.sink.split.i
  %.063312 = phi i64 [ %i.aw, %.sink.split.i ], [ %4, %.lr.ph ] ; 9 uses
  %.0253311 = phi i64 [ %i.az, %.sink.split.i ], [ %i.a, %.lr.ph ] ; 2 uses
  %.sroa.0229.0310 = phi ptr [ %.sroa.0229.1, %.sink.split.i ], [ %i.d, %.lr.ph ] ; 4 uses
  %.sroa.0218.0309 = phi ptr [ %.sroa.0218.1, %.sink.split.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.sroa.0204.0308 = phi ptr [ %.sroa.0189.0307, %.sink.split.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %.sroa.0189.0307 = phi ptr [ %i.aj, %.sink.split.i ], [ %i.h, %.lr.ph ] ; 6 uses
  %.sroa.0179.0306 = phi ptr [ %i.au, %.sink.split.i ], [ %i.b, %.lr.ph ] ; 4 uses
  %.val300305 = phi i64 [ %i.ay, %.sink.split.i ], [ %.sroa.speculated, %.lr.ph ] ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val300305, i64 %.063312) ; 2 uses
  %i.z = add i64 %umax.i, 1
  %i.aa = sub i64 %i.z, %.063312                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check368 = icmp ult i64 %i.aa, 32
  br i1 %min.iters.check368, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 28
  %n.vec = and i64 %i.aa, -32                     ; 4 uses
  %i.ac = add i64 %.063312, %n.vec                ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %.063312, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <16 x i64> %vec.ind, splat (i64 32)
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !3245

middle.block:                                     ; preds = %vector.body
  %step.add = add <16 x i64> %vec.ind, <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 16, i64 16> ; 2 uses
  %vector.recur.extract.for.phi = extractelement <16 x i64> %step.add, i64 14
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_EENS0_9iter_sizeIT1_E4typeET_T0_SK_SM_SM_SM_T2_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_:bb.a
  %i.ad = icmp ne i64 %.030.lcssa.i, 0
  %i.ae = icmp ne i64 %.029.lcssa.i, 0
  %i.af = and i1 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph45.i, label %._crit_edge.i

.lr.ph.i58:                                       ; preds = %.preheader36.i, %.lr.ph.i58
  %.040.i = phi i64 [ %i.ag, %.lr.ph.i58 ], [ 1, %.preheader36.i ]
  %.02939.i = phi i64 [ %i.ai, %.lr.ph.i58 ], [ %i.f, %.preheader36.i ]
  %.03038.i = phi i64 [ %i.ah, %.lr.ph.i58 ], [ %i.t, %.preheader36.i ]
  %i.ag = shl i64 %.040.i, 1                      ; 2 uses
  %i.ah = lshr i64 %.03038.i, 1                   ; 3 uses
  %i.ai = lshr i64 %.02939.i, 1                   ; 3 uses
  %i.aj = or i64 %i.ah, %i.ai
  %i.ak = and i64 %i.aj, 1
  %.not.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.not.i, label %.lr.ph.i58, label %.preheader.i, !llvm.loop !3536

.lr.ph45.i:                                       ; preds = %.preheader.i, %bb.l
  %.144.i = phi i64 [ %.2.i, %bb.l ], [ %.029.lcssa.i, %.preheader.i ] ; 7 uses
  %.13143.i = phi i64 [ %.232.i, %bb.l ], [ %.030.lcssa.i, %.preheader.i ] ; 7 uses
  %i.al = and i64 %.13143.i, 1
  %.not.i57 = icmp eq i64 %i.al, 0
  br i1 %.not.i57, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph45.i
  %i.am = lshr exact i64 %.13143.i, 1
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph45.i
  %i.an = and i64 %.144.i, 1
  %.not34.i = icmp eq i64 %i.an, 0
  br i1 %.not34.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = lshr exact i64 %.144.i, 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not35.i = icmp ult i64 %.13143.i, %.144.i
  br i1 %.not35.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = sub nuw i64 %.13143.i, %.144.i
  %i.aq = lshr exact i64 %i.ap, 1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ar = sub nuw i64 %.144.i, %.13143.i
  %i.as = lshr exact i64 %i.ar, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.f
  %.232.i = phi i64 [ %i.aq, %bb.j ], [ %.13143.i, %bb.k ], [ %.13143.i, %bb.h ], [ %i.am, %bb.f ] ; 3 uses
  %.2.i = phi i64 [ %.144.i, %bb.j ], [ %i.as, %bb.k ], [ %i.ao, %bb.h ], [ %.144.i, %bb.f ] ; 3 uses
  %i.at = icmp ne i64 %.232.i, 0
  %i.au = icmp ne i64 %.2.i, 0
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph45.i, label %._crit_edge.i, !llvm.loop !3537

._crit_edge.i:                                    ; preds = %bb.l, %.preheader.i
  %.131.lcssa.i = phi i64 [ %.030.lcssa.i, %.preheader.i ], [ %.232.i, %bb.l ]
  %.1.lcssa.i = phi i64 [ %.029.lcssa.i, %.preheader.i ], [ %.2.i, %bb.l ]
  %i.aw = add i64 %.1.lcssa.i, %.131.lcssa.i
  %i.ax = mul i64 %i.aw, %.0.lcssa.i56
  br label %_ZN5boost7movelib3gcdImEET_S2_S2_.exit

_ZN5boost7movelib3gcdImEET_S2_S2_.exit:           ; preds = %bb.e, %._crit_edge.i
  %.033.i = phi i64 [ %i.ac, %bb.e ], [ %i.ax, %._crit_edge.i ] ; 2 uses
  %.idx = shl nuw nsw i64 %.033.i, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.not64 = icmp eq i64 %.033.i, 0
  br i1 %.not64, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost7movelib3gcdImEET_S2_S2_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.o
  %.04865 = phi ptr [ %0, %.lr.ph ], [ %i.bt, %bb.o ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04865, i64 4
  %i.bb = load <2 x i32>, ptr %.04865, align 4, !tbaa !802
  store i32 0, ptr %.04865, align 4, !tbaa !802
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bd = add i32 %i.bc, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.be = getelementptr inbounds nuw i8, ptr %.04865, i64 %i.e
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.047 = phi ptr [ %.04865, %bb.m ], [ %.046, %bb.n ] ; 2 uses
  %.046 = phi ptr [ %i.be, %bb.m ], [ %i.bq, %bb.n ] ; 7 uses
  %i.bf = load i32, ptr %.046, align 4, !tbaa !802
  store i32 %i.bf, ptr %.047, align 4, !tbaa !802
  store i32 0, ptr %.046, align 4, !tbaa !802
  %i.bg = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.047, i64 4
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !802
  store i32 0, ptr %i.bg, align 4, !tbaa !802
  %i.bj = ptrtoint ptr %.046 to i64
  %i.bk = sub i64 %i.r, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3                 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %i.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.046, i64 %i.e
  %i.bo = sub nsw i64 0, %i.bl
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bo
  %i.bq = select i1 %i.bm, ptr %i.bn, ptr %i.bp   ; 2 uses
  %.not55 = icmp eq ptr %i.bq, %.04865
  br i1 %.not55, label %bb.o, label %bb.n, !llvm.loop !3538

bb.o:                                             ; preds = %bb.n
  store <2 x i32> %i.bb, ptr %.046, align 4, !tbaa !802
  %i.br = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bs = add i32 %i.br, -2
  store i32 %i.bs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bt = getelementptr inbounds nuw i8, ptr %.04865, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bt, %i.ay
  br i1 %.not, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit, label %bb.m, !llvm.loop !3539

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit: ; preds = %bb.o, %.lr.ph.i, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit, %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.h, %_ZN5boost7movelib3gcdImEET_S2_S2_.exit ], [ %i.h, %.lr.ph.i ], [ %i.h, %bb.o ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEEEEvT_SG_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 6 uses
  %i.e = icmp ugt i64 %i.d, 16                    ; 2 uses
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit
  %.04460 = phi i64 [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04460 ; 6 uses
  br label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.lr.ph, %bb.d
  %.02541.i.idx = phi i64 [ %.02541.i.add, %bb.d ], [ 8, %.lr.ph ] ; 2 uses
  %.pn40.i = phi ptr [ %.02541.i.ptr, %bb.d ], [ %i.f, %.lr.ph ] ; 7 uses
  %.02541.i.ptr = getelementptr inbounds nuw i8, ptr %i.f, i64 %.02541.i.idx ; 4 uses
  %i.g = load i32, ptr %.02541.i.ptr, align 4, !tbaa !802 ; 3 uses
  %i.h = load i32, ptr %.pn40.i, align 4, !tbaa !802
  %i.i = icmp slt i32 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph42.i
  store i32 0, ptr %.02541.i.ptr, align 4, !tbaa !802
  %i.j = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.k = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  %i.m = add i32 %i.j, 2
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = load i32, ptr %.pn40.i, align 4, !tbaa !802
  store i32 %i.n, ptr %.02541.i.ptr, align 4, !tbaa !802
  store i32 0, ptr %.pn40.i, align 4, !tbaa !802
  %i.o = getelementptr inbounds nuw i8, ptr %.pn40.i, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.k, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %.not2933.i = icmp eq ptr %.pn40.i, %i.f
  br i1 %.not2933.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.035.i = phi ptr [ %i.q, %bb.c ], [ %.pn40.i, %bb.b ] ; 5 uses
  %i.q = getelementptr i8, ptr %.035.i, i64 -8    ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !802  ; 2 uses
  %i.s = icmp slt i32 %i.g, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  store i32 %i.r, ptr %.035.i, align 4, !tbaa !802
  store i32 0, ptr %i.q, align 4, !tbaa !802
  %i.t = getelementptr inbounds i8, ptr %.035.i, i64 -4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.035.i, i64 4
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %.not29.i = icmp eq ptr %i.q, %i.f
  br i1 %.not29.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !3414

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.024.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.035.i, %.lr.ph.i ] ; 2 uses
  store i32 %i.g, ptr %.024.lcssa.i, align 4, !tbaa !802
  %i.w = getelementptr inbounds nuw i8, ptr %.024.lcssa.i, i64 4
  store i32 %i.l, ptr %i.w, align 4, !tbaa !802
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph42.i
  %.02541.i.add = add nuw nsw i64 %.02541.i.idx, 8 ; 2 uses
  %.not28.i = icmp eq i64 %.02541.i.add, 128
  br i1 %.not28.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, label %.lr.ph42.i, !llvm.loop !3415

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit: ; preds = %bb.d
  %i.z = add nuw i64 %.04460, 16                  ; 3 uses
  %i.aa = sub i64 %i.d, %i.z
  %i.ab = icmp ugt i64 %i.aa, 16
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !3540

._crit_edge:                                      ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit, %bb.a
  %.044.lcssa = phi i64 [ 0, %bb.a ], [ %i.z, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.044.lcssa ; 7 uses
  %.not.i = icmp eq ptr %i.ac, %1
  %.02538.i46 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not2839.i = icmp eq ptr %.02538.i46, %1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not2839.i
  br i1 %or.cond.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47

.lr.ph42.i47:                                     ; preds = %._crit_edge, %bb.g
  %.02541.i48 = phi ptr [ %.025.i50, %bb.g ], [ %.02538.i46, %._crit_edge ] ; 5 uses
  %.pn40.i49 = phi ptr [ %.02541.i48, %bb.g ], [ %i.ac, %._crit_edge ] ; 7 uses
  %i.ad = load i32, ptr %.02541.i48, align 4, !tbaa !802 ; 3 uses
  %i.ae = load i32, ptr %.pn40.i49, align 4, !tbaa !802
  %i.af = icmp slt i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph42.i47
  store i32 0, ptr %.02541.i48, align 4, !tbaa !802
  %i.ag = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !802
  %i.aj = add i32 %i.ag, 2
  store i32 %i.aj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ak = load i32, ptr %.pn40.i49, align 4, !tbaa !802
  store i32 %i.ak, ptr %.02541.i48, align 4, !tbaa !802
  store i32 0, ptr %.pn40.i49, align 4, !tbaa !802
  %i.al = getelementptr inbounds nuw i8, ptr %.pn40.i49, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !802
  store i32 %i.am, ptr %i.ah, align 4, !tbaa !802
  store i32 0, ptr %i.al, align 4, !tbaa !802
  %.not2933.i52 = icmp eq ptr %.pn40.i49, %i.ac
  br i1 %.not2933.i52, label %._crit_edge.i55, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.e, %bb.f
  %.035.i54 = phi ptr [ %i.an, %bb.f ], [ %.pn40.i49, %bb.e ] ; 5 uses
  %i.an = getelementptr i8, ptr %.035.i54, i64 -8 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !802 ; 2 uses
  %i.ap = icmp slt i32 %i.ad, %i.ao
  br i1 %i.ap, label %bb.f, label %._crit_edge.i55

bb.f:                                             ; preds = %.lr.ph.i53
  store i32 %i.ao, ptr %.035.i54, align 4, !tbaa !802
  store i32 0, ptr %i.an, align 4, !tbaa !802
  %i.aq = getelementptr inbounds i8, ptr %.035.i54, i64 -4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.035.i54, i64 4
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.as, ptr %i.ar, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %.not29.i57 = icmp eq ptr %i.an, %i.ac
  br i1 %.not29.i57, label %._crit_edge.i55, label %.lr.ph.i53, !llvm.loop !3414

._crit_edge.i55:                                  ; preds = %bb.f, %.lr.ph.i53, %bb.e
  %.024.lcssa.i56 = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %.035.i54, %.lr.ph.i53 ] ; 2 uses
  store i32 %i.ad, ptr %.024.lcssa.i56, align 4, !tbaa !802
  %i.at = getelementptr inbounds nuw i8, ptr %.024.lcssa.i56, i64 4
  store i32 %i.ai, ptr %i.at, align 4, !tbaa !802
  %i.au = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.av = add i32 %i.au, -2
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i55, %.lr.ph42.i47
  %.025.i50 = getelementptr inbounds nuw i8, ptr %.02541.i48, i64 8 ; 2 uses
  %.not28.i51 = icmp eq ptr %.025.i50, %1
  br i1 %.not28.i51, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, label %.lr.ph42.i47, !llvm.loop !3415

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58: ; preds = %bb.g, %._crit_edge
  br i1 %i.e, label %.lr.ph67, label %._crit_edge68

._crit_edge68:                                    ; preds = %bb.k, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58
  ret void

.lr.ph67:                                         ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58, %bb.k
  %.04365 = phi i64 [ %i.bo, %bb.k ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_EEvT0_SF_T_.exit58 ] ; 10 uses
  %i.aw = sub i64 %i.d, %.04365
  %i.ax = icmp ugt i64 %i.aw, %.04365             ; 2 uses
  br i1 %i.ax, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph67
  %i.ay = shl i64 %.04365, 1                      ; 3 uses
  %i.az = icmp ugt i64 %i.d, %i.ay
  br i1 %i.az, label %.lr.ph63, label %.loopexit

.lr.ph63:                                         ; preds = %bb.h
  %.idx59 = shl i64 %.04365, 3                    ; 2 uses
  %.idx = shl i64 %.04365, 4
  %i.ba = ashr exact i64 %.idx59, 3
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph63, %bb.i
  %.061 = phi i64 [ 0, %.lr.ph63 ], [ %i.be, %bb.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.061 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bb, ptr noundef %i.bc, ptr noundef %i.bd, i64 noundef %.04365, i64 noundef %i.ba)
  %i.be = add i64 %.061, %i.ay                    ; 3 uses
  %i.bf = sub i64 %i.d, %i.be
  %i.bg = icmp ugt i64 %i.bf, %i.ay
  br i1 %i.bg, label %bb.i, label %.loopexit, !llvm.loop !3541

.loopexit:                                        ; preds = %bb.i, %bb.h, %.lr.ph67
  %.1 = phi i64 [ 0, %.lr.ph67 ], [ 0, %bb.h ], [ %i.be, %bb.i ] ; 2 uses
  %i.bh = sub i64 %i.d, %.1
  %i.bi = icmp ugt i64 %i.bh, %.04365
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.04365 ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef %1, i64 noundef %.04365, i64 noundef %i.bn)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit
  %i.bo = shl i64 %.04365, 1
  br i1 %i.ax, label %.lr.ph67, label %._crit_edge68, !llvm.loop !3542
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond92 = and i1 %i.a, %i.b
  br i1 %or.cond92, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %.06799 = phi i64 [ %.1, %bb.n ], [ %4, %bb.a ] ; 6 uses
  %.06898 = phi i64 [ %.169, %bb.n ], [ %3, %bb.a ] ; 6 uses
  %.07096 = phi ptr [ %.171, %bb.n ], [ %2, %bb.a ] ; 5 uses
  %.07294 = phi ptr [ %.173, %bb.n ], [ %1, %bb.a ] ; 13 uses
  %.07493 = phi ptr [ %.175, %bb.n ], [ %0, %bb.a ] ; 12 uses
  %i.c = or i64 %.06799, %.06898
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i32, ptr %.07294, align 4, !tbaa !802
  %i.f = load i32, ptr %.07493, align 4, !tbaa !802 ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %.07493, align 4, !tbaa !802
  %i.h = load i32, ptr %.07294, align 4, !tbaa !802
  store i32 %i.h, ptr %.07493, align 4, !tbaa !802
  store i32 %i.f, ptr %.07294, align 4, !tbaa !802
  %i.i = getelementptr inbounds nuw i8, ptr %.07493, i64 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.07294, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 0, ptr %i.i, align 4, !tbaa !802
  %i.l = load i32, ptr %i.j, align 4, !tbaa !802
  store i32 %i.l, ptr %i.i, align 4, !tbaa !802
  store i32 %i.k, ptr %i.j, align 4, !tbaa !802
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.m = add i64 %.06799, %.06898                 ; 2 uses
  %i.n = icmp ult i64 %i.m, 16
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.07493, ptr noundef %.07294, ptr noundef %.07096)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.06898, %.06799
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.06898, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.07493, i64 %i.p ; 2 uses
  %.not15.i = icmp eq ptr %.07096, %.07294
  %.pre = ptrtoint ptr %.07294 to i64             ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07096 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 3
  %i.u = load i32, ptr %i.q, align 4, !tbaa !802
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.017.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01316.i = phi ptr [ %.07294, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.v = lshr i64 %.017.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !802
  %i.y = icmp slt i32 %i.x, %i.u                  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.neg.i = xor i64 %i.v, -1
  %i.aa = add i64 %.017.i, %.neg.i
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_13adaptive_xbufIS9_SA_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b:bb.a
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn
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
  br i1 %.not8.i.i83, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88, label %iter.check228

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
  store <16 x i8> %vec.ind220, ptr %next.gep222, align 1, !tbaa !3215
  store <16 x i8> %step.add221, ptr %i.cd, align 1, !tbaa !3215
  %index.next223 = add nuw i64 %index219, 32      ; 2 uses
  %vec.ind.next224 = add <16 x i8> %vec.ind220, splat (i8 32)
  %i.ce = icmp eq i64 %index.next223, %n.vec217
  br i1 %i.ce, label %middle.block225, label %vector.body218, !llvm.loop !3598

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %i.bz, %n.vec217
  br i1 %cmp.n226, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88, label %vec.epilog.iter.check230

vec.epilog.iter.check230:                         ; preds = %middle.block225
  %min.epilog.iters.check231 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check231, label %.lr.ph.i.i84.preheader, label %vec.epilog.ph232, !prof !3096

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
  store <4 x i8> %vec.ind239, ptr %next.gep240, align 1, !tbaa !3215
  %index.next241 = add nuw i64 %index238, 4       ; 2 uses
  %vec.ind.next242 = add <4 x i8> %vec.ind239, splat (i8 4)
  %i.ch = icmp eq i64 %index.next241, %n.vec233
  br i1 %i.ch, label %vec.epilog.middle.block243, label %vec.epilog.vector.body237, !llvm.loop !3599

vec.epilog.middle.block243:                       ; preds = %vec.epilog.vector.body237
  %cmp.n244 = icmp eq i64 %i.bz, %n.vec233
  br i1 %cmp.n244, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88, label %.lr.ph.i.i84.preheader

.lr.ph.i.i84.preheader:                           ; preds = %iter.check228, %vec.epilog.iter.check230, %vec.epilog.middle.block243
  %.010.i.i85.ph = phi i64 [ 0, %iter.check228 ], [ %n.vec217, %vec.epilog.iter.check230 ], [ %n.vec233, %vec.epilog.middle.block243 ]
  %.079.i.i86.ph = phi ptr [ %0, %iter.check228 ], [ %i.cc, %vec.epilog.iter.check230 ], [ %i.cf, %vec.epilog.middle.block243 ]
  br label %.lr.ph.i.i84

.lr.ph.i.i84:                                     ; preds = %.lr.ph.i.i84.preheader, %.lr.ph.i.i84
  %.010.i.i85 = phi i64 [ %i.ck, %.lr.ph.i.i84 ], [ %.010.i.i85.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %.079.i.i86 = phi ptr [ %i.cj, %.lr.ph.i.i84 ], [ %.079.i.i86.ph, %.lr.ph.i.i84.preheader ] ; 2 uses
  %i.ci = trunc i64 %.010.i.i85 to i8
  store i8 %i.ci, ptr %.079.i.i86, align 1, !tbaa !3215
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i86, i64 1
  %i.ck = add nuw i64 %.010.i.i85, 1              ; 2 uses
  %.not.i.i87 = icmp eq i64 %i.ck, %i.bz
  br i1 %.not.i.i87, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88, label %.lr.ph.i.i84, !llvm.loop !3600

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88: ; preds = %.lr.ph.i.i84, %middle.block225, %vec.epilog.middle.block243, %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [8 x i8], ptr %.2119, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88
  store ptr %i.cl, ptr %9, align 8, !tbaa !3229
  store ptr %i.co, ptr %10, align 8, !tbaa !3585
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEENS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit88
  store ptr %i.cl, ptr %11, align 8, !tbaa !3229
  store ptr %i.co, ptr %12, align 8, !tbaa !3585
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEENS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [8 x i8], ptr %.2119, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3601

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_13adaptive_xbufIS9_SA_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
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

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us
  %.073119.us.us = phi i64 [ %i.z, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us.us = phi ptr [ %spec.select.us.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

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
  store <2 x i64> %vec.ind159, ptr %next.gep161, align 8, !tbaa !36
  store <2 x i64> %step.add160, ptr %i.v, align 8, !tbaa !36
  %index.next162 = add nuw i64 %index158, 4       ; 2 uses
  %vec.ind.next163 = add nuw <2 x i64> %vec.ind159, splat (i64 4)
  %i.w = icmp eq i64 %index.next162, %n.vec156
  br i1 %i.w, label %middle.block164, label %vector.body157, !llvm.loop !3602

middle.block164:                                  ; preds = %vector.body157
  %cmp.n165 = icmp eq i64 %i.r, 0
  br i1 %cmp.n165, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader184

.lr.ph.i.i.us.us.preheader184:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block164
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec156, %middle.block164 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.t, %middle.block164 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader184, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.y, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.x, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader184 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.y = add nuw i64 %.010.i.i.us.us, 1           ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.y, %i.q
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !3603

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block164, %.lr.ph.split.us.split.us
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %.074118.us.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.o, i64 noundef %i.k)
  %i.z = add nuw i64 %.073119.us.us, 1            ; 2 uses
  %.not77.us.us = icmp eq i64 %i.z, %i.e          ; 2 uses
  %spec.select.idx.us.us = select i1 %.not77.us.us, i64 0, i64 %i.a
  %spec.select.us.us = getelementptr inbounds nuw [8 x i8], ptr %.074118.us.us, i64 %spec.select.idx.us.us
  br i1 %.not77.us.us, label %.loopexit, label %.lr.ph.split.us.split.us, !llvm.loop !3604

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us
  %.073119.us = phi i64 [ %i.as, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074118.us = phi ptr [ %spec.select.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader

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
  store <2 x i64> %vec.ind144, ptr %next.gep146, align 8, !tbaa !36
  store <2 x i64> %step.add145, ptr %i.ao, align 8, !tbaa !36
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %vec.ind.next148 = add nuw <2 x i64> %vec.ind144, splat (i64 4)
  %i.ap = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.ap, label %middle.block149, label %vector.body142, !llvm.loop !3605

middle.block149:                                  ; preds = %vector.body142
  %cmp.n150 = icmp eq i64 %i.ak, 0
  br i1 %cmp.n150, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us.preheader186

.lr.ph.i.i.us.preheader186:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block149
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec141, %middle.block149 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.am, %middle.block149 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader186, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.ar, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.aq, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader186 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.ar = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.ar, %i.aj
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !3606

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block149, %.lr.ph.split.us.split
  tail call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef %0, ptr noundef %.074118.us, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ah, i64 noundef %i.ad)
  %i.as = add nuw i64 %.073119.us, 1              ; 2 uses
  %.not77.us = icmp eq i64 %i.as, %i.e            ; 2 uses
  %spec.select.idx.us = select i1 %.not77.us, i64 0, i64 %i.a
  %spec.select.us = getelementptr inbounds nuw [8 x i8], ptr %.074118.us, i64 %spec.select.idx.us
  br i1 %.not77.us, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !3604

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit
  %.073119 = phi i64 [ %i.bl, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit ], [ 0, %.lr.ph ] ; 2 uses
  %.074118 = phi ptr [ %spec.select, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit ], [ %1, %.lr.ph ] ; 2 uses
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
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader

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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.bh, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !3607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i.preheader188

.lr.ph.i.i.preheader188:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bf, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader188, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bj, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader188 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bk = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, %i.bc
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, label %.lr.ph.i.i, !llvm.loop !3608

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %.lr.ph.split
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %.074118, i64 noundef %4, i64 noundef 0, i64 noundef %i.g, i64 noundef %i.ba, i64 noundef %i.aw)
  %i.bl = add nuw i64 %.073119, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.bl, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [8 x i8], ptr %.074118, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3604

bb.b:                                             ; preds = %bb.a
  br i1 %.not78120, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.b
  %i.bm = add i64 %i.e, -1
  %i.bn = mul i64 %i.bm, %i.a
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn
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
  br i1 %.not8.i.i85, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90, label %.lr.ph.i.i86.preheader

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
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !36
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !36
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add nuw <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3609

middle.block179:                                  ; preds = %vector.body172
  %cmp.n180 = icmp eq i64 %i.cd, 0
  br i1 %cmp.n180, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90, label %.lr.ph.i.i86.preheader183

.lr.ph.i.i86.preheader183:                        ; preds = %.lr.ph.i.i86.preheader, %middle.block179
  %.010.i.i87.ph = phi i64 [ 0, %.lr.ph.i.i86.preheader ], [ %n.vec171, %middle.block179 ]
  %.079.i.i88.ph = phi ptr [ %0, %.lr.ph.i.i86.preheader ], [ %i.cf, %middle.block179 ]
  br label %.lr.ph.i.i86

.lr.ph.i.i86:                                     ; preds = %.lr.ph.i.i86.preheader183, %.lr.ph.i.i86
  %.010.i.i87 = phi i64 [ %i.ck, %.lr.ph.i.i86 ], [ %.010.i.i87.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  %.079.i.i88 = phi ptr [ %i.cj, %.lr.ph.i.i86 ], [ %.079.i.i88.ph, %.lr.ph.i.i86.preheader183 ] ; 2 uses
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add nuw i64 %.010.i.i87, 1              ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3610

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90: ; preds = %.lr.ph.i.i86, %middle.block179, %bb.c
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bz ; 2 uses
  %i.cm = mul i64 %i.bz, %4
  %i.cn = getelementptr [8 x i8], ptr %.2121, i64 %i.cm
  %i.co = getelementptr [8 x i8], ptr %i.cn, i64 %i.bw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90
  store ptr %i.cl, ptr %9, align 8, !tbaa !3102
  store ptr %i.co, ptr %10, align 8, !tbaa !3585
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEENS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !3102
  store ptr %i.co, ptr %12, align 8, !tbaa !3585
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEENS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.bs, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.br
  %.3 = getelementptr inbounds [8 x i8], ptr %.2121, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3611

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit.us.us, %bb.f, %.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not108 = icmp eq i64 %i.b, 0
  br i1 %.not108, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !3612
  br label %._crit_edge125

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  %i.g = icmp eq i64 %5, 0
  %i.h = select i1 %i.g, i64 0, i64 %4            ; 2 uses
  %i.i = add i64 %i.h, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.b)
  %i.j = icmp ne i64 %6, 0
  %.idx104 = shl i64 %2, 3                        ; 3 uses
  %.not8.i.i = icmp eq i64 %2, 0
  %i.k = mul i64 %2, %i.b
  %i.l = shl i64 %i.k, 3                          ; 2 uses
  %i.m = shl i64 %3, 3                            ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.o, i64 -4   ; 3 uses
  %i.p = shl i64 %2, 3
  %i.q = or disjoint i64 %i.m, 4                  ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep164 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0168 = icmp ult ptr %i.d, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict170, %stride.check171
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %.idx129 = shl i64 %i.bt, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !3612
  %.not77119 = icmp eq i64 %i.bt, 0
  br i1 %.not77119, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph124.split.us.preheader.preheader, label %.lr.ph124.split

.lr.ph124.split.us.preheader.preheader:           ; preds = %.lr.ph124
  %i.ad = add i64 %.idx129, -8                    ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol

.lr.ph124.split.us.preheader.prol:                ; preds = %.lr.ph124.split.us.preheader.preheader, %.lr.ph124.split.us.preheader.prol
  %.0122.us.prol = phi ptr [ %i.ah, %.lr.ph124.split.us.preheader.prol ], [ %0, %.lr.ph124.split.us.preheader.preheader ]
  %.069121.us.prol = phi ptr [ %i.ag, %.lr.ph124.split.us.preheader.prol ], [ %i.d, %.lr.ph124.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph124.split.us.preheader.prol ], [ 0, %.lr.ph124.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069121.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0122.us.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !3613

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader.prol.loopexit, %.lr.ph124.split.us.preheader
  %.0122.us = phi ptr [ %i.ar, %.lr.ph124.split.us.preheader ], [ %.0122.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %.069121.us = phi ptr [ %i.aq, %.lr.ph124.split.us.preheader ], [ %.069121.us.unr, %.lr.ph124.split.us.preheader.prol.loopexit ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.069121.us, i64 %2
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %2
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %2
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %2
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %2
  %i.ar = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.ar, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !3614

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.cq, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.co, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bt, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.ct, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cs, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.as = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.as
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.as
  %i.at = icmp ult i64 %.072115, %.val107109
  br i1 %i.at, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bi, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bh, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.au = mul i64 %.02226.i, %2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.au
  %i.aw = mul i64 %.027.i, %2
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.ba = load i32, ptr %i.ax, align 4, !tbaa !802 ; 2 uses
  %i.bb = load i32, ptr %i.av, align 4, !tbaa !802 ; 2 uses
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bd = icmp slt i32 %i.bb, %i.ba
  br i1 %i.bd, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = load i32, ptr %i.az, align 4, !tbaa !802
  %i.bf = load i32, ptr %i.ay, align 4, !tbaa !802
  %i.bg = icmp slt i32 %i.be, %i.bf
  %cond.fr.i = freeze i1 %i.bg
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bh = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bi = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bi, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !3615

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bh, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %.not1.i = icmp eq ptr %i.by, %i.ad
  br i1 %.not1.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.thread83, %.lr.ph.i25
  %.sroa.049.0 = phi ptr [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ] ; 2 uses
  %i.bz = phi ptr [ %i.ca, %.lr.ph.i25 ], [ %i.by, %.thread83 ] ; 2 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8 ; 5 uses
  %i.cb = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -8 ; 4 uses
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !802, !noalias !4363
  store i32 0, ptr %i.ca, align 4, !tbaa !802, !noalias !4363
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !802, !noalias !4363
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !802, !noalias !4363
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !802, !noalias !4363
  %i.ce = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 3 uses
  %i.cf = getelementptr inbounds i8, ptr %.sroa.049.0, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.ce, align 4, !tbaa !802, !noalias !4363
  store i32 0, ptr %i.ce, align 4, !tbaa !802, !noalias !4363
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !802, !noalias !4363
  store i32 %i.ch, ptr %i.ce, align 4, !tbaa !802, !noalias !4363
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !802, !noalias !4363
  %.not.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i25, !llvm.loop !3726

.thread84:                                        ; preds = %.thread
  %.not3.i = icmp eq ptr %i.bw, %i.z
  br i1 %.not3.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.thread84, %.lr.ph.i26
  %.sroa.043.0 = phi ptr [ %i.ck, %.lr.ph.i26 ], [ %i.by, %.thread84 ] ; 2 uses
  %.sroa.042.0 = phi ptr [ %i.cl, %.lr.ph.i26 ], [ %i.bv, %.thread84 ] ; 2 uses
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i26 ], [ %i.bw, %.thread84 ] ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.042.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.043.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !802, !noalias !4366
  store i32 0, ptr %i.cl, align 4, !tbaa !802, !noalias !4366
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4366
  store i32 0, ptr %i.cm, align 4, !tbaa !802, !noalias !4366
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4366
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !802, !noalias !4366
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !802, !noalias !4366
  store i32 0, ptr %i.ck, align 4, !tbaa !802, !noalias !4366
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !802, !noalias !4366
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !802, !noalias !4366
  store i32 0, ptr %i.cn, align 4, !tbaa !802, !noalias !4366
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !802, !noalias !4366
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !802, !noalias !4366
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !802, !noalias !4366
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !802, !noalias !4366
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !802, !noalias !4366
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4366
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809, !noalias !4366
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !3920

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !802, !noalias !4369
  store i32 0, ptr %i.cz, align 4, !tbaa !802, !noalias !4369
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !802, !noalias !4369
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !802, !noalias !4369
  store i32 %i.db, ptr %i.da, align 4, !tbaa !802, !noalias !4369
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !802, !noalias !4369
  store i32 0, ptr %i.dd, align 4, !tbaa !802, !noalias !4369
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !802, !noalias !4369
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !802, !noalias !4369
  store i32 %i.df, ptr %i.de, align 4, !tbaa !802, !noalias !4369
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !3726

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread84, %bb.l, %.thread83, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread83 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread84 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread83 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread84 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !3585
  %i.di = load ptr, ptr %1, align 8, !tbaa !3102  ; 6 uses
  %.neg87 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %.neg87 ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  %.not9.i = icmp eq i64 %.neg87, 0
  br i1 %.not9.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !36
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !36
  store i64 %i.dn, ptr %i.dk, align 8, !tbaa !36
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.do = load ptr, ptr %2, align 8, !tbaa !3102  ; 2 uses
  %i.dp = icmp eq ptr %i.dj, %i.do
  br i1 %i.dp, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = icmp eq ptr %i.do, %i.di
  br i1 %i.dq, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dj, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3102
  %.pre117 = load ptr, ptr %1, align 8, !tbaa !3102
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  %i.dr = phi ptr [ %i.di, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit ], [ %i.di, %bb.o ], [ %.pre117, %.sink.split.i ]
  store ptr %i.z, ptr %3, align 8, !tbaa !3585
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 2 uses
  store ptr %i.ds, ptr %1, align 8, !tbaa !3102
  %i.dt = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.dt to i64
  %i.du = add i64 %.0100, %.neg
  %i.dv = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dv to i64
  %i.dw = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dx = add i64 %.08299, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dx, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4374

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dy = load ptr, ptr %6, align 8, !tbaa !3585
  store ptr %i.dy, ptr %0, align 8, !tbaa !3585
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEES7_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %7 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.c, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802
  store i32 %i.g, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.f, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %5, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  store i32 %i.l, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.n, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !802
  store i32 %i.s, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.r, align 4, !tbaa !802
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !802
  store i32 %i.w, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.v, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !802
  store i32 %i.af, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.ae, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  %i.ap = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.ap, ptr %7, align 8, !tbaa !3493
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %7)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aq = trunc i64 %5 to i32
  %i.ar = shl i32 %i.aq, 1
  %i.as = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ar
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.at = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.au = trunc i64 %5 to i32
  %i.av = shl i32 %i.au, 1
  %i.aw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.av
  store i32 %i.aw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.at

bb.d:                                             ; preds = %bb.b
  %i.ax = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ay = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.az = ptrtoint ptr %0 to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = ptrtoint ptr %2 to i64
  %i.bd = sub i64 %i.bc, %i.ay
  %i.be = ashr exact i64 %i.bd, 3
  store ptr %i.ax, ptr %6, align 8, !tbaa !3493
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.bb, i64 noundef %i.be, ptr noundef nonnull align 8 dead_on_return %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEENS0_7move_opENS0_13adaptive_xbufIS6_S7_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  %.not37 = icmp eq ptr %1, %2
  %or.cond = or i1 %.not, %.not37
  br i1 %or.cond, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !802  ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !802    ; 2 uses
  %.not89 = icmp slt i32 %i.b, %i.c
  br i1 %.not89, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_SG_NS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %1 to i64                   ; 10 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.g, %i.d                       ; 2 uses
  %.not38 = icmp ugt i64 %i.f, %i.h
  br i1 %.not38, label %.lr.ph.i44, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = ashr exact i64 %i.f, 3
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.018.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.1.i, %bb.d ] ; 2 uses
  %.01317.i = phi ptr [ %0, %.lr.ph.i ], [ %.114.i, %bb.d ] ; 2 uses
  %i.j = lshr i64 %.018.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  %.not15.i = icmp slt i32 %i.l, %i.c             ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.neg.i = xor i64 %i.j, -1
  %i.n = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %i.m, ptr %.01317.i ; 21 uses
  %.1.i = select i1 %.not15.i, i64 %i.n, i64 %i.j ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %bb.d, !llvm.loop !4375

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.d
  %.114.i147.le = ptrtoaddr ptr %.114.i to i64    ; 4 uses
  %i.o = ptrtoint ptr %.114.i to i64
  %i.p = sub i64 %i.d, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1222 ; 5 uses
  %.not.i39 = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i39, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.not8.i.i = icmp eq ptr %1, %.114.i
  br i1 %.not8.i.i, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.e
  %i.t = load ptr, ptr %4, align 8, !tbaa !1224   ; 7 uses
  %i.u = add i64 %i.d, -8
  %i.v = sub i64 %i.u, %.114.i147.le              ; 2 uses
  %i.w = lshr i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 72
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.t, i64 8
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %.114.i147.le
  %i.aa = and i64 %i.z, -8                        ; 2 uses
  %scevgep148 = getelementptr i8, ptr %scevgep, i64 %i.aa
  %scevgep149 = getelementptr i8, ptr %.114.i, i64 8
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.aa
  %bound0 = icmp ult ptr %i.t, %scevgep150
  %bound1 = icmp ult ptr %.114.i, %scevgep148
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 4611686018427387900      ; 3 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.t, i64 %i.ab
  %i.ad = getelementptr i8, ptr %.114.i, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 3 uses
  %i.af = or disjoint i64 %i.ae, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ae
  %next.gep151 = getelementptr i8, ptr %i.t, i64 %i.af
  %next.gep152 = getelementptr i8, ptr %.114.i, i64 %i.ae ; 2 uses
  %next.gep153 = getelementptr i8, ptr %.114.i, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !4376
  %wide.vec155 = load <4 x i32>, ptr %next.gep153, align 4, !tbaa !802, !alias.scope !4376
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !802, !alias.scope !4379, !noalias !4376
  store <4 x i32> %wide.vec155, ptr %next.gep151, align 4, !tbaa !802, !alias.scope !4379, !noalias !4376
  store <4 x i32> zeroinitializer, ptr %next.gep152, align 4, !tbaa !802, !alias.scope !4376
  store <4 x i32> zeroinitializer, ptr %next.gep153, align 4, !tbaa !802, !alias.scope !4376
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !4381

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.010.i.i.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.i.preheader.i ], [ %i.ac, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.114.i, %vector.memcheck ], [ %.114.i, %.lr.ph.i.preheader.i ], [ %i.ad, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
end_hunk_6
begin_hunk_7_@_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.067101, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.07495, i64 4 ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !802
  store i32 0, ptr %i.h, align 4, !tbaa !802
  %i.k = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 %i.k, ptr %i.h, align 4, !tbaa !802
  store i32 %i.j, ptr %i.i, align 4, !tbaa !802
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.l = add i64 %.068100, %.07099                ; 2 uses
  %i.m = icmp ult i64 %i.l, 16
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %5, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.n, ptr %6, align 8, !tbaa !3493
  call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_T0_(ptr noundef %.067101, ptr noundef %.07495, ptr noundef %.07297, ptr noundef nonnull align 8 dead_on_return %6)
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp ugt i64 %.07099, %.068100
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i64 %.07099, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.067101, i64 %i.p ; 2 uses
  %.not16.i = icmp eq ptr %.07297, %.07495
  %.pre = ptrtoint ptr %.07495 to i64             ; 3 uses
  br i1 %.not16.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.r = ptrtoint ptr %.07297 to i64
  %i.s = sub i64 %i.r, %.pre
  %i.t = ashr exact i64 %i.s, 3
  %i.u = load i32, ptr %i.q, align 4, !tbaa !802
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.018.i = phi i64 [ %i.t, %.lr.ph.i ], [ %.1.i, %bb.h ] ; 2 uses
  %.01317.i = phi ptr [ %.07495, %.lr.ph.i ], [ %.114.i, %bb.h ] ; 2 uses
  %i.v = lshr i64 %.018.i, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.01317.i, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !802
  %.not15.i = icmp slt i32 %i.u, %i.x             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.neg.i = xor i64 %i.v, -1
  %i.z = add i64 %.018.i, %.neg.i
  %.114.i = select i1 %.not15.i, ptr %.01317.i, ptr %i.y ; 3 uses
  %.1.i = select i1 %.not15.i, i64 %i.v, i64 %i.z ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.h, !llvm.loop !3626

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre110 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.g, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi111 = phi i64 [ %.pre110, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.g ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.07495, %bb.g ]
  %i.aa = sub i64 %.pre-phi111, %.pre
  %i.ab = ashr exact i64 %i.aa, 3
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ac = lshr i64 %.068100, 1                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.07495, i64 %i.ac ; 2 uses
  %.not16.i77 = icmp eq ptr %.07495, %.067101
  %.pre108 = ptrtoint ptr %.067101 to i64         ; 3 uses
  br i1 %.not16.i77, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.i
  %i.ae = ptrtoint ptr %.07495 to i64
  %i.af = sub i64 %i.ae, %.pre108
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = load i32, ptr %i.ad, align 4, !tbaa !802
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i78
  %.018.i79 = phi i64 [ %i.ag, %.lr.ph.i78 ], [ %.1.i84, %bb.j ] ; 2 uses
  %.01317.i80 = phi ptr [ %.067101, %.lr.ph.i78 ], [ %.114.i83, %bb.j ] ; 2 uses
  %i.ai = lshr i64 %.018.i79, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01317.i80, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  %.not15.i81 = icmp slt i32 %i.ak, %i.ah         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.neg.i82 = xor i64 %i.ai, -1
  %i.am = add i64 %.018.i79, %.neg.i82
  %.114.i83 = select i1 %.not15.i81, ptr %i.al, ptr %.01317.i80 ; 3 uses
  %.1.i84 = select i1 %.not15.i81, i64 %i.am, i64 %i.ai ; 2 uses
  %.not.i85 = icmp eq i64 %.1.i84, 0
  br i1 %.not.i85, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !4375

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i83 to i64
  br label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.pre108, %bb.i ]
  %.013.lcssa.i86 = phi ptr [ %.114.i83, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit.loopexit ], [ %.067101, %bb.i ]
  %i.an = sub i64 %.pre-phi113, %.pre108
  %i.ao = ashr exact i64 %i.an, 3
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit
  %.066 = phi ptr [ %i.q, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %.013.lcssa.i86, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.065 = phi ptr [ %.013.lcssa.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ad, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 3 uses
  %.064 = phi i64 [ %i.p, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ao, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 5 uses
  %.0 = phi i64 [ %i.ab, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ], [ %i.ac, %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEET_SH_SH_RKT0_T1_.exit ] ; 5 uses
  %i.ap = call noundef ptr @_ZN5boost7movelib10rotate_gcdIPSt4pairINS_9container4test24movable_and_copyable_intES5_EEET_S8_S8_S8_(ptr noundef %.066, ptr noundef %.07495, ptr noundef %.065) ; 4 uses
  %i.aq = add i64 %.0, %.064                      ; 2 uses
  %i.ar = sub i64 %i.l, %i.aq
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.at = load ptr, ptr %5, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.at, ptr %7, align 8, !tbaa !3493
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %.067101, ptr noundef %.066, ptr noundef %i.ap, i64 noundef %.064, i64 noundef %.0, ptr noundef nonnull align 8 dead_on_return %7)
  %i.au = sub i64 %.07099, %.064
  %i.av = sub i64 %.068100, %.0
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aw = sub i64 %.07099, %.064
  %i.ax = sub i64 %.068100, %.0
  %i.ay = load ptr, ptr %5, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.ay, ptr %8, align 8, !tbaa !3493
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS9_9select1stIS5_EEEEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef %i.ap, ptr noundef %.065, ptr noundef %.07297, i64 noundef %i.aw, i64 noundef %i.ax, ptr noundef nonnull align 8 dead_on_return %8)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.175 = phi ptr [ %.065, %bb.l ], [ %.066, %bb.m ]
  %.173 = phi ptr [ %.07297, %bb.l ], [ %i.ap, %bb.m ]
  %.171 = phi i64 [ %i.au, %bb.l ], [ %.064, %bb.m ] ; 2 uses
  %.169 = phi i64 [ %i.av, %bb.l ], [ %.0, %bb.m ] ; 2 uses
  %.1 = phi ptr [ %i.ap, %bb.l ], [ %.067101, %bb.m ]
  %i.az = icmp ne i64 %.169, 0
  %i.ba = icmp ne i64 %.171, 0
  %or.cond = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !4475

.loopexit:                                        ; preds = %bb.n, %bb.a, %bb.b, %bb.c, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEES7_EEvT_SF_SF_T0_T1_NS0_9iter_sizeISF_E4typeE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  %i.b = icmp eq ptr %1, %2
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.c, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !802
  store i32 %i.g, ptr %i.e, align 4, !tbaa !802
  store i32 0, ptr %i.f, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.d, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.h = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.h, 1
  %i.i = icmp eq i64 %4, 2
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.h, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !802
  store i32 %i.l, ptr %i.j, align 4, !tbaa !802
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.m = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !802
  store i32 %i.p, ptr %i.n, align 4, !tbaa !802
  store i32 0, ptr %i.o, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.m, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !802
  store i32 %i.s, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.r, align 4, !tbaa !802
  %i.t = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !802
  store i32 %i.w, ptr %i.u, align 4, !tbaa !802
  store i32 0, ptr %i.v, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.t, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.aa, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.c ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !802
  store i32 %i.af, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.ae, align 4, !tbaa !802
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !802
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !802
  store i32 0, ptr %i.ag, align 4, !tbaa !802
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = ptrtoint ptr %0 to i64
  %i.an = sub i64 %i.aj, %i.am
  %i.ao = ashr exact i64 %i.an, 3
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.ao, i64 noundef %i.al, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ap = trunc i64 %4 to i32
  %i.aq = shl i32 %i.ap, 1
  %i.ar = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.aq
  store i32 %i.ar, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit29: ; preds = %.loopexit
  %i.as = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.at = trunc i64 %4 to i32
  %i.au = shl i32 %i.at, 1
  %i.av = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i28, %i.au
  store i32 %i.av, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.as

bb.d:                                             ; preds = %bb.b
  %i.aw = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ax = ptrtoint ptr %0 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 3
  %i.ba = ptrtoint ptr %2 to i64
  %i.bb = sub i64 %i.ba, %i.aw
  %i.bc = ashr exact i64 %i.bb, 3
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.az, i64 noundef %i.bc)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES7_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_NS0_9iter_sizeISF_E4typeESI_T0_SI_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
  %i.a = icmp ne i64 %4, 0
  %i.b = icmp ne i64 %3, 0
  %or.cond99 = and i1 %i.b, %i.a
  br i1 %or.cond99, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr90103 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 5 uses
  %.tr89102 = phi i64 [ %3, %.lr.ph ], [ %i.at, %tailrecurse ] ; 5 uses
  %.tr87101 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 14 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.au, %tailrecurse ] ; 12 uses
  %.not = icmp ugt i64 %.tr89102, %6
  %.not76 = icmp ugt i64 %.tr90103, %6
  %or.cond77 = and i1 %.not, %.not76
  br i1 %or.cond77, label %bb.c, label %_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit

_ZN5boost7movelib14buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_10range_xbufIS7_mNS0_7move_opEEEEEvT_SI_SI_T0_RT1_.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %7, align 8, !tbaa !4412
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.e, align 8, !tbaa !4414
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.d, ptr %i.f, align 8, !tbaa !4415
  call void @_ZN5boost7movelib17op_buffered_mergeIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEENS0_7move_opENS0_10range_xbufIS7_mSF_EEEEvT_SI_SI_T0_T1_RT2_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = add i64 %.tr90103, %.tr89102             ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %.tr87101, align 4, !tbaa !802
  %i.j = load i32, ptr %.tr100, align 4, !tbaa !802 ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %.tr100, align 4, !tbaa !802
  %i.l = load i32, ptr %.tr87101, align 4, !tbaa !802
  store i32 %i.l, ptr %.tr100, align 4, !tbaa !802
  store i32 %i.j, ptr %.tr87101, align 4, !tbaa !802
  %i.m = getelementptr inbounds nuw i8, ptr %.tr100, i64 4 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr87101, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.m, align 4, !tbaa !802
  store i32 0, ptr %i.m, align 4, !tbaa !802
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802
  store i32 %i.p, ptr %i.m, align 4, !tbaa !802
  store i32 %i.o, ptr %i.n, align 4, !tbaa !802
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.q = icmp ult i64 %i.g, 16
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib20merge_bufferless_ON2IPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEEvT_SF_SF_T0_(ptr noundef %.tr100, ptr noundef %.tr87101, ptr noundef %2)
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %.tr89102, %.tr90103
  br i1 %i.r, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.s = lshr i64 %.tr89102, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr100, i64 %i.s ; 2 uses
  %.not15.i = icmp eq ptr %2, %.tr87101
  %.pre = ptrtoint ptr %.tr87101 to i64           ; 3 uses
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.u = sub i64 %i.c, %.pre
  %i.v = ashr exact i64 %i.u, 3
  %i.w = load i32, ptr %i.t, align 4, !tbaa !802
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i
  %.017.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.1.i, %bb.j ] ; 2 uses
  %.01316.i = phi ptr [ %.tr87101, %.lr.ph.i ], [ %.114.i, %bb.j ] ; 2 uses
  %i.x = lshr i64 %.017.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.01316.i, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  %i.aa = icmp slt i32 %i.z, %i.w                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.neg.i = xor i64 %i.x, -1
  %i.ac = add i64 %.017.i, %.neg.i
  %.114.i = select i1 %i.aa, ptr %i.ab, ptr %.01316.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ac, i64 %i.x    ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit, label %bb.j, !llvm.loop !3522

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %bb.j
  %.pre112 = ptrtoint ptr %.114.i to i64
  br label %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit

_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit: ; preds = %bb.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit
  %.pre-phi113 = phi i64 [ %.pre112, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.pre, %bb.i ]
  %.013.lcssa.i = phi ptr [ %.114.i, %_ZN5boost7movelib11lower_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr87101, %bb.i ]
  %i.ad = sub i64 %.pre-phi113, %.pre
  %i.ae = ashr exact i64 %i.ad, 3
  br label %tailrecurse

bb.k:                                             ; preds = %bb.h
  %i.af = lshr i64 %.tr90103, 1                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.tr87101, i64 %i.af ; 2 uses
  %.not15.i78 = icmp eq ptr %.tr87101, %.tr100
  %.pre110 = ptrtoint ptr %.tr100 to i64          ; 3 uses
  br i1 %.not15.i78, label %_ZN5boost7movelib11upper_boundIPSt4pairINS_9container4test24movable_and_copyable_intES5_ES6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEEET_SF_SF_RKT0_T1_.exit, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k
  %i.ah = ptrtoint ptr %.tr87101 to i64
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a

bb.e:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit, %bb.c
  %i.ar = urem i64 %i.c, %5                       ; 3 uses
  %i.as = sub i64 %i.b, %i.ar
  %i.at = urem i64 %i.as, %5                      ; 2 uses
  %i.au = add i64 %i.ar, %i.at
  %i.av = sub i64 %i.b, %i.au
  %i.aw = udiv i64 %i.av, %5                      ; 2 uses
  %i.ax = udiv i64 %i.c, %5                       ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr [8 x i8], ptr %0, i64 %i.aw ; 2 uses
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEE9make_heapES7_S7_SE_(ptr noundef %0, ptr noundef %i.az)
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEE9sort_heapES7_S7_SE_(ptr noundef %0, ptr noundef %i.az)
  %i.ba = load ptr, ptr %8, align 8, !tbaa !1224
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.ar, i64 noundef %i.ax, i64 noundef %i.ay, i64 noundef %i.at, ptr noundef %i.ba)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.f:                                             ; preds = %bb.b
  %i.bb = urem i64 %i.c, %5                       ; 4 uses
  %i.bc = sub i64 %i.b, %i.bb
  %i.bd = urem i64 %i.bc, %5                      ; 3 uses
  %i.be = add i64 %i.bb, %i.bd
  %i.bf = sub i64 %i.b, %i.be
  %i.bg = udiv i64 %i.bf, %5                      ; 2 uses
  %i.bh = udiv i64 %i.c, %5                       ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr [8 x i8], ptr %0, i64 %i.bg ; 2 uses
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEE9make_heapES7_S7_SE_(ptr noundef %0, ptr noundef %i.bj)
  tail call void @_ZN5boost7movelib16heap_sort_helperIPSt4pairINS_9container4test24movable_and_copyable_intES5_ENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES6_NS8_9select1stIS5_EEEEE9sort_heapES7_S7_SE_(ptr noundef %0, ptr noundef %i.bj)
  br i1 %6, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = sub i64 0, %5
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.bk
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.bb, i64 noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bd, ptr noundef nonnull %i.bl)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_(ptr noundef %0, ptr noundef %i.d, i64 noundef %5, i64 noundef %i.bb, i64 noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bd)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.i:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !1222 ; 11 uses
  %i.bo = icmp ugt i64 %i.bn, %5
  br i1 %i.bo, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bp = trunc i64 %5 to i32
  %i.bq = trunc i64 %i.bn to i32
  %i.br = sub i32 %i.bp, %i.bq
  %i.bs = shl i32 %i.br, 1
  %i.bt = add i32 %i.bs, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 %5, ptr %i.bm, align 8, !tbaa !1222
  %.pre106 = load ptr, ptr %8, align 8, !tbaa !1224
  br label %bb.k

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit: ; preds = %bb.i
  %i.bu = icmp ult i64 %i.bn, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1224  ; 10 uses
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bn ; 2 uses
  %i.bw = load i32, ptr %0, align 4, !tbaa !802
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !802
  store i32 0, ptr %0, align 4, !tbaa !802
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !802
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !802
  store i32 0, ptr %i.bz, align 4, !tbaa !802
  %storemerge911.i57 = add i32 %i.bx, 2
  store i32 %storemerge911.i57, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge12.i58 = add nuw i64 %i.bn, 1        ; 5 uses
  %.not13.i59 = icmp eq i64 %storemerge12.i58, %5
  br i1 %.not13.i59, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68, label %.lr.ph.i60.preheader

.lr.ph.i60.preheader:                             ; preds = %bb.j
  %i.cb = add i64 %5, -2
  %i.cc = sub i64 %i.bn, %5
  %i.cd = and i64 %i.cc, 1
  %lcmp.mod111.not.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod111.not.not, label %.lr.ph.i60.prol, label %.lr.ph.i60.prol.loopexit

.lr.ph.i60.prol:                                  ; preds = %.lr.ph.i60.preheader
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge12.i58 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bn ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !802
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !802
  store i32 0, ptr %i.cf, align 4, !tbaa !802
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !802
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !802
  store i32 0, ptr %i.cj, align 4, !tbaa !802
  %storemerge9.i63.prol = add i32 %i.ch, 2
  store i32 %storemerge9.i63.prol, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i64.prol = add i64 %i.bn, 2
  br label %.lr.ph.i60.prol.loopexit

.lr.ph.i60.prol.loopexit:                         ; preds = %.lr.ph.i60.prol, %.lr.ph.i60.preheader
  %storemerge15.i61.unr = phi i64 [ %storemerge12.i58, %.lr.ph.i60.preheader ], [ %storemerge.i64.prol, %.lr.ph.i60.prol ]
  %storemerge.in1014.i62.unr = phi i64 [ %i.bn, %.lr.ph.i60.preheader ], [ %storemerge12.i58, %.lr.ph.i60.prol ]
  %i.cl = icmp eq i64 %i.cb, %i.bn
  br i1 %i.cl, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60
  %storemerge15.i61 = phi i64 [ %storemerge.i64.1, %.lr.ph.i60 ], [ %storemerge15.i61.unr, %.lr.ph.i60.prol.loopexit ] ; 4 uses
  %storemerge.in1014.i62 = phi i64 [ %storemerge.i64, %.lr.ph.i60 ], [ %storemerge.in1014.i62.unr, %.lr.ph.i60.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i61 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in1014.i62 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !802
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !802
  store i32 0, ptr %i.cn, align 4, !tbaa !802
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !802
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !802
  store i32 0, ptr %i.cr, align 4, !tbaa !802
  %storemerge9.i63 = add i32 %i.cp, 2
  store i32 %storemerge9.i63, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i64 = add i64 %storemerge15.i61, 1  ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.i64 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i61 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !802
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !802
  store i32 0, ptr %i.cu, align 4, !tbaa !802
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !802
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !802
  store i32 0, ptr %i.cy, align 4, !tbaa !802
  %storemerge9.i63.1 = add i32 %i.cw, 2
  store i32 %storemerge9.i63.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i64.1 = add i64 %storemerge15.i61, 2 ; 2 uses
  %.not.i65.1 = icmp eq i64 %storemerge.i64.1, %5
  br i1 %.not.i65.1, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68, label %.lr.ph.i60

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68: ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60, %bb.j
  %storemerge.in.lcssa.i67 = phi i64 [ %i.bn, %bb.j ], [ %storemerge12.i58, %.lr.ph.i60.prol.loopexit ], [ %storemerge.i64, %.lr.ph.i60 ]
  store i64 %5, ptr %i.bm, align 8, !tbaa !1222
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in.lcssa.i67 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !802
  store i32 %i.db, ptr %0, align 4, !tbaa !802
  store i32 0, ptr %i.da, align 4, !tbaa !802
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !802
  store i32 %i.dd, ptr %i.bz, align 4, !tbaa !802
  store i32 0, ptr %i.dc, align 4, !tbaa !802
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %.pre107 = phi ptr [ %.pre106, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit ] ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.pre107, i64 %5
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = add i64 %i.df, 7
  %i.dh = and i64 %i.dg, -8
  %i.di = inttoptr i64 %i.dh to ptr               ; 4 uses
  %i.dj = urem i64 %i.c, %5                       ; 3 uses
  %i.dk = sub i64 %i.b, %i.dj
  %i.dl = urem i64 %i.dk, %5                      ; 2 uses
  %i.dm = add i64 %i.dj, %i.dl
  %i.dn = sub i64 %i.b, %i.dm
  %i.do = udiv i64 %i.dn, %5                      ; 4 uses
  %i.dp = udiv i64 %i.c, %5                       ; 2 uses
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = shl i64 %i.do, 3
  %i.ds = ashr exact i64 %i.dr, 3                 ; 3 uses
  %.mask.i = and i64 %i.do, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %min.iters.check = icmp ult i64 %i.ds, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.dt = and i64 %i.do, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ds, %i.dt           ; 3 uses
  %i.du = shl i64 %n.vec, 3
  %i.dv = getelementptr i8, ptr %i.di, i64 %i.du
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.dw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.di, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.dx, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !4534

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dt, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader109

.lr.ph.i.i.preheader109:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.di, %.lr.ph.i.i.preheader ], [ %i.dv, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader109, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.ea, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader109 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader109 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.dz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ea = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.ea, %i.ds
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i, !llvm.loop !4535

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.di, ptr noundef %0, i64 noundef %5, i64 noundef %i.dj, i64 noundef %i.dp, i64 noundef %i.dq, i64 noundef %i.dl, ptr noundef %.pre107)
  %i.eb = load i64, ptr %i.bm, align 8, !tbaa !1222 ; 2 uses
  %.not.i69 = icmp eq i64 %i.eb, 0
  br i1 %.not.i69, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = shl i32 %i.ec, 1
  %i.ee = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ed
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bm, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #4 comdat {
bb.a:
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %i.d = add i64 %5, %4                           ; 6 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %7, ptr %i.a, align 8, !tbaa !973
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !973
  %i.f = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %i.f, ptr %i.c, align 8, !tbaa !973
  %i.g = mul i64 %i.d, %2
  %i.h = getelementptr [8 x i8], ptr %i.f, i64 %i.g ; 13 uses
  %.not216 = icmp eq i64 %i.d, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d)
  %.idx208 = shl i64 %2, 3                        ; 6 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %.not2830.i = icmp eq i64 %2, 0
  %scevgep = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.n = shl i64 %3, 3                            ; 2 uses
  %i.o = shl i64 %2, 3
  %i.p = or disjoint i64 %i.n, 4                  ; 2 uses
  %i.q = mul i64 %2, %i.d
  %i.r = add i64 %i.q, %3
  %i.s = shl i64 %i.r, 3
  %i.t = getelementptr i8, ptr %1, i64 %i.s
  %scevgep301 = getelementptr i8, ptr %i.t, i64 -4 ; 4 uses
  %scevgep302 = getelementptr i8, ptr %1, i64 %i.p ; 4 uses
  %scevgep386 = getelementptr i8, ptr %7, i64 8
  %i.u = shl i64 %3, 3                            ; 3 uses
  %i.v = add i64 %i.u, %i.i
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8                         ; 2 uses
  %i.y = shl i64 %2, 3
  %i.z = shl i64 %2, 3
  %i.aa = add i64 %i.u, %i.i
  %i.ab = add i64 %i.aa, %.idx208
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = shl i64 %2, 3
  %i.ae = shl i64 %2, 3
  %i.af = getelementptr i8, ptr %1, i64 %i.u
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = getelementptr i8, ptr %1, i64 %i.n
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = getelementptr i8, ptr %1, i64 %i.p
  %i.ak = add i64 %.idx208, -8                    ; 2 uses
  %i.al = lshr exact i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 184
  %bound0306 = icmp ult ptr %7, %scevgep301
  %bound1307 = icmp ult ptr %i.f, %scevgep
  %found.conflict308 = and i1 %bound0306, %bound1307
  %stride.check = icmp slt i64 %.idx208, 0
  %i.an = or i1 %found.conflict308, %stride.check
  %bound0310 = icmp ult ptr %7, %i.h
  %bound1311 = icmp ult ptr %scevgep302, %scevgep
  %found.conflict312 = and i1 %bound0310, %bound1311
  %invariant.op = or i1 %i.an, %found.conflict312
  %bound0339 = icmp ult ptr %i.f, %i.h
  %bound1340 = icmp ult ptr %scevgep302, %scevgep301
  %found.conflict341 = and i1 %bound0339, %bound1340
  %n.vec = and i64 %i.am, 4611686018427387902     ; 3 uses
  %i.ao = shl i64 %n.vec, 3                       ; 3 uses
  %i.ap = getelementptr i8, ptr %7, i64 %i.ao     ; 2 uses
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 6 uses
  %i.aq = phi ptr [ %7, %.lr.ph ], [ %i.hx, %bb.x ] ; 5 uses
  %i.ar = phi ptr [ %7, %.lr.ph ], [ %i.hy, %bb.x ] ; 11 uses
  %i.as = phi ptr [ %i.f, %.lr.ph ], [ %i.bz, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ig, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.ie, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.ic, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.f, %.lr.ph ], [ %i.ib, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.e, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.d, %.lr.ph ], [ %i.ih, %bb.x ] ; 4 uses
  %i.at = mul i64 %i.ae, %indvar
  %i.au = add i64 %i.ac, %i.at
  %i.av = mul i64 %i.ad, %indvar
  %i.aw = add i64 %i.ac, %i.av
  %i.ax = mul i64 %i.z, %indvar
  %i.ay = add i64 %i.x, %i.ax
  %i.az = mul i64 %i.y, %indvar                   ; 2 uses
  %i.ba = add i64 %i.x, %i.az
  %scevgep388 = getelementptr i8, ptr %i.ag, i64 %i.az
  %i.bb = ptrtoaddr ptr %i.aq to i64              ; 2 uses
  %i.bc = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.bd = mul i64 %i.o, %indvar                   ; 2 uses
  %scevgep297 = getelementptr i8, ptr %i.ai, i64 %i.bd
  %scevgep299 = getelementptr i8, ptr %i.aj, i64 %i.bd
  %i.be = icmp ult i64 %.0104226, %.0
  br i1 %i.be, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bt, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bs, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.bf = mul i64 %.02226.i, %2
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bf
  %i.bh = mul i64 %.027.i, %2
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bh
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !802 ; 2 uses
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !802 ; 2 uses
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.bo = icmp slt i32 %i.bm, %i.bl
  br i1 %i.bo, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bp = load i32, ptr %i.bk, align 4, !tbaa !802
  %i.bq = load i32, ptr %i.bj, align 4, !tbaa !802
  %i.br = icmp slt i32 %i.bp, %i.bq
  %cond.fr.i = freeze i1 %i.br
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bs = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bt = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bt, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !3615

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bs, %.thread24.i ] ; 8 uses
  %i.bu = add i64 %.022.lcssa.i, 2
  %i.bv = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bu) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bv, i64 %.0195217)
  %i.bw = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bw, 3                        ; 2 uses
  %i.bx = getelementptr i8, ptr %i.as, i64 %.idx  ; 12 uses
  %i.by = getelementptr [8 x i8], ptr %i.bx, i64 %2 ; 5 uses
  %i.bz = getelementptr i8, ptr %i.as, i64 %.idx208 ; 8 uses
  %i.ca = icmp eq ptr %i.ar, %i.aq
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i32, ptr %i.h, align 4, !tbaa !802
  %i.cc = load i32, ptr %i.bx, align 4, !tbaa !802
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_bbT0_RT1_:bb.a
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %.not.i.i.i43 = icmp ugt i64 %5, %i.bl
  br i1 %.not.i.i.i43, label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = load ptr, ptr %i.d, align 8, !tbaa !1467, !noalias !5085
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1458, !noalias !5085
  br label %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit45

_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit45: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i44 = phi ptr [ %i.d, %bb.h ], [ %i.br, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %i.d, ptr %9, align 8, !tbaa !1522
  store ptr %.sroa.0.0.i44, ptr %10, align 8, !tbaa !1522
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE4sortES9_S9_SG_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.j

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit45
  store ptr %i.d, ptr %15, align 8, !tbaa !1522
  store ptr %.sroa.088.0, ptr %16, align 8, !tbaa !1522
  call void @llvm.experimental.noalias.scope.decl(metadata !5088)
  %i.bs = sub nsw i64 0, %5
  %i.bt = load ptr, ptr %.sroa.088.0, align 8, !tbaa !1467, !noalias !5088
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1458, !noalias !5088
  store ptr %i.bv, ptr %17, align 8, !tbaa !1522, !alias.scope !5088
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %5, i64 noundef %i.bh, i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %i.bj, ptr noundef nonnull align 8 dead_on_return %17)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.j:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit45
  store ptr %i.d, ptr %18, align 8, !tbaa !1522
  store ptr %.sroa.088.0, ptr %19, align 8, !tbaa !1522
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef nonnull align 8 dead_on_return %18, ptr noundef nonnull align 8 dead_on_return %19, i64 noundef %5, i64 noundef %i.bh, i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %i.bj)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.k:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1222 ; 11 uses
  %i.by = icmp ugt i64 %i.bx, %5
  br i1 %i.by, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.k
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bz = trunc i64 %5 to i32
  %i.ca = trunc i64 %i.bx to i32
  %i.cb = sub i32 %i.bz, %i.ca
  %i.cc = shl i32 %i.cb, 1
  %i.cd = add i32 %i.cc, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.cd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 %5, ptr %i.bw, align 8, !tbaa !1222
  %.pre108 = load ptr, ptr %8, align 8, !tbaa !1224
  br label %bb.m

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit: ; preds = %bb.k
  %i.ce = icmp ult i64 %i.bx, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1224  ; 10 uses
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %i.cf = load ptr, ptr %0, align 8, !tbaa !1522  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bx ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !802
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !802
  store i32 0, ptr %i.cg, align 4, !tbaa !802
  %i.cj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !802
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !802
  store i32 0, ptr %i.cl, align 4, !tbaa !802
  %storemerge911.i47 = add i32 %i.cj, 2
  store i32 %storemerge911.i47, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge12.i48 = add nuw i64 %i.bx, 1        ; 5 uses
  %.not13.i49 = icmp eq i64 %storemerge12.i48, %5
  br i1 %.not13.i49, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %bb.l
  %i.cn = add i64 %5, -2
  %i.co = sub i64 %i.bx, %5
  %i.cp = and i64 %i.co, 1
  %lcmp.mod113.not.not = icmp eq i64 %i.cp, 0
  br i1 %lcmp.mod113.not.not, label %.lr.ph.i50.prol, label %.lr.ph.i50.prol.loopexit

.lr.ph.i50.prol:                                  ; preds = %.lr.ph.i50.preheader
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge12.i48 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bx ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !802
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !802
  store i32 0, ptr %i.cr, align 4, !tbaa !802
  %i.ct = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !802
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !802
  store i32 0, ptr %i.cv, align 4, !tbaa !802
  %storemerge9.i53.prol = add i32 %i.ct, 2
  store i32 %storemerge9.i53.prol, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i54.prol = add i64 %i.bx, 2
  br label %.lr.ph.i50.prol.loopexit

.lr.ph.i50.prol.loopexit:                         ; preds = %.lr.ph.i50.prol, %.lr.ph.i50.preheader
  %storemerge15.i51.unr = phi i64 [ %storemerge12.i48, %.lr.ph.i50.preheader ], [ %storemerge.i54.prol, %.lr.ph.i50.prol ]
  %storemerge.in1014.i52.unr = phi i64 [ %i.bx, %.lr.ph.i50.preheader ], [ %storemerge12.i48, %.lr.ph.i50.prol ]
  %i.cx = icmp eq i64 %i.cn, %i.bx
  br i1 %i.cx, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50
  %storemerge15.i51 = phi i64 [ %storemerge.i54.1, %.lr.ph.i50 ], [ %storemerge15.i51.unr, %.lr.ph.i50.prol.loopexit ] ; 4 uses
  %storemerge.in1014.i52 = phi i64 [ %storemerge.i54, %.lr.ph.i50 ], [ %storemerge.in1014.i52.unr, %.lr.ph.i50.prol.loopexit ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i51 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in1014.i52 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !802
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !802
  store i32 0, ptr %i.cz, align 4, !tbaa !802
  %i.db = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !802
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !802
  store i32 0, ptr %i.dd, align 4, !tbaa !802
  %storemerge9.i53 = add i32 %i.db, 2
  store i32 %storemerge9.i53, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i54 = add i64 %storemerge15.i51, 1  ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.i54 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i51 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !802
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !802
  store i32 0, ptr %i.dg, align 4, !tbaa !802
  %i.di = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !802
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !802
  store i32 0, ptr %i.dk, align 4, !tbaa !802
  %storemerge9.i53.1 = add i32 %i.di, 2
  store i32 %storemerge9.i53.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i54.1 = add i64 %storemerge15.i51, 2 ; 2 uses
  %.not.i55.1 = icmp eq i64 %storemerge.i54.1, %5
  br i1 %.not.i55.1, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58, label %.lr.ph.i50

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58: ; preds = %.lr.ph.i50.prol.loopexit, %.lr.ph.i50, %bb.l
  %storemerge.in.lcssa.i57 = phi i64 [ %i.bx, %bb.l ], [ %storemerge12.i48, %.lr.ph.i50.prol.loopexit ], [ %storemerge.i54, %.lr.ph.i50 ]
  store i64 %5, ptr %i.bw, align 8, !tbaa !1222
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in.lcssa.i57 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !802
  store i32 %i.dn, ptr %i.cg, align 4, !tbaa !802
  store i32 0, ptr %i.dm, align 4, !tbaa !802
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !802
  store i32 %i.dp, ptr %i.cl, align 4, !tbaa !802
  store i32 0, ptr %i.do, align 4, !tbaa !802
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %.pre109 = phi ptr [ %.pre108, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit58 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.pre109, i64 %5
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = add i64 %i.dr, 7
  %i.dt = and i64 %i.ds, -8
  %i.du = inttoptr i64 %i.dt to ptr               ; 4 uses
  %i.dv = urem i64 %i.c, %5                       ; 3 uses
  %i.dw = sub i64 %i.b, %i.dv
  %i.dx = urem i64 %i.dw, %5                      ; 2 uses
  %i.dy = add i64 %i.dv, %i.dx
  %i.dz = sub i64 %i.b, %i.dy
  %i.ea = udiv i64 %i.dz, %5                      ; 4 uses
  %i.eb = udiv i64 %i.c, %5                       ; 2 uses
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = shl i64 %i.ea, 3
  %i.ee = ashr exact i64 %i.ed, 3                 ; 3 uses
  %.mask.i = and i64 %i.ea, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %min.iters.check = icmp ult i64 %i.ee, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader111, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.ef = and i64 %i.ea, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.ee, %i.ef           ; 3 uses
  %i.eg = shl i64 %n.vec, 3
  %i.eh = getelementptr i8, ptr %i.du, i64 %i.eg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ei = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.du, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.ej, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !5091

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader111

.lr.ph.i.i.preheader111:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.du, %.lr.ph.i.i.preheader ], [ %i.eh, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader111, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.em, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader111 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.em = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i59 = icmp eq i64 %i.em, %i.ee
  br i1 %.not.i.i59, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i, !llvm.loop !5092

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.m
  %i.en = load ptr, ptr %0, align 8, !tbaa !1522
  store ptr %i.en, ptr %20, align 8, !tbaa !1522
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7move_opESB_EEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_T4_(ptr noundef %i.du, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.dv, i64 noundef %i.eb, i64 noundef %i.ec, i64 noundef %i.dx, ptr noundef %.pre109)
  %i.eo = load i64, ptr %i.bw, align 8, !tbaa !1222 ; 2 uses
  %.not.i60 = icmp eq i64 %i.eo, 0
  br i1 %.not.i60, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = shl i32 %i.ep, 1
  %i.er = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.eq
  store i32 %i.er, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bw, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit, %bb.j, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #3 comdat {
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
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.c, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %bb.b, %.preheader.i.i
  %or.cond3 = and i1 %i.a, %7
  %i.h = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.i = sub i64 %3, %i.h                         ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1522   ; 3 uses
  %.not.i.i = icmp eq i64 %3, %i.h                ; 2 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1467, !noalias !5093
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1458, !noalias !5093
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, %bb.c
  %.sroa.026.0 = phi ptr [ %i.j, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  store ptr %i.j, ptr %15, align 8, !tbaa !1522
  store ptr %.sroa.026.0, ptr %16, align 8, !tbaa !1522
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE4sortES9_S9_SG_(ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  %i.n = load ptr, ptr %0, align 8, !tbaa !1522   ; 5 uses
  %.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !1467 ; 4 uses
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.o = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1458, !noalias !5096
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, %bb.d
  %.sroa.024.0 = phi ptr [ %i.n, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %i.p, %bb.d ] ; 3 uses
  %.not.i.i20 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i20, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit21, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19
  %i.q = getelementptr inbounds [8 x i8], ptr %.pre.pre, i64 %i.b
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1458, !noalias !5099 ; 2 uses
  %.pre28 = load ptr, ptr %i.r, align 8, !tbaa !1467
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit21

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit21: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19, %bb.e
  %i.s = phi ptr [ %.pre.pre, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19 ], [ %.pre28, %bb.e ]
  %.sroa.0.0 = phi ptr [ %i.n, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit19 ], [ %i.r, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.t = load ptr, ptr %.sroa.024.0, align 8, !tbaa !1467
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = ptrtoint ptr %.pre.pre to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.y, %i.u
  %i.aa = ashr exact i64 %i.z, 3
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !1225 ; 2 uses
  %.not.i22 = icmp ult i64 %i.ac, %.sroa.speculated.i
  br i1 %.not.i22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %i.n, ptr %9, align 8, !tbaa !1522
  store ptr %.sroa.024.0, ptr %10, align 8, !tbaa !1522
  store ptr %.sroa.0.0, ptr %11, align 8, !tbaa !1522
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !1222 ; 2 uses
  %.not.i.i23 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i23, label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.f
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ae = trunc i64 %i.ad to i32
  %i.af = shl i32 %i.ae, 1
  %i.ag = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.af
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.c, align 8, !tbaa !1222
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_.exit

bb.g:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit21
  store ptr %i.n, ptr %12, align 8, !tbaa !1522
  store ptr %.sroa.024.0, ptr %13, align 8, !tbaa !1522
  store ptr %.sroa.0.0, ptr %14, align 8, !tbaa !1522
  %i.ah = load ptr, ptr %8, align 8, !tbaa !1224
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef %i.ah, i64 noundef %i.ac)
  br label %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_.exit

_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_.exit: ; preds = %bb.f, %.preheader.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %.sroa.035 = alloca ptr, align 8                ; 2 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %.not39 = icmp eq ptr %i.a, %i.b
  br i1 %.not39, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1522   ; 2 uses
  %.not40 = icmp eq ptr %i.b, %i.c
  br i1 %.not40, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1467 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1458
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.d, align 8, !tbaa !802  ; 2 uses
  %i.j = load i32, ptr %i.h, align 4, !tbaa !802  ; 2 uses
  %i.k = icmp slt i32 %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZN5boost7movelib26op_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEEPSA_NS2_22stable_vector_iteratorISE_Lb0EEENS0_7move_opEEEvT0_SI_T1_SJ_SJ_T_T2_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 2 uses
  %i.m = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1467 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.m
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.p, %i.t
  br i1 %.not, label %bb.m, label %bb.e
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS3_ISF_EESH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSJ_9select1stISD_EEEEEENS0_7move_opEEET3_T_ST_T0_T1_RT2_SW_SS_NS0_9iter_sizeISV_E4typeES10_S10_S10_T4_bT5_:bb.a
  %i.de = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !6126
  br label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %.sroa.050.0 = phi ptr [ %i.dl, %.lr.ph.i32 ], [ %i.de, %.lr.ph.i32.preheader ]
  %.sroa.049.0 = phi ptr [ %i.do, %.lr.ph.i32 ], [ %i.cl, %.lr.ph.i32.preheader ]
  %i.df = phi ptr [ %i.di, %.lr.ph.i32 ], [ %i.cm, %.lr.ph.i32.preheader ]
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !1467, !noalias !6129
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1458, !noalias !6129 ; 4 uses
  %i.dj = load ptr, ptr %.sroa.050.0, align 8, !tbaa !1467, !noalias !6134
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1458, !noalias !6134 ; 3 uses
  %i.dm = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1467, !noalias !6137
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !1458, !noalias !6137 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !802, !noalias !6140
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !802, !noalias !6140
  store i32 0, ptr %i.dp, align 4, !tbaa !802, !noalias !6140
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 12 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !802, !noalias !6140
  store i32 %i.du, ptr %i.dt, align 4, !tbaa !802, !noalias !6140
  store i32 0, ptr %i.ds, align 4, !tbaa !802, !noalias !6140
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !802, !noalias !6140
  store i32 %i.dw, ptr %i.dp, align 4, !tbaa !802, !noalias !6140
  store i32 0, ptr %i.dv, align 4, !tbaa !802, !noalias !6140
  %i.dx = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !802, !noalias !6140
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !802, !noalias !6140
  store i32 0, ptr %i.dx, align 4, !tbaa !802, !noalias !6140
  %.not.i33 = icmp eq ptr %i.di, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i32, !llvm.loop !5562

bb.p:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.ci, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.eg, %.lr.ph.i.i ], [ %storemerge.i, %bb.p ]
  %i.dz = phi ptr [ %i.ec, %.lr.ph.i.i ], [ %i.ci, %bb.p ]
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1467, !noalias !6141
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1458, !noalias !6141 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %i.ee = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !6141
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !1458, !noalias !6141 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.ed, align 4, !tbaa !802, !noalias !6141
  store i32 %i.ei, ptr %i.eh, align 4, !tbaa !802, !noalias !6141
  store i32 0, ptr %i.ed, align 4, !tbaa !802, !noalias !6141
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !802, !noalias !6141
  store i32 %i.el, ptr %i.ek, align 4, !tbaa !802, !noalias !6141
  store i32 0, ptr %i.ej, align 4, !tbaa !802, !noalias !6141
  %.not.i.i35 = icmp eq ptr %i.ec, %i.ah
  br i1 %.not.i.i35, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !5568

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.p, %.thread91, %.thread90, %.loopexit
  %storemerge = phi ptr [ %i.ah, %.loopexit ], [ %i.cw, %.lr.ph.i31 ], [ %i.cm, %.thread90 ], [ %i.cl, %.thread91 ], [ %storemerge.i, %bb.p ], [ %i.eg, %.lr.ph.i.i ], [ %i.do, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1522
  %i.em = load ptr, ptr %1, align 8, !tbaa !3102  ; 6 uses
  %.neg93 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %.neg93 ; 3 uses
  %i.eo = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !6146
  %.not.i36 = icmp eq ptr %i.ah, %i.eo
  br i1 %.not.i36, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg93, 0
  br i1 %.not9.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -8 ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.em, i64 -8 ; 2 uses
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !36
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !36
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !36
  store i64 %i.er, ptr %i.eq, align 8, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.et = load ptr, ptr %2, align 8, !tbaa !3102  ; 2 uses
  %i.eu = icmp eq ptr %i.en, %i.et
  br i1 %i.eu, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = icmp eq ptr %i.et, %i.em
  br i1 %i.ev, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.s, %bb.r
  %.sink.i = phi ptr [ %i.em, %bb.r ], [ %i.en, %bb.s ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3102
  %.pre119 = load ptr, ptr %1, align 8, !tbaa !3102
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.s, %.sink.split.i
  %i.ew = phi ptr [ %i.em, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.em, %bb.s ], [ %.pre119, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1522
  %i.ex = getelementptr inbounds i8, ptr %i.ew, i64 -8 ; 2 uses
  store ptr %i.ex, ptr %1, align 8, !tbaa !3102
  %i.ey = icmp ne i64 %.0106, 0
  %.neg = sext i1 %i.ey to i64
  %i.ez = add i64 %.0106, %.neg
  %i.fa = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.fa to i64
  %i.fb = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.fc = add i64 %.089105, -1                    ; 2 uses
  %.not = icmp eq i64 %i.fc, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !6149

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6150)
  %i.fd = load ptr, ptr %6, align 8, !tbaa !1522, !noalias !6150
  store ptr %i.fd, ptr %0, align 8, !tbaa !1522, !alias.scope !6150
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1522   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !802
  store i32 %i.q, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 8, !tbaa !802
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.u, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %4, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %4, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !802
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !802
  store i32 0, ptr %i.af, align 4, !tbaa !802
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !802
  store i32 0, ptr %i.aj, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod22 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod22)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !802
  store i32 %i.an, ptr %i.al, align 4, !tbaa !802
  store i32 0, ptr %i.am, align 4, !tbaa !802
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !802
  store i32 %i.at, ptr %i.p, align 8, !tbaa !802
  store i32 0, ptr %i.as, align 4, !tbaa !802
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.av, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.au, align 4, !tbaa !802
  store ptr %i.a, ptr %8, align 8, !tbaa !1522
  store ptr %i.b, ptr %9, align 8, !tbaa !1522
  store ptr %i.d, ptr %10, align 8, !tbaa !1522
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.aw = trunc i64 %4 to i32
  %i.ax = shl i32 %i.aw, 1
  %i.ay = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ax
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.az = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ba = trunc i64 %4 to i32
  %i.bb = shl i32 %i.ba, 1
  %i.bc = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bb
  store i32 %i.bc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.az

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1522
  store ptr %i.b, ptr %6, align 8, !tbaa !1522
  store ptr %i.d, ptr %7, align 8, !tbaa !1522
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.bf = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.bf
  %i.bm = ashr exact i64 %i.bl, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bi, i64 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
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
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !4412
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !4414
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !4415
  %i.f = load ptr, ptr %0, align 8, !tbaa !1522
  %i.g = load ptr, ptr %1, align 8, !tbaa !1522
  %i.h = load ptr, ptr %2, align 8, !tbaa !1522
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.f, ptr %7, align 8, !tbaa !1522
  store ptr %i.g, ptr %8, align 8, !tbaa !1522
  store ptr %i.h, ptr %9, align 8, !tbaa !1522
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
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
  %i.k = load ptr, ptr %1, align 8, !tbaa !1522   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !1522   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.l, align 4, !tbaa !802
  %i.p = load i32, ptr %i.n, align 4, !tbaa !802  ; 2 uses
  %i.q = icmp slt i32 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.n, align 4, !tbaa !802
  %i.r = load i32, ptr %i.l, align 4, !tbaa !802
  store i32 %i.r, ptr %i.n, align 4, !tbaa !802
  store i32 %i.p, ptr %i.l, align 4, !tbaa !802
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.s, align 4, !tbaa !802
  %i.v = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.v, ptr %i.s, align 4, !tbaa !802
  store i32 %i.u, ptr %i.t, align 4, !tbaa !802
  br label %bb.u

bb.g:                                             ; preds = %bb.d
  %i.w = icmp ult i64 %i.i, 16
  %i.x = load ptr, ptr %0, align 8, !tbaa !1522   ; 5 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %11, align 8, !tbaa !1522
  %i.y = load ptr, ptr %1, align 8, !tbaa !1522
  store ptr %i.y, ptr %12, align 8, !tbaa !1522
  %i.z = load ptr, ptr %2, align 8, !tbaa !1522
  store ptr %i.z, ptr %13, align 8, !tbaa !1522
  call void @_ZN5boost7movelib20merge_bufferless_ON2INS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13)
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %1, align 8, !tbaa !1522  ; 6 uses
  %i.ab = icmp ugt i64 %3, %4
  br i1 %i.ab, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit, label %bb.n

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit: ; preds = %bb.i
  %i.ac = lshr i64 %3, 1                          ; 2 uses
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !1467
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1458 ; 2 uses
  %i.ag = load ptr, ptr %2, align 8, !tbaa !1522
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1467, !noalias !6153 ; 3 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !1467, !noalias !6153 ; 3 uses
  %.not9.i = icmp eq ptr %i.ah, %i.ai
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib37uninitialized_merge_with_right_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEESF_EEvT0_SH_T1_SI_SI_T_:bb.a
  %i.d = icmp ne ptr %2, %3
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %i.f = phi ptr [ %i.au, %bb.e ], [ %i.b, %bb.a ] ; 2 uses
  %.promoted = phi ptr [ %i.av, %bb.e ], [ %i.a, %bb.a ] ; 6 uses
  %.01449 = phi ptr [ %.1, %bb.e ], [ %3, %bb.a ] ; 6 uses
  %.048 = phi ptr [ %i.aw, %bb.e ], [ %2, %bb.a ] ; 6 uses
  %i.g = icmp eq ptr %.01449, %4
  br i1 %i.g, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.lr.ph
  %.not52 = icmp eq ptr %.048, %3
  br i1 %.not52, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %.preheader, %.lr.ph54
  %i.h = phi ptr [ %i.s, %.lr.ph54 ], [ %.promoted, %.preheader ] ; 3 uses
  %.13753 = phi ptr [ %i.p, %.lr.ph54 ], [ %.048, %.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !802
  store i32 %i.j, ptr %.13753, align 4, !tbaa !802
  store i32 0, ptr %i.i, align 4, !tbaa !802
  %i.k = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.l = getelementptr inbounds nuw i8, ptr %.13753, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !802
  store i32 %i.n, ptr %i.l, align 4, !tbaa !802
  store i32 0, ptr %i.m, align 4, !tbaa !802
  %i.o = add i32 %i.k, 2
  store i32 %i.o, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.p = getelementptr inbounds nuw i8, ptr %.13753, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !1467
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1458 ; 3 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !1522
  %.not = icmp eq ptr %i.p, %3
  br i1 %.not, label %._crit_edge55.loopexit, label %.lr.ph54, !llvm.loop !6616

._crit_edge55.loopexit:                           ; preds = %.lr.ph54
  %.pre63 = load ptr, ptr %1, align 8, !tbaa !1522
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %._crit_edge55.loopexit, %.preheader
  %i.t = phi ptr [ %.pre63, %._crit_edge55.loopexit ], [ %i.f, %.preheader ] ; 2 uses
  %i.u = phi ptr [ %i.s, %._crit_edge55.loopexit ], [ %.promoted, %.preheader ] ; 2 uses
  %.not3.i = icmp eq ptr %i.u, %i.t
  br i1 %.not3.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge55, %.lr.ph.i
  %i.v = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.u, %._crit_edge55 ] ; 3 uses
  %.04.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %3, %._crit_edge55 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !802
  store i32 %i.x, ptr %.04.i, align 4, !tbaa !802
  store i32 0, ptr %i.w, align 4, !tbaa !802
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !1467
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1458 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.04.i, i64 8
  %.not.i = icmp eq ptr %i.ad, %i.t
  br i1 %.not.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i, !llvm.loop !5125

bb.b:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted, i64 8 ; 2 uses
  %i.ag = load i32, ptr %.01449, align 4, !tbaa !802 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !802 ; 2 uses
  %i.ai = icmp slt i32 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.048, i64 4 ; 2 uses
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.ag, ptr %.048, align 4, !tbaa !802
  store i32 0, ptr %.01449, align 4, !tbaa !802
  %i.ak = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.al = getelementptr inbounds nuw i8, ptr %.01449, i64 4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !802
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !802
  store i32 0, ptr %i.al, align 4, !tbaa !802
  %i.an = getelementptr inbounds nuw i8, ptr %.01449, i64 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i32 %i.ah, ptr %.048, align 4, !tbaa !802
  store i32 0, ptr %i.af, align 4, !tbaa !802
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !802
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !802
  store i32 0, ptr %i.ap, align 4, !tbaa !802
  %i.ar = load ptr, ptr %.promoted, align 8, !tbaa !1467
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1458 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !1522
  %.pre = load ptr, ptr %1, align 8, !tbaa !1522
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.au = phi ptr [ %i.f, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.av = phi ptr [ %.promoted, %bb.c ], [ %i.at, %bb.d ] ; 3 uses
  %.sink.in = phi i32 [ %i.ak, %bb.c ], [ %i.ao, %bb.d ]
  %.1 = phi ptr [ %i.an, %bb.c ], [ %.01449, %bb.d ] ; 2 uses
  %.sink = add i32 %.sink.in, 2
  store i32 %.sink, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.aw = getelementptr inbounds nuw i8, ptr %.048, i64 8 ; 2 uses
  %i.ax = icmp ne ptr %i.av, %i.au
  %i.ay = icmp ne ptr %i.aw, %3
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %.lr.ph, label %._crit_edge, !llvm.loop !6617

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.014.lcssa = phi ptr [ %3, %bb.a ], [ %.1, %bb.e ]
  %.lcssa44 = phi ptr [ %i.a, %bb.a ], [ %i.av, %bb.e ] ; 2 uses
  %.lcssa42 = phi ptr [ %i.b, %bb.a ], [ %i.au, %bb.e ] ; 3 uses
  %.not17.i.i = icmp eq ptr %.lcssa44, %.lcssa42
  br i1 %.not17.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %bb.i
  %i.ba = phi ptr [ %i.bz, %bb.i ], [ %.lcssa44, %._crit_edge ] ; 5 uses
  %.019.i.i = phi ptr [ %i.ca, %bb.i ], [ %3, %._crit_edge ] ; 5 uses
  %.0918.i.i = phi ptr [ %.1.i.i, %bb.i ], [ %.014.lcssa, %._crit_edge ] ; 6 uses
  %i.bb = icmp eq ptr %.0918.i.i, %4
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %bb.f

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %i.bc = phi ptr [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.ba, %.lr.ph.i.i ] ; 3 uses
  %.04.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %.019.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !802
  store i32 %i.be, ptr %.04.i.i.i.i, align 4, !tbaa !802
  store i32 0, ptr %i.bd, align 4, !tbaa !802
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !802
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bf, align 4, !tbaa !802
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !1467
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1458 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bk, %.lcssa42
  br i1 %.not.i.i.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i.i.i, !llvm.loop !5125

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bn = load i32, ptr %.0918.i.i, align 4, !tbaa !802 ; 2 uses
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !802 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 4 ; 2 uses
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.bn, ptr %.019.i.i, align 4, !tbaa !802
  store i32 0, ptr %.0918.i.i, align 4, !tbaa !802
  %i.br = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !802
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !802
  store i32 0, ptr %i.br, align 4, !tbaa !802
  %i.bt = getelementptr inbounds nuw i8, ptr %.0918.i.i, i64 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store i32 %i.bo, ptr %.019.i.i, align 4, !tbaa !802
  store i32 0, ptr %i.bm, align 4, !tbaa !802
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !802
  store i32 %i.bv, ptr %i.bq, align 4, !tbaa !802
  store i32 0, ptr %i.bu, align 4, !tbaa !802
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !1467
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1458
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bz = phi ptr [ %i.ba, %bb.g ], [ %i.by, %bb.h ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bt, %bb.g ], [ %.0918.i.i, %bb.h ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.bz, %.lcssa42
  br i1 %.not.i.i, label %_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !6618

_ZN5boost7movelib10destruct_nISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_ED2Ev.exit: ; preds = %bb.i, %.lr.ph.i.i.i.i, %.lr.ph.i, %._crit_edge55, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %3 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %4 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 8 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1522   ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.c = load ptr, ptr %0, align 8, !tbaa !1522   ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1467 ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 16                    ; 2 uses
  br i1 %i.i, label %.lr.ph, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38

.lr.ph:                                           ; preds = %bb.a, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %.033100 = phi i64 [ %i.aq, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit ], [ 0, %bb.a ] ; 3 uses
  %.not.i.i = icmp eq i64 %.033100, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.033100
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1458, !noalias !6619
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36: ; preds = %.lr.ph, %bb.b
  %.sroa.082.0 = phi ptr [ %i.k, %bb.b ], [ %i.c, %.lr.ph ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.082.0, align 8, !tbaa !1467, !noalias !6622 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1458, !noalias !6622 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.082.0, %i.n
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36
  %.sroa.015.0.in29.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.015.030.i = load ptr, ptr %.sroa.015.0.in29.i, align 8, !tbaa !1458 ; 2 uses
  %.not2231.i = icmp eq ptr %.sroa.015.030.i, %i.n
  br i1 %.not2231.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %bb.c, %bb.f
  %.sroa.015.032.i = phi ptr [ %.sroa.015.0.i, %bb.f ], [ %.sroa.015.030.i, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 8 ; 3 uses
  %i.p = load ptr, ptr %.sroa.015.032.i, align 8, !tbaa !1467 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1458 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = load i32, ptr %i.o, align 8, !tbaa !802  ; 3 uses
  %i.u = load i32, ptr %i.s, align 4, !tbaa !802
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph34.i
  store i32 0, ptr %i.o, align 8, !tbaa !802
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !802
  store i32 0, ptr %i.w, align 4, !tbaa !802
  %i.y = load i32, ptr %i.s, align 4, !tbaa !802
  store i32 %i.y, ptr %i.o, align 8, !tbaa !802
  store i32 0, ptr %i.s, align 4, !tbaa !802
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !802
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !802
  store i32 0, ptr %i.z, align 4, !tbaa !802
  %.not2324.i = icmp eq ptr %i.r, %.sroa.082.0
  br i1 %.not2324.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.026.i = phi ptr [ %i.ad, %bb.e ], [ %i.r, %bb.d ]
  %.sroa.08.025.i = phi ptr [ %i.an, %bb.e ], [ %i.r, %bb.d ] ; 4 uses
  %i.ab = load ptr, ptr %.sroa.0.026.i, align 8, !tbaa !1467
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1458 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !802 ; 2 uses
  %i.ag = icmp slt i32 %i.t, %i.af
  br i1 %i.ag, label %bb.e, label %._crit_edge.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 8
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !802
  store i32 0, ptr %i.ae, align 4, !tbaa !802
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 12
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !802
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !802
  store i32 0, ptr %i.ai, align 4, !tbaa !802
  %i.al = load ptr, ptr %.sroa.08.025.i, align 8, !tbaa !1467
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1458 ; 2 uses
  %.not23.i = icmp eq ptr %i.ad, %.sroa.082.0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6357

._crit_edge.i:                                    ; preds = %bb.e, %.lr.ph.i, %bb.d
  %.sroa.08.0.lcssa.i = phi ptr [ %i.r, %bb.d ], [ %i.an, %bb.e ], [ %.sroa.08.025.i, %.lr.ph.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 8
  store i32 %i.t, ptr %i.ao, align 4, !tbaa !802
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i, i64 12
  store i32 %i.x, ptr %i.ap, align 4, !tbaa !802
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph34.i
  %.sroa.015.0.in.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.015.0.i = load ptr, ptr %.sroa.015.0.in.i, align 8, !tbaa !1458 ; 2 uses
  %.not22.i = icmp eq ptr %.sroa.015.0.i, %i.n
  br i1 %.not22.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit, label %.lr.ph34.i, !llvm.loop !6358

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit: ; preds = %bb.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit36, %bb.c
  %i.aq = add nuw i64 %.033100, 16                ; 3 uses
  %i.ar = sub i64 %i.h, %i.aq
  %i.as = icmp ugt i64 %i.ar, 16
  br i1 %i.as, label %.lr.ph, label %bb.g, !llvm.loop !6625

bb.g:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit
  %i.at = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aq
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1458, !noalias !6626
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38: ; preds = %bb.a, %bb.g
  %.sroa.081.0 = phi ptr [ %i.au, %bb.g ], [ %i.c, %bb.a ] ; 4 uses
  %.not.i39 = icmp eq ptr %.sroa.081.0, %i.a
  br i1 %.not.i39, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38
  %i.av = load ptr, ptr %.sroa.081.0, align 8, !tbaa !1467
  %.sroa.015.0.in29.i40 = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.015.030.i41 = load ptr, ptr %.sroa.015.0.in29.i40, align 8, !tbaa !1458 ; 2 uses
  %.not2231.i42 = icmp eq ptr %.sroa.015.030.i41, %i.a
  br i1 %.not2231.i42, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43

.lr.ph34.i43:                                     ; preds = %bb.h, %bb.k
  %.sroa.015.032.i44 = phi ptr [ %.sroa.015.0.i46, %bb.k ], [ %.sroa.015.030.i41, %bb.h ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 8 ; 3 uses
  %i.ax = load ptr, ptr %.sroa.015.032.i44, align 8, !tbaa !1467 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1458 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !802 ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !802
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph34.i43
  store i32 0, ptr %i.aw, align 8, !tbaa !802
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.032.i44, i64 12 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !802
  store i32 0, ptr %i.be, align 4, !tbaa !802
  %i.bg = load i32, ptr %i.ba, align 4, !tbaa !802
  store i32 %i.bg, ptr %i.aw, align 8, !tbaa !802
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.be, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %.not2324.i48 = icmp eq ptr %i.az, %.sroa.081.0
  br i1 %.not2324.i48, label %._crit_edge.i52, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %bb.i, %bb.j
  %.sroa.0.026.i50 = phi ptr [ %i.bl, %bb.j ], [ %i.az, %bb.i ]
  %.sroa.08.025.i51 = phi ptr [ %i.bv, %bb.j ], [ %i.az, %bb.i ] ; 4 uses
  %i.bj = load ptr, ptr %.sroa.0.026.i50, align 8, !tbaa !1467
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !1458 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !802 ; 2 uses
  %i.bo = icmp slt i32 %i.bb, %i.bn
  br i1 %i.bo, label %bb.j, label %._crit_edge.i52

bb.j:                                             ; preds = %.lr.ph.i49
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 8
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !802
  store i32 0, ptr %i.bm, align 4, !tbaa !802
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i51, i64 12
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !802
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !802
  store i32 0, ptr %i.bq, align 4, !tbaa !802
  %i.bt = load ptr, ptr %.sroa.08.025.i51, align 8, !tbaa !1467
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1458 ; 2 uses
  %.not23.i54 = icmp eq ptr %i.bl, %.sroa.081.0
  br i1 %.not23.i54, label %._crit_edge.i52, label %.lr.ph.i49, !llvm.loop !6357

._crit_edge.i52:                                  ; preds = %bb.j, %.lr.ph.i49, %bb.i
  %.sroa.08.0.lcssa.i53 = phi ptr [ %i.az, %bb.i ], [ %i.bv, %bb.j ], [ %.sroa.08.025.i51, %.lr.ph.i49 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 8
  store i32 %i.bb, ptr %i.bw, align 4, !tbaa !802
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i53, i64 12
  store i32 %i.bf, ptr %i.bx, align 4, !tbaa !802
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i52, %.lr.ph34.i43
  %.sroa.015.0.in.i45 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.015.0.i46 = load ptr, ptr %.sroa.015.0.in.i45, align 8, !tbaa !1458 ; 2 uses
  %.not22.i47 = icmp eq ptr %.sroa.015.0.i46, %i.a
  br i1 %.not22.i47, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, label %.lr.ph34.i43, !llvm.loop !6358

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit38, %bb.h
  br i1 %i.i, label %.lr.ph108, label %._crit_edge109

._crit_edge109:                                   ; preds = %.thread, %bb.s, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55
  ret void

.lr.ph108:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55, %bb.s
  %.032106 = phi i64 [ %i.ej, %bb.s ], [ 16, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_22stable_vector_iteratorIPSA_Lb0EEEEEvT0_SH_T_.exit55 ] ; 11 uses
  %i.by = sub i64 %i.h, %.032106
  %i.bz = icmp ugt i64 %i.by, %.032106            ; 2 uses
  br i1 %i.bz, label %bb.l, label %.thread

bb.l:                                             ; preds = %.lr.ph108
  %i.ca = shl i64 %.032106, 1                     ; 6 uses
  %i.cb = icmp ugt i64 %i.h, %i.ca
  br i1 %i.cb, label %.lr.ph103, label %._crit_edge104.thread

.lr.ph103:                                        ; preds = %bb.l
  %.not.i.i60 = icmp eq i64 %.032106, 0
  %.not.i.i64 = icmp eq i64 %i.ca, 0              ; 2 uses
  br i1 %.not.i.i60, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us, label %.lr.ph103.split

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us: ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us
  %i.cc = load ptr, ptr %0, align 8, !tbaa !1522, !noalias !6629 ; 5 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us, label %bb.m

bb.m:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1467, !noalias !6632
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1458, !noalias !6632
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65.us: ; preds = %bb.m, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us
  %.sroa.076.0.us = phi ptr [ %i.cc, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us ], [ %i.cf, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.cc, ptr %5, align 8, !tbaa !1522
  store ptr %i.cc, ptr %6, align 8, !tbaa !1522
  store ptr %.sroa.076.0.us, ptr %7, align 8, !tbaa !1522
  %i.cg = load ptr, ptr %i.cc, align 8, !tbaa !1467
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = load ptr, ptr %.sroa.076.0.us, align 8, !tbaa !1467
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.ch
  %i.cl = ashr exact i64 %i.ck, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef 0, i64 noundef %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63.us

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65
  %.0101 = phi i64 [ %i.di, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65 ], [ 0, %.lr.ph103 ] ; 4 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !1522, !noalias !6629 ; 4 uses
  %.not.i.i56 = icmp eq i64 %.0101, 0
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1467, !noalias !3125 ; 2 uses
  br i1 %.not.i.i56, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63, label %bb.n

bb.n:                                             ; preds = %.lr.ph103.split
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.0101
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1458, !noalias !6629 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1467, !noalias !6635
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !1467, !noalias !6638
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.0101
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1458, !noalias !6638
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63: ; preds = %.lr.ph103.split, %bb.n
  %.pn = phi ptr [ %i.cq, %bb.n ], [ %i.cn, %.lr.ph103.split ]
  %.sroa.077.0127 = phi ptr [ %i.cp, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.sroa.075.0 = phi ptr [ %i.ct, %bb.n ], [ %i.cm, %.lr.ph103.split ] ; 2 uses
  %.in = getelementptr inbounds [8 x i8], ptr %.pn, i64 %.032106
  %i.cu = load ptr, ptr %.in, align 8, !tbaa !1458, !noalias !6635 ; 2 uses
  br i1 %.not.i.i64, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65, label %bb.o

bb.o:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63
  %i.cv = load ptr, ptr %.sroa.075.0, align 8, !tbaa !1467, !noalias !6632
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ca
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1458, !noalias !6632
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63, %bb.o
  %.sroa.076.0 = phi ptr [ %.sroa.075.0, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit63 ], [ %i.cx, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %.sroa.077.0127, ptr %5, align 8, !tbaa !1522
  store ptr %i.cu, ptr %6, align 8, !tbaa !1522
  store ptr %.sroa.076.0, ptr %7, align 8, !tbaa !1522
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !1467
  %i.cz = load ptr, ptr %.sroa.077.0127, align 8, !tbaa !1467
  %i.da = ptrtoint ptr %i.cy to i64               ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = load ptr, ptr %.sroa.076.0, align 8, !tbaa !1467
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.da
  %i.dh = ashr exact i64 %i.dg, 3
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.dd, i64 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.di = add i64 %.0101, %i.ca                   ; 5 uses
  %i.dj = sub i64 %i.h, %i.di
  %i.dk = icmp ugt i64 %i.dj, %i.ca
  br i1 %i.dk, label %.lr.ph103.split, label %._crit_edge104, !llvm.loop !6641

._crit_edge104:                                   ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit65
  %i.dl = sub i64 %i.h, %i.di
  %i.dm = icmp ugt i64 %i.dl, %.032106
  br i1 %i.dm, label %bb.p, label %bb.s

._crit_edge104.thread:                            ; preds = %bb.l
  %i.dn = icmp ugt i64 %i.h, %.032106
  br i1 %i.dn, label %.thread130, label %bb.s

.thread130:                                       ; preds = %._crit_edge104.thread
  %i.do = load ptr, ptr %0, align 8, !tbaa !1522, !noalias !6642
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit69

.thread:                                          ; preds = %.lr.ph108
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b:bb.a
  %.not8.i.i73 = icmp ugt i64 %4, %i.ck
  br i1 %.not8.i.i73, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78, label %iter.check250

iter.check250:                                    ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
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
  store <16 x i8> %vec.ind242, ptr %next.gep244, align 1, !tbaa !3215
  store <16 x i8> %step.add243, ptr %i.cp, align 1, !tbaa !3215
  %index.next245 = add nuw i64 %index241, 32      ; 2 uses
  %vec.ind.next246 = add <16 x i8> %vec.ind242, splat (i8 32)
  %i.cq = icmp eq i64 %index.next245, %n.vec239
  br i1 %i.cq, label %middle.block247, label %vector.body240, !llvm.loop !6964

middle.block247:                                  ; preds = %vector.body240
  %cmp.n248 = icmp eq i64 %i.cl, %n.vec239
  br i1 %cmp.n248, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block247
  %min.epilog.iters.check253 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check253, label %.lr.ph.i.i74.preheader, label %vec.epilog.ph254, !prof !3096

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
  store <4 x i8> %vec.ind261, ptr %next.gep262, align 1, !tbaa !3215
  %index.next263 = add nuw i64 %index260, 4       ; 2 uses
  %vec.ind.next264 = add <4 x i8> %vec.ind261, splat (i8 4)
  %i.ct = icmp eq i64 %index.next263, %n.vec255
  br i1 %i.ct, label %vec.epilog.middle.block265, label %vec.epilog.vector.body259, !llvm.loop !6965

vec.epilog.middle.block265:                       ; preds = %vec.epilog.vector.body259
  %cmp.n266 = icmp eq i64 %i.cl, %n.vec255
  br i1 %cmp.n266, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78, label %.lr.ph.i.i74.preheader

.lr.ph.i.i74.preheader:                           ; preds = %iter.check250, %vec.epilog.iter.check252, %vec.epilog.middle.block265
  %.010.i.i75.ph = phi i64 [ 0, %iter.check250 ], [ %n.vec239, %vec.epilog.iter.check252 ], [ %n.vec255, %vec.epilog.middle.block265 ]
  %.079.i.i76.ph = phi ptr [ %0, %iter.check250 ], [ %i.co, %vec.epilog.iter.check252 ], [ %i.cr, %vec.epilog.middle.block265 ]
  br label %.lr.ph.i.i74

.lr.ph.i.i74:                                     ; preds = %.lr.ph.i.i74.preheader, %.lr.ph.i.i74
  %.010.i.i75 = phi i64 [ %i.cw, %.lr.ph.i.i74 ], [ %.010.i.i75.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %.079.i.i76 = phi ptr [ %i.cv, %.lr.ph.i.i74 ], [ %.079.i.i76.ph, %.lr.ph.i.i74.preheader ] ; 2 uses
  %i.cu = trunc i64 %.010.i.i75 to i8
  store i8 %i.cu, ptr %.079.i.i76, align 1, !tbaa !3215
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i76, i64 1
  %i.cw = add nuw i64 %.010.i.i75, 1              ; 2 uses
  %.not.i.i77 = icmp eq i64 %i.cw, %i.cl
  br i1 %.not.i.i77, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78, label %.lr.ph.i.i74, !llvm.loop !6966

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78: ; preds = %.lr.ph.i.i74, %middle.block247, %vec.epilog.middle.block265, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i79 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i79, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78
  %i.da = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !1467, !noalias !6967
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1458, !noalias !6967
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78
  %.sroa.0.0.i = phi ptr [ %.sroa.0107.2133, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit78 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !3229
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !1522, !alias.scope !6970
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !3229
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1522, !alias.scope !6973
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0107.2133, align 8, !tbaa !1467
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1458
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, !llvm.loop !6976

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.38", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 6 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = shl i64 %3, 1                            ; 11 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1522   ; 5 uses
  %i.e = zext i1 %.not.i to i64
  %i.f = add nuw i64 %i.c, %i.e                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61131 = icmp eq i64 %i.f, 0
  br i1 %.not61131, label %.loopexit, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph: ; preds = %.preheader
  %i.g = urem i64 %3, %4                          ; 6 uses
  %i.h = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph
  br i1 %6, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us.us, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us, %bb.b
  %.059133.us.us = phi i64 [ %i.aa, %bb.b ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us.us = phi ptr [ %i.ad, %bb.b ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us.us
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
  store <2 x i64> %vec.ind181, ptr %next.gep183, align 8, !tbaa !36
  store <2 x i64> %step.add182, ptr %i.w, align 8, !tbaa !36
  %index.next184 = add nuw i64 %index180, 4       ; 2 uses
  %vec.ind.next185 = add nuw <2 x i64> %vec.ind181, splat (i64 4)
  %i.x = icmp eq i64 %index.next184, %n.vec178
  br i1 %i.x, label %middle.block186, label %vector.body179, !llvm.loop !6977

middle.block186:                                  ; preds = %vector.body179
  %cmp.n187 = icmp eq i64 %i.s, 0
  br i1 %cmp.n187, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader206

.lr.ph.i.i.us.us.preheader206:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block186
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec178, %middle.block186 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.u, %middle.block186 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader206, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.z, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.y, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader206 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.z = add nuw i64 %.010.i.i.us.us, 1           ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.z, %i.r
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !6978

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block186, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us.us, ptr %13, align 8, !tbaa !1522
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.p, i64 noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aa = add nuw i64 %.059133.us.us, 1           ; 2 uses
  %.not62.us.us = icmp eq i64 %i.aa, %i.f
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us
  %i.ab = load ptr, ptr %.sroa.0109.0132.us.us, align 8, !tbaa !1467
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.a
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1458
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us, %bb.c
  %.059133.us = phi i64 [ %i.aw, %bb.c ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
  %.sroa.0109.0132.us = phi ptr [ %i.az, %bb.c ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph.split.us ] ; 2 uses
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
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us
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
  store <2 x i64> %vec.ind166, ptr %next.gep168, align 8, !tbaa !36
  store <2 x i64> %step.add167, ptr %i.as, align 8, !tbaa !36
  %index.next169 = add nuw i64 %index165, 4       ; 2 uses
  %vec.ind.next170 = add nuw <2 x i64> %vec.ind166, splat (i64 4)
  %i.at = icmp eq i64 %index.next169, %n.vec163
  br i1 %i.at, label %middle.block171, label %vector.body164, !llvm.loop !6979

middle.block171:                                  ; preds = %vector.body164
  %cmp.n172 = icmp eq i64 %i.ao, 0
  br i1 %cmp.n172, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us.preheader208

.lr.ph.i.i.us.preheader208:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block171
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec163, %middle.block171 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.aq, %middle.block171 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader208, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.av, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.au, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader208 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.av = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.av, %i.an
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !6980

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block171, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0109.0132.us, ptr %14, align 8, !tbaa !1522
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.al, i64 noundef %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.aw = add nuw i64 %.059133.us, 1              ; 2 uses
  %.not62.us = icmp eq i64 %i.aw, %i.f
  br i1 %.not62.us, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us
  %i.ax = load ptr, ptr %.sroa.0109.0132.us, align 8, !tbaa !1467
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1458
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.us

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph, %bb.d
  %.059133 = phi i64 [ %i.bs, %bb.d ], [ 0, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph ] ; 2 uses
  %.sroa.0109.0132 = phi ptr [ %i.bv, %bb.d ], [ %i.d, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph ] ; 2 uses
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
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.bo, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !6981

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i.preheader210

.lr.ph.i.i.preheader210:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader210, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader210 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.br = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.br, %i.bj
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i, !llvm.loop !6982

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  store ptr %.sroa.0109.0132, ptr %15, align 8, !tbaa !1522
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container22stable_vector_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0EEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.h, i64 noundef %i.bh, i64 noundef %i.bd)
  %i.bs = add nuw i64 %.059133, 1                 ; 2 uses
  %.not62 = icmp eq i64 %i.bs, %i.f
  br i1 %.not62, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit
  %i.bt = load ptr, ptr %.sroa.0109.0132, align 8, !tbaa !1467
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %i.a
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !1458
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

bb.e:                                             ; preds = %bb.a
  %i.bw = add i64 %i.f, -1
  %i.bx = mul i64 %i.bw, %i.a                     ; 2 uses
  %.not.i68 = icmp eq i64 %i.bx, 0
  br i1 %.not.i68, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1458
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69: ; preds = %bb.e, %bb.f
  %.sroa.0109.5 = phi ptr [ %i.d, %bb.e ], [ %i.ca, %bb.f ]
  %.not63134 = icmp eq i64 %i.f, 0
  br i1 %.not63134, label %.loopexit, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph: ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69
  %i.cb = urem i64 %3, %4                         ; 2 uses
  %i.cc = udiv i64 %3, %4                         ; 3 uses
  %i.cd = sub nsw i64 0, %i.a
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.k, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph
  %.0136 = phi i64 [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph ], [ %i.ce, %bb.k ]
  %.sroa.0109.2135 = phi ptr [ %.sroa.0109.5, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.lr.ph ], [ %i.df, %bb.k ] ; 3 uses
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
  br i1 %.not8.i.i75, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
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
  store <2 x i64> %vec.ind196, ptr %next.gep198, align 8, !tbaa !36
  store <2 x i64> %step.add197, ptr %i.ct, align 8, !tbaa !36
  %index.next199 = add nuw i64 %index195, 4       ; 2 uses
  %vec.ind.next200 = add nuw <2 x i64> %vec.ind196, splat (i64 4)
  %i.cu = icmp eq i64 %index.next199, %n.vec193
  br i1 %i.cu, label %middle.block201, label %vector.body194, !llvm.loop !6983

middle.block201:                                  ; preds = %vector.body194
  %cmp.n202 = icmp eq i64 %i.cp, 0
  br i1 %cmp.n202, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80, label %.lr.ph.i.i76.preheader205

.lr.ph.i.i76.preheader205:                        ; preds = %.lr.ph.i.i76.preheader, %middle.block201
  %.010.i.i77.ph = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %n.vec193, %middle.block201 ]
  %.079.i.i78.ph = phi ptr [ %0, %.lr.ph.i.i76.preheader ], [ %i.cr, %middle.block201 ]
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.preheader205, %.lr.ph.i.i76
  %.010.i.i77 = phi i64 [ %i.cw, %.lr.ph.i.i76 ], [ %.010.i.i77.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  %.079.i.i78 = phi ptr [ %i.cv, %.lr.ph.i.i76 ], [ %.079.i.i78.ph, %.lr.ph.i.i76.preheader205 ] ; 2 uses
  store i64 %.010.i.i77, ptr %.079.i.i78, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i78, i64 8
  %i.cw = add nuw i64 %.010.i.i77, 1              ; 2 uses
  %.not.i.i79 = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i79, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80, label %.lr.ph.i.i76, !llvm.loop !6984

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80: ; preds = %.lr.ph.i.i76, %middle.block201, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cl ; 2 uses
  %i.cy = mul i64 %i.cl, %4
  %i.cz = add i64 %i.cy, %i.ci                    ; 2 uses
  %.not.i.i.i81 = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i81, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80
  %i.da = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !1467, !noalias !6985
  %i.db = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1458, !noalias !6985
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i: ; preds = %bb.g, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80
  %.sroa.0.0.i = phi ptr [ %.sroa.0109.2135, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit80 ], [ %i.dc, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i
  store ptr %i.cx, ptr %9, align 8, !tbaa !3102
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !1522, !alias.scope !6988
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.i:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit.i
  store ptr %i.cx, ptr %11, align 8, !tbaa !3102
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1522, !alias.scope !6991
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ci, i64 noundef %i.cm, i64 noundef %i.cc, i64 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.ce, 0
  br i1 %.not65, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = load ptr, ptr %.sroa.0109.2135, align 8, !tbaa !1467
  %i.de = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.cd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1458
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, !llvm.loop !6994

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, %bb.j, %.preheader, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 3 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %13 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %14 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %15 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %16 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %17 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 3 uses
  %18 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %19 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %20 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %21 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %22 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %23 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %24 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %25 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %26 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !1522, !noalias !6995 ; 4 uses
  %.not.i.i = icmp eq i64 %4, 0
  br i1 %.not.i.i, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1467, !noalias !6995
  %i.d = getelementptr inbounds [8 x i8], ptr %i.c, i64 %4
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1458, !noalias !6995
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %bb.a, %bb.b
  %.sroa.0266.4 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !1522, !noalias !6998 ; 6 uses
  %.not.i.i.i = icmp eq i64 %2, 0                 ; 4 uses
  br i1 %.not.i.i.i, label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.g = sub nsw i64 0, %2
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !1467, !noalias !6998
  %i.i = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1458, !noalias !6998
  br label %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit

_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, %bb.c
  %.sroa.0256.8 = phi ptr [ %i.f, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %i.j, %bb.c ] ; 2 uses
  %.not.i.i65 = icmp eq i64 %3, 0
  br i1 %.not.i.i65, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66, label %bb.d

bb.d:                                             ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !1467, !noalias !7001
  %i.l = getelementptr inbounds [8 x i8], ptr %i.k, i64 %3
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1458, !noalias !7001
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66: ; preds = %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit, %bb.d
  %.sroa.0228.6 = phi ptr [ %i.f, %_ZN5boost9containermiERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit ], [ %i.m, %bb.d ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %.sroa.0228.6, ptr %27, align 8, !tbaa !1522
  %i.n = mul i64 %i.a, %2                         ; 2 uses
  %.not.i.i67 = icmp eq i64 %i.n, 0
  br i1 %.not.i.i67, label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit68, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66
  %i.o = load ptr, ptr %.sroa.0228.6, align 8, !tbaa !1467, !noalias !7004
  %i.p = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1458, !noalias !7004
  br label %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit68

_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit68: ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66, %bb.e
  %.sroa.0226.0 = phi ptr [ %.sroa.0228.6, %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit66 ], [ %i.q, %bb.e ] ; 12 uses
  %i.r = icmp eq i64 %5, 0
  %i.s = select i1 %i.r, i64 0, i64 %4            ; 3 uses
  %i.t = add i64 %i.s, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.a) ; 2 uses
  %.not368 = icmp eq i64 %i.a, 0
  br i1 %.not368, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9containerplERKNS0_22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEEl.exit68
  %.not61 = icmp eq i64 %6, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0226.0, i64 8
  %i.v = sub nsw i64 0, %2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.w = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0198.0, %.sink.split.i ] ; 16 uses
  %.050379 = phi i64 [ %i.s, %.lr.ph ], [ %i.gm, %.sink.split.i ] ; 7 uses
  %.051378 = phi i8 [ 1, %.lr.ph ], [ %.253, %.sink.split.i ] ; 8 uses
  %.057377 = phi i64 [ %5, %.lr.ph ], [ %.158, %.sink.split.i ] ; 2 uses
  %.0290376 = phi i64 [ %i.a, %.lr.ph ], [ %i.gp, %.sink.split.i ] ; 5 uses
  %.sroa.0266.0375 = phi ptr [ %.sroa.0266.4, %.lr.ph ], [ %.sroa.0266.1, %.sink.split.i ] ; 13 uses
  %.sroa.0256.0374 = phi ptr [ %.sroa.0256.8, %.lr.ph ], [ %.sroa.0256.3, %.sink.split.i ] ; 13 uses
  %.sroa.0243.0373 = phi ptr [ %i.f, %.lr.ph ], [ %.sroa.0243.2, %.sink.split.i ] ; 9 uses
  %.sroa.0228.0372 = phi ptr [ %.sroa.0228.6, %.lr.ph ], [ %.sroa.0228.2, %.sink.split.i ] ; 13 uses
  %.sroa.0220.0370 = phi ptr [ %i.b, %.lr.ph ], [ %i.gk, %.sink.split.i ] ; 17 uses
  %.val364369 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.go, %.sink.split.i ] ; 3 uses
  %i.x = icmp ult i64 %.050379, %.val364369
  br i1 %i.x, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !1467 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0220.0370, align 8, !tbaa !1467 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.thread20.i, %.lr.ph.i
  %.023.i = phi i64 [ %.050379, %.lr.ph.i ], [ %i.aw, %.thread20.i ] ; 4 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i ], [ %i.av, %.thread20.i ] ; 4 uses
  %i.aa = mul i64 %.01822.i, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1458
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = mul i64 %.023.i, %2
  %i.af = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1458
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.01822.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1458
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %.023.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1458
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.ah, align 4, !tbaa !802 ; 2 uses
  %i.ap = load i32, ptr %i.ad, align 4, !tbaa !802 ; 2 uses
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp slt i32 %i.ap, %i.ao
  br i1 %i.ar, label %.thread20.i, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0EEEEESH_SH_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEET3_T_SS_T0_T1_RT2_SV_SR_NS0_9iter_sizeISU_E4typeESZ_SZ_SZ_T4_bT5_:bb.a
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1458, !noalias !10073 ; 4 uses
  %i.bx = load ptr, ptr %.sroa.049.0, align 8, !tbaa !1467, !noalias !10078
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1458, !noalias !10078 ; 3 uses
  %i.ca = load ptr, ptr %.sroa.048.0, align 8, !tbaa !1467, !noalias !10081
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1458, !noalias !10081 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 12 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cj = load <2 x i32>, ptr %i.cd, align 4, !tbaa !802, !noalias !10084
  store i32 0, ptr %i.cd, align 4, !tbaa !802, !noalias !10084
  store i32 0, ptr %i.ce, align 4, !tbaa !802, !noalias !10084
  %i.ck = load i32, ptr %i.cf, align 4, !tbaa !802, !noalias !10084
  store i32 %i.ck, ptr %i.cd, align 4, !tbaa !802, !noalias !10084
  store i32 0, ptr %i.cf, align 4, !tbaa !802, !noalias !10084
  %i.cl = load i32, ptr %i.cg, align 4, !tbaa !802, !noalias !10084
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !802, !noalias !10084
  store i32 0, ptr %i.cg, align 4, !tbaa !802, !noalias !10084
  %i.cm = load i32, ptr %i.ch, align 4, !tbaa !802, !noalias !10084
  store i32 %i.cm, ptr %i.cf, align 4, !tbaa !802, !noalias !10084
  %i.cn = load i32, ptr %i.ci, align 4, !tbaa !802, !noalias !10084
  store i32 %i.cn, ptr %i.cg, align 4, !tbaa !802, !noalias !10084
  store <2 x i32> %i.cj, ptr %i.ch, align 4, !tbaa !802, !noalias !10084
  %.not.i33 = icmp eq ptr %i.bw, %i.ah
  br i1 %.not.i33, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i32, !llvm.loop !5816

bb.j:                                             ; preds = %bb.i
  %.not1.i.i = icmp eq ptr %i.av, %i.ah
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.au, %bb.j ]
  %i.co = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %i.av, %bb.j ]
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1467, !noalias !10085
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1458, !noalias !10085 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 3 uses
  %i.ct = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !10085
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1458, !noalias !10085 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cs, align 4, !tbaa !802, !noalias !10085
  store i32 0, ptr %i.cs, align 4, !tbaa !802, !noalias !10085
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !802, !noalias !10085
  store i32 %i.cy, ptr %i.cs, align 4, !tbaa !802, !noalias !10085
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !802, !noalias !10085
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 12 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !802, !noalias !10085
  store i32 0, ptr %i.cz, align 4, !tbaa !802, !noalias !10085
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !802, !noalias !10085
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !802, !noalias !10085
  store i32 %i.db, ptr %i.da, align 4, !tbaa !802, !noalias !10085
  %.not.i.i = icmp eq ptr %i.cr, %i.ah
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, label %.lr.ph.i.i, !llvm.loop !5546

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit: ; preds = %.lr.ph.i32, %.lr.ph.i31, %.lr.ph.i.i, %bb.j, %.thread87, %.thread86, %bb.i
  %storemerge = phi ptr [ %i.ah, %bb.i ], [ %i.bk, %.lr.ph.i31 ], [ %i.ba, %.thread86 ], [ %i.az, %.thread87 ], [ %i.au, %bb.j ], [ %i.cv, %.lr.ph.i.i ], [ %i.cc, %.lr.ph.i32 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !1522
  %i.dd = load ptr, ptr %1, align 8, !tbaa !3102  ; 6 uses
  %.neg89 = mul i64 %.018.lcssa.i, -8             ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %.neg89 ; 3 uses
  %i.df = load ptr, ptr %12, align 8, !tbaa !1522, !noalias !10090
  %.not.i35 = icmp eq ptr %i.ah, %i.df
  br i1 %.not.i35, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit
  %.not9.i = icmp eq i64 %.neg89, 0
  br i1 %.not9.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dg = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dd, i64 -8 ; 2 uses
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !36
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !36
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !36
  store i64 %i.di, ptr %i.dh, align 8, !tbaa !36
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit.i
  %i.dk = load ptr, ptr %2, align 8, !tbaa !3102  ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %.sink.split.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dm = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dm, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

.sink.split.i:                                    ; preds = %bb.m, %bb.l
  %.sink.i = phi ptr [ %i.dd, %bb.l ], [ %i.de, %bb.m ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !3102
  %.pre106 = load ptr, ptr %1, align 8, !tbaa !3102
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit, %bb.m, %.sink.split.i
  %i.dn = phi ptr [ %i.dd, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorINS_9container22stable_vector_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0EEEEESB_EET0_T_SD_SC_.exit ], [ %i.dd, %bb.m ], [ %.pre106, %.sink.split.i ]
  store ptr %i.ah, ptr %3, align 8, !tbaa !1522
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  store ptr %i.do, ptr %1, align 8, !tbaa !3102
  %i.dp = icmp ne i64 %.099, 0
  %.neg = sext i1 %i.dp to i64
  %i.dq = add i64 %.099, %.neg
  %i.dr = icmp ne i64 %i.ad, 0
  %.neg24 = sext i1 %i.dr to i64
  %i.ds = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dt = add i64 %.08598, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dt, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !10093

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPmEENS3_INS_9container22stable_vector_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0EEEEEEEvT_SF_RSF_T0_SH_SH_.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10094)
  %i.du = load ptr, ptr %6, align 8, !tbaa !1522, !noalias !10094
  store ptr %i.du, ptr %0, align 8, !tbaa !1522, !alias.scope !10094
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %7 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %8 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %11 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %12 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %13 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 7 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1522   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.h
  %i.o = ashr exact i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !802
  store i32 %i.q, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %i.p, align 8, !tbaa !802
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !802
  store i32 %i.u, ptr %i.s, align 4, !tbaa !802
  store i32 0, ptr %i.t, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.r, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.v = add i64 %5, -1                           ; 3 uses
  %xtraiter = and i64 %i.v, 1
  %i.w = icmp eq i64 %5, 2
  br i1 %i.w, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.v, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802
  store i32 %i.z, ptr %i.x, align 4, !tbaa !802
  store i32 0, ptr %i.y, align 4, !tbaa !802
  %i.aa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !802
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !802
  store i32 0, ptr %i.ac, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.aa, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !802
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !802
  store i32 0, ptr %i.af, align 4, !tbaa !802
  %i.ah = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !802
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !802
  store i32 0, ptr %i.aj, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.ah, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod23 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod23)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !802
  store i32 %i.an, ptr %i.al, align 4, !tbaa !802
  store i32 0, ptr %i.am, align 4, !tbaa !802
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !802
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !802
  store i32 0, ptr %i.aq, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.ao, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !802
  store i32 %i.at, ptr %i.p, align 8, !tbaa !802
  store i32 0, ptr %i.as, align 4, !tbaa !802
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !802
  store i32 %i.av, ptr %i.t, align 4, !tbaa !802
  store i32 0, ptr %i.au, align 4, !tbaa !802
  store ptr %i.a, ptr %10, align 8, !tbaa !1522
  store ptr %i.b, ptr %11, align 8, !tbaa !1522
  store ptr %i.d, ptr %12, align 8, !tbaa !1522
  %i.aw = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.aw, ptr %13, align 8, !tbaa !3493
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES8_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_SM_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.k, i64 noundef %i.o, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ax = trunc i64 %5 to i32
  %i.ay = shl i32 %i.ax, 1
  %i.az = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.ay
  store i32 %i.az, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.f

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit11: ; preds = %.loopexit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bb = trunc i64 %5 to i32
  %i.bc = shl i32 %i.bb, 1
  %i.bd = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i10, %i.bc
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.ba

bb.e:                                             ; preds = %bb.c
  %i.be = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1522
  store ptr %i.b, ptr %7, align 8, !tbaa !1522
  store ptr %i.d, ptr %8, align 8, !tbaa !1522
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !1467
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !1467
  %i.bh = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !1467
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bh
  %i.bo = ashr exact i64 %i.bn, 3
  store ptr %i.be, ptr %9, align 8, !tbaa !3493
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.bk, i64 noundef %i.bo, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.e, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %.sroa.039 = alloca ptr, align 8                ; 2 uses
  %6 = alloca %"class.boost::container::stable_vector_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1522   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1522   ; 6 uses
  %.not44 = icmp eq ptr %i.a, %i.b
  br i1 %.not44, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1522   ; 2 uses
  %.not45 = icmp eq ptr %i.b, %i.c
  br i1 %.not45, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1467 ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1458
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !802  ; 2 uses
  %i.j = load i32, ptr %i.d, align 8, !tbaa !802  ; 2 uses
  %.not46 = icmp slt i32 %i.i, %i.j
  br i1 %.not46, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1467 ; 2 uses
  %i.l = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1467 ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.l
  %i.s = ashr exact i64 %i.r, 3                   ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.s
  br i1 %.not, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not10.i = icmp eq ptr %i.e, %i.k
  br i1 %.not10.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %i.t = phi ptr [ %i.ae, %bb.h ], [ %i.a, %bb.e ] ; 3 uses
  %.011.i = phi i64 [ %.1.i, %bb.h ], [ %i.o, %bb.e ] ; 2 uses
  %i.u = lshr i64 %.011.i, 1                      ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !1467, !noalias !10097
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1458, !noalias !10097
  br label %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i

_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i: ; preds = %bb.f, %.lr.ph.i
  %.sroa.0.0.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !802, !noalias !10097
  %.not9.i = icmp slt i32 %i.z, %i.j
  br i1 %.not9.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !1467, !noalias !10097
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1458, !noalias !10097
  %.neg.i = xor i64 %i.u, -1
  %i.ad = add i64 %.011.i, %.neg.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i
  %i.ae = phi ptr [ %i.ac, %bb.g ], [ %i.t, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i ] ; 3 uses
  %.1.i = phi i64 [ %i.ad, %bb.g ], [ %i.u, %_ZN5boost9container22stable_vector_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0EEpLEl.exit.i ] ; 2 uses
  %.not.i = icmp eq i64 %.1.i, 0
  br i1 %.not.i, label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !10100

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit: ; preds = %bb.h
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1467
  %.pre74 = ptrtoint ptr %.pre to i64
  br label %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit

_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit: ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit, %bb.e
  %.pre-phi75 = phi i64 [ %.pre74, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.l, %bb.e ]
  %i.af = phi ptr [ %i.ae, %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit.loopexit ], [ %i.a, %bb.e ] ; 2 uses
  store ptr %i.af, ptr %0, align 8, !tbaa !1522
  store ptr %i.af, ptr %5, align 8, !tbaa !1522
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1522
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1467
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %.pre-phi75
  %i.ak = ashr exact i64 %i.aj, 3
  call void @_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE11move_assignINS3_22stable_vector_iteratorIS7_Lb0EEEEEvT_m(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dead_on_return %5, i64 noundef %i.ak)
  %i.al = load ptr, ptr %4, align 8, !tbaa !1224  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !1222 ; 2 uses
  %.idx = shl nuw nsw i64 %i.an, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !1522
  %.not15.i = icmp eq i64 %i.an, 0
  br i1 %.not15.i, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_22stable_vector_iteratorISG_Lb0EEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %.lr.ph.i7.preheader

.lr.ph.i7.preheader:                              ; preds = %_ZN5boost7movelib11upper_boundINS_9container22stable_vector_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0EEES7_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEET_SJ_SJ_RKT0_T1_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !1522
  br label %.lr.ph.i7
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_bbT0_RT1_:bb.a
  %i.dx = sub nsw i64 %i.dw, %5                   ; 4 uses
  %or.cond.i.i.i49 = icmp ult i64 %i.dx, 128
  br i1 %or.cond.i.i.i49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dy = sub nsw i64 0, %5
  %i.dz = getelementptr inbounds [8 x i8], ptr %.sroa.0.0.i, i64 %i.dy
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

bb.r:                                             ; preds = %bb.p
  %i.ea = icmp sgt i64 %i.dx, 0
  %i.eb = lshr i64 %i.dx, 7                       ; 2 uses
  %i.ec = or disjoint i64 %i.eb, -144115188075855872
  %i.ed = select i1 %i.ea, i64 %i.eb, i64 %i.ec   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i, i64 %i.ed ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !973, !noalias !10522
  %i.eg = shl nsw i64 %i.ed, 7
  %i.eh = sub nsw i64 %i.dx, %i.eg
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.eh
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit: ; preds = %bb.q, %bb.r
  %.sroa.6.1.i50 = phi ptr [ %i.ee, %bb.r ], [ %.sroa.6.1.i, %bb.q ]
  %.sroa.0.0.i51 = phi ptr [ %i.ei, %bb.r ], [ %i.dz, %bb.q ]
  store ptr %.sroa.0.0.i51, ptr %21, align 8, !tbaa !1931, !alias.scope !10522
  %i.ej = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %.sroa.6.1.i50, ptr %i.ej, align 8, !tbaa !1934, !alias.scope !10522
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_NS0_7swap_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef nonnull align 8 dead_on_return %19, ptr noundef nonnull align 8 dead_on_return %20, i64 noundef %5, i64 noundef %i.co, i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.cq, ptr noundef nonnull align 8 dead_on_return %21)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit47
  store ptr %i.d, ptr %22, align 8, !tbaa !1931
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.f, ptr %i.ek, align 8, !tbaa !1934
  store ptr %.sroa.0.0.i, ptr %23, align 8, !tbaa !1931
  %i.el = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %.sroa.6.1.i, ptr %i.el, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef nonnull align 8 dead_on_return %22, ptr noundef nonnull align 8 dead_on_return %23, i64 noundef %5, i64 noundef %i.co, i64 noundef %i.cu, i64 noundef %i.cv, i64 noundef %i.cq)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.t:                                             ; preds = %bb.a
  %i.em = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !1222 ; 11 uses
  %i.eo = icmp ugt i64 %i.en, %5
  br i1 %i.eo, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.t
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ep = trunc i64 %5 to i32
  %i.eq = trunc i64 %i.en to i32
  %i.er = sub i32 %i.ep, %i.eq
  %i.es = shl i32 %i.er, 1
  %i.et = add i32 %i.es, %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i
  store i32 %i.et, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 %5, ptr %i.em, align 8, !tbaa !1222
  %.pre125 = load ptr, ptr %8, align 8, !tbaa !1224
  br label %bb.v

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit: ; preds = %bb.t
  %i.eu = icmp ult i64 %i.en, %5
  %.pre = load ptr, ptr %8, align 8, !tbaa !1224  ; 10 uses
  br i1 %i.eu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %i.ev = load ptr, ptr %0, align 8, !tbaa !1931  ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.en ; 2 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !802
  store i32 %i.ex, ptr %i.ew, align 4, !tbaa !802
  store i32 0, ptr %i.ev, align 4, !tbaa !802
  %i.ey = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !802
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !802
  store i32 0, ptr %i.fa, align 4, !tbaa !802
  %storemerge911.i52 = add i32 %i.ey, 2
  store i32 %storemerge911.i52, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge12.i53 = add nuw i64 %i.en, 1        ; 5 uses
  %.not13.i54 = icmp eq i64 %storemerge12.i53, %5
  br i1 %.not13.i54, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63, label %.lr.ph.i55.preheader

.lr.ph.i55.preheader:                             ; preds = %bb.u
  %i.fc = add i64 %5, -2
  %i.fd = sub i64 %i.en, %5
  %i.fe = and i64 %i.fd, 1
  %lcmp.mod130.not.not = icmp eq i64 %i.fe, 0
  br i1 %lcmp.mod130.not.not, label %.lr.ph.i55.prol, label %.lr.ph.i55.prol.loopexit

.lr.ph.i55.prol:                                  ; preds = %.lr.ph.i55.preheader
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge12.i53 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.en ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !802
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !802
  store i32 0, ptr %i.fg, align 4, !tbaa !802
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !802
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !802
  store i32 0, ptr %i.fk, align 4, !tbaa !802
  %storemerge9.i58.prol = add i32 %i.fi, 2
  store i32 %storemerge9.i58.prol, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i59.prol = add i64 %i.en, 2
  br label %.lr.ph.i55.prol.loopexit

.lr.ph.i55.prol.loopexit:                         ; preds = %.lr.ph.i55.prol, %.lr.ph.i55.preheader
  %storemerge15.i56.unr = phi i64 [ %storemerge12.i53, %.lr.ph.i55.preheader ], [ %storemerge.i59.prol, %.lr.ph.i55.prol ]
  %storemerge.in1014.i57.unr = phi i64 [ %i.en, %.lr.ph.i55.preheader ], [ %storemerge12.i53, %.lr.ph.i55.prol ]
  %i.fm = icmp eq i64 %i.fc, %i.en
  br i1 %i.fm, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %.lr.ph.i55.prol.loopexit, %.lr.ph.i55
  %storemerge15.i56 = phi i64 [ %storemerge.i59.1, %.lr.ph.i55 ], [ %storemerge15.i56.unr, %.lr.ph.i55.prol.loopexit ] ; 4 uses
  %storemerge.in1014.i57 = phi i64 [ %storemerge.i59, %.lr.ph.i55 ], [ %storemerge.in1014.i57.unr, %.lr.ph.i55.prol.loopexit ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i56 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in1014.i57 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !802
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !802
  store i32 0, ptr %i.fo, align 4, !tbaa !802
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !802
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !802
  store i32 0, ptr %i.fs, align 4, !tbaa !802
  %storemerge9.i58 = add i32 %i.fq, 2
  store i32 %storemerge9.i58, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i59 = add i64 %storemerge15.i56, 1  ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.i59 ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i56 ; 3 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !802
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !802
  store i32 0, ptr %i.fv, align 4, !tbaa !802
  %i.fx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !802
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !802
  store i32 0, ptr %i.fz, align 4, !tbaa !802
  %storemerge9.i58.1 = add i32 %i.fx, 2
  store i32 %storemerge9.i58.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i59.1 = add i64 %storemerge15.i56, 2 ; 2 uses
  %.not.i60.1 = icmp eq i64 %storemerge.i59.1, %5
  br i1 %.not.i60.1, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63, label %.lr.ph.i55

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63: ; preds = %.lr.ph.i55.prol.loopexit, %.lr.ph.i55, %bb.u
  %storemerge.in.lcssa.i62 = phi i64 [ %i.en, %bb.u ], [ %storemerge12.i53, %.lr.ph.i55.prol.loopexit ], [ %storemerge.i59, %.lr.ph.i55 ]
  store i64 %5, ptr %i.em, align 8, !tbaa !1222
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in.lcssa.i62 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !802
  store i32 %i.gc, ptr %i.ev, align 4, !tbaa !802
  store i32 0, ptr %i.gb, align 4, !tbaa !802
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !802
  store i32 %i.ge, ptr %i.fa, align 4, !tbaa !802
  store i32 0, ptr %i.gd, align 4, !tbaa !802
  br label %bb.v

bb.v:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit
  %.pre126 = phi ptr [ %.pre125, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit.thread ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit63 ], [ %.pre, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE13shrink_to_fitEm.exit ] ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.pre126, i64 %5
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = add i64 %i.gg, 7
  %i.gi = and i64 %i.gh, -8
  %i.gj = inttoptr i64 %i.gi to ptr               ; 4 uses
  %i.gk = urem i64 %i.c, %5                       ; 3 uses
  %i.gl = sub i64 %i.b, %i.gk
  %i.gm = urem i64 %i.gl, %5                      ; 2 uses
  %i.gn = add i64 %i.gk, %i.gm
  %i.go = sub i64 %i.b, %i.gn
  %i.gp = udiv i64 %i.go, %5                      ; 4 uses
  %i.gq = udiv i64 %i.c, %5                       ; 2 uses
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = shl i64 %i.gp, 3
  %i.gt = ashr exact i64 %i.gs, 3                 ; 3 uses
  %.mask.i = and i64 %i.gp, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %min.iters.check = icmp ult i64 %i.gt, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader128, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.gu = and i64 %i.gp, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.gt, %i.gu           ; 3 uses
  %i.gv = shl i64 %n.vec, 3
  %i.gw = getelementptr i8, ptr %i.gj, i64 %i.gv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.gx = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.gj, i64 %i.gx ; 2 uses
  %i.gy = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.gy, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !10525

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gu, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i.preheader128

.lr.ph.i.i.preheader128:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.gj, %.lr.ph.i.i.preheader ], [ %i.gw, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader128, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.hb, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader128 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.ha, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader128 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.ha = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.hb = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i64 = icmp eq i64 %i.hb, %i.gt
  br i1 %.not.i.i64, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i, !llvm.loop !10526

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.v
  %i.hc = load <2 x ptr>, ptr %0, align 8, !tbaa !2154
  store <2 x ptr> %i.hc, ptr %24, align 16, !tbaa !2154
  call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7move_opESB_EEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_T4_(ptr noundef %i.gj, ptr noundef nonnull align 8 dead_on_return %24, i64 noundef %5, i64 noundef %i.gk, i64 noundef %i.gq, i64 noundef %i.gr, i64 noundef %i.gm, ptr noundef %.pre126)
  %i.hd = load i64, ptr %i.em, align 8, !tbaa !1222 ; 2 uses
  %.not.i65 = icmp eq i64 %i.hd, 0
  br i1 %.not.i65, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.he = trunc i64 %i.hd to i32
  %i.hf = shl i32 %i.he, 1
  %i.hg = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.hf
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.em, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEmNS0_13adaptive_xbufIS8_S9_mEEEEvT_T0_T1_SM_SM_RT2_RSM_SP_SP_SP_b.exit, %bb.s, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive26adaptive_merge_final_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_bbT0_RT1_(ptr noundef align 8 dead_on_return %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(24) %8) local_unnamed_addr #3 comdat {
bb.a:
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %.not = xor i1 %7, true
  %i.a = icmp ne i64 %3, %4                       ; 2 uses
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, %1                           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.e = trunc i64 %i.d to i32
  %i.f = shl i32 %i.e, 1
  %i.g = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.f
  store i32 %i.g, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.c, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %bb.b, %.preheader.i.i
  %or.cond3 = and i1 %i.a, %7
  %i.h = select i1 %or.cond3, i64 %4, i64 0       ; 2 uses
  %i.i = sub i64 %3, %i.h                         ; 4 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !1931   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1934 ; 6 uses
  %.not.i.i = icmp eq i64 %3, %i.h                ; 2 uses
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !973, !noalias !10527
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3
  %i.r = add nsw i64 %i.q, %i.i                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.r, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.i
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp sgt i64 %i.r, 0
  %i.u = lshr i64 %i.r, 7                         ; 2 uses
  %i.v = or disjoint i64 %i.u, -144115188075855872
  %i.w = select i1 %i.t, i64 %i.u, i64 %i.v       ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !973, !noalias !10527
  %i.z = shl nsw i64 %i.w, 7
  %i.aa = sub nsw i64 %i.r, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aa
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, %bb.d, %bb.e
  %.sroa.6.1.i = phi ptr [ %i.l, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit ], [ %i.l, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.j, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit ], [ %i.s, %bb.d ], [ %i.ab, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.j, ptr %9, align 8, !tbaa !1931
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.l, ptr %i.ac, align 8, !tbaa !1934
  store ptr %.sroa.0.0.i, ptr %10, align 8, !tbaa !1931
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ad, align 8, !tbaa !1934
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE9make_heapES9_S9_SG_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10)
  store ptr %i.j, ptr %11, align 8, !tbaa !1931
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.l, ptr %i.ae, align 8, !tbaa !1934
  store ptr %.sroa.0.0.i, ptr %12, align 8, !tbaa !1931
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %.sroa.6.1.i, ptr %i.af, align 8, !tbaa !1934
  call void @_ZN5boost7movelib16heap_sort_helperINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEE9sort_heapES9_S9_SG_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !1931  ; 7 uses
  store ptr %i.ag, ptr %13, align 8, !tbaa !1931
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !1934 ; 9 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !1934
  call void @llvm.experimental.noalias.scope.decl(metadata !10530)
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22, label %bb.f

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !973, !noalias !10530
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 3
  %i.ao = add nsw i64 %i.an, %i.i                 ; 4 uses
  %or.cond.i.i19 = icmp ult i64 %i.ao, 128
  br i1 %or.cond.i.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.i
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22

bb.h:                                             ; preds = %bb.f
  %i.aq = icmp sgt i64 %i.ao, 0
  %i.ar = lshr i64 %i.ao, 7                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -144115188075855872
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !973, !noalias !10530
  %i.aw = shl nsw i64 %i.at, 7
  %i.ax = sub nsw i64 %i.ao, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, %bb.g, %bb.h
  %.sroa.6.1.i20 = phi ptr [ %i.ai, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.ai, %bb.g ], [ %i.au, %bb.h ]
  %.sroa.0.0.i21 = phi ptr [ %i.ag, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.ap, %bb.g ], [ %i.ay, %bb.h ]
  store ptr %.sroa.0.0.i21, ptr %14, align 8, !tbaa !1931, !alias.scope !10530
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.6.1.i20, ptr %i.az, align 8, !tbaa !1934, !alias.scope !10530
  call void @llvm.experimental.noalias.scope.decl(metadata !10533)
  %.not.i.i23 = icmp eq i64 %i.b, 0
  br i1 %.not.i.i23, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit27, label %bb.i

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !973, !noalias !10533
  %i.bb = ptrtoint ptr %i.ag to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3
  %i.bf = add nsw i64 %i.be, %i.b                 ; 4 uses
  %or.cond.i.i24 = icmp ult i64 %i.bf, 128
  br i1 %or.cond.i.i24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.b
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit27

bb.k:                                             ; preds = %bb.i
  %i.bh = icmp sgt i64 %i.bf, 0
  %i.bi = lshr i64 %i.bf, 7                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -144115188075855872
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.bk ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !973, !noalias !10533
  %i.bn = shl nsw i64 %i.bk, 7
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit27

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit27: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22, %bb.j, %bb.k
  %.sroa.6.1.i25 = phi ptr [ %i.ai, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22 ], [ %i.ai, %bb.j ], [ %i.bl, %bb.k ]
  %.sroa.0.0.i26 = phi ptr [ %i.ag, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit22 ], [ %i.bg, %bb.j ], [ %i.bp, %bb.k ]
  store ptr %.sroa.0.0.i26, ptr %15, align 8, !tbaa !1931, !alias.scope !10533
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %.sroa.6.1.i25, ptr %i.bq, align 8, !tbaa !1934, !alias.scope !10533
  call void @_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_(ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit27
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SK_SK_T0_RT1_:bb.a
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1931   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1934 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !973
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1225 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1934
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1934
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1934
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %i.b, ptr %4, align 8, !tbaa !1931
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ax, ptr %i.bc, align 8, !tbaa !1934
  store ptr %i.a, ptr %5, align 8, !tbaa !1931
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.az, ptr %i.bd, align 8, !tbaa !1934
  store ptr %i.x, ptr %6, align 8, !tbaa !1931
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !1934
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = shl i32 %i.bh, 1
  %i.bj = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bi
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bf, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  store ptr %i.b, ptr %7, align 8, !tbaa !1931
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1934
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !1934
  store ptr %i.a, ptr %8, align 8, !tbaa !1931
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1934
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !1934
  store ptr %i.x, ptr %9, align 8, !tbaa !1931
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !1934
  %i.bt = load ptr, ptr %3, align 8, !tbaa !1224
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef %i.bt, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEES8_EEvT_SH_SH_T0_T1_NS0_9iter_sizeISH_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1931   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1934 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1934 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !973
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.al, ptr %3, align 4, !tbaa !802
  store i32 0, ptr %i.a, align 4, !tbaa !802
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !802
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !802
  store i32 0, ptr %i.ao, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.am, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %4, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.aq = add i64 %4, -1                          ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %4, 2
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !802
  store i32 %i.au, ptr %i.as, align 4, !tbaa !802
  store i32 0, ptr %i.at, align 4, !tbaa !802
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.av, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !802
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !802
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !802
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !802
  store i32 0, ptr %i.be, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.bc, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod29 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod29)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge15.i.epil.init ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !802
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !802
  store i32 0, ptr %i.bl, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.bj, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !802
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !802
  store i32 0, ptr %i.bn, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.bq, ptr %i.ao, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  store ptr %i.a, ptr %8, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.i, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.b, ptr %9, align 8, !tbaa !1931
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.g, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.d, ptr %10, align 8, !tbaa !1931
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.aa, ptr %i.bt, align 8, !tbaa !1934
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %3, i64 noundef %4)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bu = trunc i64 %4 to i32
  %i.bv = shl i32 %i.bu, 1
  %i.bw = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.bv
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13: ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.by = trunc i64 %4 to i32
  %i.bz = shl i32 %i.by, 1
  %i.ca = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12, %i.bz
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.bx

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit: ; preds = %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !1934 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1934 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1934 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %i.a, ptr %5, align 8, !tbaa !1931
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !1934
  store ptr %i.b, ptr %6, align 8, !tbaa !1931
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.ce, ptr %i.ci, align 8, !tbaa !1934
  store ptr %i.d, ptr %7, align 8, !tbaa !1931
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cg, ptr %i.cj, align 8, !tbaa !1934
  %i.ck = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.cl = ptrtoint ptr %i.cc to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = shl nsw i64 %i.cm, 4
  %i.co = load ptr, ptr %i.ce, align 8, !tbaa !973
  %i.cp = ptrtoint ptr %i.b to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3                 ; 2 uses
  %i.ct = add nsw i64 %i.cs, %i.cn
  %i.cu = load ptr, ptr %i.cc, align 8, !tbaa !973
  %i.cv = ptrtoint ptr %i.a to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  %i.cz = sub i64 %i.ct, %i.cy
  %i.da = ptrtoint ptr %i.cg to i64
  %i.db = sub i64 %i.da, %i.ck
  %i.dc = shl nsw i64 %i.db, 4
  %i.dd = load ptr, ptr %i.cg, align 8, !tbaa !973
  %i.de = ptrtoint ptr %i.d to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 3
  %i.di = add nsw i64 %i.dh, %i.dc
  %i.dj = sub i64 %i.di, %i.cs
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.cz, i64 noundef %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_NS0_9iter_sizeISH_E4typeESK_T0_SK_T1_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %9 = alloca %"class.boost::container::deque_iterator", align 16 ; 4 uses
  %10 = alloca %"class.boost::movelib::range_xbuf.90", align 8 ; 6 uses
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
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %6
  store ptr %5, ptr %10, align 8, !tbaa !4412
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %5, ptr %i.d, align 8, !tbaa !4414
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.c, ptr %i.e, align 8, !tbaa !4415
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !2154
  store <2 x ptr> %i.f, ptr %7, align 16, !tbaa !2154
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !2154
  store <2 x ptr> %i.g, ptr %8, align 16, !tbaa !2154
  %i.h = load <2 x ptr>, ptr %2, align 8, !tbaa !2154
  store <2 x ptr> %i.h, ptr %9, align 16, !tbaa !2154
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opENS0_10range_xbufIS8_mSH_EEEEvT_SK_SK_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dereferenceable(24) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.i = add i64 %4, %3                           ; 2 uses
  %i.j = icmp eq i64 %i.i, 2
  %i.k = load ptr, ptr %0, align 8, !tbaa !1931   ; 13 uses
  br i1 %i.j, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !1931   ; 4 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !802
  %i.n = load i32, ptr %i.k, align 4, !tbaa !802  ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.k, align 4, !tbaa !802
  %i.p = load i32, ptr %i.l, align 4, !tbaa !802
  store i32 %i.p, ptr %i.k, align 4, !tbaa !802
  store i32 %i.n, ptr %i.l, align 4, !tbaa !802
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !802
  store i32 0, ptr %i.q, align 4, !tbaa !802
  %i.t = load i32, ptr %i.r, align 4, !tbaa !802
end_hunk_15
begin_hunk_16_@_ZN5boost7movelib17insertion_sort_opINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEESG_NS0_7move_opEEEvT0_SI_T1_T_T2_:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.g, ptr %i.c, align 4, !tbaa !802
  store i32 0, ptr %i.a, align 4, !tbaa !802
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.h, align 4, !tbaa !802
  store i32 %i.j, ptr %i.i, align 4, !tbaa !802
  store i32 0, ptr %i.h, align 4, !tbaa !802
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !973
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1024
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %bb.c, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit, !prof !35

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !973
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit: ; preds = %bb.b, %bb.c
  %.sroa.044.1 = phi ptr [ %i.p, %bb.c ], [ %i.k, %bb.b ]
  %.sroa.1148.1 = phi ptr [ %i.o, %bb.c ], [ %i.e, %bb.b ]
  %.promoted = load ptr, ptr %i.f, align 8, !tbaa !1934
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer: ; preds = %bb.p, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit
  %.ph = phi ptr [ %i.aa, %bb.p ], [ %i.a, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.ph70 = phi ptr [ %i.ab, %bb.p ], [ %.promoted, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.sroa.044.0.ph = phi ptr [ %i.bw, %bb.p ], [ %.sroa.044.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ]
  %.sroa.1148.0.ph = phi ptr [ %i.bv, %bb.p ], [ %.sroa.1148.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit ] ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.1148.0.ph, i64 -8 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.1148.0.ph, i64 -8 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer, %.critedge
  %i.s = phi ptr [ %i.aa, %.critedge ], [ %.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ]
  %i.t = phi ptr [ %i.ab, %.critedge ], [ %.ph70, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ] ; 3 uses
  %.sroa.044.0 = phi ptr [ %i.bs, %.critedge ], [ %.sroa.044.0.ph, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !1931
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !973
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1024
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1, !prof !35

bb.d:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !973  ; 2 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !1931
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8, %bb.d
  %i.aa = phi ptr [ %i.u, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8 ], [ %i.z, %bb.d ] ; 8 uses
  %i.ab = phi ptr [ %i.t, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8 ], [ %i.y, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !1931
  %.not52 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not52, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1
  %i.ad = load ptr, ptr %.sroa.1148.0.ph, align 8, !tbaa !973 ; 4 uses
  %i.ae = icmp eq ptr %.sroa.044.0, %i.ad         ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.g, !prof !35

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !973 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit: ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.af, %bb.f ], [ %i.ad, %bb.g ]
  %.sroa.12.1 = phi ptr [ %i.q, %bb.f ], [ %.sroa.1148.0.ph, %bb.g ]
  %storemerge.i = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %bb.g ] ; 5 uses
  %i.aj = load i32, ptr %i.aa, align 4, !tbaa !802
  %i.ak = load i32, ptr %storemerge.i, align 4, !tbaa !802 ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  store i32 %i.ak, ptr %.sroa.044.0, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i, align 4, !tbaa !802
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 4
  %i.ao = load i32, ptr %i.am, align 4, !tbaa !802
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !802
  store i32 0, ptr %i.am, align 4, !tbaa !802
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.ap = load ptr, ptr %i.r, align 8, !tbaa !973 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3: ; preds = %bb.i, %bb.j
  %i.as = phi ptr [ %i.ap, %bb.i ], [ %i.ad, %bb.j ]
  %.sroa.11.2 = phi ptr [ %i.r, %bb.i ], [ %.sroa.1148.0.ph, %bb.j ]
  %storemerge.i2 = phi ptr [ %i.aq, %bb.i ], [ %i.ar, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !1931  ; 2 uses
  %.not5354 = icmp eq ptr %storemerge.i, %i.at
  br i1 %.not5354, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7
  %i.au = phi ptr [ %i.bn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %i.as, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %i.av = phi ptr [ %i.bb, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %i.ai, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.11.058 = phi ptr [ %.sroa.11.3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.11.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.029.057 = phi ptr [ %storemerge.i6, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %storemerge.i2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 5 uses
  %.sroa.12.056 = phi ptr [ %.sroa.12.2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.12.1, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %.sroa.019.055 = phi ptr [ %storemerge.i4, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %storemerge.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ] ; 2 uses
  %i.aw = icmp eq ptr %.sroa.019.055, %i.av
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !35

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds i8, ptr %.sroa.12.056, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !973 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5

bb.l:                                             ; preds = %.lr.ph
  %i.ba = getelementptr inbounds i8, ptr %.sroa.019.055, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5: ; preds = %bb.k, %bb.l
  %i.bb = phi ptr [ %i.ay, %bb.k ], [ %i.av, %bb.l ]
  %.sroa.12.2 = phi ptr [ %i.ax, %bb.k ], [ %.sroa.12.056, %bb.l ]
  %storemerge.i4 = phi ptr [ %i.az, %bb.k ], [ %i.ba, %bb.l ] ; 5 uses
  %i.bc = load i32, ptr %i.aa, align 4, !tbaa !802
  %i.bd = load i32, ptr %storemerge.i4, align 4, !tbaa !802 ; 2 uses
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.m, label %.critedge

bb.m:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5
  store i32 %i.bd, ptr %.sroa.029.057, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i4, align 4, !tbaa !802
  %i.bf = getelementptr inbounds nuw i8, ptr %storemerge.i4, i64 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.029.057, i64 4
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !802
  store i32 %i.bh, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bf, align 4, !tbaa !802
  %i.bi = icmp eq ptr %.sroa.029.057, %i.au
  br i1 %i.bi, label %bb.n, label %bb.o, !prof !35

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %.sroa.11.058, i64 -8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !973 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7

bb.o:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds i8, ptr %.sroa.029.057, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7: ; preds = %bb.n, %bb.o
  %i.bn = phi ptr [ %i.bk, %bb.n ], [ %i.au, %bb.o ]
  %.sroa.11.3 = phi ptr [ %i.bj, %bb.n ], [ %.sroa.11.058, %bb.o ]
  %storemerge.i6 = phi ptr [ %i.bl, %bb.n ], [ %i.bm, %bb.o ] ; 2 uses
  %.not53 = icmp eq ptr %storemerge.i4, %i.at
  br i1 %.not53, label %.critedge, label %.lr.ph, !llvm.loop !12233

.critedge:                                        ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit
  %.sroa.029.1 = phi ptr [ %.sroa.044.0, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit ], [ %storemerge.i2, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit3 ], [ %storemerge.i6, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit7 ], [ %.sroa.029.057, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit5 ] ; 2 uses
  %i.bo = load i32, ptr %i.aa, align 4, !tbaa !802
  store i32 %i.bo, ptr %.sroa.029.1, align 4, !tbaa !802
  store i32 0, ptr %i.aa, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.029.1, i64 4
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ad, i64 1024
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %bb.p, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8, !prof !35, !llvm.loop !12234

bb.p:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.1148.0.ph, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !973
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit8.outer, !llvm.loop !12234

.loopexit:                                        ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit1, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive16slow_stable_sortINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEEEEvT_SI_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %3 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %4 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1931   ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1931   ; 10 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %._crit_edge.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1934 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1934 ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = shl nsw i64 %i.j, 4
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !973
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = add nsw i64 %i.p, %i.k
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = sub i64 %i.q, %i.v                       ; 5 uses
  %i.x = icmp ugt i64 %i.w, 16
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %bb.a
  %.0.i220 = phi i64 [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit ], [ 0, %bb.a ]
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre191 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1934, !noalias !12235
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

.lr.ph:                                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1934, !noalias !12238 ; 10 uses
  %i.aa = ptrtoint ptr %i.b to i64
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !973, !noalias !3125 ; 5 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit
  %.033180 = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit ] ; 5 uses
  %.not.i.i = icmp eq i64 %.033180, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i64 %i.ad, %.033180             ; 7 uses
  %or.cond.i.i = icmp ult i64 %i.ae, 128
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.033180
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.033180
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp sgt i64 %i.ae, 0
  %i.ai = lshr i64 %i.ae, 7                       ; 2 uses
  %i.aj = or disjoint i64 %i.ai, -144115188075855872
  %i.ak = select i1 %i.ah, i64 %i.ai, i64 %i.aj   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !973, !noalias !12238 ; 2 uses
  %i.an = shl nsw i64 %i.ak, 7
  %i.ao = sub nsw i64 %i.ae, %i.an
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  %i.aq = icmp sgt i64 %i.ae, 0
  %i.ar = lshr i64 %i.ae, 7                       ; 2 uses
  %i.as = or disjoint i64 %i.ar, -144115188075855872
  %i.at = select i1 %i.aq, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !973, !noalias !12241 ; 2 uses
  %i.aw = shl nsw i64 %i.at, 7
  %i.ax = sub nsw i64 %i.ae, %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39: ; preds = %bb.b, %bb.d, %bb.e
  %i.az = phi ptr [ %i.am, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ] ; 2 uses
  %i.ba = phi ptr [ %i.av, %bb.e ], [ %.pre, %bb.d ], [ %.pre, %bb.b ]
  %.sroa.0.0.i155 = phi ptr [ %i.ap, %bb.e ], [ %i.af, %bb.d ], [ %i.b, %bb.b ] ; 4 uses
  %.sroa.6.1.i153 = phi ptr [ %i.al, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.6.1.i37 = phi ptr [ %i.au, %bb.e ], [ %i.z, %bb.d ], [ %i.z, %bb.b ]
  %.sroa.0.0.i38 = phi ptr [ %i.ay, %bb.e ], [ %i.ag, %bb.d ], [ %i.b, %bb.b ] ; 2 uses
  %i.bb = ptrtoint ptr %.sroa.0.0.i38 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = add nsw i64 %i.be, 16                   ; 3 uses
  %or.cond.i.i40 = icmp ult i64 %i.bf, 128
  br i1 %or.cond.i.i40, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i38, i64 128
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43

bb.g:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit39
  %i.bh = icmp sgt i64 %i.be, -16
  %i.bi = lshr i64 %i.bf, 7                       ; 2 uses
  %i.bj = or disjoint i64 %i.bi, -144115188075855872
  %i.bk = select i1 %i.bh, i64 %i.bi, i64 %i.bj   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.sroa.6.1.i37, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !973, !noalias !12244
  %i.bn = shl nsw i64 %i.bk, 7
  %i.bo = sub nsw i64 %i.bf, %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bo
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43: ; preds = %bb.f, %bb.g
  %.sroa.0.0.i42 = phi ptr [ %i.bp, %bb.g ], [ %i.bg, %bb.f ] ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i155, %.sroa.0.0.i42
  br i1 %.not.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i155, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 1024
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %bb.i, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, !prof !35

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i153, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !973 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i: ; preds = %bb.i, %bb.h
  %i.bv = phi ptr [ %i.bu, %bb.i ], [ %i.az, %bb.h ]
  %.sroa.15.1.i = phi ptr [ %i.bt, %bb.i ], [ %.sroa.6.1.i153, %bb.h ]
  %.sroa.022.1.i = phi ptr [ %i.bu, %bb.i ], [ %i.bq, %bb.h ] ; 2 uses
  %.not3140.i = icmp eq ptr %.sroa.022.1.i, %.sroa.0.0.i42
  br i1 %.not3140.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i
  %i.bw = phi ptr [ %i.dn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %i.bv, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 3 uses
  %.sroa.022.042.i = phi ptr [ %.sroa.022.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %.sroa.022.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 7 uses
  %.sroa.15.041.i = phi ptr [ %.sroa.15.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i ], [ %.sroa.15.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i ] ; 4 uses
  %i.bx = icmp eq ptr %.sroa.022.042.i, %i.bw
  br i1 %i.bx, label %bb.j, label %bb.k, !prof !35

bb.j:                                             ; preds = %.lr.ph43.i
  %i.by = getelementptr inbounds i8, ptr %.sroa.15.041.i, i64 -8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !973
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

bb.k:                                             ; preds = %.lr.ph43.i
  %i.cb = getelementptr inbounds i8, ptr %.sroa.022.042.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i: ; preds = %bb.k, %bb.j
  %.sroa.13.1.i = phi ptr [ %i.by, %bb.j ], [ %.sroa.15.041.i, %bb.k ] ; 3 uses
  %storemerge.i.i = phi ptr [ %i.ca, %bb.j ], [ %i.cb, %bb.k ] ; 8 uses
  %i.cc = load i32, ptr %.sroa.022.042.i, align 4, !tbaa !802 ; 3 uses
  %i.cd = load i32, ptr %storemerge.i.i, align 4, !tbaa !802
  %i.ce = icmp slt i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.l, label %bb.s

bb.l:                                             ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  store i32 0, ptr %.sroa.022.042.i, align 4, !tbaa !802
  %i.cf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i, i64 4 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !802
  store i32 0, ptr %i.cg, align 4, !tbaa !802
  %i.ci = add i32 %i.cf, 2
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.cj = load i32, ptr %storemerge.i.i, align 4, !tbaa !802
  store i32 %i.cj, ptr %.sroa.022.042.i, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i.i, align 4, !tbaa !802
  %i.ck = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !802
  store i32 %i.cl, ptr %i.cg, align 4, !tbaa !802
  store i32 0, ptr %i.ck, align 4, !tbaa !802
  %.not3233.i = icmp eq ptr %storemerge.i.i, %.sroa.0.0.i155
  br i1 %.not3233.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %.pre.i = load ptr, ptr %.sroa.13.1.i, align 8, !tbaa !973 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i, %.lr.ph.preheader.i
  %i.cm = phi ptr [ %i.de, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.cn = phi ptr [ %i.ct, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.037.i = phi ptr [ %storemerge.i3.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.9.036.i = phi ptr [ %.sroa.9.1.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.013.035.i = phi ptr [ %storemerge.i5.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %storemerge.i.i, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.13.034.i = phi ptr [ %.sroa.13.2.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.13.1.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.co = icmp eq ptr %.sroa.0.037.i, %i.cn
  br i1 %i.co, label %bb.m, label %bb.n, !prof !35

bb.m:                                             ; preds = %.lr.ph.i
  %i.cp = getelementptr inbounds i8, ptr %.sroa.9.036.i, i64 -8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !973 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 1016
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.cs = getelementptr inbounds i8, ptr %.sroa.0.037.i, i64 -8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = phi ptr [ %i.cq, %bb.m ], [ %i.cn, %bb.n ]
  %.sroa.9.1.i = phi ptr [ %i.cp, %bb.m ], [ %.sroa.9.036.i, %bb.n ]
  %storemerge.i3.i = phi ptr [ %i.cr, %bb.m ], [ %i.cs, %bb.n ] ; 5 uses
  %i.cu = load i32, ptr %storemerge.i3.i, align 4, !tbaa !802 ; 2 uses
  %i.cv = icmp slt i32 %i.cc, %i.cu
  br i1 %i.cv, label %bb.p, label %._crit_edge.i

bb.p:                                             ; preds = %bb.o
  store i32 %i.cu, ptr %.sroa.013.035.i, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i3.i, align 4, !tbaa !802
  %i.cw = getelementptr inbounds nuw i8, ptr %storemerge.i3.i, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i, i64 4
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !802
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !802
  store i32 0, ptr %i.cw, align 4, !tbaa !802
  %i.cz = icmp eq ptr %.sroa.013.035.i, %i.cm
  br i1 %i.cz, label %bb.q, label %bb.r, !prof !35

bb.q:                                             ; preds = %bb.p
  %i.da = getelementptr inbounds i8, ptr %.sroa.13.034.i, i64 -8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !973 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i

bb.r:                                             ; preds = %bb.p
  %i.dd = getelementptr inbounds i8, ptr %.sroa.013.035.i, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i: ; preds = %bb.r, %bb.q
  %i.de = phi ptr [ %i.db, %bb.q ], [ %i.cm, %bb.r ]
  %.sroa.13.2.i = phi ptr [ %i.da, %bb.q ], [ %.sroa.13.034.i, %bb.r ]
  %storemerge.i5.i = phi ptr [ %i.dc, %bb.q ], [ %i.dd, %bb.r ] ; 2 uses
  %.not32.i = icmp eq ptr %storemerge.i3.i, %.sroa.0.0.i155
  br i1 %.not32.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !12012

._crit_edge.i:                                    ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i, %bb.o, %bb.l
  %.sroa.013.0.lcssa.i = phi ptr [ %storemerge.i.i, %bb.l ], [ %storemerge.i5.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i ], [ %.sroa.013.035.i, %bb.o ] ; 2 uses
  store i32 %i.cc, ptr %.sroa.013.0.lcssa.i, align 4, !tbaa !802
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i, i64 4
  store i32 %i.ch, ptr %i.df, align 4, !tbaa !802
  %i.dg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.dh = add i32 %i.dg, -2
  store i32 %i.dh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bw, i64 1024
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.t, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i, !prof !35

bb.t:                                             ; preds = %bb.s
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.15.041.i, i64 8 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !973 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i: ; preds = %bb.t, %bb.s
  %i.dn = phi ptr [ %i.dm, %bb.t ], [ %i.bw, %bb.s ]
  %.sroa.15.2.i = phi ptr [ %i.dl, %bb.t ], [ %.sroa.15.041.i, %bb.s ]
  %.sroa.022.2.i = phi ptr [ %i.dm, %bb.t ], [ %i.di, %bb.s ] ; 2 uses
  %.not31.i = icmp eq ptr %.sroa.022.2.i, %.sroa.0.0.i42
  br i1 %.not31.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit, label %.lr.ph43.i, !llvm.loop !12013

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit43, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i
  %i.do = add nuw i64 %.033180, 16                ; 4 uses
  %i.dp = sub i64 %i.w, %i.do
  %i.dq = icmp ugt i64 %i.dp, 16
  br i1 %i.dq, label %bb.b, label %bb.u, !llvm.loop !12247

bb.u:                                             ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit
  %i.dr = load ptr, ptr %i.z, align 8, !tbaa !973, !noalias !12235
  %i.ds = ptrtoint ptr %i.b to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = ashr exact i64 %i.du, 3
  %i.dw = add nsw i64 %i.dv, %i.do                ; 4 uses
  %or.cond.i.i45 = icmp ult i64 %i.dw, 128
  br i1 %or.cond.i.i45, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.do
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

bb.w:                                             ; preds = %bb.u
  %i.dy = icmp sgt i64 %i.dw, 0
  %i.dz = lshr i64 %i.dw, 7                       ; 2 uses
  %i.ea = or disjoint i64 %i.dz, -144115188075855872
  %i.eb = select i1 %i.dy, i64 %i.dz, i64 %i.ea   ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.eb ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !973, !noalias !12235
  %i.ee = shl nsw i64 %i.eb, 7
  %i.ef = sub nsw i64 %i.dw, %i.ee
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.ef
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48: ; preds = %._crit_edge.thread, %bb.v, %bb.w
  %.0.i219229 = phi i64 [ %.0.i220, %._crit_edge.thread ], [ %i.w, %bb.v ], [ %i.w, %bb.w ] ; 6 uses
  %8 = phi i1 [ false, %._crit_edge.thread ], [ true, %bb.v ], [ true, %bb.w ]
  %.sroa.6.1.i46 = phi ptr [ %.pre191, %._crit_edge.thread ], [ %i.z, %bb.v ], [ %i.ec, %bb.w ] ; 3 uses
  %.sroa.0.0.i47 = phi ptr [ %i.b, %._crit_edge.thread ], [ %i.dx, %bb.v ], [ %i.eg, %bb.w ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not.i49 = icmp eq ptr %.sroa.0.0.i47, %i.a
  br i1 %.not.i49, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %bb.x

bb.x:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i47, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.6.1.i46, align 8, !tbaa !973 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1024
  %i.em = icmp eq ptr %i.ej, %i.el
  br i1 %i.em, label %bb.y, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50, !prof !35

bb.y:                                             ; preds = %bb.x
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.6.1.i46, i64 8 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !973 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50: ; preds = %bb.y, %bb.x
  %i.ep = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %bb.x ]
  %.sroa.15.1.i51 = phi ptr [ %i.en, %bb.y ], [ %.sroa.6.1.i46, %bb.x ]
  %.sroa.022.1.i52 = phi ptr [ %i.eo, %bb.y ], [ %i.ej, %bb.x ] ; 2 uses
  %.not3140.i53 = icmp eq ptr %.sroa.022.1.i52, %i.a
  br i1 %.not3140.i53, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %.lr.ph43.i54

.lr.ph43.i54:                                     ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60
  %i.eq = phi ptr [ %i.gh, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %i.ep, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 3 uses
  %.sroa.022.042.i55 = phi ptr [ %.sroa.022.2.i62, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %.sroa.022.1.i52, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 7 uses
  %.sroa.15.041.i56 = phi ptr [ %.sroa.15.2.i61, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60 ], [ %.sroa.15.1.i51, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50 ] ; 4 uses
  %i.er = icmp eq ptr %.sroa.022.042.i55, %i.eq
  br i1 %i.er, label %bb.z, label %bb.aa, !prof !35

bb.z:                                             ; preds = %.lr.ph43.i54
  %i.es = getelementptr inbounds i8, ptr %.sroa.15.041.i56, i64 -8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !973
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57

bb.aa:                                            ; preds = %.lr.ph43.i54
  %i.ev = getelementptr inbounds i8, ptr %.sroa.022.042.i55, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57: ; preds = %bb.aa, %bb.z
  %.sroa.13.1.i58 = phi ptr [ %i.es, %bb.z ], [ %.sroa.15.041.i56, %bb.aa ] ; 3 uses
  %storemerge.i.i59 = phi ptr [ %i.eu, %bb.z ], [ %i.ev, %bb.aa ] ; 8 uses
  %i.ew = load i32, ptr %.sroa.022.042.i55, align 4, !tbaa !802 ; 3 uses
  %i.ex = load i32, ptr %storemerge.i.i59, align 4, !tbaa !802
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57
  store i32 0, ptr %.sroa.022.042.i55, align 4, !tbaa !802
  %i.ez = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i55, i64 4 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !802
  store i32 0, ptr %i.fa, align 4, !tbaa !802
  %i.fc = add i32 %i.ez, 2
  store i32 %i.fc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.fd = load i32, ptr %storemerge.i.i59, align 4, !tbaa !802
  store i32 %i.fd, ptr %.sroa.022.042.i55, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i.i59, align 4, !tbaa !802
  %i.fe = getelementptr inbounds nuw i8, ptr %storemerge.i.i59, i64 4 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !802
  store i32 %i.ff, ptr %i.fa, align 4, !tbaa !802
  store i32 0, ptr %i.fe, align 4, !tbaa !802
  %.not3233.i64 = icmp eq ptr %storemerge.i.i59, %.sroa.0.0.i47
  br i1 %.not3233.i64, label %._crit_edge.i74, label %.lr.ph.preheader.i65

.lr.ph.preheader.i65:                             ; preds = %bb.ab
  %.pre.i66 = load ptr, ptr %.sroa.13.1.i58, align 8, !tbaa !973 ; 2 uses
  br label %.lr.ph.i67

.lr.ph.i67:                                       ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76, %.lr.ph.preheader.i65
  %i.fg = phi ptr [ %i.fy, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.fh = phi ptr [ %i.fn, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.pre.i66, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.0.037.i68 = phi ptr [ %storemerge.i3.i73, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.9.036.i69 = phi ptr [ %.sroa.9.1.i72, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %.sroa.013.035.i70 = phi ptr [ %storemerge.i5.i78, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %storemerge.i.i59, %.lr.ph.preheader.i65 ] ; 5 uses
  %.sroa.13.034.i71 = phi ptr [ %.sroa.13.2.i77, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.13.1.i58, %.lr.ph.preheader.i65 ] ; 2 uses
  %i.fi = icmp eq ptr %.sroa.0.037.i68, %i.fh
  br i1 %i.fi, label %bb.ac, label %bb.ad, !prof !35

bb.ac:                                            ; preds = %.lr.ph.i67
  %i.fj = getelementptr inbounds i8, ptr %.sroa.9.036.i69, i64 -8 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !973 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1016
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i67
  %i.fm = getelementptr inbounds i8, ptr %.sroa.0.037.i68, i64 -8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fn = phi ptr [ %i.fk, %bb.ac ], [ %i.fh, %bb.ad ]
  %.sroa.9.1.i72 = phi ptr [ %i.fj, %bb.ac ], [ %.sroa.9.036.i69, %bb.ad ]
  %storemerge.i3.i73 = phi ptr [ %i.fl, %bb.ac ], [ %i.fm, %bb.ad ] ; 5 uses
  %i.fo = load i32, ptr %storemerge.i3.i73, align 4, !tbaa !802 ; 2 uses
  %i.fp = icmp slt i32 %i.ew, %i.fo
  br i1 %i.fp, label %bb.af, label %._crit_edge.i74

bb.af:                                            ; preds = %bb.ae
  store i32 %i.fo, ptr %.sroa.013.035.i70, align 4, !tbaa !802
  store i32 0, ptr %storemerge.i3.i73, align 4, !tbaa !802
  %i.fq = getelementptr inbounds nuw i8, ptr %storemerge.i3.i73, i64 4 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i70, i64 4
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !802
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !802
  store i32 0, ptr %i.fq, align 4, !tbaa !802
  %i.ft = icmp eq ptr %.sroa.013.035.i70, %i.fg
  br i1 %i.ft, label %bb.ag, label %bb.ah, !prof !35

bb.ag:                                            ; preds = %bb.af
  %i.fu = getelementptr inbounds i8, ptr %.sroa.13.034.i71, i64 -8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !973 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1016
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76

bb.ah:                                            ; preds = %bb.af
  %i.fx = getelementptr inbounds i8, ptr %.sroa.013.035.i70, i64 -8
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76: ; preds = %bb.ah, %bb.ag
  %i.fy = phi ptr [ %i.fv, %bb.ag ], [ %i.fg, %bb.ah ]
  %.sroa.13.2.i77 = phi ptr [ %i.fu, %bb.ag ], [ %.sroa.13.034.i71, %bb.ah ]
  %storemerge.i5.i78 = phi ptr [ %i.fw, %bb.ag ], [ %i.fx, %bb.ah ] ; 2 uses
  %.not32.i79 = icmp eq ptr %storemerge.i3.i73, %.sroa.0.0.i47
  br i1 %.not32.i79, label %._crit_edge.i74, label %.lr.ph.i67, !llvm.loop !12012

._crit_edge.i74:                                  ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76, %bb.ae, %bb.ab
  %.sroa.013.0.lcssa.i75 = phi ptr [ %storemerge.i.i59, %bb.ab ], [ %storemerge.i5.i78, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit6.i76 ], [ %.sroa.013.035.i70, %bb.ae ] ; 2 uses
  store i32 %i.ew, ptr %.sroa.013.0.lcssa.i75, align 4, !tbaa !802
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i75, i64 4
  store i32 %i.fb, ptr %i.fz, align 4, !tbaa !802
  %i.ga = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.gb = add i32 %i.ga, -2
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i74, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmmEv.exit.i57
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.022.042.i55, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.eq, i64 1024
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %bb.aj, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60, !prof !35

bb.aj:                                            ; preds = %bb.ai
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.15.041.i56, i64 8 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !973 ; 2 uses
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60: ; preds = %bb.aj, %bb.ai
  %i.gh = phi ptr [ %i.gg, %bb.aj ], [ %i.eq, %bb.ai ]
  %.sroa.15.2.i61 = phi ptr [ %i.gf, %bb.aj ], [ %.sroa.15.041.i56, %bb.ai ]
  %.sroa.022.2.i62 = phi ptr [ %i.gg, %bb.aj ], [ %i.gc, %bb.ai ] ; 2 uses
  %.not31.i63 = icmp eq ptr %.sroa.022.2.i62, %i.a
  br i1 %.not31.i63, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80, label %.lr.ph43.i54, !llvm.loop !12013

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit7.i60, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit48, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEppEv.exit.i50
  br i1 %8, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ak

._crit_edge189:                                   ; preds = %.thread, %bb.bk, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS2_14deque_iteratorIPSA_Lb0ELj0ELj0EmEEEEvT0_SH_T_.exit80
  ret void

bb.ak:                                            ; preds = %.lr.ph188, %bb.bk
  %.032186 = phi i64 [ 16, %.lr.ph188 ], [ %i.ol, %bb.bk ] ; 13 uses
  %i.go = sub i64 %.0.i219229, %.032186
  %i.gp = icmp ugt i64 %i.go, %.032186            ; 2 uses
  br i1 %i.gp, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.gq = shl i64 %.032186, 1                     ; 6 uses
  %i.gr = icmp ugt i64 %.0.i219229, %i.gq
  br i1 %i.gr, label %.lr.ph183, label %._crit_edge184.thread

.lr.ph183:                                        ; preds = %bb.al
  %.not.i.i91 = icmp eq i64 %.032186, 0
  %.not.i.i101 = icmp eq i64 %i.gq, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph183, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit
  %.0181 = phi i64 [ 0, %.lr.ph183 ], [ %i.ky, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEEEEvT_SH_SH_T0_.exit ] ; 7 uses
  %i.gs = load ptr, ptr %0, align 8, !tbaa !1931, !noalias !12248 ; 8 uses
  %i.gt = load ptr, ptr %i.eh, align 8, !tbaa !1934, !noalias !12248 ; 11 uses
  %.not.i.i81 = icmp eq i64 %.0181, 0             ; 2 uses
  br i1 %.not.i.i81, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit90, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !973, !noalias !12248
  %i.gv = ptrtoint ptr %i.gs to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = ashr exact i64 %i.gx, 3
  %i.gz = add nsw i64 %i.gy, %.0181               ; 7 uses
end_hunk_16
begin_hunk_17_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b:bb.a
  %vec.ind.next302 = add <4 x i8> %vec.ind299, splat (i8 4)
  %i.fa = icmp eq i64 %index.next301, %n.vec293
  br i1 %i.fa, label %vec.epilog.middle.block303, label %vec.epilog.vector.body297, !llvm.loop !12626

vec.epilog.middle.block303:                       ; preds = %vec.epilog.vector.body297
  %cmp.n304 = icmp eq i64 %i.es, %n.vec293
  br i1 %cmp.n304, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85, label %.lr.ph.i.i81.preheader

.lr.ph.i.i81.preheader:                           ; preds = %iter.check288, %vec.epilog.iter.check290, %vec.epilog.middle.block303
  %.010.i.i82.ph = phi i64 [ 0, %iter.check288 ], [ %n.vec277, %vec.epilog.iter.check290 ], [ %n.vec293, %vec.epilog.middle.block303 ]
  %.079.i.i83.ph = phi ptr [ %0, %iter.check288 ], [ %i.ev, %vec.epilog.iter.check290 ], [ %i.ey, %vec.epilog.middle.block303 ]
  br label %.lr.ph.i.i81

.lr.ph.i.i81:                                     ; preds = %.lr.ph.i.i81.preheader, %.lr.ph.i.i81
  %.010.i.i82 = phi i64 [ %i.fd, %.lr.ph.i.i81 ], [ %.010.i.i82.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.fc, %.lr.ph.i.i81 ], [ %.079.i.i83.ph, %.lr.ph.i.i81.preheader ] ; 2 uses
  %i.fb = trunc i64 %.010.i.i82 to i8
  store i8 %i.fb, ptr %.079.i.i83, align 1, !tbaa !3215
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 1
  %i.fd = add nuw i64 %.010.i.i82, 1              ; 2 uses
  %.not.i.i84 = icmp eq i64 %i.fd, %i.es
  br i1 %.not.i.i84, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85, label %.lr.ph.i.i81, !llvm.loop !12627

_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85: ; preds = %.lr.ph.i.i81, %middle.block285, %vec.epilog.middle.block303, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i86 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i86, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85
  %i.fh = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !973, !noalias !12628
  %i.fi = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i87 = icmp ult i64 %i.fm, 128
  br i1 %or.cond.i.i.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sroa.0127.2163, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 7                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -144115188075855872
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !973, !noalias !12628
  %i.fu = shl nsw i64 %i.fr, 7
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2164.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85 ], [ %.sroa.17.2164.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0127.2163, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit85 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !3229
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !1931, !alias.scope !12631
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !1934, !alias.scope !12631
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !3229
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !1931, !alias.scope !12634
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !1934, !alias.scope !12634
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2164.ph, align 8, !tbaa !973
  %i.fy = ptrtoint ptr %.sroa.0127.2163 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i91 = icmp ult i64 %i.gc, 128
  br i1 %or.cond.i.i91, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0127.2163, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, !llvm.loop !12637

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 7                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -144115188075855872
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2164.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !973
  %i.gk = shl nsw i64 %i.gh, 7
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !12637

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_13adaptive_xbufISA_SB_mEEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_bbRT3_T2_b(ptr noundef %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %13 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %14 = alloca %"class.boost::container::deque_iterator", align 8 ; 7 uses
  %15 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = shl i64 %3, 1                            ; 15 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 4 uses
  %i.c = udiv i64 %2, %i.a                        ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !1931   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1934 ; 7 uses
  %i.g = zext i1 %.not.i to i64
  %i.h = add nuw i64 %i.c, %i.g                   ; 7 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  br i1 %or.cond, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not61160 = icmp eq i64 %i.h, 0
  br i1 %.not61160, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph: ; preds = %.preheader
  %i.i = urem i64 %3, %4                          ; 6 uses
  %i.j = udiv i64 %3, %4                          ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  br i1 %5, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph
  br i1 %6, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.c
  %.059163.us.us.ph = phi i64 [ %i.af, %bb.c ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.us.ph = phi ptr [ %i.aq, %bb.c ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.us.ph = phi ptr [ %i.au, %bb.c ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer, %bb.d
  %.059163.us.us = phi i64 [ %i.af, %bb.d ], [ %.059163.us.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 2 uses
  %.sroa.0129.0161.us.us = phi ptr [ %i.av, %bb.d ], [ %.sroa.0129.0161.us.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer ] ; 3 uses
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
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader

.lr.ph.i.i.us.us.preheader:                       ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us
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
  store <2 x i64> %vec.ind219, ptr %next.gep221, align 8, !tbaa !36
  store <2 x i64> %step.add220, ptr %i.ab, align 8, !tbaa !36
  %index.next222 = add nuw i64 %index218, 4       ; 2 uses
  %vec.ind.next223 = add nuw <2 x i64> %vec.ind219, splat (i64 4)
  %i.ac = icmp eq i64 %index.next222, %n.vec216
  br i1 %i.ac, label %middle.block224, label %vector.body217, !llvm.loop !12638

middle.block224:                                  ; preds = %vector.body217
  %cmp.n225 = icmp eq i64 %i.x, 0
  br i1 %cmp.n225, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us.preheader246

.lr.ph.i.i.us.us.preheader246:                    ; preds = %.lr.ph.i.i.us.us.preheader, %middle.block224
  %.010.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.us.preheader ], [ %n.vec216, %middle.block224 ]
  %.079.i.i.us.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.us.preheader ], [ %i.z, %middle.block224 ]
  br label %.lr.ph.i.i.us.us

.lr.ph.i.i.us.us:                                 ; preds = %.lr.ph.i.i.us.us.preheader246, %.lr.ph.i.i.us.us
  %.010.i.i.us.us = phi i64 [ %i.ae, %.lr.ph.i.i.us.us ], [ %.010.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  %.079.i.i.us.us = phi ptr [ %i.ad, %.lr.ph.i.i.us.us ], [ %.079.i.i.us.us.ph, %.lr.ph.i.i.us.us.preheader246 ] ; 2 uses
  store i64 %.010.i.i.us.us, ptr %.079.i.i.us.us, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i.i.us.us, i64 8
  %i.ae = add nuw i64 %.010.i.i.us.us, 1          ; 2 uses
  %.not.i.i.us.us = icmp eq i64 %i.ae, %i.w
  br i1 %.not.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, label %.lr.ph.i.i.us.us, !llvm.loop !12639

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us: ; preds = %.lr.ph.i.i.us.us, %middle.block224, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us.us, ptr %13, align 8, !tbaa !1931
  store ptr %.sroa.17.0162.us.us.ph, ptr %i.m, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %13, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.u, i64 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.af = add nuw i64 %.059163.us.us, 1           ; 3 uses
  %.not62.us.us = icmp eq i64 %i.af, %i.h
  br i1 %.not62.us.us, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us
  %i.ag = load ptr, ptr %.sroa.17.0162.us.us.ph, align 8, !tbaa !973
  %i.ah = ptrtoint ptr %.sroa.0129.0161.us.us to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = add nsw i64 %i.ak, %i.a                 ; 4 uses
  %or.cond.i.us.us = icmp ult i64 %i.al, 128
  br i1 %or.cond.i.us.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp sgt i64 %i.al, 0
  %i.an = lshr i64 %i.al, 7                       ; 2 uses
  %i.ao = or disjoint i64 %i.an, -144115188075855872
  %i.ap = select i1 %i.am, i64 %i.an, i64 %i.ao   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.us.ph, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !973
  %i.as = shl nsw i64 %i.ap, 7
  %i.at = sub nsw i64 %i.al, %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.at
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us.outer

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161.us.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.us

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer, %bb.g
  %.059163.us = phi i64 [ %i.bo, %bb.g ], [ %.059163.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 2 uses
  %.sroa.0129.0161.us = phi ptr [ %i.ce, %bb.g ], [ %.sroa.0129.0161.us.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer ] ; 3 uses
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
  br i1 %.not8.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us.preheader

.lr.ph.i.i.us.preheader:                          ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us
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
  store <2 x i64> %vec.ind204, ptr %next.gep206, align 8, !tbaa !36
  store <2 x i64> %step.add205, ptr %i.bk, align 8, !tbaa !36
  %index.next207 = add nuw i64 %index203, 4       ; 2 uses
  %vec.ind.next208 = add nuw <2 x i64> %vec.ind204, splat (i64 4)
  %i.bl = icmp eq i64 %index.next207, %n.vec201
  br i1 %i.bl, label %middle.block209, label %vector.body202, !llvm.loop !12640

middle.block209:                                  ; preds = %vector.body202
  %cmp.n210 = icmp eq i64 %i.bg, 0
  br i1 %cmp.n210, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us.preheader250

.lr.ph.i.i.us.preheader250:                       ; preds = %.lr.ph.i.i.us.preheader, %middle.block209
  %.010.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.us.preheader ], [ %n.vec201, %middle.block209 ]
  %.079.i.i.us.ph = phi ptr [ %0, %.lr.ph.i.i.us.preheader ], [ %i.bi, %middle.block209 ]
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.preheader250, %.lr.ph.i.i.us
  %.010.i.i.us = phi i64 [ %i.bn, %.lr.ph.i.i.us ], [ %.010.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  %.079.i.i.us = phi ptr [ %i.bm, %.lr.ph.i.i.us ], [ %.079.i.i.us.ph, %.lr.ph.i.i.us.preheader250 ] ; 2 uses
  store i64 %.010.i.i.us, ptr %.079.i.i.us, align 8, !tbaa !36
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i.i.us, i64 8
  %i.bn = add nuw i64 %.010.i.i.us, 1             ; 2 uses
  %.not.i.i.us = icmp eq i64 %i.bn, %i.bf
  br i1 %.not.i.i.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, label %.lr.ph.i.i.us, !llvm.loop !12641

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us: ; preds = %.lr.ph.i.i.us, %middle.block209, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  store ptr %.sroa.0129.0161.us, ptr %14, align 8, !tbaa !1931
  store ptr %.sroa.17.0162.us.ph, ptr %i.l, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISN_E4typeESQ_SQ_SQ_SQ_T2_T3_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %14, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.bd, i64 noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  %i.bo = add nuw i64 %.059163.us, 1              ; 3 uses
  %.not62.us = icmp eq i64 %i.bo, %i.h
  br i1 %.not62.us, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us
  %i.bp = load ptr, ptr %.sroa.17.0162.us.ph, align 8, !tbaa !973
  %i.bq = ptrtoint ptr %.sroa.0129.0161.us to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, %i.a                 ; 4 uses
  %or.cond.i.us = icmp ult i64 %i.bu, 128
  br i1 %or.cond.i.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = icmp sgt i64 %i.bu, 0
  %i.bw = lshr i64 %i.bu, 7                       ; 2 uses
  %i.bx = or disjoint i64 %i.bw, -144115188075855872
  %i.by = select i1 %i.bv, i64 %i.bw, i64 %i.bx   ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.us.ph, i64 %i.by ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !973
  %i.cb = shl nsw i64 %i.by, 7
  %i.cc = sub nsw i64 %i.bu, %i.cb
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cc
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us, %bb.f
  %.059163.us.ph = phi i64 [ %i.bo, %bb.f ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  %.sroa.17.0162.us.ph = phi ptr [ %i.bz, %bb.f ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ] ; 3 uses
  %.sroa.0129.0161.us.ph = phi ptr [ %i.cd, %bb.f ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph.split.us ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us

bb.g:                                             ; preds = %bb.e
  %i.ce = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161.us, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.us

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer, %bb.i
  %.059163 = phi i64 [ %i.cx, %bb.i ], [ %.059163.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer ] ; 2 uses
  %.sroa.0129.0161 = phi ptr [ %i.de, %bb.i ], [ %.sroa.0129.0161.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer ] ; 3 uses
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
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !36
  store <2 x i64> %step.add, ptr %i.ct, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !12642

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i.preheader254

.lr.ph.i.i.preheader254:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader254, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.cw, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader254 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.cw = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.cw, %i.co
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, label %.lr.ph.i.i, !llvm.loop !12643

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit
  store ptr %.sroa.0129.0161, ptr %15, align 8, !tbaa !1931
  store ptr %.sroa.17.0162.ph, ptr %i.k, align 8, !tbaa !1934
  call void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessENS_9container14deque_iteratorIPSt4pairINS5_4test24movable_and_copyable_intES9_ELb0ELj0ELj0EmEENS5_3dtl23flat_tree_value_compareISt4lessIS9_ESA_NSD_9select1stIS9_EEEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_(ptr noundef %0, ptr noundef nonnull align 8 dead_on_return %15, i64 noundef %4, i64 noundef 0, i64 noundef %i.j, i64 noundef %i.cm, i64 noundef %i.ci)
  %i.cx = add nuw i64 %.059163, 1                 ; 3 uses
  %.not62 = icmp eq i64 %i.cx, %i.h
  br i1 %.not62, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit
  %i.cy = load ptr, ptr %.sroa.17.0162.ph, align 8, !tbaa !973
  %i.cz = ptrtoint ptr %.sroa.0129.0161 to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = ashr exact i64 %i.db, 3
  %i.dd = add nsw i64 %i.dc, %i.a                 ; 4 uses
  %or.cond.i = icmp ult i64 %i.dd, 128
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.0129.0161, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

bb.j:                                             ; preds = %bb.h
  %i.df = icmp sgt i64 %i.dd, 0
  %i.dg = lshr i64 %i.dd, 7                       ; 2 uses
  %i.dh = or disjoint i64 %i.dg, -144115188075855872
  %i.di = select i1 %i.df, i64 %i.dg, i64 %i.dh   ; 2 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %.sroa.17.0162.ph, i64 %i.di ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !973
  %i.dl = shl nsw i64 %i.di, 7
  %i.dm = sub nsw i64 %i.dd, %i.dl
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dk, i64 %i.dm
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.outer: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph, %bb.j
  %.059163.ph = phi i64 [ %i.cx, %bb.j ], [ 0, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  %.sroa.17.0162.ph = phi ptr [ %i.dj, %bb.j ], [ %i.f, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph ] ; 3 uses
  %.sroa.0129.0161.ph = phi ptr [ %i.dn, %bb.j ], [ %i.d, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiEl.exit

bb.k:                                             ; preds = %bb.a
  %i.do = add i64 %i.h, -1
  %i.dp = mul i64 %i.do, %i.a                     ; 3 uses
  %.not.i68 = icmp eq i64 %i.dp, 0
  br i1 %.not.i68, label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dq = load ptr, ptr %i.f, align 8, !tbaa !973
  %i.dr = ptrtoint ptr %i.d to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = add nsw i64 %i.du, %i.dp                ; 4 uses
  %or.cond.i69 = icmp ult i64 %i.dv, 128
  br i1 %or.cond.i69, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71

bb.n:                                             ; preds = %bb.l
  %i.dx = icmp sgt i64 %i.dv, 0
  %i.dy = lshr i64 %i.dv, 7                       ; 2 uses
  %i.dz = or disjoint i64 %i.dy, -144115188075855872
  %i.ea = select i1 %i.dx, i64 %i.dy, i64 %i.dz   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !973
  %i.ed = shl nsw i64 %i.ea, 7
  %i.ee = sub nsw i64 %i.dv, %i.ed
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ee
  br label %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71

_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71: ; preds = %bb.m, %bb.n, %bb.k
  %.sroa.0129.5 = phi ptr [ %i.d, %bb.k ], [ %i.ef, %bb.n ], [ %i.dw, %bb.m ]
  %.sroa.17.7 = phi ptr [ %i.f, %bb.k ], [ %i.eb, %bb.n ], [ %i.f, %bb.m ]
  %.not63164 = icmp eq i64 %i.h, 0
  br i1 %.not63164, label %.loopexit, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph: ; preds = %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71
  %i.eg = urem i64 %3, %4                         ; 2 uses
  %i.eh = udiv i64 %3, %4                         ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ek = sub nsw i64 0, %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer: ; preds = %bb.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph
  %.0167.ph = phi i64 [ %i.el, %bb.w ], [ %i.h, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph ]
  %.sroa.17.2166.ph = phi ptr [ %i.gi, %bb.w ], [ %.sroa.17.7, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph ] ; 6 uses
  %.sroa.0129.2165.ph = phi ptr [ %i.gm, %bb.w ], [ %.sroa.0129.5, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.lr.ph ]
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer, %bb.v
  %.0167 = phi i64 [ %i.el, %bb.v ], [ %.0167.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer ]
  %.sroa.0129.2165 = phi ptr [ %i.gd, %bb.v ], [ %.sroa.0129.2165.ph, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer ] ; 5 uses
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
  br i1 %.not8.i.i82, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87, label %.lr.ph.i.i83.preheader

.lr.ph.i.i83.preheader:                           ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
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
  store <2 x i64> %vec.ind234, ptr %next.gep236, align 8, !tbaa !36
  store <2 x i64> %step.add235, ptr %i.fa, align 8, !tbaa !36
  %index.next237 = add nuw i64 %index233, 4       ; 2 uses
  %vec.ind.next238 = add nuw <2 x i64> %vec.ind234, splat (i64 4)
  %i.fb = icmp eq i64 %index.next237, %n.vec231
  br i1 %i.fb, label %middle.block239, label %vector.body232, !llvm.loop !12644

middle.block239:                                  ; preds = %vector.body232
  %cmp.n240 = icmp eq i64 %i.ew, 0
  br i1 %cmp.n240, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87, label %.lr.ph.i.i83.preheader243

.lr.ph.i.i83.preheader243:                        ; preds = %.lr.ph.i.i83.preheader, %middle.block239
  %.010.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i83.preheader ], [ %n.vec231, %middle.block239 ]
  %.079.i.i85.ph = phi ptr [ %0, %.lr.ph.i.i83.preheader ], [ %i.ey, %middle.block239 ]
  br label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %.lr.ph.i.i83.preheader243, %.lr.ph.i.i83
  %.010.i.i84 = phi i64 [ %i.fd, %.lr.ph.i.i83 ], [ %.010.i.i84.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  %.079.i.i85 = phi ptr [ %i.fc, %.lr.ph.i.i83 ], [ %.079.i.i85.ph, %.lr.ph.i.i83.preheader243 ] ; 2 uses
  store i64 %.010.i.i84, ptr %.079.i.i85, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i85, i64 8
  %i.fd = add nuw i64 %.010.i.i84, 1              ; 2 uses
  %.not.i.i86 = icmp eq i64 %i.fd, %i.ev
  br i1 %.not.i.i86, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87, label %.lr.ph.i.i83, !llvm.loop !12645

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87: ; preds = %.lr.ph.i.i83, %middle.block239, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.es ; 2 uses
  %i.ff = mul i64 %i.es, %4
  %i.fg = add i64 %i.ff, %i.ep                    ; 3 uses
  %.not.i.i.i88 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i88, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87
  %i.fh = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !973, !noalias !12646
  %i.fi = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3
  %i.fm = add nsw i64 %i.fl, %i.fg                ; 4 uses
  %or.cond.i.i.i89 = icmp ult i64 %i.fm, 128
  br i1 %or.cond.i.i.i89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds [8 x i8], ptr %.sroa.0129.2165, i64 %i.fg
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fo = icmp sgt i64 %i.fm, 0
  %i.fp = lshr i64 %i.fm, 7                       ; 2 uses
  %i.fq = or disjoint i64 %i.fp, -144115188075855872
  %i.fr = select i1 %i.fo, i64 %i.fp, i64 %i.fq   ; 2 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.fr ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !973, !noalias !12646
  %i.fu = shl nsw i64 %i.fr, 7
  %i.fv = sub nsw i64 %i.fm, %i.fu
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ft, i64 %i.fv
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i: ; preds = %bb.q, %bb.p, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87
  %.sroa.6.1.i.i = phi ptr [ %.sroa.17.2166.ph, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87 ], [ %.sroa.17.2166.ph, %bb.p ], [ %i.fs, %bb.q ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0129.2165, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit87 ], [ %i.fn, %bb.p ], [ %i.fw, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %9, align 8, !tbaa !3102
  store ptr %.sroa.0.0.i.i, ptr %10, align 8, !tbaa !1931, !alias.scope !12649
  store ptr %.sroa.6.1.i.i, ptr %i.ej, align 8, !tbaa !1934, !alias.scope !12649
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.s:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.i
  store ptr %i.fe, ptr %11, align 8, !tbaa !3102
  store ptr %.sroa.0.0.i.i, ptr %12, align 8, !tbaa !1931, !alias.scope !12652
  store ptr %.sroa.6.1.i.i, ptr %i.ei, align 8, !tbaa !1934, !alias.scope !12652
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_INS_9container14deque_iteratorIPSt4pairINS9_4test24movable_and_copyable_intESD_ELb0ELj0ELj0EmEEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISD_ESE_NSI_9select1stISD_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeIST_E4typeESW_SW_SW_SW_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.ep, i64 noundef %i.et, i64 noundef %i.eh, i64 noundef 0)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not65 = icmp eq i64 %i.el, 0
  br i1 %.not65, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = load ptr, ptr %.sroa.17.2166.ph, align 8, !tbaa !973
  %i.fy = ptrtoint ptr %.sroa.0129.2165 to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = ashr exact i64 %i.ga, 3
  %i.gc = sub nsw i64 %i.gb, %i.a                 ; 4 uses
  %or.cond.i.i93 = icmp ult i64 %i.gc, 128
  br i1 %or.cond.i.i93, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gd = getelementptr inbounds [8 x i8], ptr %.sroa.0129.2165, i64 %i.ek
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, !llvm.loop !12655

bb.w:                                             ; preds = %bb.u
  %i.ge = icmp sgt i64 %i.gc, 0
  %i.gf = lshr i64 %i.gc, 7                       ; 2 uses
  %i.gg = or disjoint i64 %i.gf, -144115188075855872
  %i.gh = select i1 %i.ge, i64 %i.gf, i64 %i.gg   ; 2 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sroa.17.2166.ph, i64 %i.gh ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !973
  %i.gk = shl nsw i64 %i.gh, 7
  %i.gl = sub nsw i64 %i.gc, %i.gk
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.gj, i64 %i.gl
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit.outer, !llvm.loop !12655

.loopexit:                                        ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufINS_9container14deque_iteratorIPSt4pairINS6_4test24movable_and_copyable_intESA_ELb0ELj0ELj0EmEEmNS0_7move_opEEEEEvT_T0_T1_SI_SI_RT2_RSI_SL_SL_SL_b.exit.us.us, %bb.t, %.preheader, %_ZN5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEpLEl.exit71
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive18merge_blocks_rightINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSB_9select1stIS7_EEEESA_SH_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_T2_b(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #4 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.47", align 8 ; 5 uses
  %i.a = add i64 %4, %3                           ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1931, !noalias !12656 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1934, !noalias !12656 ; 4 uses
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !973, !noalias !12656
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add nsw i64 %i.i, %i.a                   ; 4 uses
  %or.cond.i.i = icmp ult i64 %i.j, 128
  br i1 %or.cond.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.a
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp sgt i64 %i.j, 0
  %i.m = lshr i64 %i.j, 7                         ; 2 uses
  %i.n = or disjoint i64 %i.m, -144115188075855872
  %i.o = select i1 %i.l, i64 %i.m, i64 %i.n       ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !973, !noalias !12656
  %i.r = shl nsw i64 %i.o, 7
  %i.s = sub nsw i64 %i.j, %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.6.1.i = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.c ], [ %i.p, %bb.d ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.b, %bb.a ], [ %i.k, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.u = mul i64 %i.a, %2
  %i.v = add i64 %i.u, %5                         ; 3 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !1931, !noalias !12659 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1934, !noalias !12659 ; 4 uses
  %.not.i.i11 = icmp eq i64 %i.v, 0
  br i1 %.not.i.i11, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15, label %bb.e

bb.e:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !973, !noalias !12659
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, %i.v                 ; 4 uses
  %or.cond.i.i12 = icmp ult i64 %i.ae, 128
  br i1 %or.cond.i.i12, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.v
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp sgt i64 %i.ae, 0
  %i.ah = lshr i64 %i.ae, 7                       ; 2 uses
  %i.ai = or disjoint i64 %i.ah, -144115188075855872
  %i.aj = select i1 %i.ag, i64 %i.ah, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !973, !noalias !12659
  %i.am = shl nsw i64 %i.aj, 7
  %i.an = sub nsw i64 %i.ae, %i.am
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.an
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit, %bb.f, %bb.g
  %.sroa.6.1.i13 = phi ptr [ %i.y, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.y, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %.sroa.0.0.i14 = phi ptr [ %i.w, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit ], [ %i.af, %bb.f ], [ %i.ao, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15
  store ptr %.sroa.0.0.i, ptr %7, align 8, !tbaa !1931, !alias.scope !12662
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ap, align 8, !tbaa !1934, !alias.scope !12662
  store ptr %.sroa.0.0.i14, ptr %8, align 8, !tbaa !1931, !alias.scope !12665
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.6.1.i13, ptr %i.aq, align 8, !tbaa !1934, !alias.scope !12665
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SL_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISP_E4typeESS_SS_SS_SS_T2_T3_(ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %2, i64 noundef %5, i64 noundef %4, i64 noundef %3, i64 noundef 0)
  br label %_ZN5boost7movelib15detail_adaptive17merge_blocks_leftINS0_16reverse_iteratorINS_9container14deque_iteratorIPSt4pairINS4_4test24movable_and_copyable_intES8_ELb0ELj0ELj0EmEEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSE_9select1stIS8_EEEEEESC_SL_EEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_b.exit

bb.i:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEplEl.exit15
  store ptr %.sroa.0.0.i, ptr %9, align 8, !tbaa !1931, !alias.scope !12668
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.6.1.i, ptr %i.ar, align 8, !tbaa !1934, !alias.scope !12668
  store ptr %.sroa.0.0.i14, ptr %10, align 8, !tbaa !1931, !alias.scope !12671
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.6.1.i13, ptr %i.as, align 8, !tbaa !1934, !alias.scope !12671
end_hunk_17
begin_hunk_18_@_ZN5boost7movelib15detail_adaptive12stable_mergeINS_9container14deque_iteratorIPSt4pairINS3_4test24movable_and_copyable_intES7_ELb0ELj0ELj0EmEENS0_10antistableINS3_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_13adaptive_xbufIS8_S9_mEEEEvT_SM_SM_T0_RT1_:bb.a

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.w, %bb.b ], [ 0, %bb.a ]
  %i.x = load ptr, ptr %2, align 8, !tbaa !1931   ; 4 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1934 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = shl nsw i64 %i.af, 4
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.ai = ptrtoint ptr %i.x to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = add nsw i64 %i.al, %i.ag
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !973
  %i.ao = ptrtoint ptr %i.a to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = sub i64 %i.am, %i.ar
  %i.at = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 %i.as)
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1225 ; 2 uses
  %.not = icmp ult i64 %i.av, %i.at
  br i1 %.not, label %bb.c, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1934
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1934
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1934
  %i.bc = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.b, ptr %5, align 8, !tbaa !1931
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ax, ptr %i.bd, align 8, !tbaa !1934
  store ptr %i.a, ptr %6, align 8, !tbaa !1931
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.az, ptr %i.be, align 8, !tbaa !1934
  store ptr %i.x, ptr %7, align 8, !tbaa !1931
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bb, ptr %i.bf, align 8, !tbaa !1934
  store ptr %i.bc, ptr %8, align 8, !tbaa !3493
  call void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !1222 ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = shl i32 %i.bi, 1
  %i.bk = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.bj
  store i32 %i.bk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  store i64 0, ptr %i.bg, align 8, !tbaa !1222
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

bb.c:                                             ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6
  store ptr %i.b, ptr %9, align 8, !tbaa !1931
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1934
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !1934
  store ptr %i.a, ptr %10, align 8, !tbaa !1931
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1934
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !1934
  store ptr %i.x, ptr %11, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !1934
  %i.bu = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.bu, ptr %12, align 8, !tbaa !3493
  %i.bv = load ptr, ptr %4, align 8, !tbaa !1224
  call void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef %i.bv, i64 noundef %i.av)
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit6.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib21merge_adaptive_ONlogNINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEES8_EEvT_SJ_SJ_T0_T1_NS0_9iter_sizeISJ_E4typeE(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %7 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %8 = alloca %"class.boost::container::deque_iterator", align 8 ; 5 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 4 uses
  %10 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %11 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %12 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %13 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 6 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !1931   ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %5, 0
  br i1 %.not, label %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1934 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1934 ; 3 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = shl nsw i64 %i.l, 4
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !973
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = add nsw i64 %i.r, %i.m
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !973
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3
  %i.y = sub i64 %i.s, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1934 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.j
  %i.ad = shl nsw i64 %i.ac, 4
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !973
  %i.af = ptrtoint ptr %i.d to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = add nsw i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %i.r
  %i.al = load i32, ptr %i.a, align 4, !tbaa !802
  store i32 %i.al, ptr %4, align 4, !tbaa !802
  store i32 0, ptr %i.a, align 4, !tbaa !802
  %i.am = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !802
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !802
  store i32 0, ptr %i.ao, align 4, !tbaa !802
  %storemerge911.i = add i32 %i.am, 2
  store i32 %storemerge911.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %.not13.i = icmp eq i64 %5, 1
  br i1 %.not13.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %i.aq = add i64 %5, -1                          ; 3 uses
  %xtraiter = and i64 %i.aq, 1
  %i.ar = icmp eq i64 %5, 2
  br i1 %i.ar, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.aq, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %storemerge15.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %storemerge.i.1, %.lr.ph.i ] ; 4 uses
  %storemerge.in1014.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %storemerge.i, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !802
  store i32 %i.au, ptr %i.as, align 4, !tbaa !802
  store i32 0, ptr %i.at, align 4, !tbaa !802
  %i.av = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !802
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !802
  store i32 0, ptr %i.ax, align 4, !tbaa !802
  %storemerge9.i = add i32 %i.av, 2
  store i32 %storemerge9.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i = add nuw i64 %storemerge15.i, 1  ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.i ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !802
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !802
  store i32 0, ptr %i.ba, align 4, !tbaa !802
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !802
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !802
  store i32 0, ptr %i.be, align 4, !tbaa !802
  %storemerge9.i.1 = add i32 %i.bc, 2
  store i32 %storemerge9.i.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %storemerge.i.1 = add nuw i64 %storemerge15.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %storemerge15.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %storemerge.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %storemerge.in1014.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod30 = trunc i64 %i.aq to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge15.i.epil.init ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in1014.i.epil.init ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !802
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !802
  store i32 0, ptr %i.bh, align 4, !tbaa !802
  %i.bj = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !802
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !802
  store i32 0, ptr %i.bl, align 4, !tbaa !802
  %storemerge9.i.epil = add i32 %i.bj, 2
  store i32 %storemerge9.i.epil, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.d
  %storemerge.in.lcssa.i = phi i64 [ 0, %bb.d ], [ %storemerge.i, %.loopexit.loopexit.unr-lcssa ], [ %storemerge15.i.epil.init, %.lr.ph.i.epil.preheader ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %storemerge.in.lcssa.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !802
  store i32 %i.bo, ptr %i.a, align 4, !tbaa !802
  store i32 0, ptr %i.bn, align 4, !tbaa !802
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !802
  store i32 %i.bq, ptr %i.ao, align 4, !tbaa !802
  store i32 0, ptr %i.bp, align 4, !tbaa !802
  store ptr %i.a, ptr %10, align 8, !tbaa !1931
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.i, ptr %i.br, align 8, !tbaa !1934
  store ptr %i.b, ptr %11, align 8, !tbaa !1931
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.g, ptr %i.bs, align 8, !tbaa !1934
  store ptr %i.d, ptr %12, align 8, !tbaa !1931
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.aa, ptr %i.bt, align 8, !tbaa !1934
  %i.bu = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  store ptr %i.bu, ptr %13, align 8, !tbaa !3493
  invoke void @_ZN5boost7movelib31merge_adaptive_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEES8_NS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_SM_T1_(ptr noundef nonnull align 8 dead_on_return %10, ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %i.y, i64 noundef %i.ak, ptr noundef nonnull %4, i64 noundef %5, ptr noundef nonnull align 8 dead_on_return %13)
          to label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit unwind label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit: ; preds = %.loopexit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bv = trunc i64 %5 to i32
  %i.bw = shl i32 %i.bv, 1
  %i.bx = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i, %i.bw
  store i32 %i.bx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  br label %bb.e

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit13: ; preds = %.loopexit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.bz = trunc i64 %5 to i32
  %i.ca = shl i32 %i.bz, 1
  %i.cb = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i.i12, %i.ca
  store i32 %i.cb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !809
  resume { ptr, i32 } %i.by

_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit: ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1934 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1934 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1934 ; 3 uses
  %i.ci = load ptr, ptr %3, align 8, !tbaa !3679, !nonnull !3125
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.a, ptr %6, align 8, !tbaa !1931
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cd, ptr %i.cj, align 8, !tbaa !1934
  store ptr %i.b, ptr %7, align 8, !tbaa !1931
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.cf, ptr %i.ck, align 8, !tbaa !1934
  store ptr %i.d, ptr %8, align 8, !tbaa !1931
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ch, ptr %i.cl, align 8, !tbaa !1934
  %i.cm = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.cn = ptrtoint ptr %i.cd to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = shl nsw i64 %i.co, 4
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !973
  %i.cr = ptrtoint ptr %i.b to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 3                 ; 2 uses
  %i.cv = add nsw i64 %i.cu, %i.cp
  %i.cw = load ptr, ptr %i.cd, align 8, !tbaa !973
  %i.cx = ptrtoint ptr %i.a to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = sub i64 %i.cv, %i.da
  %i.dc = ptrtoint ptr %i.ch to i64
  %i.dd = sub i64 %i.dc, %i.cm
  %i.de = shl nsw i64 %i.dd, 4
  %i.df = load ptr, ptr %i.ch, align 8, !tbaa !973
  %i.dg = ptrtoint ptr %i.d to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = add nsw i64 %i.dj, %i.de
  %i.dl = sub i64 %i.dk, %i.cu
  store ptr %i.ci, ptr %9, align 8, !tbaa !3493
  call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_NS0_9iter_sizeISJ_E4typeESM_T0_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, ptr noundef nonnull align 8 dead_on_return %8, i64 noundef %i.db, i64 noundef %i.dl, ptr noundef nonnull align 8 dead_on_return %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %_ZN5boost7movelib16merge_bufferlessINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEEEEvT_SJ_SJ_T0_.exit, %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib17op_buffered_mergeINS_9container14deque_iteratorIPSt4pairINS2_4test24movable_and_copyable_intES6_ELb0ELj0ELj0EmEENS0_10antistableINS2_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSB_9select1stIS6_EEEEEENS0_7move_opENS0_13adaptive_xbufIS7_S8_mEEEEvT_SM_SM_T0_T1_RT2_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2, ptr noundef align 8 dead_on_return %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat {
bb.a:
  %5 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %6 = alloca %"class.boost::container::deque_iterator", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1931   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !1931   ; 8 uses
  %.not85 = icmp eq ptr %i.a, %i.b
  br i1 %.not85, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !1931   ; 2 uses
  %.not86 = icmp eq ptr %i.b, %i.c
  br i1 %.not86, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1934 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !973  ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 5 uses
  %i.k = add nsw i64 %i.j, -1                     ; 5 uses
  %or.cond.i = icmp ult i64 %i.k, 128             ; 2 uses
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds i8, ptr %i.b, i64 -8
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

bb.e:                                             ; preds = %bb.c
  %i.m = icmp sgt i64 %i.j, 1
  %i.n = lshr i64 %i.k, 7                         ; 2 uses
  %i.o = or disjoint i64 %i.n, -144115188075855872
  %i.p = select i1 %i.m, i64 %i.n, i64 %i.o       ; 2 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !973
  %i.s = shl nsw i64 %i.p, 7
  %i.t = sub nsw i64 %i.k, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  br label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.u, %bb.e ]
  %i.v = load i32, ptr %.0.i, align 4, !tbaa !802
  %i.w = load i32, ptr %i.b, align 4, !tbaa !802  ; 2 uses
  %.not87 = icmp slt i32 %i.v, %i.w
  br i1 %.not87, label %_ZN5boost7movelib26op_merge_with_right_placedINS0_10antistableINS_9container3dtl23flat_tree_value_compareISt4lessINS3_4test24movable_and_copyable_intEESt4pairIS8_S8_ENS4_9select1stIS8_EEEEEEPSB_NS3_14deque_iteratorISG_Lb0ELj0ELj0EmEENS0_7move_opEEEvT0_SK_T1_SL_SL_T_T2_.exit, label %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit

_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEmiERKS7_.exit: ; preds = %_ZNK5boost9container14deque_iteratorIPSt4pairINS0_4test24movable_and_copyable_intES4_ELb0ELj0ELj0EmEixEl.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1934 ; 4 uses
  %i.z = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = shl nsw i64 %i.ab, 4
  %i.ad = add nsw i64 %i.ac, %i.j
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !973 ; 2 uses
  %i.af = ptrtoint ptr %i.a to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub i64 %i.ad, %i.ai                    ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1934 ; 2 uses
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.z
  %i.ao = shl nsw i64 %i.an, 4
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !973
  %i.aq = ptrtoint ptr %i.c to i64
  %i.ar = ptrtoint ptr %i.ap to i64
end_hunk_18
