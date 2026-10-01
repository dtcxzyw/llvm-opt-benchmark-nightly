Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive14collect_uniqueIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SI_SK_T0_RT1_:bb.a
  %.not80 = icmp ult i64 %i.c, %2
  br i1 %.not80, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.d = icmp ne ptr %i.a, %1
  %i.e = icmp ne i64 %2, 1
  %i.f = and i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph152.preheader, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit133

.lr.ph152.preheader:                              ; preds = %.preheader
  %i.g = ptrtoint ptr %0 to i64
  br label %.lr.ph152

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %3, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !246
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.j ; 4 uses
  %i.l = load i16, ptr %0, align 1
  store i16 %i.l, ptr %i.k, align 1
  %i.m = load i64, ptr %i.i, align 8, !tbaa !246
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.i, align 8, !tbaa !246
  %i.o = icmp ne ptr %i.a, %1
  %i.p = icmp ne i64 %2, 1
  %i.q = and i1 %i.o, %i.p
  br i1 %i.q, label %.lr.ph, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit133

.lr.ph:                                           ; preds = %bb.c
  %i.r = ptrtoint ptr %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread
  %i.s = phi i64 [ %i.n, %.lr.ph ], [ %storemerge.i, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread ]
  %.0147 = phi i64 [ 1, %.lr.ph ], [ %i.ag, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread ]
  %.075144 = phi ptr [ %i.a, %.lr.ph ], [ %i.af, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread ] ; 3 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !245
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.s ; 5 uses
  %.not15.i = icmp eq ptr %i.u, %i.k
  br i1 %.not15.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.r
  %i.x = ashr exact i64 %i.w, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.017.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.x, %.lr.ph.preheader.i ] ; 2 uses
  %.01316.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.k, %.lr.ph.preheader.i ]
  %i.y = lshr i64 %.017.i, 1                      ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.01316.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2 ; 2 uses
  %.neg.i = xor i64 %i.y, -1
  %i.ab = add i64 %.017.i, %.neg.i                ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit, label %.lr.ph.i, !llvm.loop !34

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit: ; preds = %.lr.ph.i
  %i.ac = icmp eq ptr %i.aa, %i.u
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -2
  %cond.fr = freeze i1 %i.ac
  %spec.select = select i1 %cond.fr, ptr %.075144, ptr %i.ad
  br label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread

_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.thread: ; preds = %bb.d, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit
  %i.ae = phi ptr [ %spec.select, %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit ], [ %.075144, %bb.d ]
  %i.af = getelementptr i8, ptr %.075144, i64 2   ; 2 uses
  %i.ag = add nuw i64 %.0147, 1                   ; 3 uses
  %storemerge7.i = load i16, ptr %i.ae, align 1
  store i16 %storemerge7.i, ptr %i.u, align 1
  %storemerge.in.i = load i64, ptr %i.i, align 8, !tbaa !246
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 2 uses
  store i64 %storemerge.i, ptr %i.i, align 8, !tbaa !246
  %i.ah = icmp ne ptr %i.af, %1
  %i.ai = icmp ult i64 %i.ag, %2
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.d, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit133, !llvm.loop !3292

.lr.ph152:                                        ; preds = %.lr.ph152.preheader, %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit
  %.2151 = phi i64 [ %i.as, %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit ], [ 1, %.lr.ph152.preheader ]
  %.176148 = phi ptr [ %i.ar, %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit ], [ %i.a, %.lr.ph152.preheader ] ; 3 uses
  %.not15.i87 = icmp eq ptr %.176148, %0
  br i1 %.not15.i87, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit, label %.lr.ph.preheader.i88

.lr.ph.preheader.i88:                             ; preds = %.lr.ph152
  %i.ak = ptrtoint ptr %.176148 to i64
  %i.al = sub i64 %i.ak, %i.g
  %i.am = ashr exact i64 %i.al, 1
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89, %.lr.ph.preheader.i88
  %.017.i90 = phi i64 [ %i.aq, %.lr.ph.i89 ], [ %i.am, %.lr.ph.preheader.i88 ] ; 2 uses
  %.01316.i91 = phi ptr [ %i.ap, %.lr.ph.i89 ], [ %0, %.lr.ph.preheader.i88 ]
  %i.an = lshr i64 %.017.i90, 1                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.01316.i91, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.neg.i92 = xor i64 %i.an, -1
  %i.aq = add i64 %.017.i90, %.neg.i92            ; 2 uses
  %.not.i93 = icmp eq i64 %i.aq, 0
  br i1 %.not.i93, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit, label %.lr.ph.i89, !llvm.loop !34

