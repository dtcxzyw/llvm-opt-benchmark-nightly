Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_adaptor_test?download=true
inline.NumInlined: 24951
inline.NumDeleted: 2813
loop-unroll.NumCompletelyUnrolled: 140
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 315
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_RT1_T0_:bb.a

.lr.ph37.i.preheader.i:                           ; preds = %.lr.ph.i50, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i
  %.034.i = phi i64 [ %i.dh, %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i ], [ 0, %.lr.ph.i50 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx33.i
  %.02233.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  br label %.lr.ph37.i.i

.lr.ph37.i.i:                                     ; preds = %bb.h, %.lr.ph37.i.preheader.i
  %.02236.i.i = phi ptr [ %.022.i.i, %bb.h ], [ %.02233.i.i, %.lr.ph37.i.preheader.i ] ; 4 uses
  %.pn35.i.i = phi ptr [ %.02236.i.i, %bb.h ], [ %i.cz, %.lr.ph37.i.preheader.i ] ; 3 uses
  %i.db = load i32, ptr %.02236.i.i, align 4, !tbaa !296 ; 3 uses
  %i.dc = load i32, ptr %.pn35.i.i, align 4, !tbaa !296 ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph37.i.i
  store i32 %i.dc, ptr %.02236.i.i, align 4, !tbaa !296
  %.not2628.i.i = icmp eq ptr %.pn35.i.i, %i.cz
  br i1 %.not2628.i.i, label %.critedge.i.i, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.f, %bb.g
  %.030.i.i = phi ptr [ %i.de, %bb.g ], [ %.pn35.i.i, %bb.f ] ; 3 uses
  %i.de = getelementptr i8, ptr %.030.i.i, i64 -4 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !296 ; 2 uses
  %i.dg = icmp slt i32 %i.db, %i.df
  br i1 %i.dg, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i51, %bb.f
  %.021.lcssa.i.i = phi ptr [ %i.cz, %bb.f ], [ %i.cz, %bb.g ], [ %.030.i.i, %.lr.ph.i.i51 ]
  store i32 %i.db, ptr %.021.lcssa.i.i, align 4, !tbaa !296
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i51
  store i32 %i.df, ptr %.030.i.i, align 4, !tbaa !296
  %.not26.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i51, !llvm.loop !75

bb.h:                                             ; preds = %.critedge.i.i, %.lr.ph37.i.i
  %.022.i.i = getelementptr inbounds nuw i8, ptr %.02236.i.i, i64 4 ; 2 uses
  %.not25.i.i = icmp eq ptr %.022.i.i, %i.da
  br i1 %.not25.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, label %.lr.ph37.i.i, !llvm.loop !76

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i: ; preds = %bb.h
  %i.dh = add i64 %.034.i, %.sroa.speculated.i    ; 3 uses
  %i.di = sub i64 %i.c, %i.dh
  %i.dj = icmp ugt i64 %i.di, %.sroa.speculated.i
  br i1 %i.dj, label %.lr.ph37.i.preheader.i, label %._crit_edge.i, !llvm.loop !3567

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
  %i.dn = load i32, ptr %.02236.i20.i, align 4, !tbaa !296 ; 3 uses
  %i.do = load i32, ptr %.pn35.i21.i, align 4, !tbaa !296 ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph37.i19.i
  store i32 %i.do, ptr %.02236.i20.i, align 4, !tbaa !296
  %.not2628.i24.i = icmp eq ptr %.pn35.i21.i, %i.dk
  br i1 %.not2628.i24.i, label %.critedge.i27.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.i, %bb.j
  %.030.i26.i = phi ptr [ %i.dq, %bb.j ], [ %.pn35.i21.i, %bb.i ] ; 3 uses
  %i.dq = getelementptr i8, ptr %.030.i26.i, i64 -4 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !296 ; 2 uses
  %i.ds = icmp slt i32 %i.dn, %i.dr
  br i1 %i.ds, label %bb.j, label %.critedge.i27.i

.critedge.i27.i:                                  ; preds = %bb.j, %.lr.ph.i25.i, %bb.i
  %.021.lcssa.i28.i = phi ptr [ %i.dk, %bb.i ], [ %i.dk, %bb.j ], [ %.030.i26.i, %.lr.ph.i25.i ]
  store i32 %i.dn, ptr %.021.lcssa.i28.i, align 4, !tbaa !296
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i25.i
  store i32 %i.dr, ptr %.030.i26.i, align 4, !tbaa !296
  %.not26.i29.i = icmp eq ptr %i.dq, %i.dk
  br i1 %.not26.i29.i, label %.critedge.i27.i, label %.lr.ph.i25.i, !llvm.loop !75

bb.k:                                             ; preds = %.critedge.i27.i, %.lr.ph37.i19.i
  %.022.i22.i = getelementptr inbounds nuw i8, ptr %.02236.i20.i, i64 4 ; 2 uses
  %.not25.i23.i = icmp eq ptr %.022.i22.i, %i.dl
  br i1 %.not25.i23.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.i, !llvm.loop !76

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
  %i.ef = load ptr, ptr %4, align 8, !tbaa !426   ; 5 uses
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
  %wide.load167 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !296
  %wide.load168 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !296
  %i.er = getelementptr i8, ptr %next.gep165, i64 16
  store <4 x i32> %wide.load167, ptr %next.gep165, align 4, !tbaa !296
  store <4 x i32> %wide.load168, ptr %i.er, align 4, !tbaa !296
  %index.next169 = add nuw i64 %index164, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.es, label %middle.block170, label %vector.body163, !llvm.loop !3568

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
  %i.et = load i32, ptr %.079.i55, align 4, !tbaa !296
  store i32 %i.et, ptr %.010.i54, align 4, !tbaa !296
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i55, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i54, i64 4
  %.not.i56 = icmp eq ptr %i.eu, %i.eg
  br i1 %.not.i56, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, label %.lr.ph.i53, !llvm.loop !3569

bb.l:                                             ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59:         ; preds = %.lr.ph.i53, %middle.block170, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !427
  %.not.i60 = icmp eq i64 %i.ex, 0
  br i1 %.not.i60, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59
  store i64 0, ptr %i.ew, align 8, !tbaa !427
  br label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit: ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, %.preheader.preheader.i.i
  %i.ey = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.ey)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_13adaptive_xbufIiS3_mEEEEbT_RNS0_9iter_sizeISF_E4typeESF_SI_SI_SJ_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 5 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = load i64, ptr %5, align 8, !tbaa !319    ; 13 uses
  %i.d = getelementptr [4 x i8], ptr %2, i64 %i.c ; 8 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !319
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
  %i.m = load i64, ptr %i.l, align 8, !tbaa !427  ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !426    ; 8 uses
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
  %or.cond434.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond434.a, label %.lr.ph.i.i.preheader, label %vector.ph

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
  %wide.load = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !296
  %wide.load248 = load <4 x i32>, ptr %i.y, align 4, !tbaa !296
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !296
  store <4 x i32> %wide.load248, ptr %i.z, align 4, !tbaa !296
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !3570

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
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !296
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !296
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !3571

