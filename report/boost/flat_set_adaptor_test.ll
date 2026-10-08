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
  %i.c = load i64, ptr %5, align 8, !tbaa !319    ; 12 uses
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
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 12 uses
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
  %.1.i = phi i64 [ %i.bu, %bb.f ], [ %i.by, %.critedge.i ], [ %i.br, %bb.d ] ; 13 uses
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
  %.idx13.i161 = shl i64 %i.du, 2
  %i.dx = getelementptr i8, ptr %i.dw, i64 %.idx13.i161 ; 8 uses
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
  %i.ed = mul i64 %i.cc, -4
  %scevgep304 = getelementptr i8, ptr %scevgep303.a, i64 %i.ed
  %bound0 = icmp ult ptr %i.dw, %i.dq
  %bound1 = icmp ult ptr %scevgep304, %i.dx
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
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_:bb.a
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hx, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hx, %bb.af ] ; 5 uses
  %i.hy = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hz = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ic ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.ie = add i64 %i.hy, -4
  %i.if = sub i64 %i.ie, %i.hz                    ; 2 uses
  %i.ig = lshr i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.if, 60
  %i.ii = sub i64 %i.hy, %i.hq
  %diff.check443 = icmp ugt i64 %i.ii, -32
  %or.cond496 = select i1 %min.iters.check445, i1 true, i1 %diff.check443
  br i1 %or.cond496, label %.lr.ph.i.i146.preheader511, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec447 = and i64 %i.ih, 9223372036854775800  ; 3 uses
  %i.ij = shl i64 %n.vec447, 2                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.id, i64 %i.ij
  %i.il = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ij
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %i.im = shl i64 %index449, 2                    ; 2 uses
  %next.gep450 = getelementptr i8, ptr %i.id, i64 %i.im ; 2 uses
  %next.gep451 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep451, i64 16
  %wide.load452 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !296
  %wide.load453 = load <4 x i32>, ptr %i.in, align 4, !tbaa !296
  %i.io = getelementptr i8, ptr %next.gep450, i64 16
  store <4 x i32> %wide.load452, ptr %next.gep450, align 4, !tbaa !296
  store <4 x i32> %wide.load453, ptr %i.io, align 4, !tbaa !296
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.ip, label %middle.block455, label %vector.body448, !llvm.loop !3776

middle.block455:                                  ; preds = %vector.body448
  %cmp.n456 = icmp eq i64 %i.ih, %n.vec447
  br i1 %cmp.n456, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader511

.lr.ph.i.i146.preheader511:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block455
  %.010.i.i147.ph = phi ptr [ %i.id, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block455 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.il, %middle.block455 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader511, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.is, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader511 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader511 ] ; 2 uses
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !296
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !296
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !3777

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block455, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.it = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.it, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.id, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.hp, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ix, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ja, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ix, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.iy, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !296 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !296
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !296
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !299
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i461 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i460 = ptrtoaddr ptr %.226.i to i64
  %i.jc = ptrtoaddr ptr %.5 to i64
  %i.jd = add i64 %i.jc, -4
  %i.je = sub i64 %i.jd, %.223.i461               ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check464 = icmp ult i64 %i.je, 44
  %i.jh = sub i64 %.223.i461, %.226.i460
  %diff.check462 = icmp ugt i64 %i.jh, -32
  %or.cond497 = select i1 %min.iters.check464, i1 true, i1 %diff.check462
  br i1 %or.cond497, label %.lr.ph.i.i154.preheader501, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec466 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.ji = shl i64 %n.vec466, 2                    ; 2 uses
  %i.jj = getelementptr i8, ptr %.226.i, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %.223.i, i64 %i.ji
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.jl = shl i64 %index468, 2                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %.226.i, i64 %i.jl ; 2 uses
  %next.gep470 = getelementptr i8, ptr %.223.i, i64 %i.jl ; 2 uses
  %i.jm = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <4 x i32>, ptr %next.gep470, align 4, !tbaa !296
  %wide.load472 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !296
  %i.jn = getelementptr i8, ptr %next.gep469, i64 16
  store <4 x i32> %wide.load471, ptr %next.gep469, align 4, !tbaa !296
  store <4 x i32> %wide.load472, ptr %i.jn, align 4, !tbaa !296
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.jo, label %middle.block474, label %vector.body467, !llvm.loop !3778

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.jg, %n.vec466
  br i1 %cmp.n475, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader501

.lr.ph.i.i154.preheader501:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block474
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jj, %middle.block474 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.jk, %middle.block474 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader501, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jr, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader501 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jq, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader501 ] ; 2 uses
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !296
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !296
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !3779

bb.aj:                                            ; preds = %.thread
  br i1 %i.hr, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.js = phi ptr [ %i.hp, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 5 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 5 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.jt = phi ptr [ %i.hs, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268425 = ptrtoaddr ptr %.0216268 to i64   ; 2 uses
  %.0222270424 = ptrtoaddr ptr %.0222270 to i64
  %i.ju = ptrtoaddr ptr %.0108266 to i64
  %i.jv = add i64 %i.ju, -4
  %i.jw = sub i64 %i.jv, %.0216268425             ; 2 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check428 = icmp ult i64 %i.jw, 44
  %i.jz = sub i64 %.0216268425, %.0222270424
  %diff.check426 = icmp ugt i64 %i.jz, -32
  %or.cond498 = or i1 %min.iters.check428, %diff.check426
  br i1 %or.cond498, label %.lr.ph.i.i161.preheader512, label %vector.ph429

vector.ph429:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec430 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.ka = shl i64 %n.vec430, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %.0222270, i64 %i.ka ; 2 uses
  %i.kc = getelementptr i8, ptr %.0216268, i64 %i.ka
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next437, %vector.body431 ] ; 2 uses
  %i.kd = shl i64 %index432, 2                    ; 2 uses
  %next.gep433 = getelementptr i8, ptr %.0222270, i64 %i.kd ; 2 uses
  %next.gep434 = getelementptr i8, ptr %.0216268, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep434, i64 16
  %wide.load435 = load <4 x i32>, ptr %next.gep434, align 4, !tbaa !296
  %wide.load436 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !296
  %i.kf = getelementptr i8, ptr %next.gep433, i64 16
  store <4 x i32> %wide.load435, ptr %next.gep433, align 4, !tbaa !296
  store <4 x i32> %wide.load436, ptr %i.kf, align 4, !tbaa !296
  %index.next437 = add nuw i64 %index432, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.kg, label %middle.block438, label %vector.body431, !llvm.loop !3780

middle.block438:                                  ; preds = %vector.body431
  %cmp.n439 = icmp eq i64 %i.jy, %n.vec430
  br i1 %cmp.n439, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader512

.lr.ph.i.i161.preheader512:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block438
  %.010.i.i162.ph = phi ptr [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.kb, %middle.block438 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.kc, %middle.block438 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader512, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kj, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader512 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.ki, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader512 ] ; 2 uses
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !296
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !296
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !3781

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block438, %middle.block474, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kk = phi ptr [ %i.hp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.hp, %bb.aj ], [ %i.js, %bb.ak ], [ %i.hp, %middle.block474 ], [ %i.js, %middle.block438 ], [ %i.hp, %.lr.ph.i.i154 ], [ %i.js, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block474 ], [ %.2, %middle.block438 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block474 ], [ %.0234275, %middle.block438 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block474 ], [ %.0228272, %middle.block438 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block474 ], [ %.0102262, %middle.block438 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block474 ], [ %.099259, %middle.block438 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.kl = phi ptr [ %i.hs, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hs, %bb.aj ], [ %i.jt, %bb.ak ], [ %i.hs, %middle.block474 ], [ %i.jt, %middle.block438 ], [ %i.hs, %.lr.ph.i.i154 ], [ %i.jt, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.jj, %middle.block474 ], [ %i.kb, %middle.block438 ], [ %i.jr, %.lr.ph.i.i154 ], [ %i.kj, %.lr.ph.i.i161 ]
  %i.km = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_S3_S3_SC_NS0_7move_opEEET3_T_SF_T0_T1_RT2_SI_SE_NS0_9iter_sizeISH_E4typeESM_SM_SM_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.kl, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !299 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kn, %i.kl
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.ko = ptrtoaddr ptr %i.kn to i64              ; 2 uses
  %i.kp = ptrtoaddr ptr %i.km to i64
  %i.kq = ptrtoaddr ptr %i.kl to i64
  %i.kr = add i64 %i.kq, -4
  %i.ks = sub i64 %i.kr, %i.ko                    ; 2 uses
  %i.kt = lshr i64 %i.ks, 2
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check481 = icmp ult i64 %i.ks, 44
  %i.kv = sub i64 %i.ko, %i.kp
  %diff.check479 = icmp ugt i64 %i.kv, -32
  %or.cond499 = or i1 %min.iters.check481, %diff.check479
  br i1 %or.cond499, label %.lr.ph.i.i168.preheader500, label %vector.ph482

vector.ph482:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec483 = and i64 %i.ku, 9223372036854775800  ; 3 uses
  %i.kw = shl i64 %n.vec483, 2                    ; 2 uses
  %i.kx = getelementptr i8, ptr %i.km, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kn, i64 %i.kw
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next490, %vector.body484 ] ; 2 uses
  %i.kz = shl i64 %index485, 2                    ; 2 uses
  %next.gep486 = getelementptr i8, ptr %i.km, i64 %i.kz ; 2 uses
  %next.gep487 = getelementptr i8, ptr %i.kn, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep487, i64 16
  %wide.load488 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !296
  %wide.load489 = load <4 x i32>, ptr %i.la, align 4, !tbaa !296
  %i.lb = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %wide.load488, ptr %next.gep486, align 4, !tbaa !296
  store <4 x i32> %wide.load489, ptr %i.lb, align 4, !tbaa !296
  %index.next490 = add nuw i64 %index485, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.lc, label %middle.block491, label %vector.body484, !llvm.loop !3782

middle.block491:                                  ; preds = %vector.body484
  %cmp.n492 = icmp eq i64 %i.ku, %n.vec483
  br i1 %cmp.n492, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader500

.lr.ph.i.i168.preheader500:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block491
  %.010.i.i169.ph = phi ptr [ %i.km, %.lr.ph.i.i168.preheader ], [ %i.kx, %middle.block491 ]
  %.079.i.i170.ph = phi ptr [ %i.kn, %.lr.ph.i.i168.preheader ], [ %i.ky, %middle.block491 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader500, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader500 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.le, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader500 ] ; 2 uses
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !296
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !296
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !3783

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block491, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
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
  store ptr %i.i, ptr %i.a, align 8, !tbaa !299
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 18 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 17 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %.sink.split.i ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep414 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108286386 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285387 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099290, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_EENS0_9iter_sizeIT1_E4typeET_T0_SE_SG_SG_SG_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0102288, i64 %.02226.i
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  %.not.i87 = icmp eq ptr %i.hj, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hi, %bb.ae ], [ %i.hj, %bb.af ] ; 5 uses
  %i.hm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hn = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.hb, i64 %i.ho ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hq = add i64 %i.hm, -4
  %i.hr = sub i64 %i.hq, %i.hn                    ; 2 uses
  %i.hs = lshr i64 %i.hr, 2
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check517 = icmp ult i64 %i.hr, 44
  %i.hu = sub i64 %i.hc, %i.hn
  %diff.check515 = icmp ugt i64 %i.hu, -32
  %or.cond572 = select i1 %min.iters.check517, i1 true, i1 %diff.check515
  br i1 %or.cond572, label %.lr.ph.i.i89.preheader590, label %vector.ph518

vector.ph518:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec519 = and i64 %i.ht, 9223372036854775800  ; 3 uses
  %i.hv = mul i64 %n.vec519, -4                   ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hp, i64 %i.hv
  %i.hx = getelementptr i8, ptr %.lcssa.i, i64 %i.hv
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next526, %vector.body520 ] ; 2 uses
  %i.hy = mul i64 %index521, -4                   ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.hp, i64 %i.hy ; 2 uses
  %next.gep523 = getelementptr i8, ptr %.lcssa.i, i64 %i.hy ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep523, i64 -16
  %i.ia = getelementptr inbounds i8, ptr %next.gep523, i64 -32
  %wide.load524 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !296, !noalias !3954
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !296, !noalias !3954
  %i.ib = getelementptr inbounds i8, ptr %next.gep522, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep522, i64 -32
  store <4 x i32> %wide.load524, ptr %i.ib, align 4, !tbaa !296, !noalias !3954
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !296, !noalias !3954
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.id, label %middle.block527, label %vector.body520, !llvm.loop !3920