_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit: ; preds = %.lr.ph.i89, %.lr.ph152
  %i.ar = getelementptr i8, ptr %.176148, i64 2   ; 2 uses
  %i.as = add nuw i64 %.2151, 1                   ; 3 uses
  %i.at = icmp ne ptr %i.ar, %1
  %i.au = icmp ult i64 %i.as, %2
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.lr.ph152, label %_ZN5boost7movelib10rotate_gcdIPSt4pairI5emptyS3_EEET_S6_S6_S6_.exit133, !llvm.loop !3293

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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !246  ; 2 uses
  %i.g = icmp ult i64 %i.f, %5
  br i1 %i.g, label %bb.d, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %8, align 8, !tbaa !245
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.f
  %i.j = load i16, ptr %0, align 1
  store i16 %i.j, ptr %i.i, align 1
  %storemerge.in6.i = load i64, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %storemerge7.i = add i64 %storemerge.in6.i, 1   ; 3 uses
  store i64 %storemerge7.i, ptr %i.e, align 8, !tbaa !246
  %.not8.i = icmp eq i64 %storemerge7.i, %5
  br i1 %.not8.i, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %storemerge10.i = phi i64 [ %storemerge.i, %.lr.ph.i ], [ %storemerge7.i, %bb.d ]
  %storemerge.in9.i = phi i64 [ %storemerge.in.i, %.lr.ph.i ], [ %storemerge.in6.i, %bb.d ]
  %i.k = load ptr, ptr %8, align 8, !tbaa !245    ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %storemerge10.i
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %storemerge.in9.i
  %i.n = load i16, ptr %i.m, align 1
  store i16 %i.n, ptr %i.l, align 1
  %storemerge.in.i = load i64, ptr %i.e, align 8, !tbaa !246 ; 2 uses
  %storemerge.i = add i64 %storemerge.in.i, 1     ; 3 uses
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !246
  %.not.i = icmp eq i64 %storemerge.i, %5
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.lr.ph.i, !llvm.loop !3294

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
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3295

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, %.lr.ph131.i
  %.069128.us.i.lcssa.unr = phi ptr [ poison, %.lr.ph131.i ], [ %.069128.us.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.0129.us.i.unr = phi ptr [ %0, %.lr.ph131.i ], [ %i.aa, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.069128.us.i.unr = phi ptr [ %i.u, %.lr.ph131.i ], [ %i.z, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %i.ab = icmp ult i64 %i.w, 14
  br i1 %i.ab, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit, label %.lr.ph131.i.new

.lr.ph131.i.new:                                  ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit
  %9 = shl i64 %5, 3
  %.idx = shl i64 %5, 2
  br label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %.lr.ph131.i.new
  %.0129.us.i = phi ptr [ %.0129.us.i.unr, %.lr.ph131.i.new ], [ %i.ae, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ]
  %.069128.us.i = phi ptr [ %.069128.us.i.unr, %.lr.ph131.i.new ], [ %i.ad, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ]
  %10 = getelementptr inbounds nuw i8, ptr %.069128.us.i, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 %.idx
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %11, i64 %5 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %5
  %i.ae = getelementptr inbounds nuw i8, ptr %.0129.us.i, i64 16 ; 2 uses
  %.not77.us.i.7 = icmp eq ptr %i.ae, %i.v
  br i1 %.not77.us.i.7, label %_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !37

_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_EEvT_T0_T1_NS0_9iter_sizeISH_E4typeESK_SK_SK_SK_T2_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %bb.f
  %.070.lcssa.i = phi ptr [ %i.d, %bb.f ], [ %.069128.us.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ], [ %i.ac, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ] ; 2 uses
  %i.af = mul i64 %i.t, %5
  %i.ag = getelementptr [2 x i8], ptr %i.u, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.q
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %.070.lcssa.i to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.070.lcssa.i, ptr noundef %i.ag, ptr noundef %i.ah, i64 noundef %i.al, i64 noundef %i.q)
  br label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit

bb.g:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !246 ; 3 uses
  %i.ao = icmp ugt i64 %i.an, %5
  br i1 %i.ao, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread: ; preds = %bb.g
  store i64 %5, ptr %i.am, align 8, !tbaa !246
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit: ; preds = %bb.g
  %i.ap = icmp ult i64 %i.an, %5
  br i1 %i.ap, label %bb.h, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85

bb.h:                                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit
  %i.aq = load ptr, ptr %8, align 8, !tbaa !245
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.an
  %i.as = load i16, ptr %0, align 1
  store i16 %i.as, ptr %i.ar, align 1
  %storemerge.in6.i76 = load i64, ptr %i.am, align 8, !tbaa !246 ; 2 uses
  %storemerge7.i77 = add i64 %storemerge.in6.i76, 1 ; 3 uses
  store i64 %storemerge7.i77, ptr %i.am, align 8, !tbaa !246
  %.not8.i78 = icmp eq i64 %storemerge7.i77, %5
  br i1 %.not8.i78, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.h, %.lr.ph.i79
  %storemerge10.i80 = phi i64 [ %storemerge.i83, %.lr.ph.i79 ], [ %storemerge7.i77, %bb.h ]
  %storemerge.in9.i81 = phi i64 [ %storemerge.in.i82, %.lr.ph.i79 ], [ %storemerge.in6.i76, %bb.h ]
  %i.at = load ptr, ptr %8, align 8, !tbaa !245   ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %storemerge10.i80
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %storemerge.in9.i81
  %i.aw = load i16, ptr %i.av, align 1
  store i16 %i.aw, ptr %i.au, align 1
  %storemerge.in.i82 = load i64, ptr %i.am, align 8, !tbaa !246 ; 2 uses
  %storemerge.i83 = add i64 %storemerge.in.i82, 1 ; 3 uses
  store i64 %storemerge.i83, ptr %i.am, align 8, !tbaa !246
  %.not.i84 = icmp eq i64 %storemerge.i83, %5
  br i1 %.not.i84, label %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85, label %.lr.ph.i79, !llvm.loop !3294

_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85: ; preds = %.lr.ph.i79, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit.thread, %bb.h, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE13shrink_to_fitEm.exit
  %i.ax = load ptr, ptr %8, align 8, !tbaa !245   ; 2 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %5
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 7
  %i.bb = and i64 %i.ba, -8
  %i.bc = inttoptr i64 %i.bb to ptr               ; 4 uses
  %i.bd = urem i64 %i.c, %5                       ; 3 uses
  %i.be = sub i64 %i.b, %i.bd
  %i.bf = urem i64 %i.be, %5                      ; 2 uses
  %i.bg = add i64 %i.bd, %i.bf
  %i.bh = sub i64 %i.b, %i.bg
  %i.bi = udiv i64 %i.bh, %5                      ; 4 uses
  %i.bj = udiv i64 %i.c, %5                       ; 2 uses
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = shl i64 %i.bi, 3
  %i.bm = ashr exact i64 %i.bl, 3                 ; 3 uses
  %.mask.i = and i64 %i.bi, 2305843009213693951
  %.not8.i.i = icmp eq i64 %.mask.i, 0
  br i1 %.not8.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85
  %min.iters.check = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader124, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %i.bn = and i64 %i.bi, 3                        ; 2 uses
  %n.vec = sub nuw nsw i64 %i.bm, %i.bn           ; 3 uses
  %i.bo = shl i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.bc, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bc, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !226
  store <2 x i64> %step.add, ptr %i.br, align 8, !tbaa !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i64> %vec.ind, splat (i64 4)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !3296

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bn, 0
  br i1 %cmp.n, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i.preheader124

.lr.ph.i.i.preheader124:                          ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader124, %.lr.ph.i.i
  %.010.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.bt, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader124 ] ; 2 uses
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !226
  %i.bt = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.bu = add i64 %.010.i.i, 1                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bu, %i.bm
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit, label %.lr.ph.i.i, !llvm.loop !3297

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZN5boost7movelib13adaptive_xbufISt4pairI5emptyS3_EPS4_mE16initialize_untilEmRS4_.exit85
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_T4_(ptr noundef %i.bc, ptr noundef %0, i64 noundef %5, i64 noundef %i.bd, i64 noundef %i.bj, i64 noundef %i.bk, i64 noundef %i.bf, ptr noundef %i.ax)
  %i.bv = load i64, ptr %i.am, align 8, !tbaa !246
  %.not.i86 = icmp eq i64 %i.bv, 0
  br i1 %.not.i86, label %_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_7move_opES6_EEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_T4_.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairI5emptyS7_EPS8_mEEEEvT_T0_T1_SD_SD_RT2_RSD_SG_SG_SG_b.exit
  store i64 0, ptr %i.am, align 8, !tbaa !246
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
  br i1 %.not.i77, label %_ZN5boost7movelib11lower_boundIPSt4pairI5emptyS3_ES4_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEET_SE_SE_RKT0_T1_.exit.loopexit, label %.lr.ph.i, !llvm.loop !34

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
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib29merge_sort_uninitialized_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_:bb.a

vector.ph:                                        ; preds = %bb.d
  %i.ao = add nuw i64 %i.ak, 1                    ; 2 uses
  %i.ap = and i64 %i.ao, 15                       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = select i1 %i.aq, i64 16, i64 %i.ap
  %n.vec = sub i64 %i.ao, %i.ar                   ; 2 uses
  %i.as = shl i64 %n.vec, 1                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ad, i64 %i.as
  %i.au = getelementptr i8, ptr %2, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.av ; 2 uses
  %next.gep51 = getelementptr i8, ptr %2, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 1
  %wide.load52 = load <8 x i16>, ptr %i.aw, align 1
  %i.ax = getelementptr i8, ptr %next.gep51, i64 16
  store <8 x i16> %wide.load, ptr %next.gep51, align 1
  store <8 x i16> %wide.load52, ptr %i.ax, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %scalar.ph, label %vector.body, !llvm.loop !3401

scalar.ph:                                        ; preds = %vector.body, %bb.d
  %bc.resume.val = phi ptr [ %i.ad, %bb.d ], [ %i.at, %vector.body ]
  %bc.resume.val53 = phi ptr [ %2, %bb.d ], [ %i.au, %vector.body ] ; 2 uses
  %bc.resume.val5355 = ptrtoaddr ptr %bc.resume.val53 to i64 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %scalar.ph, %bb.e
  %indvar = phi i64 [ 0, %scalar.ph ], [ %indvar.next, %bb.e ] ; 3 uses
  %.02441.i = phi ptr [ %bc.resume.val, %scalar.ph ], [ %i.cd, %bb.e ] ; 3 uses
  %.03640.i = phi ptr [ %bc.resume.val53, %scalar.ph ], [ %i.ce, %bb.e ] ; 9 uses
  %i.az = icmp eq ptr %.02441.i, %i.ae
  br i1 %i.az, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %.lr.ph.split.i
  %.not42.i = icmp eq ptr %.03640.i, %i.ad
  br i1 %.not42.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %i.ba = add i64 %.idx33, %i.a
  %i.bb = add i64 %i.ba, -2
  %i.bc = shl i64 %indvar, 1
  %i.bd = add i64 %i.bc, %bc.resume.val5355
  %i.be = sub i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = add nuw i64 %i.bf, 1                    ; 5 uses
  %min.iters.check58 = icmp ult i64 %i.be, 6
  br i1 %min.iters.check58, label %.lr.ph45.i.preheader, label %vector.memcheck54

vector.memcheck54:                                ; preds = %iter.check
  %i.bh = add i64 %.idx33, %i.c
  %i.bi = sub i64 %bc.resume.val5355, %i.bh
  %i.bj = shl i64 %indvar, 1
  %i.bk = add i64 %i.bj, %i.bi
  %i.bl = add i64 %i.bk, -1
  %diff.check56 = icmp ult i64 %i.bl, 31
  br i1 %diff.check56, label %.lr.ph45.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck54
  %min.iters.check59 = icmp ult i64 %i.be, 30
  br i1 %min.iters.check59, label %vec.epilog.ph, label %vector.ph60

vector.ph60:                                      ; preds = %vector.main.loop.iter.check
  %i.bm = and i64 %i.bg, 12
  %n.vec61 = and i64 %i.bg, -16                   ; 4 uses
  %i.bn = shl i64 %n.vec61, 1                     ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ac, i64 %i.bn
  %i.bp = getelementptr i8, ptr %.03640.i, i64 %i.bn
  br label %vector.body62

vector.body62:                                    ; preds = %vector.ph60, %vector.body62
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bq = shl i64 %index63, 1                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ac, i64 %i.bq ; 2 uses
  %next.gep65 = getelementptr i8, ptr %.03640.i, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %next.gep64, i64 16
  %wide.load66 = load <8 x i16>, ptr %next.gep64, align 1
  %wide.load67 = load <8 x i16>, ptr %i.br, align 1
  %i.bs = getelementptr i8, ptr %next.gep65, i64 16
  store <8 x i16> %wide.load66, ptr %next.gep65, align 1
  store <8 x i16> %wide.load67, ptr %i.bs, align 1
  %index.next68 = add nuw i64 %index63, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bt, label %middle.block69, label %vector.body62, !llvm.loop !3402

middle.block69:                                   ; preds = %vector.body62
  %cmp.n = icmp eq i64 %i.bg, %n.vec61
  br i1 %cmp.n, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block69
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph45.i.preheader, label %vec.epilog.ph, !prof !326

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec61, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %i.bg, -4                    ; 3 uses
  %i.bu = shl i64 %n.vec72, 1                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.ac, i64 %i.bu
  %i.bw = getelementptr i8, ptr %.03640.i, i64 %i.bu
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next77, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = shl i64 %index73, 1                     ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.ac, i64 %i.bx
  %next.gep75 = getelementptr i8, ptr %.03640.i, i64 %i.bx
  %wide.load76 = load <4 x i16>, ptr %next.gep74, align 1
  store <4 x i16> %wide.load76, ptr %next.gep75, align 1
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.by = icmp eq i64 %index.next77, %n.vec72
  br i1 %i.by, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n78 = icmp eq i64 %i.bg, %n.vec72
  br i1 %cmp.n78, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i.preheader

.lr.ph45.i.preheader:                             ; preds = %iter.check, %vector.memcheck54, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.144.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck54 ], [ %i.bo, %vec.epilog.iter.check ], [ %i.bv, %vec.epilog.middle.block ]
  %.13743.i.ph = phi ptr [ %.03640.i, %iter.check ], [ %.03640.i, %vector.memcheck54 ], [ %i.bp, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i.preheader, %.lr.ph45.i
  %.144.i = phi ptr [ %i.cb, %.lr.ph45.i ], [ %.144.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %.13743.i = phi ptr [ %i.ca, %.lr.ph45.i ], [ %.13743.i.ph, %.lr.ph45.i.preheader ] ; 2 uses
  %i.bz = load i16, ptr %.144.i, align 1
  store i16 %i.bz, ptr %.13743.i, align 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.13743.i, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.144.i, i64 2
  %.not.i32 = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i32, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph45.i, !llvm.loop !3404

bb.e:                                             ; preds = %.lr.ph.split.i
  %i.cc = load i16, ptr %.02441.i, align 1
  store i16 %i.cc, ptr %.03640.i, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %.02441.i, i64 2
  %i.ce = getelementptr inbounds nuw i8, ptr %.03640.i, i64 2 ; 2 uses
  %.not46.i = icmp eq ptr %i.ce, %i.ad
  %indvar.next = add i64 %indvar, 1
  br i1 %.not46.i, label %_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit, label %.lr.ph.split.i, !llvm.loop !3405

_ZN5boost7movelib33insertion_sort_uninitialized_copyINS_9container3dtl23flat_tree_value_compareISt4lessI5emptyESt4pairIS6_S6_ENS3_9select1stIS6_EEEEPS9_SD_EEvT0_SE_T1_T_.exit: ; preds = %bb.e, %.lr.ph45.i, %.lr.ph.i, %middle.block69, %vec.epilog.middle.block, %middle.block91, %vec.epilog.middle.block108, %.preheader.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 1                   ; 2 uses
  %i.e = icmp ult i64 %i.d, 17
  br i1 %i.e, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.f = phi i64 [ %i.j, %tailrecurse ], [ %i.d, %bb.a ] ; 2 uses
  %.tr2729 = phi ptr [ %i.h, %tailrecurse ], [ %2, %bb.a ]
  %.tr2628 = phi ptr [ %i.h, %tailrecurse ], [ %1, %bb.a ]
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.tr2729, i64 %i.g
  tail call void @_ZN5boost7movelib15merge_sort_copyIPSt4pairI5emptyS3_ES5_NS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_T0_T1_(ptr noundef %i.h, ptr noundef %.tr2628, ptr noundef %i.i)
  %i.j = ashr i64 %i.f, 1                         ; 2 uses
  %i.k = icmp ult i64 %i.j, 17
  br i1 %i.k, label %tailrecurse._crit_edge, label %tailrecurse

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 6 uses
  %i.a = shl i64 %3, 1                            ; 8 uses
  %i.b = urem i64 %2, %i.a                        ; 2 uses
  %.not.i = icmp ugt i64 %i.b, %3                 ; 2 uses
  %spec.select.i = select i1 %.not.i, i64 %i.b, i64 0 ; 3 uses
  %i.c = udiv i64 %2, %i.a                        ; 4 uses
  %i.d = zext i1 %.not.i to i64
  %i.e = add nuw i64 %i.c, %i.d                   ; 5 uses
  %.not = xor i1 %8, true
  %or.cond = and i1 %5, %.not
  %.not78109 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78109, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 2 uses
  br i1 %5, label %.loopexit, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %13 = shl i64 %4, 3
  %.idx = shl i64 %4, 2
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge132.i
  %.073108 = phi i64 [ %i.ae, %._crit_edge132.i ], [ 0, %.lr.ph.split.preheader ] ; 2 uses
  %.074107 = phi ptr [ %spec.select, %._crit_edge132.i ], [ %1, %.lr.ph.split.preheader ] ; 5 uses
  %i.g = icmp eq i64 %.073108, %i.c
  %i.h = select i1 %i.g, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = urem i64 %i.i, %4                        ; 4 uses
  %i.k = add i64 %i.f, %i.j
  %i.l = sub i64 %i.h, %i.k                       ; 2 uses
  %i.m = udiv i64 %i.l, %4                        ; 2 uses
  %.not115.i = icmp ule i64 %4, %i.l
  %.not139.i = icmp eq i64 %i.j, 0
  %or.cond.i = and i1 %.not139.i, %.not115.i
  br i1 %or.cond.i, label %.lr.ph131.i, label %._crit_edge132.i

.lr.ph131.i:                                      ; preds = %.lr.ph.split
  %.idx140.i = shl nuw nsw i64 %i.m, 1            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.idx140.i
  %i.o = add nsw i64 %.idx140.i, -2               ; 2 uses
  %i.p = lshr exact i64 %i.o, 1
  %i.q = add nuw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol: ; preds = %.lr.ph131.i, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol
  %.0129.us.i.prol = phi ptr [ %i.s, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %0, %.lr.ph131.i ]
  %.069128.us.i.prol = phi ptr [ %i.r, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ %.074107, %.lr.ph131.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ], [ 0, %.lr.ph131.i ]
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.069128.us.i.prol, i64 %4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0129.us.i.prol, i64 2 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, !llvm.loop !3406

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol, %.lr.ph131.i
  %.069128.us.i.lcssa.unr = phi ptr [ poison, %.lr.ph131.i ], [ %.069128.us.i.prol, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.0129.us.i.unr = phi ptr [ %0, %.lr.ph131.i ], [ %i.s, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %.069128.us.i.unr = phi ptr [ %.074107, %.lr.ph131.i ], [ %i.r, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol ]
  %i.t = icmp ult i64 %i.o, 14
  br i1 %i.t, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i

_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i: ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i
  %.0129.us.i = phi ptr [ %i.w, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.0129.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %.069128.us.i = phi ptr [ %i.v, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ], [ %.069128.us.i.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ]
  %14 = getelementptr inbounds nuw i8, ptr %.069128.us.i, i64 %13
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %.idx
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %15, i64 %4 ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %4
  %i.w = getelementptr inbounds nuw i8, ptr %.0129.us.i, i64 16 ; 2 uses
  %.not77.us.i.7 = icmp eq ptr %i.w, %i.n
  br i1 %.not77.us.i.7, label %._crit_edge132.i, label %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, !llvm.loop !37

._crit_edge132.i:                                 ; preds = %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i, %.lr.ph.split
  %.070.lcssa.i = phi ptr [ %.074107, %.lr.ph.split ], [ %.069128.us.i.lcssa.unr, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i.prol.loopexit ], [ %i.u, %_ZN5boost7movelib15detail_adaptive24partial_merge_bufferlessIPSt4pairI5emptyS4_ENS_9container3dtl23flat_tree_value_compareISt4lessIS4_ES5_NS8_9select1stIS4_EEEEEET_SF_SF_SF_PbT0_.exit.us.i ] ; 2 uses
  %i.x = mul i64 %i.m, %4
  %i.y = getelementptr [2 x i8], ptr %.074107, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.j
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %.070.lcssa.i to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 1
  tail call void @_ZN5boost7movelib33merge_bufferless_ONlogN_recursiveIPSt4pairI5emptyS3_ENS_9container3dtl23flat_tree_value_compareISt4lessIS3_ES4_NS7_9select1stIS3_EEEEEEvT_SE_SE_NS0_9iter_sizeISE_E4typeESH_T0_(ptr noundef %.070.lcssa.i, ptr noundef %i.y, ptr noundef %i.z, i64 noundef %i.ad, i64 noundef %i.j)
  %i.ae = add nuw i64 %.073108, 1                 ; 2 uses
  %.not77 = icmp eq i64 %i.ae, %i.e               ; 2 uses
  %spec.select.idx = select i1 %.not77, i64 0, i64 %i.a
  %spec.select = getelementptr inbounds nuw [2 x i8], ptr %.074107, i64 %spec.select.idx
  br i1 %.not77, label %.loopexit, label %.lr.ph.split, !llvm.loop !3407

bb.b:                                             ; preds = %bb.a
  br i1 %.not78109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.b
  %i.af = add i64 %i.e, -1
  %i.ag = mul i64 %i.af, %i.a
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ag ; 2 uses
  %i.ai = urem i64 %3, %4                         ; 4 uses
  %i.aj = udiv i64 %3, %4                         ; 4 uses
  %i.ak = sub i64 0, %i.a                         ; 2 uses
  br i1 %6, label %.lr.ph112.split.us, label %.lr.ph112.split

.lr.ph112.split.us:                               ; preds = %.lr.ph112, %.lr.ph112.split.us
  %.0111.us = phi i64 [ %i.al, %.lr.ph112.split.us ], [ %i.e, %.lr.ph112 ]
  %.2110.us = phi ptr [ %.3.us, %.lr.ph112.split.us ], [ %i.ah, %.lr.ph112 ] ; 2 uses
  %i.al = add i64 %.0111.us, -1                   ; 3 uses
  %i.am = icmp eq i64 %i.al, %i.c
  %i.an = select i1 %i.am, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.ao = sub i64 %i.an, %i.ai
  %i.ap = urem i64 %i.ao, %4                      ; 3 uses
  %i.aq = add i64 %i.ai, %i.ap
  %i.ar = sub i64 %i.an, %i.aq
  %i.as = udiv i64 %i.ar, %4                      ; 3 uses
  %i.at = sub i64 %i.as, %i.aj
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.as
  %i.av = mul i64 %i.as, %4
  %i.aw = getelementptr [2 x i8], ptr %.2110.us, i64 %i.av
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.au, ptr %9, align 8, !tbaa !329
  store ptr %i.ax, ptr %10, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.ap, i64 noundef %i.at, i64 noundef %i.aj, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81.us = icmp eq i64 %i.al, 0               ; 2 uses
  %.3.idx.us = select i1 %.not81.us, i64 0, i64 %i.ak
  %.3.us = getelementptr inbounds [2 x i8], ptr %.2110.us, i64 %.3.idx.us
  br i1 %.not81.us, label %.loopexit, label %.lr.ph112.split.us, !llvm.loop !3408

.lr.ph112.split:                                  ; preds = %.lr.ph112, %.lr.ph112.split
  %.0111 = phi i64 [ %i.ay, %.lr.ph112.split ], [ %i.e, %.lr.ph112 ]
  %.2110 = phi ptr [ %.3, %.lr.ph112.split ], [ %i.ah, %.lr.ph112 ] ; 2 uses
  %i.ay = add i64 %.0111, -1                      ; 3 uses
  %i.az = icmp eq i64 %i.ay, %i.c
  %i.ba = select i1 %i.az, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.bb = sub i64 %i.ba, %i.ai
  %i.bc = urem i64 %i.bb, %4                      ; 3 uses
  %i.bd = add i64 %i.ai, %i.bc
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = udiv i64 %i.be, %4                      ; 3 uses
  %i.bg = sub i64 %i.bf, %i.aj
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bf
  %i.bi = mul i64 %i.bf, %4
  %i.bj = getelementptr [2 x i8], ptr %.2110, i64 %i.bi
  %i.bk = getelementptr [2 x i8], ptr %i.bj, i64 %i.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr %i.bh, ptr %11, align 8, !tbaa !329
  store ptr %i.bk, ptr %12, align 8, !tbaa !329
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPSt4pairI5emptyS5_EEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIS5_ES6_NSB_9select1stIS5_EEEEEES8_SI_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef nonnull align 8 dead_on_return %11, ptr noundef nonnull align 8 dead_on_return %12, i64 noundef %4, i64 noundef %i.bc, i64 noundef %i.bg, i64 noundef %i.aj, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %.not81 = icmp eq i64 %i.ay, 0                  ; 2 uses
  %.3.idx = select i1 %.not81, i64 0, i64 %i.ak
  %.3 = getelementptr inbounds [2 x i8], ptr %.2110, i64 %.3.idx
  br i1 %.not81, label %.loopexit, label %.lr.ph112.split, !llvm.loop !3408

.loopexit:                                        ; preds = %._crit_edge132.i, %.lr.ph112.split, %.lr.ph112.split.us, %.preheader, %.lr.ph, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPSt4pairI5emptyS6_ENS_9container3dtl23flat_tree_value_compareISt4lessIS6_ES7_NSA_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i1 noundef zeroext %8) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.boost::movelib::reverse_iterator.83", align 8 ; 4 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.77", align 8 ; 4 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.83", align 8 ; 4 uses
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
  %.not78118 = icmp eq i64 %i.e, 0                ; 2 uses
  br i1 %or.cond, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  br i1 %.not78118, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = urem i64 %3, %4                          ; 6 uses
  %i.g = udiv i64 %3, %4                          ; 6 uses
  br i1 %5, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %6, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us
  %.073117.us.us = phi i64 [ %i.z, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.074116.us.us = phi ptr [ %spec.select.us.us, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %i.h = icmp eq i64 %.073117.us.us, %i.c
  %i.i = select i1 %i.h, i64 %spec.select.i, i64 %i.a ; 2 uses
  %i.j = sub i64 %i.i, %i.f
  %i.k = urem i64 %i.j, %4                        ; 2 uses
  %i.l = add i64 %i.f, %i.k
  %i.m = sub i64 %i.i, %i.l                       ; 2 uses
  %i.n = udiv i64 %i.m, %4                        ; 9 uses
  %i.o = sub i64 %i.n, %i.g
  %.not8.i.i.us.us = icmp ugt i64 %4, %i.m
  br i1 %.not8.i.i.us.us, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %iter.check194

iter.check194:                                    ; preds = %.lr.ph.split.us.split.us
  %min.iters.check179 = icmp ult i64 %i.n, 8
  br i1 %min.iters.check179, label %.lr.ph.i.i.us.us.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check194
  %min.iters.check181 = icmp ult i64 %i.n, 32
  br i1 %min.iters.check181, label %vec.epilog.ph198, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.p = and i64 %i.n, 24
  %n.vec183 = and i64 %i.n, -32                   ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 %n.vec183
  br label %vector.body184

vector.body184:                                   ; preds = %vector.ph182, %vector.body184
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body184 ] ; 2 uses
  %vec.ind186 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph182 ], [ %vec.ind.next190, %vector.body184 ] ; 3 uses
  %step.add187 = add <16 x i8> %vec.ind186, splat (i8 16)
  %next.gep188 = getelementptr i8, ptr %0, i64 %index185 ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep188, i64 16
  store <16 x i8> %vec.ind186, ptr %next.gep188, align 1, !tbaa !336
  store <16 x i8> %step.add187, ptr %i.r, align 1, !tbaa !336
  %index.next189 = add nuw i64 %index185, 32      ; 2 uses
  %vec.ind.next190 = add <16 x i8> %vec.ind186, splat (i8 32)
  %i.s = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.s, label %middle.block191, label %vector.body184, !llvm.loop !3409

middle.block191:                                  ; preds = %vector.body184
  %cmp.n192 = icmp eq i64 %i.n, %n.vec183
  br i1 %cmp.n192, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPhNS1_4lessEmNS0_10range_xbufIPSt4pairI5emptyS7_EmNS0_7move_opEEEEEvT_T0_T1_SE_SE_RT2_RSE_SH_SH_SH_b.exit.us.us, label %vec.epilog.iter.check196

vec.epilog.iter.check196:                         ; preds = %middle.block191
  %min.epilog.iters.check197 = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check197, label %.lr.ph.i.i.us.us.preheader, label %vec.epilog.ph198, !prof !327

vec.epilog.ph198:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check196
  %vec.epilog.resume.val193 = phi i64 [ %n.vec183, %vec.epilog.iter.check196 ], [ 0, %vector.main.loop.iter.check180 ] ; 2 uses
  %n.vec199 = and i64 %i.n, -8                    ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 %n.vec199
  %i.u = trunc i64 %vec.epilog.resume.val193 to i8
  %broadcast.splatinsert200 = insertelement <8 x i8> poison, i8 %i.u, i64 0
  %broadcast.splat201 = shufflevector <8 x i8> %broadcast.splatinsert200, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction202 = or disjoint <8 x i8> %broadcast.splat201, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vec.epilog.vector.body203

vec.epilog.vector.body203:                        ; preds = %vec.epilog.vector.body203, %vec.epilog.ph198
  %index204 = phi i64 [ %vec.epilog.resume.val193, %vec.epilog.ph198 ], [ %index.next207, %vec.epilog.vector.body203 ] ; 2 uses
  %vec.ind205 = phi <8 x i8> [ %induction202, %vec.epilog.ph198 ], [ %vec.ind.next208, %vec.epilog.vector.body203 ] ; 2 uses
  %next.gep206 = getelementptr i8, ptr %0, i64 %index204
  store <8 x i8> %vec.ind205, ptr %next.gep206, align 1, !tbaa !336
  %index.next207 = add nuw i64 %index204, 8       ; 2 uses
  %vec.ind.next208 = add <8 x i8> %vec.ind205, splat (i8 8)
  %i.v = icmp eq i64 %index.next207, %n.vec199
  br i1 %i.v, label %vec.epilog.middle.block209, label %vec.epilog.vector.body203, !llvm.loop !3410

end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_13adaptive_xbufIS9_SA_mEEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_bbRT3_T2_b:bb.a

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
  store <2 x i64> %vec.ind174, ptr %next.gep176, align 8, !tbaa !226
  store <2 x i64> %step.add175, ptr %i.ch, align 8, !tbaa !226
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %vec.ind.next178 = add <2 x i64> %vec.ind174, splat (i64 4)
  %i.ci = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ci, label %middle.block179, label %vector.body172, !llvm.loop !3777

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
  store i64 %.010.i.i87, ptr %.079.i.i88, align 8, !tbaa !226
  %i.cj = getelementptr inbounds nuw i8, ptr %.079.i.i88, i64 8
  %i.ck = add i64 %.010.i.i87, 1                  ; 2 uses
  %.not.i.i89 = icmp eq i64 %i.ck, %i.cc
  br i1 %.not.i.i89, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90, label %.lr.ph.i.i86, !llvm.loop !3778

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
  store ptr %i.cl, ptr %9, align 8, !tbaa !332
  store ptr %i.co, ptr %10, align 8, !tbaa !345
  call void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEENS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISR_E4typeESU_SU_SU_SU_T2_T3_(ptr noundef nonnull align 8 dead_on_return %9, ptr noundef nonnull align 8 dead_on_return %10, i64 noundef %4, i64 noundef %i.bw, i64 noundef %i.ca, i64 noundef %i.bq, i64 noundef 0)
  br label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_10range_xbufIPSt4pairINS_9container4test24movable_and_copyable_intES9_EmNS0_7move_opEEEEEvT_T0_T1_SG_SG_RT2_RSG_SJ_SJ_SJ_b.exit90
  store ptr %i.cl, ptr %11, align 8, !tbaa !332
  store ptr %i.co, ptr %12, align 8, !tbaa !345
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
  br i1 %.not81, label %.loopexit, label %bb.c, !llvm.loop !3779

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
  store i8 1, ptr %i.a, align 1, !tbaa !346
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
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !346
  %.not77119 = icmp eq i64 %i.bn, 0
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !3780

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !3781

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !254 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !254 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !254
  %i.az = load i32, ptr %i.as, align 4, !tbaa !254
  %i.ba = icmp slt i32 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !55

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 5 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !254
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !254
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !254
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !254
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !3782

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !254
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !3783

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load <2 x i32>, ptr %i.bd, align 4, !tbaa !254
  store i32 0, ptr %i.bd, align 4, !tbaa !254
  %i.cf = load <2 x i32>, ptr %.073114, align 4, !tbaa !254
  store <2 x i32> %i.cf, ptr %i.bd, align 4, !tbaa !254
  store <2 x i32> %i.ce, ptr %.073114, align 4, !tbaa !254
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EEvT_S9_RS9_T0_SB_SB_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3784

end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive25op_partial_merge_and_swapINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_b:bb.a
  %i.w = load i32, ptr %i.p, align 4, !tbaa !254, !noalias !4195
  store i32 %i.w, ptr %i.o, align 4, !tbaa !254, !noalias !4195
  store <2 x i32> %i.q, ptr %i.l, align 4, !tbaa !254, !noalias !4195
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4195
  %i.y = add i32 %i.x, -2
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4195
  %.not27.i = icmp eq ptr %i.l, %i.b
  br i1 %.not27.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split, label %.outer.i, !llvm.loop !83

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %.sroa.027.1, i64 -8 ; 5 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254, !noalias !4195
  store i32 0, ptr %i.z, align 4, !tbaa !254, !noalias !4195
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !254, !noalias !4195
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !254, !noalias !4195
  store i32 %i.aa, ptr %i.h, align 4, !tbaa !254, !noalias !4195
  %i.ac = getelementptr inbounds i8, ptr %.sroa.027.1, i64 -4 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.017.0.i, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !254, !noalias !4195
  store i32 0, ptr %i.ac, align 4, !tbaa !254, !noalias !4195
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !254, !noalias !4195
  store i32 %i.af, ptr %i.ac, align 4, !tbaa !254, !noalias !4195
  store i32 %i.ae, ptr %i.ad, align 4, !tbaa !254, !noalias !4195
  %.not26.i = icmp eq ptr %i.h, %i.a
  br i1 %.not26.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split, label %bb.d, !llvm.loop !83

bb.f:                                             ; preds = %bb.a
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %5, align 8, !tbaa !345, !noalias !4196
  br label %.outer.i8

.outer.i8:                                        ; preds = %.split.i14, %bb.g
  %.sroa.020.0 = phi ptr [ %i.c, %bb.g ], [ %i.am, %.split.i14 ]
  %.sroa.010.0.ph.i9 = phi ptr [ %i.ag, %bb.g ], [ %i.ah, %.split.i14 ] ; 3 uses
  %.sroa.013.0.ph.i10 = phi ptr [ %i.e, %bb.g ], [ %i.al, %.split.i14 ] ; 3 uses
  %.sroa.017.0.ph.i11 = phi ptr [ %i.d, %bb.g ], [ %.sroa.017.0.i12, %.split.i14 ]
  %i.ah = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9, i64 -8 ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.outer.i8
  %.sroa.020.1 = phi ptr [ %.sroa.020.0, %.outer.i8 ], [ %i.az, %bb.i ] ; 4 uses
  %.sroa.017.0.i12 = phi ptr [ %.sroa.017.0.ph.i11, %.outer.i8 ], [ %i.ai, %bb.i ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.017.0.i12, i64 -8 ; 6 uses
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !254, !noalias !4196
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !254, !noalias !4196
  %.not26.i13 = icmp slt i32 %i.aj, %i.ak
  br i1 %.not26.i13, label %bb.i, label %.split.i14

.split.i14:                                       ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10, i64 -8 ; 5 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -8 ; 5 uses
  %i.an = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -4 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.010.0.ph.i9, i64 -4 ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.013.0.ph.i10, i64 -4
  %i.aq = load <2 x i32>, ptr %i.am, align 4, !tbaa !254, !noalias !4196
  store i32 0, ptr %i.am, align 4, !tbaa !254, !noalias !4196
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4196
  store i32 0, ptr %i.an, align 4, !tbaa !254, !noalias !4196
  %i.as = add i32 %i.ar, 2
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4196
  %i.at = load i32, ptr %i.ah, align 4, !tbaa !254, !noalias !4196
  store i32 %i.at, ptr %i.am, align 4, !tbaa !254, !noalias !4196
  store i32 0, ptr %i.ah, align 4, !tbaa !254, !noalias !4196
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !254, !noalias !4196
  store i32 %i.au, ptr %i.an, align 4, !tbaa !254, !noalias !4196
  store i32 0, ptr %i.ao, align 4, !tbaa !254, !noalias !4196
  %i.av = load i32, ptr %i.al, align 4, !tbaa !254, !noalias !4196
  store i32 %i.av, ptr %i.ah, align 4, !tbaa !254, !noalias !4196
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !254, !noalias !4196
  store i32 %i.aw, ptr %i.ao, align 4, !tbaa !254, !noalias !4196
  store <2 x i32> %i.aq, ptr %i.al, align 4, !tbaa !254, !noalias !4196
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4196
  %i.ay = add i32 %i.ax, -2
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4196
  %.not28.i = icmp eq ptr %i.al, %i.b
  br i1 %.not28.i, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split, label %.outer.i8, !llvm.loop !84

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -8 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !254, !noalias !4196
  store i32 0, ptr %i.az, align 4, !tbaa !254, !noalias !4196
  %i.bb = load i32, ptr %i.ai, align 4, !tbaa !254, !noalias !4196
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !254, !noalias !4196
  store i32 %i.ba, ptr %i.ai, align 4, !tbaa !254, !noalias !4196
  %i.bc = getelementptr inbounds i8, ptr %.sroa.020.1, i64 -4 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.017.0.i12, i64 -4 ; 2 uses
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !254, !noalias !4196
  store i32 0, ptr %i.bc, align 4, !tbaa !254, !noalias !4196
  %i.bf = load i32, ptr %i.bd, align 4, !tbaa !254, !noalias !4196
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !254, !noalias !4196
  store i32 %i.be, ptr %i.bd, align 4, !tbaa !254, !noalias !4196
  %.not27.i19 = icmp eq ptr %i.ai, %i.a
  br i1 %.not27.i19, label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split, label %bb.h, !llvm.loop !84

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split: ; preds = %.split.i14, %bb.i, %.split.i, %bb.e
  %.sroa.010.122.i18.sink = phi ptr [ %.sroa.010.0.ph.i, %bb.e ], [ %.sroa.010.0.ph.i9, %bb.i ], [ %i.g, %.split.i ], [ %i.ah, %.split.i14 ]
  %.sroa.017.124.i16.sink = phi ptr [ %i.h, %bb.e ], [ %i.ai, %bb.i ], [ %.sroa.017.0.i, %.split.i ], [ %.sroa.017.0.i12, %.split.i14 ]
  %.sroa.013.123.i17.sink = phi ptr [ %.sroa.013.0.ph.i, %bb.e ], [ %.sroa.013.0.ph.i10, %bb.i ], [ %i.l, %.split.i ], [ %i.al, %.split.i14 ]
  %storemerge.ph = phi ptr [ %i.z, %bb.e ], [ %i.az, %bb.i ], [ %i.m, %.split.i ], [ %i.am, %.split.i14 ]
  store ptr %.sroa.010.122.i18.sink, ptr %5, align 8, !tbaa !345, !noalias !333
  store ptr %.sroa.017.124.i16.sink, ptr %1, align 8, !tbaa !345, !noalias !333
  store ptr %.sroa.013.123.i17.sink, ptr %3, align 8, !tbaa !345, !noalias !333
  br label %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit

_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit: ; preds = %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split, %bb.f, %bb.b
  %storemerge = phi ptr [ %i.c, %bb.f ], [ %i.c, %bb.b ], [ %storemerge.ph, %_ZN5boost7movelib15detail_adaptive30op_partial_merge_and_swap_implINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEESA_SA_NS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEENS0_7swap_opEEET1_RT_SM_RT0_SO_SP_SL_T2_T3_.exit.sink.split ]
  store ptr %storemerge, ptr %0, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = add i64 %5, %4                           ; 6 uses
  %i.c = mul i64 %i.b, %2
  %i.d = getelementptr [8 x i8], ptr %1, i64 %3   ; 8 uses
  %i.e = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 4 uses
  %.not107 = icmp eq i64 %i.b, 0
  br i1 %.not107, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !346
  br label %._crit_edge124

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4
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
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.q ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 %i.l
  %scevgep161 = getelementptr i8, ptr %i.r, i64 %i.m ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = getelementptr i8, ptr %1, i64 %i.q
  %i.v = add i64 %.idx104, -8                     ; 2 uses
  %i.w = lshr exact i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 136
  %bound0165 = icmp ult ptr %i.d, %scevgep161
  %bound1166 = icmp ult ptr %scevgep160, %scevgep
  %found.conflict167 = and i1 %bound0165, %bound1166
  %stride.check168 = icmp slt i64 %.idx104, 0
  %i.y = or i1 %found.conflict167, %stride.check168
  %n.vec = and i64 %i.x, 4611686018427387902      ; 3 uses
  %i.z = shl i64 %n.vec, 3                        ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !346
  %.not77118 = icmp samesign eq i64 %i.bn, 0
  br i1 %.not77118, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.b
  %i.ac = icmp eq ptr %.1101, %i.ab
  br i1 %i.ac, label %.lr.ph123.split.us.preheader.preheader, label %.lr.ph123.split

.lr.ph123.split.us.preheader.preheader:           ; preds = %.lr.ph123
  %i.ad = add i64 %.075111, -1
  %i.ae = zext nneg i8 %.1 to i64
  %i.af = add i64 %i.ad, %i.ae
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol

.lr.ph123.split.us.preheader.prol:                ; preds = %.lr.ph123.split.us.preheader.preheader, %.lr.ph123.split.us.preheader.prol
  %.0121.us.prol = phi ptr [ %i.ah, %.lr.ph123.split.us.preheader.prol ], [ %0, %.lr.ph123.split.us.preheader.preheader ]
  %.069120.us.prol = phi ptr [ %i.ag, %.lr.ph123.split.us.preheader.prol ], [ %i.d, %.lr.ph123.split.us.preheader.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.split.us.preheader.prol ], [ 0, %.lr.ph123.split.us.preheader.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.069120.us.prol, i64 %2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121.us.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.split.us.preheader.prol.loopexit, label %.lr.ph123.split.us.preheader.prol, !llvm.loop !4197

.lr.ph123.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph123.split.us.preheader.prol, %.lr.ph123.split.us.preheader.preheader
  %.069120.us.lcssa.unr = phi ptr [ poison, %.lr.ph123.split.us.preheader.preheader ], [ %.069120.us.prol, %.lr.ph123.split.us.preheader.prol ]
  %.0121.us.unr = phi ptr [ %0, %.lr.ph123.split.us.preheader.preheader ], [ %i.ah, %.lr.ph123.split.us.preheader.prol ]
  %.069120.us.unr = phi ptr [ %i.d, %.lr.ph123.split.us.preheader.preheader ], [ %i.ag, %.lr.ph123.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.af, 7
  br i1 %i.ai, label %._crit_edge124, label %.lr.ph123.split.us.preheader.preheader.new

.lr.ph123.split.us.preheader.preheader.new:       ; preds = %.lr.ph123.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx203 = shl i64 %2, 4
  br label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123.split.us.preheader, %.lr.ph123.split.us.preheader.preheader.new
  %.0121.us = phi ptr [ %.0121.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph123.split.us.preheader ]
  %.069120.us = phi ptr [ %.069120.us.unr, %.lr.ph123.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph123.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069120.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx203
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0121.us, i64 8 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge124, label %.lr.ph123.split.us.preheader, !llvm.loop !4198

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071115 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072114 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073113 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074112 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075111 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.099110 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100109 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val106108 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep162 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072114, %.val106108
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072114, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071115, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.073113, i64 %.02226.i
  %i.at = getelementptr inbounds nuw i8, ptr %.073113, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !254 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !254 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i8, ptr %i.at, align 1, !tbaa !336
  %i.az = load i8, ptr %i.as, align 1, !tbaa !336
  %i.ba = icmp ult i8 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val106108
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !85

_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.073113, i64 %.022.lcssa.i ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val106108, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099110)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071115, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074112 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !254
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !254
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074112, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075111, %i.bm                 ; 4 uses
  %i.bo = getelementptr i8, ptr %.071115, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader198, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep159 = getelementptr i8, ptr %scevgep158, i64 %i.br ; 3 uses
  %scevgep163 = getelementptr i8, ptr %scevgep162, i64 %.idx ; 3 uses
  %scevgep164 = getelementptr i8, ptr %.071115, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep159
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0170 = icmp ult ptr %i.d, %scevgep164
  %bound1171 = icmp ult ptr %scevgep163, %scevgep
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx174 = or i1 %found.conflict172, %conflict.rdx
  %bound0175 = icmp ult ptr %i.bh, %scevgep161
  %bound1176 = icmp ult ptr %scevgep160, %scevgep159
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx179 = or i1 %found.conflict177, %conflict.rdx174
  %bound0180 = icmp ult ptr %i.bh, %scevgep164
  %bound1181 = icmp ult ptr %scevgep163, %scevgep159
  %found.conflict182 = and i1 %bound0180, %bound1181
  %conflict.rdx183 = or i1 %conflict.rdx179, %found.conflict182
  %bound0184 = icmp ult ptr %scevgep160, %scevgep164
  %bound1185 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict186 = and i1 %bound0184, %bound1185
  %conflict.rdx188 = or i1 %found.conflict186, %conflict.rdx183
  br i1 %conflict.rdx188, label %.lr.ph.i.i.preheader198, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071115, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep189 = getelementptr i8, ptr %.071115, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep189, align 4, !tbaa !254
  %wide.vec191 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254
  store <4 x i32> %wide.vec191, ptr %next.gep189, align 4, !tbaa !254
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !4199

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader198

.lr.ph.i.i.preheader198:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071115, %vector.memcheck ], [ %.071115, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader198, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader198 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !254
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4200

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp samesign eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i8, ptr %i.bd, align 1, !tbaa !336
  %i.cf = load i8, ptr %.073113, align 1, !tbaa !336
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !336
  store i8 %i.ce, ptr %.073113, align 1, !tbaa !336
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100109
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100109, %.073113
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100109
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100109, %bb.f ], [ %spec.select102, %bb.j ], [ %.073113, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073113, i64 1
  %i.cj = icmp ne i64 %.072114, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072114, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099110, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4201

._crit_edge124.loopexit129:                       ; preds = %bb.l
  %i.co = trunc nuw i8 %i.df to i1
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intESC_EEESF_SF_NS6_INSA_3dtl23flat_tree_value_compareISt4lessISC_ESD_NSG_9select1stISC_EEEEEENS0_7swap_opEEET3_T_SQ_T0_T1_RT2_ST_SP_NS0_9iter_sizeISS_E4typeESX_SX_SX_T4_bT5_:bb.a
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -8 ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -8 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.044.0, i64 -4 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.sroa.045.0, i64 -4 ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %i.ci, i64 -4
  %i.cp = load <2 x i32>, ptr %i.cl, align 4, !tbaa !254, !noalias !4380
  store i32 0, ptr %i.cl, align 4, !tbaa !254, !noalias !4380
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4380
  store i32 0, ptr %i.cm, align 4, !tbaa !254, !noalias !4380
  %i.cr = add i32 %i.cq, 2
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4380
  %i.cs = load i32, ptr %i.ck, align 4, !tbaa !254, !noalias !4380
  store i32 %i.cs, ptr %i.cl, align 4, !tbaa !254, !noalias !4380
  store i32 0, ptr %i.ck, align 4, !tbaa !254, !noalias !4380
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !254, !noalias !4380
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !254, !noalias !4380
  store i32 0, ptr %i.cn, align 4, !tbaa !254, !noalias !4380
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !254, !noalias !4380
  store i32 %i.cu, ptr %i.ck, align 4, !tbaa !254, !noalias !4380
  %i.cv = load i32, ptr %i.co, align 4, !tbaa !254, !noalias !4380
  store i32 %i.cv, ptr %i.cn, align 4, !tbaa !254, !noalias !4380
  store <2 x i32> %i.cp, ptr %i.cj, align 4, !tbaa !254, !noalias !4380
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4380
  %i.cx = add i32 %i.cw, -2
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255, !noalias !4380
  %.not.i27 = icmp eq ptr %i.cj, %i.z
  br i1 %.not.i27, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i26, !llvm.loop !82

bb.l:                                             ; preds = %.loopexit
  %.not1.i.i = icmp eq ptr %i.bs, %i.z
  br i1 %.not1.i.i, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.sroa.0.0.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %storemerge.i, %bb.l ] ; 2 uses
  %i.cy = phi ptr [ %i.cz, %.lr.ph.i.i ], [ %i.bs, %bb.l ] ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8 ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  %i.db = load i32, ptr %i.cz, align 4, !tbaa !254, !noalias !4381
  store i32 0, ptr %i.cz, align 4, !tbaa !254, !noalias !4381
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !254, !noalias !4381
  store i32 %i.dc, ptr %i.cz, align 4, !tbaa !254, !noalias !4381
  store i32 %i.db, ptr %i.da, align 4, !tbaa !254, !noalias !4381
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 -4 ; 3 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !254, !noalias !4381
  store i32 0, ptr %i.dd, align 4, !tbaa !254, !noalias !4381
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !254, !noalias !4381
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !254, !noalias !4381
  store i32 %i.df, ptr %i.de, align 4, !tbaa !254, !noalias !4381
  %.not.i.i28 = icmp eq ptr %i.cz, %i.z
  br i1 %.not.i.i28, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, label %.lr.ph.i.i, !llvm.loop !72

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit: ; preds = %.lr.ph.i26, %.lr.ph.i25, %.lr.ph.i.i, %.thread86, %bb.l, %.thread85, %.loopexit
  %i.dh = phi ptr [ %i.ac, %.loopexit ], [ %i.by, %.lr.ph.i25 ], [ %i.ad, %.thread85 ], [ %i.ac, %.lr.ph.i.i ], [ %i.by, %.thread86 ], [ %i.ac, %bb.l ], [ %i.by, %.lr.ph.i26 ]
  %storemerge = phi ptr [ %i.z, %.loopexit ], [ %i.cb, %.lr.ph.i25 ], [ %i.bw, %.thread85 ], [ %i.da, %.lr.ph.i.i ], [ %i.bv, %.thread86 ], [ %storemerge.i, %bb.l ], [ %i.cl, %.lr.ph.i26 ]
  store ptr %storemerge, ptr %6, align 8, !tbaa !345
  %i.di = load ptr, ptr %1, align 8, !tbaa !338   ; 4 uses
  %i.dj = sub i64 0, %.018.lcssa.i
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj ; 3 uses
  %.not.i29 = icmp eq ptr %i.z, %i.dh
  br i1 %.not.i29, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, label %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i

_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit
  br i1 %.not23, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -1 ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !336
  %i.do = load i8, ptr %i.dm, align 1, !tbaa !336
  store i8 %i.do, ptr %i.dl, align 1, !tbaa !336
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !336
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit.i
  %i.dp = load ptr, ptr %2, align 8, !tbaa !338   ; 2 uses
  %i.dq = icmp eq ptr %i.dk, %i.dp
  br i1 %i.dq, label %.sink.split.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dr = icmp eq ptr %i.dp, %i.di
  br i1 %i.dr, label %.sink.split.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

.sink.split.i:                                    ; preds = %bb.o, %bb.n
  %.sink.i = phi ptr [ %i.di, %bb.n ], [ %i.dk, %bb.o ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !338
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit: ; preds = %_ZN5boost20adl_move_swap_rangesINS_7movelib16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES6_EEES9_EET0_T_SB_SA_.exit, %bb.o, %.sink.split.i
  store ptr %i.z, ptr %3, align 8, !tbaa !345
  %i.ds = load ptr, ptr %1, align 8, !tbaa !338
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -1 ; 2 uses
  store ptr %i.dt, ptr %1, align 8, !tbaa !338
  %i.du = icmp ne i64 %.0100, 0
  %.neg = sext i1 %i.du to i64
  %i.dv = add i64 %.0100, %.neg
  %i.dw = icmp ne i64 %i.y, 0
  %.neg24 = sext i1 %i.dw to i64
  %i.dx = add i64 %.sroa.speculated, %.neg24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.dy = add i64 %.08499, -1                     ; 2 uses
  %.not = icmp eq i64 %i.dy, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4374

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPSt4pairINS_9container4test24movable_and_copyable_intES9_EEEEEvT_SD_RSD_T0_SF_SF_.exit, %bb.a
  %i.dz = load ptr, ptr %6, align 8, !tbaa !345
  store ptr %i.dz, ptr %0, align 8, !tbaa !345
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive23merge_blocks_bufferlessIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 comdat {
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
  store i8 1, ptr %i.a, align 1, !tbaa !346
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

._crit_edge:                                      ; preds = %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %.idx129 = shl i64 %i.bn, 3                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.idx129 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 1, ptr %i.a, align 1, !tbaa !346
  %.not77119 = icmp eq i64 %i.bn, 0
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
  br i1 %prol.iter.cmp.not, label %.lr.ph124.split.us.preheader.prol.loopexit, label %.lr.ph124.split.us.preheader.prol, !llvm.loop !4382

.lr.ph124.split.us.preheader.prol.loopexit:       ; preds = %.lr.ph124.split.us.preheader.prol, %.lr.ph124.split.us.preheader.preheader
  %.069121.us.lcssa.unr = phi ptr [ poison, %.lr.ph124.split.us.preheader.preheader ], [ %.069121.us.prol, %.lr.ph124.split.us.preheader.prol ]
  %.0122.us.unr = phi ptr [ %0, %.lr.ph124.split.us.preheader.preheader ], [ %i.ah, %.lr.ph124.split.us.preheader.prol ]
  %.069121.us.unr = phi ptr [ %i.d, %.lr.ph124.split.us.preheader.preheader ], [ %i.ag, %.lr.ph124.split.us.preheader.prol ]
  %i.ai = icmp ult i64 %i.ad, 56
  br i1 %i.ai, label %._crit_edge125, label %.lr.ph124.split.us.preheader.preheader.new

.lr.ph124.split.us.preheader.preheader.new:       ; preds = %.lr.ph124.split.us.preheader.prol.loopexit
  %7 = shl i64 %2, 5
  %.idx206 = shl i64 %2, 4
  br label %.lr.ph124.split.us.preheader

.lr.ph124.split.us.preheader:                     ; preds = %.lr.ph124.split.us.preheader, %.lr.ph124.split.us.preheader.preheader.new
  %.0122.us = phi ptr [ %.0122.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.al, %.lr.ph124.split.us.preheader ]
  %.069121.us = phi ptr [ %.069121.us.unr, %.lr.ph124.split.us.preheader.preheader.new ], [ %i.ak, %.lr.ph124.split.us.preheader ]
  %8 = getelementptr inbounds nuw i8, ptr %.069121.us, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 %.idx206
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %2
  %i.al = getelementptr inbounds nuw i8, ptr %.0122.us, i64 64 ; 2 uses
  %.not77.us.7 = icmp eq ptr %i.al, %i.aa
  br i1 %.not77.us.7, label %._crit_edge125, label %.lr.ph124.split.us.preheader, !llvm.loop !4383

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.071116 = phi ptr [ %i.d, %.lr.ph ], [ %i.bo, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 9 uses
  %.072115 = phi i64 [ %i.h, %.lr.ph ], [ %i.ck, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.073114 = phi ptr [ %0, %.lr.ph ], [ %i.ci, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 8 uses
  %.074113 = phi i8 [ 1, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.075112 = phi i64 [ 0, %.lr.ph ], [ %i.bn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ]
  %.099111 = phi i64 [ %i.b, %.lr.ph ], [ %i.cn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 2 uses
  %.0100110 = phi ptr [ %i.f, %.lr.ph ], [ %.1101, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 4 uses
  %.val107109 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.cm, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit ] ; 3 uses
  %i.am = mul i64 %i.p, %indvar                   ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.t, i64 %i.am
  %scevgep165 = getelementptr i8, ptr %i.u, i64 %i.am
  %i.an = icmp ult i64 %.072115, %.val107109
  br i1 %i.an, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bc, %.thread24.i ], [ %.072115, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.bb, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ao = mul i64 %.02226.i, %2
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.ao
  %i.aq = mul i64 %.027.i, %2
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.071116, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.02226.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.073114, i64 %.027.i
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !254 ; 2 uses
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !254 ; 2 uses
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ax = icmp slt i32 %i.av, %i.au
  br i1 %i.ax, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !226
  %i.az = load i64, ptr %i.as, align 8, !tbaa !226
  %i.ba = icmp ult i64 %i.ay, %i.az
  %cond.fr.i = freeze i1 %i.ba
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.bb = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bc = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bc, %.val107109
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.bb, %.thread24.i ] ; 5 uses
  %.idx105 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %.073114, i64 %.idx105 ; 4 uses
  %i.be = add i64 %.022.lcssa.i, 2
  %i.bf = tail call i64 @llvm.umax.i64(i64 %.val107109, i64 %i.be) ; 2 uses
  %.sroa.speculated89 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 %.099111)
  %i.bg = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bg, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %.071116, i64 %.idx ; 8 uses
  %i.bi = trunc nuw i8 %.074113 to i1
  %or.cond = and i1 %i.j, %i.bi
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %i.bj = load i32, ptr %i.e, align 4, !tbaa !254
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !254
  %i.bl = icmp sge i32 %i.bj, %i.bk
  %spec.select = zext i1 %i.bl to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.1 = phi i8 [ %.074113, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit ], [ %spec.select, %bb.e ] ; 2 uses
  %i.bm = zext nneg i8 %.1 to i64
  %i.bn = add i64 %.075112, %i.bm                 ; 3 uses
  %i.bo = getelementptr i8, ptr %.071116, i64 %.idx104 ; 2 uses
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %.not8.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.bp = shl i64 %.022.lcssa.i, 3
  %i.bq = add i64 %i.bp, 8
  %i.br = mul i64 %2, %i.bq                       ; 2 uses
  %scevgep162 = getelementptr i8, ptr %scevgep161, i64 %i.br ; 3 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 %.idx ; 3 uses
  %scevgep167 = getelementptr i8, ptr %.071116, i64 %i.br ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep162
  %bound1 = icmp ult ptr %i.bh, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %i.y
  %bound0173 = icmp ult ptr %i.d, %scevgep167
  %bound1174 = icmp ult ptr %scevgep166, %scevgep
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx177 = or i1 %found.conflict175, %conflict.rdx
  %bound0178 = icmp ult ptr %i.bh, %scevgep164
  %bound1179 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %i.bh, %scevgep167
  %bound1184 = icmp ult ptr %scevgep166, %scevgep162
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %scevgep163, %scevgep167
  %bound1188 = icmp ult ptr %scevgep166, %scevgep164
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx191 = or i1 %found.conflict189, %conflict.rdx186
  br i1 %conflict.rdx191, label %.lr.ph.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bs = getelementptr i8, ptr %i.bh, i64 %i.z
  %i.bt = getelementptr i8, ptr %.071116, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bu ; 2 uses
  %next.gep192 = getelementptr i8, ptr %.071116, i64 %i.bu ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep192, align 4, !tbaa !254
  %wide.vec194 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !254
  store <4 x i32> %wide.vec194, ptr %next.gep192, align 4, !tbaa !254
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !254
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !4384

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i.preheader201

.lr.ph.i.i.preheader201:                          ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.bh, %vector.memcheck ], [ %i.bh, %.lr.ph.i.i.preheader ], [ %i.bs, %middle.block ]
  %.079.i.i.ph = phi ptr [ %.071116, %vector.memcheck ], [ %.071116, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader201, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 4 uses
  %.079.i.i = phi ptr [ %i.cc, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader201 ] ; 5 uses
  %i.bw = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.bx = load i32, ptr %.010.i.i, align 4, !tbaa !254
  store i32 %i.bx, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.bw, ptr %.010.i.i, align 4, !tbaa !254
  %i.by = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.by, align 4, !tbaa !254
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.bz, align 4, !tbaa !254
  %i.cc = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cc, %i.bo
  br i1 %.not.i.i, label %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i, label %.lr.ph.i.i, !llvm.loop !4385

_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %middle.block, %bb.g
  %.not21.i = icmp eq i64 %.022.lcssa.i, 0
  br i1 %.not21.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.ce = load i64, ptr %i.bd, align 8, !tbaa !226
  %i.cf = load i64, ptr %.073114, align 8, !tbaa !226
  store i64 %i.cf, ptr %i.bd, align 8, !tbaa !226
  store i64 %i.ce, ptr %.073114, align 8, !tbaa !226
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost20adl_move_swap_rangesIPSt4pairINS_9container4test24movable_and_copyable_intES4_ES6_EET0_T_S8_S7_.exit.i
  %i.cg = icmp eq ptr %i.bd, %.0100110
  br i1 %i.cg, label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = icmp eq ptr %.0100110, %.073114
  %spec.select102 = select i1 %i.ch, ptr %i.bd, ptr %.0100110
  br label %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit

_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_EEEvT_SA_RSA_T0_SC_SC_.exit: ; preds = %bb.j, %bb.i, %bb.f
  %.1101 = phi ptr [ %.0100110, %bb.f ], [ %spec.select102, %bb.j ], [ %.073114, %bb.i ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.073114, i64 8
  %i.cj = icmp ne i64 %.072115, 0
  %.neg = sext i1 %i.cj to i64
  %i.ck = add i64 %.072115, %.neg
  %i.cl = icmp ne i64 %i.bf, 0
  %.neg78 = sext i1 %i.cl to i64
  %i.cm = add i64 %.sroa.speculated89, %.neg78
  %i.cn = add i64 %.099111, -1                    ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4386

._crit_edge125.loopexit131:                       ; preds = %bb.l
end_hunk_4