bb.c:                                             ; preds = %bb.b
  %.idx26.i = shl i64 %i.m, 2                     ; 5 uses
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
  %or.cond435.a = select i1 %min.iters.check253, i1 true, i1 %diff.check251
  br i1 %or.cond435.a, label %.lr.ph.i18.i.preheader453, label %vector.ph254

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
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !296
  %wide.load261 = load <4 x i32>, ptr %i.an, align 4, !tbaa !296
  %i.ao = getelementptr i8, ptr %next.gep258, i64 16
  store <4 x i32> %wide.load260, ptr %next.gep258, align 4, !tbaa !296
  store <4 x i32> %wide.load261, ptr %i.ao, align 4, !tbaa !296
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.ap, label %middle.block263, label %vector.body256, !llvm.loop !3572

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
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !296
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !296
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !3573

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i:       ; preds = %.lr.ph.i18.i, %middle.block263, %bb.c
  %.0.lcssa.i22.i = phi ptr [ %i.n, %bb.c ], [ %i.ak, %middle.block263 ], [ %i.as, %.lr.ph.i18.i ] ; 5 uses
  %.0.lcssa.i22.i268 = ptrtoaddr ptr %.0.lcssa.i22.i to i64
  %.idx27.i = shl nsw i64 %i.c, 2                 ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %2, i64 %.idx27.i
  %.not10.i.i = icmp eq i64 %.idx26.i, %.idx27.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  %i.au = add i64 %.idx27.i, -4
  %i.av = sub i64 %i.au, %.idx26.i                ; 2 uses
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
  %wide.load278 = load <4 x i32>, ptr %next.gep276, align 4, !tbaa !296
  %wide.load279 = load <4 x i32>, ptr %i.be, align 4, !tbaa !296
  %i.bf = getelementptr i8, ptr %next.gep277, i64 16
  store <4 x i32> %wide.load278, ptr %next.gep277, align 4, !tbaa !296
  store <4 x i32> %wide.load279, ptr %i.bf, align 4, !tbaa !296
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.bg, label %middle.block281, label %vector.body274, !llvm.loop !3574

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
  %i.bh = load i32, ptr %.012.i.i, align 4, !tbaa !296
  store i32 %i.bh, ptr %.0911.i.i, align 4, !tbaa !296
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !3575

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block281, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !427
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.h, label %.lr.ph, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = shl i64 %3, 2                           ; 2 uses
  %scevgep303.a = getelementptr i8, ptr %2, i64 %i.bl
  %scevgep340.a = getelementptr i8, ptr %2, i64 %i.bl
  %i.bm = shl i64 %3, 2
  %i.bn = add i64 %i.bm, -4
  %i.bo = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.bo
  br label %bb.d