middle.block527:                                  ; preds = %vector.body520
  %cmp.n528 = icmp eq i64 %i.ht, %n.vec519
  br i1 %cmp.n528, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader590

.lr.ph.i.i89.preheader590:                        ; preds = %.lr.ph.i.i89.preheader, %middle.block527
  %.sroa.0.0.i90.ph = phi ptr [ %i.hp, %.lr.ph.i.i89.preheader ], [ %i.hw, %middle.block527 ]
  %.ph591 = phi ptr [ %.lcssa.i, %.lr.ph.i.i89.preheader ], [ %i.hx, %middle.block527 ]
  br label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.preheader590, %.lr.ph.i.i89
  %.sroa.0.0.i90 = phi ptr [ %i.ih, %.lr.ph.i.i89 ], [ %.sroa.0.0.i90.ph, %.lr.ph.i.i89.preheader590 ]
  %i.ie = phi ptr [ %i.if, %.lr.ph.i.i89 ], [ %.ph591, %.lr.ph.i.i89.preheader590 ]
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !296, !noalias !3954
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !296, !noalias !3954
  %.not.i.i91 = icmp eq ptr %i.if, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89, !llvm.loop !3921

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92: ; preds = %.lr.ph.i.i89, %middle.block527, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, %bb.ac
  %.sroa.0220.5 = phi ptr [ %i.hb, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0220.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0235.5 = phi ptr [ %i.hp, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0235.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0249.6 = phi ptr [ %i.ii, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0249.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i93 = icmp eq i64 %.neg305, 0
  %.not17.i = icmp eq ptr %.sroa.0220.5, %.sroa.0235.5
  %or.cond = select i1 %.not.i93, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0120.0.ph = phi ptr [ %i.io, %bb.ah ], [ %.sroa.0249.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ip, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0235.5, %bb.ag ]
  %i.ij = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0120.0 = phi ptr [ %i.io, %bb.ai ], [ %.sroa.0120.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ik, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !296, !noalias !3955 ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !296, !noalias !3955 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.in, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.im, ptr %i.io, align 4, !tbaa !296, !noalias !3955
  %i.iq = icmp eq ptr %i.ip, %i.he
  br i1 %i.iq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !57

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.il, ptr %i.io, align 4, !tbaa !296, !noalias !3955
  %i.ir = icmp eq ptr %i.ik, %.sroa.0220.5
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.io, %bb.ah ], [ %i.io, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.he, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.ik, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !441, !noalias !3955
  %.not1.i.i94 = icmp eq ptr %.sroa.012.2.i, %.sroa.0220.5
  br i1 %.not1.i.i94, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95.preheader

.lr.ph.i.i95.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit
  %.sroa.0120.1533 = ptrtoaddr ptr %.sroa.0120.1 to i64
  %.sroa.012.2.i532 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.is = ptrtoaddr ptr %.sroa.0220.5 to i64
  %i.it = add i64 %.sroa.012.2.i532, -4
  %i.iu = sub i64 %i.it, %i.is                    ; 2 uses
  %i.iv = lshr i64 %i.iu, 2
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check536 = icmp ult i64 %i.iu, 44
  %i.ix = sub i64 %.sroa.0120.1533, %.sroa.012.2.i532
  %diff.check534 = icmp ugt i64 %i.ix, -32
  %or.cond573 = select i1 %min.iters.check536, i1 true, i1 %diff.check534
  br i1 %or.cond573, label %.lr.ph.i.i95.preheader577, label %vector.ph537

vector.ph537:                                     ; preds = %.lr.ph.i.i95.preheader
  %n.vec538 = and i64 %i.iw, 9223372036854775800  ; 3 uses
  %i.iy = mul i64 %n.vec538, -4                   ; 2 uses
  %i.iz = getelementptr i8, ptr %.sroa.0120.1, i64 %i.iy ; 2 uses
  %i.ja = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.iy
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next545, %vector.body539 ] ; 2 uses
  %i.jb = mul i64 %index540, -4                   ; 2 uses
  %next.gep541 = getelementptr i8, ptr %.sroa.0120.1, i64 %i.jb ; 2 uses
  %next.gep542 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.jb ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %next.gep542, i64 -16
  %i.jd = getelementptr inbounds i8, ptr %next.gep542, i64 -32
  %wide.load543 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !296, !noalias !3956
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !296, !noalias !3956
  %i.je = getelementptr inbounds i8, ptr %next.gep541, i64 -16
  %i.jf = getelementptr inbounds i8, ptr %next.gep541, i64 -32
  store <4 x i32> %wide.load543, ptr %i.je, align 4, !tbaa !296, !noalias !3956
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !296, !noalias !3956
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.jg, label %middle.block546, label %vector.body539, !llvm.loop !3928

middle.block546:                                  ; preds = %vector.body539
  %cmp.n547 = icmp eq i64 %i.iw, %n.vec538
  br i1 %cmp.n547, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95.preheader577

.lr.ph.i.i95.preheader577:                        ; preds = %.lr.ph.i.i95.preheader, %middle.block546
  %.sroa.0.0.i96.ph = phi ptr [ %.sroa.0120.1, %.lr.ph.i.i95.preheader ], [ %i.iz, %middle.block546 ]
  %.ph578 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i95.preheader ], [ %i.ja, %middle.block546 ]
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95.preheader577, %.lr.ph.i.i95
  %.sroa.0.0.i96 = phi ptr [ %i.jk, %.lr.ph.i.i95 ], [ %.sroa.0.0.i96.ph, %.lr.ph.i.i95.preheader577 ]
  %i.jh = phi ptr [ %i.ji, %.lr.ph.i.i95 ], [ %.ph578, %.lr.ph.i.i95.preheader577 ]
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !296, !noalias !3956
  %i.jk = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !296, !noalias !3956
  %.not.i.i97 = icmp eq ptr %i.ji, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95, !llvm.loop !3929

bb.aj:                                            ; preds = %.thread
  br i1 %i.hd, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jl = phi ptr [ %i.hb, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1390, %bb.aj ], [ %.sroa.speculated273, %.thread.thread ] ; 3 uses
  %.sroa.0210.0330 = phi ptr [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0333, %.thread.thread ] ; 3 uses
  %.sroa.0220.0328 = phi ptr [ %.sroa.0220.0.lcssa, %bb.aj ], [ %.sroa.0220.0335, %.thread.thread ] ; 3 uses
  %.sroa.0235.0325 = phi ptr [ %.sroa.0235.0.lcssa, %bb.aj ], [ %.sroa.0235.0336, %.thread.thread ] ; 5 uses
  %.sroa.0249.0323 = phi ptr [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0337, %.thread.thread ] ; 5 uses
  %.sroa.0260.0320 = phi ptr [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0338, %.thread.thread ] ; 3 uses
  %.0284317 = phi i64 [ %.0284.lcssa, %bb.aj ], [ %.0284339, %.thread.thread ] ; 3 uses
  %.063314 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063340, %.thread.thread ] ; 3 uses
  %i.jm = phi ptr [ %i.he, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i99 = icmp eq ptr %.sroa.0235.0325, %.sroa.0220.0328
  br i1 %.not1.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader

.lr.ph.i.i100.preheader:                          ; preds = %bb.ak
  %.sroa.0249.0323497 = ptrtoaddr ptr %.sroa.0249.0323 to i64
  %.sroa.0235.0325496 = ptrtoaddr ptr %.sroa.0235.0325 to i64 ; 2 uses
  %i.jn = ptrtoaddr ptr %.sroa.0220.0328 to i64
  %i.jo = add i64 %.sroa.0235.0325496, -4
  %i.jp = sub i64 %i.jo, %i.jn                    ; 2 uses
  %i.jq = lshr i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.jp, 44
  %i.js = sub i64 %.sroa.0249.0323497, %.sroa.0235.0325496
  %diff.check498 = icmp ugt i64 %i.js, -32
  %or.cond574 = or i1 %min.iters.check500, %diff.check498
  br i1 %or.cond574, label %.lr.ph.i.i100.preheader592, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph.i.i100.preheader
  %n.vec502 = and i64 %i.jr, 9223372036854775800  ; 3 uses
  %i.jt = mul i64 %n.vec502, -4                   ; 2 uses
  %i.ju = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jt ; 2 uses
  %i.jv = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jt
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %i.jw = mul i64 %index504, -4                   ; 2 uses
  %next.gep505 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jw ; 2 uses
  %next.gep506 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jw ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %next.gep506, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep506, i64 -32
  %wide.load507 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !296, !noalias !3957
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !296, !noalias !3957
  %i.jz = getelementptr inbounds i8, ptr %next.gep505, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep505, i64 -32
  store <4 x i32> %wide.load507, ptr %i.jz, align 4, !tbaa !296, !noalias !3957
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !296, !noalias !3957
  %index.next509 = add nuw i64 %index504, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.kb, label %middle.block510, label %vector.body503, !llvm.loop !3934

middle.block510:                                  ; preds = %vector.body503
  %cmp.n511 = icmp eq i64 %i.jr, %n.vec502
  br i1 %cmp.n511, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader592

.lr.ph.i.i100.preheader592:                       ; preds = %.lr.ph.i.i100.preheader, %middle.block510
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.ju, %middle.block510 ]
  %.ph593 = phi ptr [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jv, %middle.block510 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader592, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.kf, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader592 ]
  %i.kc = phi ptr [ %i.kd, %.lr.ph.i.i100 ], [ %.ph593, %.lr.ph.i.i100.preheader592 ]
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4 ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !296, !noalias !3957
  %i.kf = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !296, !noalias !3957
  %.not.i.i102 = icmp eq ptr %i.kd, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !3935

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block510, %middle.block546, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kg = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.hb, %middle.block546 ], [ %i.jl, %middle.block510 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.jl, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block546 ], [ %.2, %middle.block510 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block546 ], [ %.sroa.0210.0330, %middle.block510 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block546 ], [ %.sroa.0260.0320, %middle.block510 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block546 ], [ %.0284317, %middle.block510 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block546 ], [ %.063314, %middle.block510 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kh = phi ptr [ %i.he, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.he, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.he, %middle.block546 ], [ %i.jm, %middle.block510 ], [ %i.he, %.lr.ph.i.i95 ], [ %i.jm, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iz, %middle.block546 ], [ %i.ju, %middle.block510 ], [ %i.jk, %.lr.ph.i.i95 ], [ %i.kf, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !441
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !441
  store ptr %i.kg, ptr %36, align 8, !tbaa !441
  store ptr %i.kh, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.ki = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.kj = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i104 = icmp eq ptr %i.kj, %i.kh
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  %i.kk = ptrtoaddr ptr %i.kj to i64              ; 2 uses
  %i.kl = ptrtoaddr ptr %i.ki to i64
  %i.km = ptrtoaddr ptr %i.kh to i64
  %i.kn = add i64 %i.kk, -4
  %i.ko = sub i64 %i.kn, %i.km                    ; 2 uses
  %i.kp = lshr i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check553 = icmp ult i64 %i.ko, 44
  %i.kr = sub i64 %i.kl, %i.kk
  %diff.check551 = icmp ugt i64 %i.kr, -32
  %or.cond575 = select i1 %min.iters.check553, i1 true, i1 %diff.check551
  br i1 %or.cond575, label %.lr.ph.i.i105.preheader576, label %vector.ph554

vector.ph554:                                     ; preds = %.lr.ph.i.i105.preheader
  %n.vec555 = and i64 %i.kq, 9223372036854775800  ; 3 uses
  %i.ks = mul i64 %n.vec555, -4                   ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ki, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.ks
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph554
  %index557 = phi i64 [ 0, %vector.ph554 ], [ %index.next562, %vector.body556 ] ; 2 uses
  %i.kv = mul i64 %index557, -4                   ; 2 uses
  %next.gep558 = getelementptr i8, ptr %i.ki, i64 %i.kv ; 2 uses
  %next.gep559 = getelementptr i8, ptr %i.kj, i64 %i.kv ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %next.gep559, i64 -16
  %i.kx = getelementptr inbounds i8, ptr %next.gep559, i64 -32
  %wide.load560 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !296, !noalias !3958
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !296, !noalias !3958
  %i.ky = getelementptr inbounds i8, ptr %next.gep558, i64 -16
  %i.kz = getelementptr inbounds i8, ptr %next.gep558, i64 -32
  store <4 x i32> %wide.load560, ptr %i.ky, align 4, !tbaa !296, !noalias !3958
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !296, !noalias !3958
  %index.next562 = add nuw i64 %index557, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next562, %n.vec555
  br i1 %i.la, label %middle.block563, label %vector.body556, !llvm.loop !3940

middle.block563:                                  ; preds = %vector.body556
  %cmp.n564 = icmp eq i64 %i.kq, %n.vec555
  br i1 %cmp.n564, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader576

.lr.ph.i.i105.preheader576:                       ; preds = %.lr.ph.i.i105.preheader, %middle.block563
  %.sroa.0.0.i106.ph = phi ptr [ %i.ki, %.lr.ph.i.i105.preheader ], [ %i.kt, %middle.block563 ]
  %.ph = phi ptr [ %i.kj, %.lr.ph.i.i105.preheader ], [ %i.ku, %middle.block563 ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader576, %.lr.ph.i.i105
  %.sroa.0.0.i106 = phi ptr [ %i.le, %.lr.ph.i.i105 ], [ %.sroa.0.0.i106.ph, %.lr.ph.i.i105.preheader576 ]
  %i.lb = phi ptr [ %i.lc, %.lr.ph.i.i105 ], [ %.ph, %.lr.ph.i.i105.preheader576 ]
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -4 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !296, !noalias !3958
  %i.le = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !296, !noalias !3958
  %.not.i.i107 = icmp eq ptr %i.lc, %i.kh
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !3941

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block563, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !441    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.h, ptr %27, align 8, !tbaa !441
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not336 = icmp eq i64 %i.a, 0
  br i1 %.not336, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = mul i64 %3, -4
  %i.u = shl i64 %2, 2
  %i.v = sub i64 %i.t, %i.u
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = add i64 %5, %4
  %.neg621 = sub i64 1, %i.w
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hx, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hx, %bb.af ] ; 5 uses
  %i.hy = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hz = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ic ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.ie = add i64 %i.hy, -4
  %i.if = sub i64 %i.ie, %i.hz                    ; 2 uses
  %i.ig = lshr i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.if, 60
  %i.ii = sub i64 %i.hy, %i.hq
  %diff.check442 = icmp ugt i64 %i.ii, -32
  %or.cond495 = select i1 %min.iters.check444, i1 true, i1 %diff.check442
  br i1 %or.cond495, label %.lr.ph.i.i146.preheader510, label %vector.ph445

vector.ph445:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec446 = and i64 %i.ih, 9223372036854775800  ; 3 uses
  %i.ij = shl i64 %n.vec446, 2                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.id, i64 %i.ij
  %i.il = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ij
  br label %vector.body447

vector.body447:                                   ; preds = %vector.body447, %vector.ph445
  %index448 = phi i64 [ 0, %vector.ph445 ], [ %index.next453, %vector.body447 ] ; 2 uses
  %i.im = shl i64 %index448, 2                    ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.id, i64 %i.im ; 2 uses
  %next.gep450 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load451 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !296
  %wide.load452 = load <4 x i32>, ptr %i.in, align 4, !tbaa !296
  %i.io = getelementptr i8, ptr %next.gep449, i64 16
  store <4 x i32> %wide.load451, ptr %next.gep449, align 4, !tbaa !296
  store <4 x i32> %wide.load452, ptr %i.io, align 4, !tbaa !296
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.ip, label %middle.block454, label %vector.body447, !llvm.loop !4232

middle.block454:                                  ; preds = %vector.body447
  %cmp.n455 = icmp eq i64 %i.ih, %n.vec446
  br i1 %cmp.n455, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader510

.lr.ph.i.i146.preheader510:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block454
  %.010.i.i147.ph = phi ptr [ %i.id, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block454 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.il, %middle.block454 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader510, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.is, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader510 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader510 ] ; 2 uses
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !296
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !296
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !4233

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block454, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.it = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.it, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.id, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.hp, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ix, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ja, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ix, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.iy, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !296 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !296
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !296
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !299
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i460 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i459 = ptrtoaddr ptr %.226.i to i64
  %i.jc = ptrtoaddr ptr %.5 to i64
  %i.jd = add i64 %i.jc, -4
  %i.je = sub i64 %i.jd, %.223.i460               ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check463 = icmp ult i64 %i.je, 44
  %i.jh = sub i64 %.223.i460, %.226.i459
  %diff.check461 = icmp ugt i64 %i.jh, -32
  %or.cond496 = select i1 %min.iters.check463, i1 true, i1 %diff.check461
  br i1 %or.cond496, label %.lr.ph.i.i154.preheader500, label %vector.ph464

vector.ph464:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec465 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.ji = shl i64 %n.vec465, 2                    ; 2 uses
  %i.jj = getelementptr i8, ptr %.226.i, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %.223.i, i64 %i.ji
  br label %vector.body466

vector.body466:                                   ; preds = %vector.body466, %vector.ph464
  %index467 = phi i64 [ 0, %vector.ph464 ], [ %index.next472, %vector.body466 ] ; 2 uses
  %i.jl = shl i64 %index467, 2                    ; 2 uses
  %next.gep468 = getelementptr i8, ptr %.226.i, i64 %i.jl ; 2 uses
  %next.gep469 = getelementptr i8, ptr %.223.i, i64 %i.jl ; 2 uses
  %i.jm = getelementptr i8, ptr %next.gep469, i64 16
  %wide.load470 = load <4 x i32>, ptr %next.gep469, align 4, !tbaa !296
  %wide.load471 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !296
  %i.jn = getelementptr i8, ptr %next.gep468, i64 16
  store <4 x i32> %wide.load470, ptr %next.gep468, align 4, !tbaa !296
  store <4 x i32> %wide.load471, ptr %i.jn, align 4, !tbaa !296
  %index.next472 = add nuw i64 %index467, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.jo, label %middle.block473, label %vector.body466, !llvm.loop !4234

middle.block473:                                  ; preds = %vector.body466
  %cmp.n474 = icmp eq i64 %i.jg, %n.vec465
  br i1 %cmp.n474, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader500

.lr.ph.i.i154.preheader500:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block473
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jj, %middle.block473 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.jk, %middle.block473 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader500, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jr, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader500 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jq, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader500 ] ; 2 uses
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !296
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !296
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !4235

bb.aj:                                            ; preds = %.thread
  br i1 %i.hr, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.js = phi ptr [ %i.hp, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1319, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234274 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234277, %.thread.thread ] ; 3 uses
  %.0228271 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228278, %.thread.thread ] ; 3 uses
  %.0222269 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222279, %.thread.thread ] ; 5 uses
  %.0216267 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216280, %.thread.thread ] ; 5 uses
  %.0108265 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108281, %.thread.thread ] ; 3 uses
  %.0102261 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102283, %.thread.thread ] ; 3 uses
  %.099258 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099285, %.thread.thread ] ; 3 uses
  %i.jt = phi ptr [ %i.hs, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216267, %.0108265
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216267424 = ptrtoaddr ptr %.0216267 to i64   ; 2 uses
  %.0222269423 = ptrtoaddr ptr %.0222269 to i64
  %i.ju = ptrtoaddr ptr %.0108265 to i64
  %i.jv = add i64 %i.ju, -4
  %i.jw = sub i64 %i.jv, %.0216267424             ; 2 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check427 = icmp ult i64 %i.jw, 44
  %i.jz = sub i64 %.0216267424, %.0222269423
  %diff.check425 = icmp ugt i64 %i.jz, -32
  %or.cond497 = or i1 %min.iters.check427, %diff.check425
  br i1 %or.cond497, label %.lr.ph.i.i161.preheader511, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec429 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.ka = shl i64 %n.vec429, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %.0222269, i64 %i.ka ; 2 uses
  %i.kc = getelementptr i8, ptr %.0216267, i64 %i.ka
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %i.kd = shl i64 %index431, 2                    ; 2 uses
  %next.gep432 = getelementptr i8, ptr %.0222269, i64 %i.kd ; 2 uses
  %next.gep433 = getelementptr i8, ptr %.0216267, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep433, i64 16
  %wide.load434 = load <4 x i32>, ptr %next.gep433, align 4, !tbaa !296
  %wide.load435 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !296
  %i.kf = getelementptr i8, ptr %next.gep432, i64 16
  store <4 x i32> %wide.load434, ptr %next.gep432, align 4, !tbaa !296
  store <4 x i32> %wide.load435, ptr %i.kf, align 4, !tbaa !296
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.kg, label %middle.block437, label %vector.body430, !llvm.loop !4236

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.jy, %n.vec429
  br i1 %cmp.n438, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader511

.lr.ph.i.i161.preheader511:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block437
  %.010.i.i162.ph = phi ptr [ %.0222269, %.lr.ph.i.i161.preheader ], [ %i.kb, %middle.block437 ]
  %.079.i.i163.ph = phi ptr [ %.0216267, %.lr.ph.i.i161.preheader ], [ %i.kc, %middle.block437 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader511, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kj, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader511 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.ki, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader511 ] ; 2 uses
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !296
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !296
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !4237

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block437, %middle.block473, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kk = phi ptr [ %i.hp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.hp, %bb.aj ], [ %i.js, %bb.ak ], [ %i.hp, %middle.block473 ], [ %i.js, %middle.block437 ], [ %i.hp, %.lr.ph.i.i154 ], [ %i.js, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1319, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1319, %bb.aj ], [ %.2, %bb.ak ], [ %.1319, %middle.block473 ], [ %.2, %middle.block437 ], [ %.1319, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234275 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234277, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234274, %bb.ak ], [ %.0234.lcssa, %middle.block473 ], [ %.0234274, %middle.block437 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234274, %.lr.ph.i.i161 ]
  %.0228272 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228278, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228271, %bb.ak ], [ %.0228.lcssa, %middle.block473 ], [ %.0228271, %middle.block437 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228271, %.lr.ph.i.i161 ]
  %.0102262 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102283, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102261, %bb.ak ], [ %.0102.lcssa, %middle.block473 ], [ %.0102261, %middle.block437 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102261, %.lr.ph.i.i161 ]
  %.099259 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099285, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099258, %bb.ak ], [ %.099.lcssa, %middle.block473 ], [ %.099258, %middle.block437 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099258, %.lr.ph.i.i161 ]
  %i.kl = phi ptr [ %i.hs, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hs, %bb.aj ], [ %i.jt, %bb.ak ], [ %i.hs, %middle.block473 ], [ %i.jt, %middle.block437 ], [ %i.hs, %.lr.ph.i.i154 ], [ %i.jt, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222279, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222269, %bb.ak ], [ %i.jj, %middle.block473 ], [ %i.kb, %middle.block437 ], [ %i.jr, %.lr.ph.i.i154 ], [ %i.kj, %.lr.ph.i.i161 ]
  %i.km = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102262, ptr noundef %.0228272, ptr noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.kl, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234275, i64 noundef %.099259, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !299 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kn, %i.kl
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.ko = ptrtoaddr ptr %i.kn to i64              ; 2 uses
  %i.kp = ptrtoaddr ptr %i.km to i64
  %i.kq = ptrtoaddr ptr %i.kl to i64
  %i.kr = add i64 %i.kq, -4
  %i.ks = sub i64 %i.kr, %i.ko                    ; 2 uses
  %i.kt = lshr i64 %i.ks, 2
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check480 = icmp ult i64 %i.ks, 44
  %i.kv = sub i64 %i.ko, %i.kp
  %diff.check478 = icmp ugt i64 %i.kv, -32
  %or.cond498 = or i1 %min.iters.check480, %diff.check478
  br i1 %or.cond498, label %.lr.ph.i.i168.preheader499, label %vector.ph481

vector.ph481:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec482 = and i64 %i.ku, 9223372036854775800  ; 3 uses
  %i.kw = shl i64 %n.vec482, 2                    ; 2 uses
  %i.kx = getelementptr i8, ptr %i.km, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kn, i64 %i.kw
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next489, %vector.body483 ] ; 2 uses
  %i.kz = shl i64 %index484, 2                    ; 2 uses
  %next.gep485 = getelementptr i8, ptr %i.km, i64 %i.kz ; 2 uses
  %next.gep486 = getelementptr i8, ptr %i.kn, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep486, i64 16
  %wide.load487 = load <4 x i32>, ptr %next.gep486, align 4, !tbaa !296
  %wide.load488 = load <4 x i32>, ptr %i.la, align 4, !tbaa !296
  %i.lb = getelementptr i8, ptr %next.gep485, i64 16
  store <4 x i32> %wide.load487, ptr %next.gep485, align 4, !tbaa !296
  store <4 x i32> %wide.load488, ptr %i.lb, align 4, !tbaa !296
  %index.next489 = add nuw i64 %index484, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.lc, label %middle.block490, label %vector.body483, !llvm.loop !4238

middle.block490:                                  ; preds = %vector.body483
  %cmp.n491 = icmp eq i64 %i.ku, %n.vec482
  br i1 %cmp.n491, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader499