._crit_edge:                                      ; preds = %bb.s
  %i.bp = select i1 %.1, i1 %i.ca, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !319
  %i.bq = sub i64 %i.g, %spec.select
  store i64 %i.bq, ptr %1, align 8, !tbaa !319
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bt, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.ha, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ] ; 2 uses
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 13 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.ca, %bb.s ]
  %i.br = load i64, ptr %5, align 8, !tbaa !319   ; 2 uses
  %i.bs = load i64, ptr %1, align 8, !tbaa !319   ; 4 uses
  %i.bt = shl i64 %.0205, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.br, 0
  br i1 %.not.i144, label %bb.e, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.e:                                             ; preds = %bb.d
  %i.bu = lshr i64 %i.bs, 1                       ; 3 uses
  %i.bv = sub nuw i64 %i.bs, %i.bu                ; 2 uses
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
  %or.cond436.a = select i1 %min.iters.check365, i1 true, i1 %diff.check363
  br i1 %or.cond436.a, label %.lr.ph.i.i149.preheader, label %vector.ph366

vector.ph366:                                     ; preds = %.lr.ph.i.preheader.i148
  %n.vec367 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cm = mul i64 %n.vec367, -4                   ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cg, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.ch, i64 %i.cm
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next374, %vector.body368 ] ; 2 uses
  %i.cp = mul i64 %index369, -4                   ; 2 uses
  %next.gep370.a = getelementptr i8, ptr %i.cg, i64 %i.cp ; 2 uses
  %next.gep371 = getelementptr i8, ptr %i.ch, i64 %i.cp ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep371, i64 -16
  %i.cr = getelementptr inbounds i8, ptr %next.gep371, i64 -32
  %wide.load372.a = load <4 x i32>, ptr %i.cq, align 4, !tbaa !296
  %wide.load373 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !296
  %i.cs = getelementptr inbounds i8, ptr %next.gep370.a, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep370.a, i64 -32
  store <4 x i32> %wide.load372.a, ptr %i.cs, align 4, !tbaa !296
  store <4 x i32> %wide.load373, ptr %i.ct, align 4, !tbaa !296
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.cu, label %middle.block375, label %vector.body368, !llvm.loop !3576

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
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !296
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !296
  %.not.i.i152 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i152, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149, !llvm.loop !3577