.lr.ph.i.i168.preheader499:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block490
  %.010.i.i169.ph = phi ptr [ %i.km, %.lr.ph.i.i168.preheader ], [ %i.kx, %middle.block490 ]
  %.079.i.i170.ph = phi ptr [ %i.kn, %.lr.ph.i.i168.preheader ], [ %i.ky, %middle.block490 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader499, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader499 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.le, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader499 ] ; 2 uses
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !296
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !296
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !4239

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block490, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
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
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !299
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not280 = icmp eq i64 %i.e, 0
  br i1 %.not280, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 3 uses
  %.0290 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 2 uses
  %.099289 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 7 uses
  %.0102287 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 15 uses
  %.0105286 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 8 uses
  %.0108285 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 16 uses
  %.0220284 = phi ptr [ %1, %.lr.ph ], [ %.2222, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 18 uses
  %.0226283 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 17 uses
  %.0232282 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 13 uses
  %.0238281 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPiEEvT_S5_RS5_T0_S7_S7_.exit ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep413 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108285385 = ptrtoaddr ptr %.0108285 to i64   ; 2 uses
  %.0220284386 = ptrtoaddr ptr %.0220284 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099289, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099289, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.0102287, i64 %.02226.i
end_hunk_3
begin_hunk_4_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  %.not.i88 = icmp eq ptr %i.hk, %.sroa.0223.0.lcssa
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0238.0.lcssa, %bb.ad ], [ %i.hj, %bb.ae ], [ %i.hk, %bb.af ] ; 5 uses
  %i.hn = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.ho = ptrtoint ptr %.sroa.0223.0.lcssa to i64 ; 3 uses
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = getelementptr inbounds i8, ptr %i.hc, i64 %i.hp ; 5 uses
  %.not1.i.i89 = icmp eq ptr %.lcssa.i, %.sroa.0223.0.lcssa
  br i1 %.not1.i.i89, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90.preheader

.lr.ph.i.i90.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hr = add i64 %i.hn, -4
  %i.hs = sub i64 %i.hr, %i.ho                    ; 2 uses
  %i.ht = lshr i64 %i.hs, 2
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %min.iters.check518 = icmp ult i64 %i.hs, 44
  %i.hv = sub i64 %i.hd, %i.ho
  %diff.check516 = icmp ugt i64 %i.hv, -32
  %or.cond573 = select i1 %min.iters.check518, i1 true, i1 %diff.check516
  br i1 %or.cond573, label %.lr.ph.i.i90.preheader591, label %vector.ph519

vector.ph519:                                     ; preds = %.lr.ph.i.i90.preheader
  %n.vec520 = and i64 %i.hu, 9223372036854775800  ; 3 uses
  %i.hw = mul i64 %n.vec520, -4                   ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hq, i64 %i.hw
  %i.hy = getelementptr i8, ptr %.lcssa.i, i64 %i.hw
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph519
  %index522 = phi i64 [ 0, %vector.ph519 ], [ %index.next527, %vector.body521 ] ; 2 uses
  %i.hz = mul i64 %index522, -4                   ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.hq, i64 %i.hz ; 2 uses
  %next.gep524 = getelementptr i8, ptr %.lcssa.i, i64 %i.hz ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %next.gep524, i64 -16
  %i.ib = getelementptr inbounds i8, ptr %next.gep524, i64 -32
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !296, !noalias !4410
  %wide.load526 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !296, !noalias !4410
  %i.ic = getelementptr inbounds i8, ptr %next.gep523, i64 -16
  %i.id = getelementptr inbounds i8, ptr %next.gep523, i64 -32
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !296, !noalias !4410
  store <4 x i32> %wide.load526, ptr %i.id, align 4, !tbaa !296, !noalias !4410
  %index.next527 = add nuw i64 %index522, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next527, %n.vec520
  br i1 %i.ie, label %middle.block528, label %vector.body521, !llvm.loop !4376

middle.block528:                                  ; preds = %vector.body521
  %cmp.n529 = icmp eq i64 %i.hu, %n.vec520
  br i1 %cmp.n529, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90.preheader591

.lr.ph.i.i90.preheader591:                        ; preds = %.lr.ph.i.i90.preheader, %middle.block528
  %.sroa.0.0.i91.ph = phi ptr [ %i.hq, %.lr.ph.i.i90.preheader ], [ %i.hx, %middle.block528 ]
  %.ph592 = phi ptr [ %.lcssa.i, %.lr.ph.i.i90.preheader ], [ %i.hy, %middle.block528 ]
  br label %.lr.ph.i.i90