bb.j:                                             ; preds = %bb.h
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.j
  %i.cy = getelementptr [4 x i8], ptr %i.d, i64 %.0133201 ; 5 uses
  %.idx.i147 = shl i64 %.0133201, 2               ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cf, i64 %.idx.i147 ; 5 uses
  %i.da = add i64 %.idx.i147, -4                  ; 2 uses
  %i.db = lshr exact i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check384 = icmp ult i64 %i.da, 28
  br i1 %min.iters.check384, label %.lr.ph.i10.i.preheader, label %vector.memcheck379

vector.memcheck379:                               ; preds = %.lr.ph.i10.preheader.i
  %bound0380 = icmp ult ptr %i.cf, %i.cy
  %bound1381 = icmp ult ptr %i.d, %i.cz
  %found.conflict382 = and i1 %bound0380, %bound1381
  br i1 %found.conflict382, label %.lr.ph.i10.i.preheader, label %vector.ph385

vector.ph385:                                     ; preds = %vector.memcheck379
  %n.vec386 = and i64 %i.dc, 9223372036854775800  ; 3 uses
  %i.dd = mul i64 %n.vec386, -4                   ; 2 uses
  %i.de = getelementptr i8, ptr %i.cy, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.dd
  br label %vector.body387

vector.body387:                                   ; preds = %vector.body387, %vector.ph385
  %index388 = phi i64 [ 0, %vector.ph385 ], [ %index.next395, %vector.body387 ] ; 2 uses
  %i.dg = mul i64 %index388, -4                   ; 2 uses
  %next.gep389.a = getelementptr i8, ptr %i.cy, i64 %i.dg ; 2 uses
  %next.gep390 = getelementptr i8, ptr %i.cz, i64 %i.dg ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %next.gep390, i64 -16 ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %next.gep390, i64 -32 ; 2 uses
  %wide.load391.a = load <4 x i32>, ptr %i.dh, align 4, !tbaa !296, !alias.scope !3602, !noalias !3603
  %wide.load392.a = load <4 x i32>, ptr %i.di, align 4, !tbaa !296, !alias.scope !3602, !noalias !3603
  %i.dj = getelementptr inbounds i8, ptr %next.gep389.a, i64 -16 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %next.gep389.a, i64 -32 ; 2 uses
  %wide.load393.a = load <4 x i32>, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3603
  %wide.load394 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !296, !alias.scope !3603
  store <4 x i32> %wide.load393.a, ptr %i.dh, align 4, !tbaa !296, !alias.scope !3602, !noalias !3603
  store <4 x i32> %wide.load394, ptr %i.di, align 4, !tbaa !296, !alias.scope !3602, !noalias !3603
  store <4 x i32> %wide.load391.a, ptr %i.dj, align 4, !tbaa !296, !alias.scope !3603
  store <4 x i32> %wide.load392.a, ptr %i.dk, align 4, !tbaa !296, !alias.scope !3603
  %index.next395 = add nuw i64 %index388, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next395, %n.vec386
  br i1 %i.dl, label %middle.block396, label %vector.body387, !llvm.loop !3581

middle.block396:                                  ; preds = %vector.body387
  %cmp.n397 = icmp eq i64 %i.dc, %n.vec386
  br i1 %cmp.n397, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i.preheader