.lr.ph.i.i90:                                     ; preds = %.lr.ph.i.i90.preheader591, %.lr.ph.i.i90
  %.sroa.0.0.i91 = phi ptr [ %i.ii, %.lr.ph.i.i90 ], [ %.sroa.0.0.i91.ph, %.lr.ph.i.i90.preheader591 ]
  %i.if = phi ptr [ %i.ig, %.lr.ph.i.i90 ], [ %.ph592, %.lr.ph.i.i90.preheader591 ]
  %i.ig = getelementptr inbounds i8, ptr %i.if, i64 -4 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !296, !noalias !4410
  %i.ii = getelementptr inbounds i8, ptr %.sroa.0.0.i91, i64 -4 ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !296, !noalias !4410
  %.not.i.i92 = icmp eq ptr %i.ig, %.sroa.0223.0.lcssa
  br i1 %.not.i.i92, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90, !llvm.loop !4377

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93: ; preds = %.lr.ph.i.i90, %middle.block528, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, %bb.ac
  %.sroa.0223.5 = phi ptr [ %i.hc, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93 ], [ %.sroa.0223.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0238.5 = phi ptr [ %i.hq, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93 ], [ %.sroa.0238.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0252.6 = phi ptr [ %i.ij, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93 ], [ %.sroa.0252.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i94 = icmp eq i64 %.neg306, 0
  %.not17.i = icmp eq ptr %.sroa.0223.5, %.sroa.0238.5
  %or.cond = select i1 %.not.i94, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0121.0.ph = phi ptr [ %i.ip, %bb.ah ], [ %.sroa.0252.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.iq, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0238.5, %bb.ag ]
  %i.ik = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0121.0 = phi ptr [ %i.ip, %bb.ai ], [ %.sroa.0121.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.il, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.il = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !296, !noalias !4411 ; 2 uses
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !296, !noalias !4411 ; 2 uses
  %i.io = icmp slt i32 %i.im, %i.in
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0121.0, i64 -4 ; 6 uses
  br i1 %i.io, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iq = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !296, !noalias !4411
  %i.ir = icmp eq ptr %i.iq, %i.hf
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !57

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.im, ptr %i.ip, align 4, !tbaa !296, !noalias !4411
  %i.is = icmp eq ptr %i.il, %.sroa.0223.5
  br i1 %i.is, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0121.1 = phi ptr [ %.sroa.0252.6, %bb.ag ], [ %i.ip, %bb.ah ], [ %i.ip, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.hf, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0238.5, %bb.ag ], [ %i.il, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !441, !noalias !4411
  %.not1.i.i95 = icmp eq ptr %.sroa.012.2.i, %.sroa.0223.5
  br i1 %.not1.i.i95, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i96.preheader

.lr.ph.i.i96.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit
  %.sroa.0121.1534 = ptrtoaddr ptr %.sroa.0121.1 to i64
  %.sroa.012.2.i533 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.it = ptrtoaddr ptr %.sroa.0223.5 to i64
  %i.iu = add i64 %.sroa.012.2.i533, -4
  %i.iv = sub i64 %i.iu, %i.it                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check537 = icmp ult i64 %i.iv, 44
  %i.iy = sub i64 %.sroa.0121.1534, %.sroa.012.2.i533
  %diff.check535 = icmp ugt i64 %i.iy, -32
  %or.cond574 = select i1 %min.iters.check537, i1 true, i1 %diff.check535
  br i1 %or.cond574, label %.lr.ph.i.i96.preheader578, label %vector.ph538

vector.ph538:                                     ; preds = %.lr.ph.i.i96.preheader
  %n.vec539 = and i64 %i.ix, 9223372036854775800  ; 3 uses
  %i.iz = mul i64 %n.vec539, -4                   ; 2 uses
  %i.ja = getelementptr i8, ptr %.sroa.0121.1, i64 %i.iz ; 2 uses
  %i.jb = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.iz
  br label %vector.body540

vector.body540:                                   ; preds = %vector.body540, %vector.ph538
  %index541 = phi i64 [ 0, %vector.ph538 ], [ %index.next546, %vector.body540 ] ; 2 uses
  %i.jc = mul i64 %index541, -4                   ; 2 uses
  %next.gep542 = getelementptr i8, ptr %.sroa.0121.1, i64 %i.jc ; 2 uses
  %next.gep543 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.jc ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %next.gep543, i64 -16
  %i.je = getelementptr inbounds i8, ptr %next.gep543, i64 -32
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !296, !noalias !4412
  %wide.load545 = load <4 x i32>, ptr %i.je, align 4, !tbaa !296, !noalias !4412
  %i.jf = getelementptr inbounds i8, ptr %next.gep542, i64 -16
  %i.jg = getelementptr inbounds i8, ptr %next.gep542, i64 -32
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !296, !noalias !4412
  store <4 x i32> %wide.load545, ptr %i.jg, align 4, !tbaa !296, !noalias !4412
  %index.next546 = add nuw i64 %index541, 8       ; 2 uses
  %i.jh = icmp eq i64 %index.next546, %n.vec539
  br i1 %i.jh, label %middle.block547, label %vector.body540, !llvm.loop !4384

middle.block547:                                  ; preds = %vector.body540
  %cmp.n548 = icmp eq i64 %i.ix, %n.vec539
  br i1 %cmp.n548, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i96.preheader578

.lr.ph.i.i96.preheader578:                        ; preds = %.lr.ph.i.i96.preheader, %middle.block547
  %.sroa.0.0.i97.ph = phi ptr [ %.sroa.0121.1, %.lr.ph.i.i96.preheader ], [ %i.ja, %middle.block547 ]
  %.ph579 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i96.preheader ], [ %i.jb, %middle.block547 ]
  br label %.lr.ph.i.i96

.lr.ph.i.i96:                                     ; preds = %.lr.ph.i.i96.preheader578, %.lr.ph.i.i96
  %.sroa.0.0.i97 = phi ptr [ %i.jl, %.lr.ph.i.i96 ], [ %.sroa.0.0.i97.ph, %.lr.ph.i.i96.preheader578 ]
  %i.ji = phi ptr [ %i.jj, %.lr.ph.i.i96 ], [ %.ph579, %.lr.ph.i.i96.preheader578 ]
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 -4 ; 3 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !296, !noalias !4412
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.0.i97, i64 -4 ; 3 uses
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !296, !noalias !4412
  %.not.i.i98 = icmp eq ptr %i.jj, %.sroa.0223.5
  br i1 %.not.i.i98, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i96, !llvm.loop !4385

bb.aj:                                            ; preds = %.thread
  br i1 %i.he, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jm = phi ptr [ %i.hc, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1391, %bb.aj ], [ %.sroa.speculated276, %.thread.thread ] ; 3 uses
  %.sroa.0213.0331 = phi ptr [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0334, %.thread.thread ] ; 3 uses
  %.sroa.0223.0329 = phi ptr [ %.sroa.0223.0.lcssa, %bb.aj ], [ %.sroa.0223.0336, %.thread.thread ] ; 3 uses
  %.sroa.0238.0326 = phi ptr [ %.sroa.0238.0.lcssa, %bb.aj ], [ %.sroa.0238.0337, %.thread.thread ] ; 5 uses
  %.sroa.0252.0324 = phi ptr [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0338, %.thread.thread ] ; 5 uses
  %.sroa.0263.0321 = phi ptr [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0339, %.thread.thread ] ; 3 uses
  %.0287318 = phi i64 [ %.0287.lcssa, %bb.aj ], [ %.0287340, %.thread.thread ] ; 3 uses
  %.063315 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063341, %.thread.thread ] ; 3 uses
  %i.jn = phi ptr [ %i.hf, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i100 = icmp eq ptr %.sroa.0238.0326, %.sroa.0223.0329
  br i1 %.not1.i.i100, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101.preheader

.lr.ph.i.i101.preheader:                          ; preds = %bb.ak
  %.sroa.0252.0324498 = ptrtoaddr ptr %.sroa.0252.0324 to i64
  %.sroa.0238.0326497 = ptrtoaddr ptr %.sroa.0238.0326 to i64 ; 2 uses
  %i.jo = ptrtoaddr ptr %.sroa.0223.0329 to i64
  %i.jp = add i64 %.sroa.0238.0326497, -4
  %i.jq = sub i64 %i.jp, %i.jo                    ; 2 uses
  %i.jr = lshr i64 %i.jq, 2
  %i.js = add nuw nsw i64 %i.jr, 1                ; 2 uses
  %min.iters.check501 = icmp ult i64 %i.jq, 44
  %i.jt = sub i64 %.sroa.0252.0324498, %.sroa.0238.0326497
  %diff.check499 = icmp ugt i64 %i.jt, -32
  %or.cond575 = or i1 %min.iters.check501, %diff.check499
  br i1 %or.cond575, label %.lr.ph.i.i101.preheader593, label %vector.ph502

vector.ph502:                                     ; preds = %.lr.ph.i.i101.preheader
  %n.vec503 = and i64 %i.js, 9223372036854775800  ; 3 uses
  %i.ju = mul i64 %n.vec503, -4                   ; 2 uses
  %i.jv = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.ju ; 2 uses
  %i.jw = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.ju
  br label %vector.body504

vector.body504:                                   ; preds = %vector.body504, %vector.ph502
  %index505 = phi i64 [ 0, %vector.ph502 ], [ %index.next510, %vector.body504 ] ; 2 uses
  %i.jx = mul i64 %index505, -4                   ; 2 uses
  %next.gep506 = getelementptr i8, ptr %.sroa.0252.0324, i64 %i.jx ; 2 uses
  %next.gep507 = getelementptr i8, ptr %.sroa.0238.0326, i64 %i.jx ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %next.gep507, i64 -16
  %i.jz = getelementptr inbounds i8, ptr %next.gep507, i64 -32
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !296, !noalias !4413
  %wide.load509 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !296, !noalias !4413
  %i.ka = getelementptr inbounds i8, ptr %next.gep506, i64 -16
  %i.kb = getelementptr inbounds i8, ptr %next.gep506, i64 -32
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !296, !noalias !4413
  store <4 x i32> %wide.load509, ptr %i.kb, align 4, !tbaa !296, !noalias !4413
  %index.next510 = add nuw i64 %index505, 8       ; 2 uses
  %i.kc = icmp eq i64 %index.next510, %n.vec503
  br i1 %i.kc, label %middle.block511, label %vector.body504, !llvm.loop !4390

middle.block511:                                  ; preds = %vector.body504
  %cmp.n512 = icmp eq i64 %i.js, %n.vec503
  br i1 %cmp.n512, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101.preheader593

.lr.ph.i.i101.preheader593:                       ; preds = %.lr.ph.i.i101.preheader, %middle.block511
  %.sroa.0.0.i102.ph = phi ptr [ %.sroa.0252.0324, %.lr.ph.i.i101.preheader ], [ %i.jv, %middle.block511 ]
  %.ph594 = phi ptr [ %.sroa.0238.0326, %.lr.ph.i.i101.preheader ], [ %i.jw, %middle.block511 ]
  br label %.lr.ph.i.i101

.lr.ph.i.i101:                                    ; preds = %.lr.ph.i.i101.preheader593, %.lr.ph.i.i101
  %.sroa.0.0.i102 = phi ptr [ %i.kg, %.lr.ph.i.i101 ], [ %.sroa.0.0.i102.ph, %.lr.ph.i.i101.preheader593 ]
  %i.kd = phi ptr [ %i.ke, %.lr.ph.i.i101 ], [ %.ph594, %.lr.ph.i.i101.preheader593 ]
  %i.ke = getelementptr inbounds i8, ptr %i.kd, i64 -4 ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !296, !noalias !4413
  %i.kg = getelementptr inbounds i8, ptr %.sroa.0.0.i102, i64 -4 ; 3 uses
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !296, !noalias !4413
  %.not.i.i103 = icmp eq ptr %i.ke, %.sroa.0223.0329
  br i1 %.not.i.i103, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101, !llvm.loop !4391

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99: ; preds = %.lr.ph.i.i101, %.lr.ph.i.i96, %middle.block511, %middle.block547, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kh = phi ptr [ %i.hc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hc, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.hc, %middle.block547 ], [ %i.jm, %middle.block511 ], [ %i.hc, %.lr.ph.i.i96 ], [ %i.jm, %.lr.ph.i.i101 ]
  %.3 = phi i64 [ %.1391, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated276, %.thread.thread ], [ %.1391, %bb.aj ], [ %.2, %bb.ak ], [ %.1391, %middle.block547 ], [ %.2, %middle.block511 ], [ %.1391, %.lr.ph.i.i96 ], [ %.2, %.lr.ph.i.i101 ]
  %.sroa.0213.0332 = phi ptr [ %.sroa.0213.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0213.0334, %.thread.thread ], [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0331, %bb.ak ], [ %.sroa.0213.0.lcssa, %middle.block547 ], [ %.sroa.0213.0331, %middle.block511 ], [ %.sroa.0213.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0213.0331, %.lr.ph.i.i101 ]
  %.sroa.0263.0322 = phi ptr [ %.sroa.0263.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0263.0339, %.thread.thread ], [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0321, %bb.ak ], [ %.sroa.0263.0.lcssa, %middle.block547 ], [ %.sroa.0263.0321, %middle.block511 ], [ %.sroa.0263.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0263.0321, %.lr.ph.i.i101 ]
  %.0287319 = phi i64 [ %.0287.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0287340, %.thread.thread ], [ %.0287.lcssa, %bb.aj ], [ %.0287318, %bb.ak ], [ %.0287.lcssa, %middle.block547 ], [ %.0287318, %middle.block511 ], [ %.0287.lcssa, %.lr.ph.i.i96 ], [ %.0287318, %.lr.ph.i.i101 ]
  %.063316 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063341, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063315, %bb.ak ], [ %.063.lcssa, %middle.block547 ], [ %.063315, %middle.block511 ], [ %.063.lcssa, %.lr.ph.i.i96 ], [ %.063315, %.lr.ph.i.i101 ]
  %i.ki = phi ptr [ %i.hf, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hf, %bb.aj ], [ %i.jn, %bb.ak ], [ %i.hf, %middle.block547 ], [ %i.jn, %middle.block511 ], [ %i.hf, %.lr.ph.i.i96 ], [ %i.jn, %.lr.ph.i.i101 ] ; 4 uses
  %.sroa.0252.7 = phi ptr [ %.sroa.0121.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0252.0338, %.thread.thread ], [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0324, %bb.ak ], [ %i.ja, %middle.block547 ], [ %i.jv, %middle.block511 ], [ %i.jl, %.lr.ph.i.i96 ], [ %i.kg, %.lr.ph.i.i101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0213.0332, ptr %34, align 8, !tbaa !453
  store ptr %.sroa.0263.0322, ptr %35, align 8, !tbaa !453
  store ptr %i.kh, ptr %36, align 8, !tbaa !441
  store ptr %i.ki, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0252.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0287319, i64 noundef %.063316, i64 noundef %.3, i1 noundef zeroext false)
  %i.kj = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.kk = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i105 = icmp eq ptr %i.kk, %i.ki
  br i1 %.not1.i.i105, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106.preheader

.lr.ph.i.i106.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99
  %i.kl = ptrtoaddr ptr %i.kk to i64              ; 2 uses
  %i.km = ptrtoaddr ptr %i.kj to i64
  %i.kn = ptrtoaddr ptr %i.ki to i64
  %i.ko = add i64 %i.kl, -4
  %i.kp = sub i64 %i.ko, %i.kn                    ; 2 uses
  %i.kq = lshr i64 %i.kp, 2
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %min.iters.check554 = icmp ult i64 %i.kp, 44
  %i.ks = sub i64 %i.km, %i.kl
  %diff.check552 = icmp ugt i64 %i.ks, -32
  %or.cond576 = select i1 %min.iters.check554, i1 true, i1 %diff.check552
  br i1 %or.cond576, label %.lr.ph.i.i106.preheader577, label %vector.ph555

vector.ph555:                                     ; preds = %.lr.ph.i.i106.preheader
  %n.vec556 = and i64 %i.kr, 9223372036854775800  ; 3 uses
  %i.kt = mul i64 %n.vec556, -4                   ; 2 uses
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.kk, i64 %i.kt
  br label %vector.body557

vector.body557:                                   ; preds = %vector.body557, %vector.ph555
  %index558 = phi i64 [ 0, %vector.ph555 ], [ %index.next563, %vector.body557 ] ; 2 uses
  %i.kw = mul i64 %index558, -4                   ; 2 uses
  %next.gep559 = getelementptr i8, ptr %i.kj, i64 %i.kw ; 2 uses
  %next.gep560 = getelementptr i8, ptr %i.kk, i64 %i.kw ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %next.gep560, i64 -16
  %i.ky = getelementptr inbounds i8, ptr %next.gep560, i64 -32
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !296, !noalias !4414
  %wide.load562 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !296, !noalias !4414
  %i.kz = getelementptr inbounds i8, ptr %next.gep559, i64 -16
  %i.la = getelementptr inbounds i8, ptr %next.gep559, i64 -32
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !296, !noalias !4414
  store <4 x i32> %wide.load562, ptr %i.la, align 4, !tbaa !296, !noalias !4414
  %index.next563 = add nuw i64 %index558, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.lb, label %middle.block564, label %vector.body557, !llvm.loop !4396

middle.block564:                                  ; preds = %vector.body557
  %cmp.n565 = icmp eq i64 %i.kr, %n.vec556
  br i1 %cmp.n565, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106.preheader577

.lr.ph.i.i106.preheader577:                       ; preds = %.lr.ph.i.i106.preheader, %middle.block564
  %.sroa.0.0.i107.ph = phi ptr [ %i.kj, %.lr.ph.i.i106.preheader ], [ %i.ku, %middle.block564 ]
  %.ph = phi ptr [ %i.kk, %.lr.ph.i.i106.preheader ], [ %i.kv, %middle.block564 ]
  br label %.lr.ph.i.i106

.lr.ph.i.i106:                                    ; preds = %.lr.ph.i.i106.preheader577, %.lr.ph.i.i106
  %.sroa.0.0.i107 = phi ptr [ %i.lf, %.lr.ph.i.i106 ], [ %.sroa.0.0.i107.ph, %.lr.ph.i.i106.preheader577 ]
  %i.lc = phi ptr [ %i.ld, %.lr.ph.i.i106 ], [ %.ph, %.lr.ph.i.i106.preheader577 ]
  %i.ld = getelementptr inbounds i8, ptr %i.lc, i64 -4 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !296, !noalias !4414
  %i.lf = getelementptr inbounds i8, ptr %.sroa.0.0.i107, i64 -4 ; 2 uses
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !296, !noalias !4414
  %.not.i.i108 = icmp eq ptr %i.ld, %i.ki
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106, !llvm.loop !4397

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109: ; preds = %.lr.ph.i.i106, %middle.block564, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.27", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !453    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.h, ptr %27, align 8, !tbaa !441
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not337 = icmp eq i64 %i.a, 0
  br i1 %.not337, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = mul i64 %3, -4
  %i.u = shl i64 %2, 2
  %i.v = sub i64 %i.t, %i.u
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = add i64 %5, %4
  %.neg622 = sub i64 1, %i.w
end_hunk_4
begin_hunk_5_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hx, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !59

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0216.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.hx, %bb.af ] ; 5 uses
  %i.hy = ptrtoint ptr %.0222.lcssa to i64        ; 3 uses
  %i.hz = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = ashr exact i64 %i.ia, 2
  %i.ic = sub nsw i64 0, %i.ib
  %i.id = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.ic ; 5 uses
  %.not8.i.i145 = icmp eq ptr %.0.lcssa.i, %.0222.lcssa
  br i1 %.not8.i.i145, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.ie = add i64 %i.hy, -4
  %i.if = sub i64 %i.ie, %i.hz                    ; 2 uses
  %i.ig = lshr i64 %i.if, 2
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check445 = icmp ult i64 %i.if, 60
  %i.ii = sub i64 %i.hy, %i.hq
  %diff.check443 = icmp ugt i64 %i.ii, -32
  %or.cond496 = select i1 %min.iters.check445, i1 true, i1 %diff.check443
  br i1 %or.cond496, label %.lr.ph.i.i146.preheader511, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph.i.i146.preheader
  %n.vec447 = and i64 %i.ih, 9223372036854775800  ; 3 uses
  %i.ij = shl i64 %n.vec447, 2                    ; 2 uses
  %i.ik = getelementptr i8, ptr %i.id, i64 %i.ij
  %i.il = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ij
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %i.im = shl i64 %index449, 2                    ; 2 uses
  %next.gep450 = getelementptr i8, ptr %i.id, i64 %i.im ; 2 uses
  %next.gep451 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.im ; 2 uses
  %i.in = getelementptr i8, ptr %next.gep451, i64 16
  %wide.load452 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !296
  %wide.load453 = load <4 x i32>, ptr %i.in, align 4, !tbaa !296
  %i.io = getelementptr i8, ptr %next.gep450, i64 16
  store <4 x i32> %wide.load452, ptr %next.gep450, align 4, !tbaa !296
  store <4 x i32> %wide.load453, ptr %i.io, align 4, !tbaa !296
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.ip, label %middle.block455, label %vector.body448, !llvm.loop !4644

middle.block455:                                  ; preds = %vector.body448
  %cmp.n456 = icmp eq i64 %i.ih, %n.vec447
  br i1 %cmp.n456, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146.preheader511

.lr.ph.i.i146.preheader511:                       ; preds = %.lr.ph.i.i146.preheader, %middle.block455
  %.010.i.i147.ph = phi ptr [ %i.id, %.lr.ph.i.i146.preheader ], [ %i.ik, %middle.block455 ]
  %.079.i.i148.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i146.preheader ], [ %i.il, %middle.block455 ]
  br label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.preheader511, %.lr.ph.i.i146
  %.010.i.i147 = phi ptr [ %i.is, %.lr.ph.i.i146 ], [ %.010.i.i147.ph, %.lr.ph.i.i146.preheader511 ] ; 2 uses
  %.079.i.i148 = phi ptr [ %i.ir, %.lr.ph.i.i146 ], [ %.079.i.i148.ph, %.lr.ph.i.i146.preheader511 ] ; 2 uses
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !296
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !296
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !4645

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151: ; preds = %.lr.ph.i.i146, %middle.block455, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit
  %i.it = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, %bb.ac
  %.5227 = phi ptr [ %i.it, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0222.lcssa, %bb.ac ] ; 2 uses
  %.5221 = phi ptr [ %i.id, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0216.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.hp, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5221
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.ix, %bb.ai ], [ %.5227, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.ja, %bb.ai ], [ %.5221, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.ix, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.iy, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !296 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !296 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !296
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !61

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !296
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !61

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !299
  %.not8.i.i153 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i153, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader

.lr.ph.i.i154.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit
  %.223.i461 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i460 = ptrtoaddr ptr %.226.i to i64
  %i.jc = ptrtoaddr ptr %.5 to i64
  %i.jd = add i64 %i.jc, -4
  %i.je = sub i64 %i.jd, %.223.i461               ; 2 uses
  %i.jf = lshr i64 %i.je, 2
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check464 = icmp ult i64 %i.je, 44
  %i.jh = sub i64 %.223.i461, %.226.i460
  %diff.check462 = icmp ugt i64 %i.jh, -32
  %or.cond497 = select i1 %min.iters.check464, i1 true, i1 %diff.check462
  br i1 %or.cond497, label %.lr.ph.i.i154.preheader501, label %vector.ph465

vector.ph465:                                     ; preds = %.lr.ph.i.i154.preheader
  %n.vec466 = and i64 %i.jg, 9223372036854775800  ; 3 uses
  %i.ji = shl i64 %n.vec466, 2                    ; 2 uses
  %i.jj = getelementptr i8, ptr %.226.i, i64 %i.ji ; 2 uses
  %i.jk = getelementptr i8, ptr %.223.i, i64 %i.ji
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph465
  %index468 = phi i64 [ 0, %vector.ph465 ], [ %index.next473, %vector.body467 ] ; 2 uses
  %i.jl = shl i64 %index468, 2                    ; 2 uses
  %next.gep469 = getelementptr i8, ptr %.226.i, i64 %i.jl ; 2 uses
  %next.gep470 = getelementptr i8, ptr %.223.i, i64 %i.jl ; 2 uses
  %i.jm = getelementptr i8, ptr %next.gep470, i64 16
  %wide.load471 = load <4 x i32>, ptr %next.gep470, align 4, !tbaa !296
  %wide.load472 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !296
  %i.jn = getelementptr i8, ptr %next.gep469, i64 16
  store <4 x i32> %wide.load471, ptr %next.gep469, align 4, !tbaa !296
  store <4 x i32> %wide.load472, ptr %i.jn, align 4, !tbaa !296
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.jo, label %middle.block474, label %vector.body467, !llvm.loop !4646

middle.block474:                                  ; preds = %vector.body467
  %cmp.n475 = icmp eq i64 %i.jg, %n.vec466
  br i1 %cmp.n475, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154.preheader501

.lr.ph.i.i154.preheader501:                       ; preds = %.lr.ph.i.i154.preheader, %middle.block474
  %.010.i.i155.ph = phi ptr [ %.226.i, %.lr.ph.i.i154.preheader ], [ %i.jj, %middle.block474 ]
  %.079.i.i156.ph = phi ptr [ %.223.i, %.lr.ph.i.i154.preheader ], [ %i.jk, %middle.block474 ]
  br label %.lr.ph.i.i154

.lr.ph.i.i154:                                    ; preds = %.lr.ph.i.i154.preheader501, %.lr.ph.i.i154
  %.010.i.i155 = phi ptr [ %i.jr, %.lr.ph.i.i154 ], [ %.010.i.i155.ph, %.lr.ph.i.i154.preheader501 ] ; 2 uses
  %.079.i.i156 = phi ptr [ %i.jq, %.lr.ph.i.i154 ], [ %.079.i.i156.ph, %.lr.ph.i.i154.preheader501 ] ; 2 uses
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !296
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !296
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !4647

bb.aj:                                            ; preds = %.thread
  br i1 %i.hr, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.js = phi ptr [ %i.hp, %bb.aj ], [ %i.ac, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1320, %bb.aj ], [ %.sroa.speculated206, %.thread.thread ] ; 3 uses
  %.0234275 = phi i64 [ %.0234.lcssa, %bb.aj ], [ %.0234278, %.thread.thread ] ; 3 uses
  %.0228272 = phi ptr [ %.0228.lcssa, %bb.aj ], [ %.0228279, %.thread.thread ] ; 3 uses
  %.0222270 = phi ptr [ %.0222.lcssa, %bb.aj ], [ %.0222280, %.thread.thread ] ; 5 uses
  %.0216268 = phi ptr [ %.0216.lcssa, %bb.aj ], [ %.0216281, %.thread.thread ] ; 5 uses
  %.0108266 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108282, %.thread.thread ] ; 3 uses
  %.0102262 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102284, %.thread.thread ] ; 3 uses
  %.099259 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099286, %.thread.thread ] ; 3 uses
  %i.jt = phi ptr [ %i.hs, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i160 = icmp eq ptr %.0216268, %.0108266
  br i1 %.not8.i.i160, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader

.lr.ph.i.i161.preheader:                          ; preds = %bb.ak
  %.0216268425 = ptrtoaddr ptr %.0216268 to i64   ; 2 uses
  %.0222270424 = ptrtoaddr ptr %.0222270 to i64
  %i.ju = ptrtoaddr ptr %.0108266 to i64
  %i.jv = add i64 %i.ju, -4
  %i.jw = sub i64 %i.jv, %.0216268425             ; 2 uses
  %i.jx = lshr i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %min.iters.check428 = icmp ult i64 %i.jw, 44
  %i.jz = sub i64 %.0216268425, %.0222270424
  %diff.check426 = icmp ugt i64 %i.jz, -32
  %or.cond498 = or i1 %min.iters.check428, %diff.check426
  br i1 %or.cond498, label %.lr.ph.i.i161.preheader512, label %vector.ph429

vector.ph429:                                     ; preds = %.lr.ph.i.i161.preheader
  %n.vec430 = and i64 %i.jy, 9223372036854775800  ; 3 uses
  %i.ka = shl i64 %n.vec430, 2                    ; 2 uses
  %i.kb = getelementptr i8, ptr %.0222270, i64 %i.ka ; 2 uses
  %i.kc = getelementptr i8, ptr %.0216268, i64 %i.ka
  br label %vector.body431

vector.body431:                                   ; preds = %vector.body431, %vector.ph429
  %index432 = phi i64 [ 0, %vector.ph429 ], [ %index.next437, %vector.body431 ] ; 2 uses
  %i.kd = shl i64 %index432, 2                    ; 2 uses
  %next.gep433 = getelementptr i8, ptr %.0222270, i64 %i.kd ; 2 uses
  %next.gep434 = getelementptr i8, ptr %.0216268, i64 %i.kd ; 2 uses
  %i.ke = getelementptr i8, ptr %next.gep434, i64 16
  %wide.load435 = load <4 x i32>, ptr %next.gep434, align 4, !tbaa !296
  %wide.load436 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !296
  %i.kf = getelementptr i8, ptr %next.gep433, i64 16
  store <4 x i32> %wide.load435, ptr %next.gep433, align 4, !tbaa !296
  store <4 x i32> %wide.load436, ptr %i.kf, align 4, !tbaa !296
  %index.next437 = add nuw i64 %index432, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.kg, label %middle.block438, label %vector.body431, !llvm.loop !4648

middle.block438:                                  ; preds = %vector.body431
  %cmp.n439 = icmp eq i64 %i.jy, %n.vec430
  br i1 %cmp.n439, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161.preheader512

.lr.ph.i.i161.preheader512:                       ; preds = %.lr.ph.i.i161.preheader, %middle.block438
  %.010.i.i162.ph = phi ptr [ %.0222270, %.lr.ph.i.i161.preheader ], [ %i.kb, %middle.block438 ]
  %.079.i.i163.ph = phi ptr [ %.0216268, %.lr.ph.i.i161.preheader ], [ %i.kc, %middle.block438 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader512, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.kj, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader512 ] ; 2 uses
  %.079.i.i163 = phi ptr [ %i.ki, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader512 ] ; 2 uses
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !296
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !296
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !4649

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159: ; preds = %.lr.ph.i.i161, %.lr.ph.i.i154, %middle.block438, %middle.block474, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, %bb.aj
  %i.kk = phi ptr [ %i.hp, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.ac, %.thread.thread ], [ %i.hp, %bb.aj ], [ %i.js, %bb.ak ], [ %i.hp, %middle.block474 ], [ %i.js, %middle.block438 ], [ %i.hp, %.lr.ph.i.i154 ], [ %i.js, %.lr.ph.i.i161 ]
  %.3 = phi i64 [ %.1320, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.sroa.speculated206, %.thread.thread ], [ %.1320, %bb.aj ], [ %.2, %bb.ak ], [ %.1320, %middle.block474 ], [ %.2, %middle.block438 ], [ %.1320, %.lr.ph.i.i154 ], [ %.2, %.lr.ph.i.i161 ]
  %.0234276 = phi i64 [ %.0234.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0234278, %.thread.thread ], [ %.0234.lcssa, %bb.aj ], [ %.0234275, %bb.ak ], [ %.0234.lcssa, %middle.block474 ], [ %.0234275, %middle.block438 ], [ %.0234.lcssa, %.lr.ph.i.i154 ], [ %.0234275, %.lr.ph.i.i161 ]
  %.0228273 = phi ptr [ %.0228.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0228279, %.thread.thread ], [ %.0228.lcssa, %bb.aj ], [ %.0228272, %bb.ak ], [ %.0228.lcssa, %middle.block474 ], [ %.0228272, %middle.block438 ], [ %.0228.lcssa, %.lr.ph.i.i154 ], [ %.0228272, %.lr.ph.i.i161 ]
  %.0102263 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0102284, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102262, %bb.ak ], [ %.0102.lcssa, %middle.block474 ], [ %.0102262, %middle.block438 ], [ %.0102.lcssa, %.lr.ph.i.i154 ], [ %.0102262, %.lr.ph.i.i161 ]
  %.099260 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.099286, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099259, %bb.ak ], [ %.099.lcssa, %middle.block474 ], [ %.099259, %middle.block438 ], [ %.099.lcssa, %.lr.ph.i.i154 ], [ %.099259, %.lr.ph.i.i161 ]
  %i.kl = phi ptr [ %i.hs, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hs, %bb.aj ], [ %i.jt, %bb.ak ], [ %i.hs, %middle.block474 ], [ %i.jt, %middle.block438 ], [ %i.hs, %.lr.ph.i.i154 ], [ %i.jt, %.lr.ph.i.i161 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit ], [ %.0222280, %.thread.thread ], [ %.0222.lcssa, %bb.aj ], [ %.0222270, %bb.ak ], [ %i.jj, %middle.block474 ], [ %i.kb, %middle.block438 ], [ %i.jr, %.lr.ph.i.i154 ], [ %i.kj, %.lr.ph.i.i161 ]
  %i.km = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPiS5_S5_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102263, ptr noundef %.0228273, ptr noundef %i.kk, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.kl, ptr noundef %.6, i64 noundef %2, i64 noundef %.0234276, i64 noundef %.099260, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !299 ; 5 uses
  %.not8.i.i167 = icmp eq ptr %i.kn, %i.kl
  br i1 %.not8.i.i167, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader

.lr.ph.i.i168.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  %i.ko = ptrtoaddr ptr %i.kn to i64              ; 2 uses
  %i.kp = ptrtoaddr ptr %i.km to i64
  %i.kq = ptrtoaddr ptr %i.kl to i64
  %i.kr = add i64 %i.kq, -4
  %i.ks = sub i64 %i.kr, %i.ko                    ; 2 uses
  %i.kt = lshr i64 %i.ks, 2
  %i.ku = add nuw nsw i64 %i.kt, 1                ; 2 uses
  %min.iters.check481 = icmp ult i64 %i.ks, 44
  %i.kv = sub i64 %i.ko, %i.kp
  %diff.check479 = icmp ugt i64 %i.kv, -32
  %or.cond499 = or i1 %min.iters.check481, %diff.check479
  br i1 %or.cond499, label %.lr.ph.i.i168.preheader500, label %vector.ph482

vector.ph482:                                     ; preds = %.lr.ph.i.i168.preheader
  %n.vec483 = and i64 %i.ku, 9223372036854775800  ; 3 uses
  %i.kw = shl i64 %n.vec483, 2                    ; 2 uses
  %i.kx = getelementptr i8, ptr %i.km, i64 %i.kw
  %i.ky = getelementptr i8, ptr %i.kn, i64 %i.kw
  br label %vector.body484