.lr.ph.i10.i.preheader:                           ; preds = %vector.memcheck379, %.lr.ph.i10.preheader.i, %middle.block396
  %.08.i.i.ph = phi ptr [ %i.cy, %vector.memcheck379 ], [ %i.cy, %.lr.ph.i10.preheader.i ], [ %i.de, %middle.block396 ]
  %.057.i.i.ph = phi ptr [ %i.cz, %vector.memcheck379 ], [ %i.cz, %.lr.ph.i10.preheader.i ], [ %i.df, %middle.block396 ]
  br label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.preheader, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.dn, %.lr.ph.i10.i ], [ %.08.i.i.ph, %.lr.ph.i10.i.preheader ]
  %.057.i.i = phi ptr [ %i.dm, %.lr.ph.i10.i ], [ %.057.i.i.ph, %.lr.ph.i10.i.preheader ]
  %i.dm = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 3 uses
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !296
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !296
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !296
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !296
  %.not.i11.i = icmp eq ptr %i.cf, %i.dm
  br i1 %.not.i11.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i, !llvm.loop !3582

bb.k:                                             ; preds = %bb.g
  %i.dq = getelementptr [4 x i8], ptr %i.d, i64 %.0133201 ; 18 uses
  %i.dr = sub i64 0, %.1.i
  %i.ds = getelementptr [4 x i8], ptr %i.dq, i64 %i.dr ; 9 uses
  %i.dt = icmp ugt i64 %.0133201, %spec.select15.i
  br i1 %i.dt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.du = sub nuw i64 %.0133201, %spec.select15.i ; 2 uses
  %i.dv = sub i64 0, %i.du
  %i.dw = getelementptr [4 x i8], ptr %i.ds, i64 %i.dv ; 4 uses
  %.idx13.i161 = shl nuw nsw i64 %i.du, 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx13.i161 ; 7 uses
  %i.dy = add i64 %i.cc, %.0133201
  %i.dz = add i64 %i.dy, %i.c
  %i.ea = shl i64 %i.dz, 2
  %.reass = add i64 %i.ea, %invariant.op          ; 2 uses
  %i.eb = lshr exact i64 %.reass, 2
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 4 uses
  %min.iters.check288 = icmp ult i64 %.reass, 28  ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i162.preheader, label %.lr.ph.i10.i156.preheader

.lr.ph.i10.i156.preheader:                        ; preds = %bb.l
  br i1 %min.iters.check288, label %.lr.ph.i10.i156.preheader444, label %vector.memcheck302

vector.memcheck302:                               ; preds = %.lr.ph.i10.i156.preheader
  %7 = add i64 %i.c, %.0133201
  %8 = sub i64 %7, %.1.i
  %9 = shl i64 %8, 2
  %scevgep = getelementptr i8, ptr %2, i64 %9
  %i.ed = mul i64 %i.cc, -4
  %scevgep304 = getelementptr i8, ptr %scevgep303.a, i64 %i.ed
  %bound0 = icmp ult ptr %i.dw, %i.dq
  %bound1 = icmp ult ptr %scevgep304, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i10.i156.preheader444, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck302
  %n.vec308 = and i64 %i.ec, 9223372036854775800  ; 3 uses
  %i.ee = mul i64 %n.vec308, -4                   ; 2 uses
  %i.ef = getelementptr i8, ptr %i.dq, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ee
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph307
  %index310 = phi i64 [ 0, %vector.ph307 ], [ %index.next317, %vector.body309 ] ; 2 uses
  %i.eh = mul i64 %index310, -4                   ; 2 uses
  %next.gep311.a = getelementptr i8, ptr %i.dq, i64 %i.eh ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.dx, i64 %i.eh ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %next.gep312, i64 -16 ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %next.gep312, i64 -32 ; 2 uses
  %wide.load313.a = load <4 x i32>, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3604, !noalias !3605
  %wide.load314.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3604, !noalias !3605
  %i.ek = getelementptr inbounds i8, ptr %next.gep311.a, i64 -16 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %next.gep311.a, i64 -32 ; 2 uses
  %wide.load315.a = load <4 x i32>, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3605
  %wide.load316 = load <4 x i32>, ptr %i.el, align 4, !tbaa !296, !alias.scope !3605
  store <4 x i32> %wide.load315.a, ptr %i.ei, align 4, !tbaa !296, !alias.scope !3604, !noalias !3605
  store <4 x i32> %wide.load316, ptr %i.ej, align 4, !tbaa !296, !alias.scope !3604, !noalias !3605
  store <4 x i32> %wide.load313.a, ptr %i.ek, align 4, !tbaa !296, !alias.scope !3605
  store <4 x i32> %wide.load314.a, ptr %i.el, align 4, !tbaa !296, !alias.scope !3605
  %index.next317 = add nuw i64 %index310, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next317, %n.vec308
  br i1 %i.em, label %middle.block318, label %vector.body309, !llvm.loop !3586

middle.block318:                                  ; preds = %vector.body309
  %cmp.n319 = icmp eq i64 %i.ec, %n.vec308
  br i1 %cmp.n319, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156.preheader444

.lr.ph.i10.i156.preheader444:                     ; preds = %vector.memcheck302, %.lr.ph.i10.i156.preheader, %middle.block318
  %.08.i.i157.ph = phi ptr [ %i.dq, %vector.memcheck302 ], [ %i.dq, %.lr.ph.i10.i156.preheader ], [ %i.ef, %middle.block318 ]
  %.057.i.i158.ph = phi ptr [ %i.dx, %vector.memcheck302 ], [ %i.dx, %.lr.ph.i10.i156.preheader ], [ %i.eg, %middle.block318 ]
  br label %.lr.ph.i10.i156

.lr.ph.i.i162.preheader:                          ; preds = %bb.l
  %i.en = shl i64 %.1.i, 2
  %diff.check286 = icmp ugt i64 %i.en, -32
  %or.cond437.a = select i1 %min.iters.check288, i1 true, i1 %diff.check286
  br i1 %or.cond437.a, label %.lr.ph.i.i162.preheader443, label %vector.ph289

vector.ph289:                                     ; preds = %.lr.ph.i.i162.preheader
  %n.vec290 = and i64 %i.ec, 9223372036854775800  ; 3 uses
  %i.eo = mul i64 %n.vec290, -4                   ; 2 uses
  %i.ep = getelementptr i8, ptr %i.dq, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.dx, i64 %i.eo
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph289
  %index292 = phi i64 [ 0, %vector.ph289 ], [ %index.next297, %vector.body291 ] ; 2 uses
  %i.er = mul i64 %index292, -4                   ; 2 uses
  %next.gep293 = getelementptr i8, ptr %i.dq, i64 %i.er ; 2 uses
  %next.gep294 = getelementptr i8, ptr %i.dx, i64 %i.er ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %next.gep294, i64 -16
  %i.et = getelementptr inbounds i8, ptr %next.gep294, i64 -32
  %wide.load295 = load <4 x i32>, ptr %i.es, align 4, !tbaa !296
  %wide.load296 = load <4 x i32>, ptr %i.et, align 4, !tbaa !296
  %i.eu = getelementptr inbounds i8, ptr %next.gep293, i64 -16
  %i.ev = getelementptr inbounds i8, ptr %next.gep293, i64 -32
  store <4 x i32> %wide.load295, ptr %i.eu, align 4, !tbaa !296
  store <4 x i32> %wide.load296, ptr %i.ev, align 4, !tbaa !296
  %index.next297 = add nuw i64 %index292, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.ew, label %middle.block298, label %vector.body291, !llvm.loop !3587

middle.block298:                                  ; preds = %vector.body291
  %cmp.n299 = icmp eq i64 %i.ec, %n.vec290
  br i1 %cmp.n299, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i162.preheader443

.lr.ph.i.i162.preheader443:                       ; preds = %.lr.ph.i.i162.preheader, %middle.block298
  %.010.i.i163.ph = phi ptr [ %i.dq, %.lr.ph.i.i162.preheader ], [ %i.ep, %middle.block298 ]
  %.079.i.i164.ph = phi ptr [ %i.dx, %.lr.ph.i.i162.preheader ], [ %i.eq, %middle.block298 ]
  br label %.lr.ph.i.i162