vector.body484:                                   ; preds = %vector.body484, %vector.ph482
  %index485 = phi i64 [ 0, %vector.ph482 ], [ %index.next490, %vector.body484 ] ; 2 uses
  %i.kz = shl i64 %index485, 2                    ; 2 uses
  %next.gep486 = getelementptr i8, ptr %i.km, i64 %i.kz ; 2 uses
  %next.gep487 = getelementptr i8, ptr %i.kn, i64 %i.kz ; 2 uses
  %i.la = getelementptr i8, ptr %next.gep487, i64 16
  %wide.load488 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !296
  %wide.load489 = load <4 x i32>, ptr %i.la, align 4, !tbaa !296
  %i.lb = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %wide.load488, ptr %next.gep486, align 4, !tbaa !296
  store <4 x i32> %wide.load489, ptr %i.lb, align 4, !tbaa !296
  %index.next490 = add nuw i64 %index485, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.lc, label %middle.block491, label %vector.body484, !llvm.loop !4650

middle.block491:                                  ; preds = %vector.body484
  %cmp.n492 = icmp eq i64 %i.ku, %n.vec483
  br i1 %cmp.n492, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168.preheader500

.lr.ph.i.i168.preheader500:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block491
  %.010.i.i169.ph = phi ptr [ %i.km, %.lr.ph.i.i168.preheader ], [ %i.kx, %middle.block491 ]
  %.079.i.i170.ph = phi ptr [ %i.kn, %.lr.ph.i.i168.preheader ], [ %i.ky, %middle.block491 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader500, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.lf, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader500 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.le, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader500 ] ; 2 uses
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !296
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !296
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !4651

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block491, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
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
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %1, i64 %3   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr %i.i, ptr %i.a, align 8, !tbaa !299
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr [4 x i8], ptr %i.i, i64 %i.j ; 10 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not281 = icmp eq i64 %i.e, 0
  br i1 %.not281, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %1 to i64
  %.idx254 = shl i64 %2, 2                        ; 4 uses
  %.not120 = icmp eq i64 %6, 0
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.q = shl i64 %3, 2                            ; 2 uses
  %i.r = add i64 %i.q, %i.o
  %i.s = add i64 %i.r, %.idx254
  %i.t = add i64 %i.s, -4                         ; 2 uses
  %i.u = shl i64 %2, 2
  %i.v = shl i64 %2, 2
  %i.w = getelementptr i8, ptr %1, i64 %i.q
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = add i64 %.idx254, -4                     ; 2 uses
  %i.z = lshr exact i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %stride.check = icmp slt i64 %.idx254, 0
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ab = shl i64 %n.vec, 2                       ; 2 uses
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %.sink.split.i ] ; 3 uses
  %i.ac = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hn, %.sink.split.i ] ; 3 uses
  %.0291 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099290 = phi i64 [ %i.m, %.lr.ph ], [ %i.hl, %.sink.split.i ] ; 7 uses
  %.0102288 = phi ptr [ %0, %.lr.ph ], [ %i.hj, %.sink.split.i ] ; 15 uses
  %.0105287 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108286 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 16 uses
  %.0220285 = phi ptr [ %1, %.lr.ph ], [ %.2222, %.sink.split.i ] ; 18 uses
  %.0226284 = phi ptr [ %i.h, %.lr.ph ], [ %.2228, %.sink.split.i ] ; 17 uses
  %.0232283 = phi ptr [ %i.f, %.lr.ph ], [ %.1233, %.sink.split.i ] ; 13 uses
  %.0238282 = phi i64 [ %i.e, %.lr.ph ], [ %i.ho, %.sink.split.i ] ; 5 uses
  %i.ad = mul i64 %i.v, %indvar
  %i.ae = add i64 %i.t, %i.ad                     ; 3 uses
  %i.af = mul i64 %i.u, %indvar                   ; 2 uses
  %i.ag = add i64 %i.t, %i.af
  %scevgep414 = getelementptr i8, ptr %i.x, i64 %i.af
  %.0108286386 = ptrtoaddr ptr %.0108286 to i64   ; 2 uses
  %.0220285387 = ptrtoaddr ptr %.0220285 to i64   ; 2 uses
  %i.ah = icmp ult i64 %.099290, %.0
  br i1 %i.ah, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.aw, %.thread24.i ], [ %.099290, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.av, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ai = mul i64 %.02226.i, %2
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ai
  %i.ak = mul i64 %.027.i, %2
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0102288, i64 %.02226.i
end_hunk_5
begin_hunk_6_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_:bb.a
  %.not.i87 = icmp eq ptr %i.hj, %.sroa.0220.0.lcssa
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !81

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0235.0.lcssa, %bb.ad ], [ %i.hi, %bb.ae ], [ %i.hj, %bb.af ] ; 5 uses
  %i.hm = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.hn = ptrtoint ptr %.sroa.0220.0.lcssa to i64 ; 3 uses
  %i.ho = sub i64 %i.hm, %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.hb, i64 %i.ho ; 5 uses
  %.not1.i.i88 = icmp eq ptr %.lcssa.i, %.sroa.0220.0.lcssa
  br i1 %.not1.i.i88, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader

.lr.ph.i.i89.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.hq = add i64 %i.hm, -4
  %i.hr = sub i64 %i.hq, %i.hn                    ; 2 uses
  %i.hs = lshr i64 %i.hr, 2
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check517 = icmp ult i64 %i.hr, 44
  %i.hu = sub i64 %i.hc, %i.hn
  %diff.check515 = icmp ugt i64 %i.hu, -32
  %or.cond572 = select i1 %min.iters.check517, i1 true, i1 %diff.check515
  br i1 %or.cond572, label %.lr.ph.i.i89.preheader590, label %vector.ph518

vector.ph518:                                     ; preds = %.lr.ph.i.i89.preheader
  %n.vec519 = and i64 %i.ht, 9223372036854775800  ; 3 uses
  %i.hv = mul i64 %n.vec519, -4                   ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hp, i64 %i.hv
  %i.hx = getelementptr i8, ptr %.lcssa.i, i64 %i.hv
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next526, %vector.body520 ] ; 2 uses
  %i.hy = mul i64 %index521, -4                   ; 2 uses
  %next.gep522 = getelementptr i8, ptr %i.hp, i64 %i.hy ; 2 uses
  %next.gep523 = getelementptr i8, ptr %.lcssa.i, i64 %i.hy ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %next.gep523, i64 -16
  %i.ia = getelementptr inbounds i8, ptr %next.gep523, i64 -32
  %wide.load524 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !296, !noalias !4822
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !296, !noalias !4822
  %i.ib = getelementptr inbounds i8, ptr %next.gep522, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep522, i64 -32
  store <4 x i32> %wide.load524, ptr %i.ib, align 4, !tbaa !296, !noalias !4822
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !296, !noalias !4822
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.id, label %middle.block527, label %vector.body520, !llvm.loop !4788

middle.block527:                                  ; preds = %vector.body520
  %cmp.n528 = icmp eq i64 %i.ht, %n.vec519
  br i1 %cmp.n528, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89.preheader590