.lr.ph.i.i162:                                    ; preds = %.lr.ph.i.i162.preheader443, %.lr.ph.i.i162
  %.010.i.i163 = phi ptr [ %i.ey, %.lr.ph.i.i162 ], [ %.010.i.i163.ph, %.lr.ph.i.i162.preheader443 ]
  %.079.i.i164 = phi ptr [ %i.ex, %.lr.ph.i.i162 ], [ %.079.i.i164.ph, %.lr.ph.i.i162.preheader443 ]
  %i.ex = getelementptr inbounds i8, ptr %.079.i.i164, i64 -4 ; 3 uses
  %i.ey = getelementptr inbounds i8, ptr %.010.i.i163, i64 -4 ; 2 uses
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !296
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !296
  %.not.i.i165 = icmp eq ptr %i.dw, %i.ex
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i162, !llvm.loop !3588

.lr.ph.i10.i156:                                  ; preds = %.lr.ph.i10.i156.preheader444, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fb, %.lr.ph.i10.i156 ], [ %.08.i.i157.ph, %.lr.ph.i10.i156.preheader444 ]
  %.057.i.i158 = phi ptr [ %i.fa, %.lr.ph.i10.i156 ], [ %.057.i.i158.ph, %.lr.ph.i10.i156.preheader444 ]
  %i.fa = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 3 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !296
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !296
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !296
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !296
  %.not.i11.i159 = icmp eq ptr %i.dw, %i.fa
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156, !llvm.loop !3589

bb.m:                                             ; preds = %bb.k
  %i.fe = icmp ult i64 %.0133201, %spec.select15.i
  br i1 %i.fe, label %bb.n, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit

bb.n:                                             ; preds = %bb.m
  %i.ff = sub nuw i64 %spec.select15.i, %.0133201
  %.idx14.i = shl i64 %i.ff, 2
  %i.fg = getelementptr i8, ptr %i.dq, i64 %.idx14.i ; 3 uses
  %i.fh = add i64 %i.cc, %.0133201
  %i.fi = add i64 %i.fh, %i.c
  %i.fj = shl i64 %i.fi, 2
  %i.fk = sub i64 %i.bn, %i.fj                    ; 2 uses
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 4 uses
  %min.iters.check325 = icmp ult i64 %i.fk, 28    ; 2 uses
  br i1 %or.cond187, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i.preheader

.lr.ph.i9.i.preheader:                            ; preds = %bb.n
  br i1 %min.iters.check325, label %.lr.ph.i9.i.preheader448, label %vector.memcheck339

vector.memcheck339:                               ; preds = %.lr.ph.i9.i.preheader
  %i.fn = add i64 %i.cc, %.1.i
  %i.fo = mul i64 %i.fn, -4
  %scevgep341 = getelementptr i8, ptr %scevgep340.a, i64 %i.fo
  %bound0342 = icmp ult ptr %i.dq, %scevgep341
  %bound1343 = icmp ult ptr %i.ds, %i.fg
  %found.conflict344 = and i1 %bound0342, %bound1343
  br i1 %found.conflict344, label %.lr.ph.i9.i.preheader448, label %vector.ph347

vector.ph347:                                     ; preds = %vector.memcheck339
  %n.vec348 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fp = shl i64 %n.vec348, 2                    ; 2 uses
  %i.fq = getelementptr i8, ptr %i.ds, i64 %i.fp
  %i.fr = getelementptr i8, ptr %i.dq, i64 %i.fp
  br label %vector.body349

vector.body349:                                   ; preds = %vector.body349, %vector.ph347
  %index350 = phi i64 [ 0, %vector.ph347 ], [ %index.next357, %vector.body349 ] ; 2 uses
  %i.fs = shl i64 %index350, 2                    ; 2 uses
  %next.gep351.a = getelementptr i8, ptr %i.ds, i64 %i.fs ; 3 uses
  %next.gep352 = getelementptr i8, ptr %i.dq, i64 %i.fs ; 3 uses
  %i.ft = getelementptr i8, ptr %next.gep352, i64 16 ; 2 uses
  %wide.load353.a = load <4 x i32>, ptr %next.gep352, align 4, !tbaa !296, !alias.scope !3606, !noalias !3607
  %wide.load354.a = load <4 x i32>, ptr %i.ft, align 4, !tbaa !296, !alias.scope !3606, !noalias !3607
  %i.fu = getelementptr i8, ptr %next.gep351.a, i64 16 ; 2 uses
  %wide.load355.a = load <4 x i32>, ptr %next.gep351.a, align 4, !tbaa !296, !alias.scope !3607
  %wide.load356 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !296, !alias.scope !3607
  store <4 x i32> %wide.load355.a, ptr %next.gep352, align 4, !tbaa !296, !alias.scope !3606, !noalias !3607
  store <4 x i32> %wide.load356, ptr %i.ft, align 4, !tbaa !296, !alias.scope !3606, !noalias !3607
  store <4 x i32> %wide.load353.a, ptr %next.gep351.a, align 4, !tbaa !296, !alias.scope !3607
  store <4 x i32> %wide.load354.a, ptr %i.fu, align 4, !tbaa !296, !alias.scope !3607
  %index.next357 = add nuw i64 %index350, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next357, %n.vec348
  br i1 %i.fv, label %middle.block358, label %vector.body349, !llvm.loop !3593

middle.block358:                                  ; preds = %vector.body349
  %cmp.n359 = icmp eq i64 %i.fm, %n.vec348
  br i1 %cmp.n359, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i9.i.preheader448

.lr.ph.i9.i.preheader448:                         ; preds = %vector.memcheck339, %.lr.ph.i9.i.preheader, %middle.block358
  %.010.i10.i.ph = phi ptr [ %i.ds, %vector.memcheck339 ], [ %i.ds, %.lr.ph.i9.i.preheader ], [ %i.fq, %middle.block358 ]
  %.079.i11.i.ph = phi ptr [ %i.dq, %vector.memcheck339 ], [ %i.dq, %.lr.ph.i9.i.preheader ], [ %i.fr, %middle.block358 ]
  br label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.n
  %i.fw = shl i64 %.1.i, 2
  %diff.check323 = icmp ugt i64 %i.fw, -32
  %or.cond438.a = select i1 %min.iters.check325, i1 true, i1 %diff.check323
  br i1 %or.cond438.a, label %.lr.ph.i.i168.preheader446, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec327 = and i64 %i.fm, 9223372036854775800  ; 3 uses
  %i.fx = shl i64 %n.vec327, 2                    ; 2 uses
  %i.fy = getelementptr i8, ptr %i.ds, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.dq, i64 %i.fx
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next334, %vector.body328 ] ; 2 uses
  %i.ga = shl i64 %index329, 2                    ; 2 uses
  %next.gep330.a = getelementptr i8, ptr %i.ds, i64 %i.ga ; 2 uses
  %next.gep331 = getelementptr i8, ptr %i.dq, i64 %i.ga ; 2 uses
  %i.gb = getelementptr i8, ptr %next.gep331, i64 16
  %wide.load332.a = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !296
  %wide.load333 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !296
  %i.gc = getelementptr i8, ptr %next.gep330.a, i64 16
  store <4 x i32> %wide.load332.a, ptr %next.gep330.a, align 4, !tbaa !296
  store <4 x i32> %wide.load333, ptr %i.gc, align 4, !tbaa !296
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.gd, label %middle.block335, label %vector.body328, !llvm.loop !3594

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.fm, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168.preheader446

.lr.ph.i.i168.preheader446:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block335
  %.010.i.i169.ph = phi ptr [ %i.ds, %.lr.ph.i.i168.preheader ], [ %i.fy, %middle.block335 ]
  %.079.i.i170.ph = phi ptr [ %i.dq, %.lr.ph.i.i168.preheader ], [ %i.fz, %middle.block335 ]
end_hunk_0