.lr.ph.i.i89.preheader590:                        ; preds = %.lr.ph.i.i89.preheader, %middle.block527
  %.sroa.0.0.i90.ph = phi ptr [ %i.hp, %.lr.ph.i.i89.preheader ], [ %i.hw, %middle.block527 ]
  %.ph591 = phi ptr [ %.lcssa.i, %.lr.ph.i.i89.preheader ], [ %i.hx, %middle.block527 ]
  br label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %.lr.ph.i.i89.preheader590, %.lr.ph.i.i89
  %.sroa.0.0.i90 = phi ptr [ %i.ih, %.lr.ph.i.i89 ], [ %.sroa.0.0.i90.ph, %.lr.ph.i.i89.preheader590 ]
  %i.ie = phi ptr [ %i.if, %.lr.ph.i.i89 ], [ %.ph591, %.lr.ph.i.i89.preheader590 ]
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !296, !noalias !4822
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !296, !noalias !4822
  %.not.i.i91 = icmp eq ptr %i.if, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89, !llvm.loop !4789

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92: ; preds = %.lr.ph.i.i89, %middle.block527, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, %bb.ac
  %.sroa.0220.5 = phi ptr [ %i.hb, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0220.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0235.5 = phi ptr [ %i.hp, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0235.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0249.6 = phi ptr [ %i.ii, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92 ], [ %.sroa.0249.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i93 = icmp eq i64 %.neg305, 0
  %.not17.i = icmp eq ptr %.sroa.0220.5, %.sroa.0235.5
  %or.cond = select i1 %.not.i93, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0120.0.ph = phi ptr [ %i.io, %bb.ah ], [ %.sroa.0249.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.ip, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0235.5, %bb.ag ]
  %i.ij = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0120.0 = phi ptr [ %i.io, %bb.ai ], [ %.sroa.0120.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.ik, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !296, !noalias !4823 ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !296, !noalias !4823 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.in, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.im, ptr %i.io, align 4, !tbaa !296, !noalias !4823
  %i.iq = icmp eq ptr %i.ip, %i.he
  br i1 %i.iq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !57

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.il, ptr %i.io, align 4, !tbaa !296, !noalias !4823
  %i.ir = icmp eq ptr %i.ik, %.sroa.0220.5
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !57

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.io, %bb.ah ], [ %i.io, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.he, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.ik, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !441, !noalias !4823
  %.not1.i.i94 = icmp eq ptr %.sroa.012.2.i, %.sroa.0220.5
  br i1 %.not1.i.i94, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95.preheader

.lr.ph.i.i95.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit
  %.sroa.0120.1533 = ptrtoaddr ptr %.sroa.0120.1 to i64
  %.sroa.012.2.i532 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.is = ptrtoaddr ptr %.sroa.0220.5 to i64
  %i.it = add i64 %.sroa.012.2.i532, -4
  %i.iu = sub i64 %i.it, %i.is                    ; 2 uses
  %i.iv = lshr i64 %i.iu, 2
  %i.iw = add nuw nsw i64 %i.iv, 1                ; 2 uses
  %min.iters.check536 = icmp ult i64 %i.iu, 44
  %i.ix = sub i64 %.sroa.0120.1533, %.sroa.012.2.i532
  %diff.check534 = icmp ugt i64 %i.ix, -32
  %or.cond573 = select i1 %min.iters.check536, i1 true, i1 %diff.check534
  br i1 %or.cond573, label %.lr.ph.i.i95.preheader577, label %vector.ph537

vector.ph537:                                     ; preds = %.lr.ph.i.i95.preheader
  %n.vec538 = and i64 %i.iw, 9223372036854775800  ; 3 uses
  %i.iy = mul i64 %n.vec538, -4                   ; 2 uses
  %i.iz = getelementptr i8, ptr %.sroa.0120.1, i64 %i.iy ; 2 uses
  %i.ja = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.iy
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph537
  %index540 = phi i64 [ 0, %vector.ph537 ], [ %index.next545, %vector.body539 ] ; 2 uses
  %i.jb = mul i64 %index540, -4                   ; 2 uses
  %next.gep541 = getelementptr i8, ptr %.sroa.0120.1, i64 %i.jb ; 2 uses
  %next.gep542 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.jb ; 2 uses
  %i.jc = getelementptr inbounds i8, ptr %next.gep542, i64 -16
  %i.jd = getelementptr inbounds i8, ptr %next.gep542, i64 -32
  %wide.load543 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !296, !noalias !4824
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !296, !noalias !4824
  %i.je = getelementptr inbounds i8, ptr %next.gep541, i64 -16
  %i.jf = getelementptr inbounds i8, ptr %next.gep541, i64 -32
  store <4 x i32> %wide.load543, ptr %i.je, align 4, !tbaa !296, !noalias !4824
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !296, !noalias !4824
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.jg, label %middle.block546, label %vector.body539, !llvm.loop !4796

middle.block546:                                  ; preds = %vector.body539
  %cmp.n547 = icmp eq i64 %i.iw, %n.vec538
  br i1 %cmp.n547, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95.preheader577

.lr.ph.i.i95.preheader577:                        ; preds = %.lr.ph.i.i95.preheader, %middle.block546
  %.sroa.0.0.i96.ph = phi ptr [ %.sroa.0120.1, %.lr.ph.i.i95.preheader ], [ %i.iz, %middle.block546 ]
  %.ph578 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i95.preheader ], [ %i.ja, %middle.block546 ]
  br label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %.lr.ph.i.i95.preheader577, %.lr.ph.i.i95
  %.sroa.0.0.i96 = phi ptr [ %i.jk, %.lr.ph.i.i95 ], [ %.sroa.0.0.i96.ph, %.lr.ph.i.i95.preheader577 ]
  %i.jh = phi ptr [ %i.ji, %.lr.ph.i.i95 ], [ %.ph578, %.lr.ph.i.i95.preheader577 ]
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -4 ; 3 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !296, !noalias !4824
  %i.jk = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !296, !noalias !4824
  %.not.i.i97 = icmp eq ptr %i.ji, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95, !llvm.loop !4797

bb.aj:                                            ; preds = %.thread
  br i1 %i.hd, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.jl = phi ptr [ %i.hb, %bb.aj ], [ %i.an, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1390, %bb.aj ], [ %.sroa.speculated273, %.thread.thread ] ; 3 uses
  %.sroa.0210.0330 = phi ptr [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0333, %.thread.thread ] ; 3 uses
  %.sroa.0220.0328 = phi ptr [ %.sroa.0220.0.lcssa, %bb.aj ], [ %.sroa.0220.0335, %.thread.thread ] ; 3 uses
  %.sroa.0235.0325 = phi ptr [ %.sroa.0235.0.lcssa, %bb.aj ], [ %.sroa.0235.0336, %.thread.thread ] ; 5 uses
  %.sroa.0249.0323 = phi ptr [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0337, %.thread.thread ] ; 5 uses
  %.sroa.0260.0320 = phi ptr [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0338, %.thread.thread ] ; 3 uses
  %.0284317 = phi i64 [ %.0284.lcssa, %bb.aj ], [ %.0284339, %.thread.thread ] ; 3 uses
  %.063314 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063340, %.thread.thread ] ; 3 uses
  %i.jm = phi ptr [ %i.he, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i99 = icmp eq ptr %.sroa.0235.0325, %.sroa.0220.0328
  br i1 %.not1.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader

.lr.ph.i.i100.preheader:                          ; preds = %bb.ak
  %.sroa.0249.0323497 = ptrtoaddr ptr %.sroa.0249.0323 to i64
  %.sroa.0235.0325496 = ptrtoaddr ptr %.sroa.0235.0325 to i64 ; 2 uses
  %i.jn = ptrtoaddr ptr %.sroa.0220.0328 to i64
  %i.jo = add i64 %.sroa.0235.0325496, -4
  %i.jp = sub i64 %i.jo, %i.jn                    ; 2 uses
  %i.jq = lshr i64 %i.jp, 2
  %i.jr = add nuw nsw i64 %i.jq, 1                ; 2 uses
  %min.iters.check500 = icmp ult i64 %i.jp, 44
  %i.js = sub i64 %.sroa.0249.0323497, %.sroa.0235.0325496
  %diff.check498 = icmp ugt i64 %i.js, -32
  %or.cond574 = or i1 %min.iters.check500, %diff.check498
  br i1 %or.cond574, label %.lr.ph.i.i100.preheader592, label %vector.ph501

vector.ph501:                                     ; preds = %.lr.ph.i.i100.preheader
  %n.vec502 = and i64 %i.jr, 9223372036854775800  ; 3 uses
  %i.jt = mul i64 %n.vec502, -4                   ; 2 uses
  %i.ju = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jt ; 2 uses
  %i.jv = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jt
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph501
  %index504 = phi i64 [ 0, %vector.ph501 ], [ %index.next509, %vector.body503 ] ; 2 uses
  %i.jw = mul i64 %index504, -4                   ; 2 uses
  %next.gep505 = getelementptr i8, ptr %.sroa.0249.0323, i64 %i.jw ; 2 uses
  %next.gep506 = getelementptr i8, ptr %.sroa.0235.0325, i64 %i.jw ; 2 uses
  %i.jx = getelementptr inbounds i8, ptr %next.gep506, i64 -16
  %i.jy = getelementptr inbounds i8, ptr %next.gep506, i64 -32
  %wide.load507 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !296, !noalias !4825
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !296, !noalias !4825
  %i.jz = getelementptr inbounds i8, ptr %next.gep505, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep505, i64 -32
  store <4 x i32> %wide.load507, ptr %i.jz, align 4, !tbaa !296, !noalias !4825
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !296, !noalias !4825
  %index.next509 = add nuw i64 %index504, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.kb, label %middle.block510, label %vector.body503, !llvm.loop !4802

middle.block510:                                  ; preds = %vector.body503
  %cmp.n511 = icmp eq i64 %i.jr, %n.vec502
  br i1 %cmp.n511, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100.preheader592

.lr.ph.i.i100.preheader592:                       ; preds = %.lr.ph.i.i100.preheader, %middle.block510
  %.sroa.0.0.i101.ph = phi ptr [ %.sroa.0249.0323, %.lr.ph.i.i100.preheader ], [ %i.ju, %middle.block510 ]
  %.ph593 = phi ptr [ %.sroa.0235.0325, %.lr.ph.i.i100.preheader ], [ %i.jv, %middle.block510 ]
  br label %.lr.ph.i.i100

.lr.ph.i.i100:                                    ; preds = %.lr.ph.i.i100.preheader592, %.lr.ph.i.i100
  %.sroa.0.0.i101 = phi ptr [ %i.kf, %.lr.ph.i.i100 ], [ %.sroa.0.0.i101.ph, %.lr.ph.i.i100.preheader592 ]
  %i.kc = phi ptr [ %i.kd, %.lr.ph.i.i100 ], [ %.ph593, %.lr.ph.i.i100.preheader592 ]
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4 ; 3 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !296, !noalias !4825
  %i.kf = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !296, !noalias !4825
  %.not.i.i102 = icmp eq ptr %i.kd, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !4803

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block510, %middle.block546, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kg = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.hb, %middle.block546 ], [ %i.jl, %middle.block510 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.jl, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block546 ], [ %.2, %middle.block510 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block546 ], [ %.sroa.0210.0330, %middle.block510 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block546 ], [ %.sroa.0260.0320, %middle.block510 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block546 ], [ %.0284317, %middle.block510 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block546 ], [ %.063314, %middle.block510 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kh = phi ptr [ %i.he, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.he, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.he, %middle.block546 ], [ %i.jm, %middle.block510 ], [ %i.he, %.lr.ph.i.i95 ], [ %i.jm, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iz, %middle.block546 ], [ %i.ju, %middle.block510 ], [ %i.jk, %.lr.ph.i.i95 ], [ %i.kf, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !446
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !446
  store ptr %i.kg, ptr %36, align 8, !tbaa !441
  store ptr %i.kh, ptr %37, align 8, !tbaa !441
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !441
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.ki = load ptr, ptr %33, align 8, !tbaa !441  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  %i.kj = load ptr, ptr %32, align 8, !tbaa !441  ; 5 uses
  %.not1.i.i104 = icmp eq ptr %i.kj, %i.kh
  br i1 %.not1.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader

.lr.ph.i.i105.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  %i.kk = ptrtoaddr ptr %i.kj to i64              ; 2 uses
  %i.kl = ptrtoaddr ptr %i.ki to i64
  %i.km = ptrtoaddr ptr %i.kh to i64
  %i.kn = add i64 %i.kk, -4
  %i.ko = sub i64 %i.kn, %i.km                    ; 2 uses
  %i.kp = lshr i64 %i.ko, 2
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check553 = icmp ult i64 %i.ko, 44
  %i.kr = sub i64 %i.kl, %i.kk
  %diff.check551 = icmp ugt i64 %i.kr, -32
  %or.cond575 = select i1 %min.iters.check553, i1 true, i1 %diff.check551
  br i1 %or.cond575, label %.lr.ph.i.i105.preheader576, label %vector.ph554

vector.ph554:                                     ; preds = %.lr.ph.i.i105.preheader
  %n.vec555 = and i64 %i.kq, 9223372036854775800  ; 3 uses
  %i.ks = mul i64 %n.vec555, -4                   ; 2 uses
  %i.kt = getelementptr i8, ptr %i.ki, i64 %i.ks
  %i.ku = getelementptr i8, ptr %i.kj, i64 %i.ks
  br label %vector.body556

vector.body556:                                   ; preds = %vector.body556, %vector.ph554
  %index557 = phi i64 [ 0, %vector.ph554 ], [ %index.next562, %vector.body556 ] ; 2 uses
  %i.kv = mul i64 %index557, -4                   ; 2 uses
  %next.gep558 = getelementptr i8, ptr %i.ki, i64 %i.kv ; 2 uses
  %next.gep559 = getelementptr i8, ptr %i.kj, i64 %i.kv ; 2 uses
  %i.kw = getelementptr inbounds i8, ptr %next.gep559, i64 -16
  %i.kx = getelementptr inbounds i8, ptr %next.gep559, i64 -32
  %wide.load560 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !296, !noalias !4826
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !296, !noalias !4826
  %i.ky = getelementptr inbounds i8, ptr %next.gep558, i64 -16
  %i.kz = getelementptr inbounds i8, ptr %next.gep558, i64 -32
  store <4 x i32> %wide.load560, ptr %i.ky, align 4, !tbaa !296, !noalias !4826
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !296, !noalias !4826
  %index.next562 = add nuw i64 %index557, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next562, %n.vec555
  br i1 %i.la, label %middle.block563, label %vector.body556, !llvm.loop !4808

middle.block563:                                  ; preds = %vector.body556
  %cmp.n564 = icmp eq i64 %i.kq, %n.vec555
  br i1 %cmp.n564, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105.preheader576

.lr.ph.i.i105.preheader576:                       ; preds = %.lr.ph.i.i105.preheader, %middle.block563
  %.sroa.0.0.i106.ph = phi ptr [ %i.ki, %.lr.ph.i.i105.preheader ], [ %i.kt, %middle.block563 ]
  %.ph = phi ptr [ %i.kj, %.lr.ph.i.i105.preheader ], [ %i.ku, %middle.block563 ]
  br label %.lr.ph.i.i105

.lr.ph.i.i105:                                    ; preds = %.lr.ph.i.i105.preheader576, %.lr.ph.i.i105
  %.sroa.0.0.i106 = phi ptr [ %i.le, %.lr.ph.i.i105 ], [ %.sroa.0.0.i106.ph, %.lr.ph.i.i105.preheader576 ]
  %i.lb = phi ptr [ %i.lc, %.lr.ph.i.i105 ], [ %.ph, %.lr.ph.i.i105.preheader576 ]
  %i.lc = getelementptr inbounds i8, ptr %i.lb, i64 -4 ; 3 uses
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !296, !noalias !4826
  %i.le = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !296, !noalias !4826
  %.not.i.i107 = icmp eq ptr %i.lc, %i.kh
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !4809

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block563, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.24", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.25", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !446    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !441    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  store ptr %i.h, ptr %27, align 8, !tbaa !441
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not336 = icmp eq i64 %i.a, 0
  br i1 %.not336, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.p = mul i64 %2, -4
  %i.q = sub i64 0, %2                            ; 2 uses
  %.idx = shl i64 %i.q, 2                         ; 2 uses
  %.not68 = icmp eq i64 %6, 0
  %i.r = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.s = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %i.t = mul i64 %3, -4
  %i.u = shl i64 %2, 2
  %i.v = sub i64 %i.t, %i.u
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.v
  %i.w = add i64 %5, %4
  %.neg621 = sub i64 1, %i.w
end_hunk_6
