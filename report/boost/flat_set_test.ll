Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/flat_set_test?download=true
inline.NumInlined: 26547
inline.NumDeleted: 4082
loop-unroll.NumCompletelyUnrolled: 342
loop-unroll.NumRuntimeUnrolled: 674
loop-unroll.NumUnrolled: 1026
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
  %i.db = load i32, ptr %.02236.i.i, align 4, !tbaa !367 ; 3 uses
  %i.dc = load i32, ptr %.pn35.i.i, align 4, !tbaa !367 ; 2 uses
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph37.i.i
  store i32 %i.dc, ptr %.02236.i.i, align 4, !tbaa !367
  %.not2628.i.i = icmp eq ptr %.pn35.i.i, %i.cz
  br i1 %.not2628.i.i, label %.critedge.i.i, label %.lr.ph.i.i51

.lr.ph.i.i51:                                     ; preds = %bb.f, %bb.g
  %.030.i.i = phi ptr [ %i.de, %bb.g ], [ %.pn35.i.i, %bb.f ] ; 3 uses
  %i.de = getelementptr i8, ptr %.030.i.i, i64 -4 ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !367 ; 2 uses
  %i.dg = icmp slt i32 %i.db, %i.df
  br i1 %i.dg, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.lr.ph.i.i51, %bb.f
  %.021.lcssa.i.i = phi ptr [ %i.cz, %bb.f ], [ %i.cz, %bb.g ], [ %.030.i.i, %.lr.ph.i.i51 ]
  store i32 %i.db, ptr %.021.lcssa.i.i, align 4, !tbaa !367
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i51
  store i32 %i.df, ptr %.030.i.i, align 4, !tbaa !367
  %.not26.i.i = icmp eq ptr %i.de, %i.cz
  br i1 %.not26.i.i, label %.critedge.i.i, label %.lr.ph.i.i51, !llvm.loop !94

bb.h:                                             ; preds = %.critedge.i.i, %.lr.ph37.i.i
  %.022.i.i = getelementptr inbounds nuw i8, ptr %.02236.i.i, i64 4 ; 2 uses
  %.not25.i.i = icmp eq ptr %.022.i.i, %i.da
  br i1 %.not25.i.i, label %_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i, label %.lr.ph37.i.i, !llvm.loop !95

_ZN5boost7movelib14insertion_sortINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEPiEEvT0_SC_T_.exit.loopexit.i: ; preds = %bb.h
  %i.dh = add i64 %.034.i, %.sroa.speculated.i    ; 3 uses
  %i.di = sub i64 %i.c, %i.dh
  %i.dj = icmp ugt i64 %i.di, %.sroa.speculated.i
  br i1 %i.dj, label %.lr.ph37.i.preheader.i, label %._crit_edge.i, !llvm.loop !4865

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
  %i.dn = load i32, ptr %.02236.i20.i, align 4, !tbaa !367 ; 3 uses
  %i.do = load i32, ptr %.pn35.i21.i, align 4, !tbaa !367 ; 2 uses
  %i.dp = icmp slt i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph37.i19.i
  store i32 %i.do, ptr %.02236.i20.i, align 4, !tbaa !367
  %.not2628.i24.i = icmp eq ptr %.pn35.i21.i, %i.dk
  br i1 %.not2628.i24.i, label %.critedge.i27.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.i, %bb.j
  %.030.i26.i = phi ptr [ %i.dq, %bb.j ], [ %.pn35.i21.i, %bb.i ] ; 3 uses
  %i.dq = getelementptr i8, ptr %.030.i26.i, i64 -4 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !367 ; 2 uses
  %i.ds = icmp slt i32 %i.dn, %i.dr
  br i1 %i.ds, label %bb.j, label %.critedge.i27.i

.critedge.i27.i:                                  ; preds = %bb.j, %.lr.ph.i25.i, %bb.i
  %.021.lcssa.i28.i = phi ptr [ %i.dk, %bb.i ], [ %i.dk, %bb.j ], [ %.030.i26.i, %.lr.ph.i25.i ]
  store i32 %i.dn, ptr %.021.lcssa.i28.i, align 4, !tbaa !367
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i25.i
  store i32 %i.dr, ptr %.030.i26.i, align 4, !tbaa !367
  %.not26.i29.i = icmp eq ptr %i.dq, %i.dk
  br i1 %.not26.i29.i, label %.critedge.i27.i, label %.lr.ph.i25.i, !llvm.loop !94

bb.k:                                             ; preds = %.critedge.i27.i, %.lr.ph37.i19.i
  %.022.i22.i = getelementptr inbounds nuw i8, ptr %.02236.i20.i, i64 4 ; 2 uses
  %.not25.i23.i = icmp eq ptr %.022.i22.i, %i.dl
  br i1 %.not25.i23.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit, label %.lr.ph37.i19.i, !llvm.loop !95

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
  %i.ef = load ptr, ptr %4, align 8, !tbaa !378   ; 5 uses
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
  %wide.load167 = load <4 x i32>, ptr %next.gep166, align 4, !tbaa !367
  %wide.load168 = load <4 x i32>, ptr %i.eq, align 4, !tbaa !367
  %i.er = getelementptr i8, ptr %next.gep165, i64 16
  store <4 x i32> %wide.load167, ptr %next.gep165, align 4, !tbaa !367
  store <4 x i32> %wide.load168, ptr %i.er, align 4, !tbaa !367
  %index.next169 = add nuw i64 %index164, 8       ; 2 uses
  %i.es = icmp eq i64 %index.next169, %n.vec162
  br i1 %i.es, label %middle.block170, label %vector.body163, !llvm.loop !4866

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
  %i.et = load i32, ptr %.079.i55, align 4, !tbaa !367
  store i32 %i.et, ptr %.010.i54, align 4, !tbaa !367
  %i.eu = getelementptr inbounds nuw i8, ptr %.079.i55, i64 4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.010.i54, i64 4
  %.not.i56 = icmp eq ptr %i.eu, %i.eg
  br i1 %.not.i56, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59, label %.lr.ph.i53, !llvm.loop !4867

bb.l:                                             ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit.thread.thread, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_NS0_9iter_sizeISE_E4typeESH_T0_T1_(ptr noundef %0, i64 noundef %i.c, i64 noundef %3)
  br label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59

_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59:         ; preds = %.lr.ph.i53, %middle.block170, %bb.l
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !379
  %.not.i60 = icmp eq i64 %i.ex, 0
  br i1 %.not.i60, label %_ZN5boost7movelib13adaptive_xbufIiPimE5clearEv.exit, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit59
  store i64 0, ptr %i.ew, align 8, !tbaa !379
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
  %i.c = load i64, ptr %5, align 8, !tbaa !375    ; 12 uses
  %i.d = getelementptr [4 x i8], ptr %2, i64 %i.c ; 8 uses
  %i.e = sub i64 %3, %i.c                         ; 8 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !375
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
  %i.m = load i64, ptr %i.l, align 8, !tbaa !379  ; 3 uses
  %.not.i = icmp ugt i64 %i.c, %i.m
  %i.n = load ptr, ptr %6, align 8, !tbaa !378    ; 8 uses
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
  %wide.load = load <4 x i32>, ptr %next.gep247, align 4, !tbaa !367
  %wide.load248 = load <4 x i32>, ptr %i.y, align 4, !tbaa !367
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !367
  store <4 x i32> %wide.load248, ptr %i.z, align 4, !tbaa !367
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !4868

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
  %i.ab = load i32, ptr %.079.i.i, align 4, !tbaa !367
  store i32 %i.ab, ptr %.010.i.i, align 4, !tbaa !367
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.ac, %i.p
  br i1 %.not.i.i, label %.thread, label %.lr.ph.i.i, !llvm.loop !4869

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
  %wide.load260 = load <4 x i32>, ptr %next.gep259, align 4, !tbaa !367
  %wide.load261 = load <4 x i32>, ptr %i.an, align 4, !tbaa !367
  %i.ao = getelementptr i8, ptr %next.gep258, i64 16
  store <4 x i32> %wide.load260, ptr %next.gep258, align 4, !tbaa !367
  store <4 x i32> %wide.load261, ptr %i.ao, align 4, !tbaa !367
  %index.next262 = add nuw i64 %index257, 8       ; 2 uses
  %i.ap = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.ap, label %middle.block263, label %vector.body256, !llvm.loop !4870

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
  %i.aq = load i32, ptr %.079.i20.i, align 4, !tbaa !367
  store i32 %i.aq, ptr %.010.i19.i, align 4, !tbaa !367
  %i.ar = getelementptr inbounds nuw i8, ptr %.079.i20.i, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.010.i19.i, i64 4 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.ar, %i.ae
  br i1 %.not.i21.i, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i, label %.lr.ph.i18.i, !llvm.loop !4871

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
  %wide.load278 = load <4 x i32>, ptr %next.gep276, align 4, !tbaa !367
  %wide.load279 = load <4 x i32>, ptr %i.be, align 4, !tbaa !367
  %i.bf = getelementptr i8, ptr %next.gep277, i64 16
  store <4 x i32> %wide.load278, ptr %next.gep277, align 4, !tbaa !367
  store <4 x i32> %wide.load279, ptr %i.bf, align 4, !tbaa !367
  %index.next280 = add nuw i64 %index275, 8       ; 2 uses
  %i.bg = icmp eq i64 %index.next280, %n.vec273
  br i1 %i.bg, label %middle.block281, label %vector.body274, !llvm.loop !4872

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
  %i.bh = load i32, ptr %.012.i.i, align 4, !tbaa !367
  store i32 %i.bh, ptr %.0911.i.i, align 4, !tbaa !367
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i25.i = icmp eq ptr %i.bi, %i.at
  br i1 %.not.i25.i, label %.thread, label %.lr.ph.i24.i, !llvm.loop !4873

.thread:                                          ; preds = %.lr.ph.i.i, %.lr.ph.i24.i, %middle.block, %middle.block281, %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit23.i
  store i64 %i.c, ptr %i.l, align 8, !tbaa !379
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
  store i64 %spec.select, ptr %5, align 8, !tbaa !375
  %i.bq = sub i64 %i.g, %spec.select
  store i64 %i.bq, ptr %1, align 8, !tbaa !375
  br i1 %or.cond187, label %bb.t, label %_ZN5boost4moveIPiS1_EET0_T_S3_S2_.exit

bb.d:                                             ; preds = %.lr.ph, %bb.s
  %.0205 = phi i64 [ %4, %.lr.ph ], [ %i.bt, %bb.s ] ; 5 uses
  %.0130204 = phi i64 [ 0, %.lr.ph ], [ %i.ha, %bb.s ] ; 3 uses
  %.0131203 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.s ]
  %.0132202 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.s ] ; 2 uses
  %.0133201 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.s ] ; 12 uses
  %.0134200 = phi i1 [ true, %.lr.ph ], [ %i.ca, %bb.s ]
  %i.br = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %i.bs = load i64, ptr %1, align 8, !tbaa !375   ; 4 uses
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
  %wide.load372.a = load <4 x i32>, ptr %i.cq, align 4, !tbaa !367
  %wide.load373 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !367
  %i.cs = getelementptr inbounds i8, ptr %next.gep370.a, i64 -16
  %i.ct = getelementptr inbounds i8, ptr %next.gep370.a, i64 -32
  store <4 x i32> %wide.load372.a, ptr %i.cs, align 4, !tbaa !367
  store <4 x i32> %wide.load373, ptr %i.ct, align 4, !tbaa !367
  %index.next374 = add nuw i64 %index369, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next374, %n.vec367
  br i1 %i.cu, label %middle.block375, label %vector.body368, !llvm.loop !4874

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
  %i.cx = load i32, ptr %i.cv, align 4, !tbaa !367
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !367
  %.not.i.i152 = icmp eq ptr %i.cf, %i.cv
  br i1 %.not.i.i152, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i149, !llvm.loop !4875

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
  %wide.load391.a = load <4 x i32>, ptr %i.dh, align 4, !tbaa !367, !alias.scope !4900, !noalias !4901
  %wide.load392.a = load <4 x i32>, ptr %i.di, align 4, !tbaa !367, !alias.scope !4900, !noalias !4901
  %i.dj = getelementptr inbounds i8, ptr %next.gep389.a, i64 -16 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %next.gep389.a, i64 -32 ; 2 uses
  %wide.load393.a = load <4 x i32>, ptr %i.dj, align 4, !tbaa !367, !alias.scope !4901
  %wide.load394 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !367, !alias.scope !4901
  store <4 x i32> %wide.load393.a, ptr %i.dh, align 4, !tbaa !367, !alias.scope !4900, !noalias !4901
  store <4 x i32> %wide.load394, ptr %i.di, align 4, !tbaa !367, !alias.scope !4900, !noalias !4901
  store <4 x i32> %wide.load391.a, ptr %i.dj, align 4, !tbaa !367, !alias.scope !4901
  store <4 x i32> %wide.load392.a, ptr %i.dk, align 4, !tbaa !367, !alias.scope !4901
  %index.next395 = add nuw i64 %index388, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next395, %n.vec386
  br i1 %i.dl, label %middle.block396, label %vector.body387, !llvm.loop !4879

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
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !367
  %i.dp = load i32, ptr %i.dn, align 4, !tbaa !367
  store i32 %i.dp, ptr %i.dm, align 4, !tbaa !367
  store i32 %i.do, ptr %i.dn, align 4, !tbaa !367
  %.not.i11.i = icmp eq ptr %i.cf, %i.dm
  br i1 %.not.i11.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i, !llvm.loop !4880

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
  %wide.load313.a = load <4 x i32>, ptr %i.ei, align 4, !tbaa !367, !alias.scope !4902, !noalias !4903
  %wide.load314.a = load <4 x i32>, ptr %i.ej, align 4, !tbaa !367, !alias.scope !4902, !noalias !4903
  %i.ek = getelementptr inbounds i8, ptr %next.gep311.a, i64 -16 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %next.gep311.a, i64 -32 ; 2 uses
  %wide.load315.a = load <4 x i32>, ptr %i.ek, align 4, !tbaa !367, !alias.scope !4903
  %wide.load316 = load <4 x i32>, ptr %i.el, align 4, !tbaa !367, !alias.scope !4903
  store <4 x i32> %wide.load315.a, ptr %i.ei, align 4, !tbaa !367, !alias.scope !4902, !noalias !4903
  store <4 x i32> %wide.load316, ptr %i.ej, align 4, !tbaa !367, !alias.scope !4902, !noalias !4903
  store <4 x i32> %wide.load313.a, ptr %i.ek, align 4, !tbaa !367, !alias.scope !4903
  store <4 x i32> %wide.load314.a, ptr %i.el, align 4, !tbaa !367, !alias.scope !4903
  %index.next317 = add nuw i64 %index310, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next317, %n.vec308
  br i1 %i.em, label %middle.block318, label %vector.body309, !llvm.loop !4884

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
  %wide.load295 = load <4 x i32>, ptr %i.es, align 4, !tbaa !367
  %wide.load296 = load <4 x i32>, ptr %i.et, align 4, !tbaa !367
  %i.eu = getelementptr inbounds i8, ptr %next.gep293, i64 -16
  %i.ev = getelementptr inbounds i8, ptr %next.gep293, i64 -32
  store <4 x i32> %wide.load295, ptr %i.eu, align 4, !tbaa !367
  store <4 x i32> %wide.load296, ptr %i.ev, align 4, !tbaa !367
  %index.next297 = add nuw i64 %index292, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next297, %n.vec290
  br i1 %i.ew, label %middle.block298, label %vector.body291, !llvm.loop !4885

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
  %i.ez = load i32, ptr %i.ex, align 4, !tbaa !367
  store i32 %i.ez, ptr %i.ey, align 4, !tbaa !367
  %.not.i.i165 = icmp eq ptr %i.dw, %i.ex
  br i1 %.not.i.i165, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i162, !llvm.loop !4886

.lr.ph.i10.i156:                                  ; preds = %.lr.ph.i10.i156.preheader444, %.lr.ph.i10.i156
  %.08.i.i157 = phi ptr [ %i.fb, %.lr.ph.i10.i156 ], [ %.08.i.i157.ph, %.lr.ph.i10.i156.preheader444 ]
  %.057.i.i158 = phi ptr [ %i.fa, %.lr.ph.i10.i156 ], [ %.057.i.i158.ph, %.lr.ph.i10.i156.preheader444 ]
  %i.fa = getelementptr inbounds i8, ptr %.057.i.i158, i64 -4 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %.08.i.i157, i64 -4 ; 3 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !367
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !367
  store i32 %i.fd, ptr %i.fa, align 4, !tbaa !367
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !367
  %.not.i11.i159 = icmp eq ptr %i.dw, %i.fa
  br i1 %.not.i11.i159, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i10.i156, !llvm.loop !4887

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
  %wide.load353.a = load <4 x i32>, ptr %next.gep352, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  %wide.load354.a = load <4 x i32>, ptr %i.ft, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  %i.fu = getelementptr i8, ptr %next.gep351.a, i64 16 ; 2 uses
  %wide.load355.a = load <4 x i32>, ptr %next.gep351.a, align 4, !tbaa !367, !alias.scope !4905
  %wide.load356 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !367, !alias.scope !4905
  store <4 x i32> %wide.load355.a, ptr %next.gep352, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  store <4 x i32> %wide.load356, ptr %i.ft, align 4, !tbaa !367, !alias.scope !4904, !noalias !4905
  store <4 x i32> %wide.load353.a, ptr %next.gep351.a, align 4, !tbaa !367, !alias.scope !4905
  store <4 x i32> %wide.load354.a, ptr %i.fu, align 4, !tbaa !367, !alias.scope !4905
  %index.next357 = add nuw i64 %index350, 8       ; 2 uses
  %i.fv = icmp eq i64 %index.next357, %n.vec348
  br i1 %i.fv, label %middle.block358, label %vector.body349, !llvm.loop !4891

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
  %wide.load332.a = load <4 x i32>, ptr %next.gep331, align 4, !tbaa !367
  %wide.load333 = load <4 x i32>, ptr %i.gb, align 4, !tbaa !367
  %i.gc = getelementptr i8, ptr %next.gep330.a, i64 16
  store <4 x i32> %wide.load332.a, ptr %next.gep330.a, align 4, !tbaa !367
  store <4 x i32> %wide.load333, ptr %i.gc, align 4, !tbaa !367
  %index.next334 = add nuw i64 %index329, 8       ; 2 uses
  %i.gd = icmp eq i64 %index.next334, %n.vec327
  br i1 %i.gd, label %middle.block335, label %vector.body328, !llvm.loop !4892

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %i.fm, %n.vec327
  br i1 %cmp.n336, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPiEEvT_NS0_9iter_sizeIS4_E4typeES4_b.exit, label %.lr.ph.i.i168.preheader446

.lr.ph.i.i168.preheader446:                       ; preds = %.lr.ph.i.i168.preheader, %middle.block335
  %.010.i.i169.ph = phi ptr [ %i.ds, %.lr.ph.i.i168.preheader ], [ %i.fy, %middle.block335 ]
  %.079.i.i170.ph = phi ptr [ %i.dq, %.lr.ph.i.i168.preheader ], [ %i.fz, %middle.block335 ]
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a
  %wide.load160 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !424, !alias.scope !9310
  %i.cm = getelementptr i8, ptr %next.gep157, i64 16
  store <4 x i32> %wide.load159, ptr %next.gep157, align 4, !tbaa !424, !alias.scope !9311, !noalias !9310
  store <4 x i32> %wide.load160, ptr %i.cm, align 4, !tbaa !424, !alias.scope !9311, !noalias !9310
  store <4 x i32> zeroinitializer, ptr %next.gep158, align 4, !tbaa !424, !alias.scope !9310
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !424, !alias.scope !9310
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cn, label %middle.block162, label %vector.body155, !llvm.loop !9298

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ce, %n.vec154
  br i1 %cmp.n163, label %.loopexit.thread, label %.lr.ph.i47.preheader166

.lr.ph.i47.preheader166:                          ; preds = %vector.memcheck149, %.lr.ph.i47.preheader, %middle.block162
  %.010.i.ph = phi ptr [ %i.ca, %vector.memcheck149 ], [ %i.ca, %.lr.ph.i47.preheader ], [ %i.ci, %middle.block162 ]
  %.079.i.ph = phi ptr [ %i.cb, %vector.memcheck149 ], [ %i.cb, %.lr.ph.i47.preheader ], [ %i.cj, %middle.block162 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader166, %.lr.ph.i47
  %.010.i = phi ptr [ %i.cq, %.lr.ph.i47 ], [ %.010.i.ph, %.lr.ph.i47.preheader166 ] ; 2 uses
  %.079.i = phi ptr [ %i.cp, %.lr.ph.i47 ], [ %.079.i.ph, %.lr.ph.i47.preheader166 ] ; 3 uses
  %i.co = load i32, ptr %.079.i, align 4, !tbaa !424
  store i32 %i.co, ptr %.010.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i, align 4, !tbaa !424
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i48 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not.i48, label %.loopexit.thread, label %.lr.ph.i47, !llvm.loop !9299

_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.a
  %i.cr = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef %i.a, i64 noundef %i.b, i64 noundef %2) ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.cv = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test11movable_intEEET_S6_S6_S6_(ptr noundef %i.ct, ptr noundef %i.a, ptr noundef %i.cu) ; 0 uses
  %i.cw = sub i64 %3, %i.cr
  %i.cx = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.ct, i64 noundef %i.b, i64 noundef %i.cr, i64 noundef %3, i64 noundef %i.cw) ; 0 uses
  br label %bb.f

.loopexit.thread:                                 ; preds = %.lr.ph.i47, %middle.block162, %bb.e
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  %i.cz = sub i64 %3, %i.bv
  %i.da = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef nonnull %i.cy, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.cz) ; 0 uses
  br label %bb.f

.lr.ph.i50.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %.pre = sub i64 0, %i.bv
  %i.db = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.dc = sub i64 %3, %i.bv
  %i.dd = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.db, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.dc) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  %i.de = load ptr, ptr %4, align 8, !tbaa !605   ; 6 uses
  %.idx85 = shl nuw nsw i64 %.sroa.speculated60, 2 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx85 ; 2 uses
  %i.dg = add nsw i64 %.idx85, -4                 ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check125, label %.lr.ph.i50.preheader167, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i50.preheader
  %i.dj = getelementptr i8, ptr %0, i64 %.idx85
  %bound0127 = icmp ult ptr %0, %i.df
  %bound1128 = icmp ult ptr %i.de, %i.dj
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.i50.preheader167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec131, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.dn = shl i64 %index133, 2                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %0, i64 %i.dn ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.de, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep135, i64 16 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !424, !alias.scope !9312
  %wide.load137 = load <4 x i32>, ptr %i.do, align 4, !tbaa !424, !alias.scope !9312
  %i.dp = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %wide.load136, ptr %next.gep134, align 4, !tbaa !424, !alias.scope !9313, !noalias !9312
  store <4 x i32> %wide.load137, ptr %i.dp, align 4, !tbaa !424, !alias.scope !9313, !noalias !9312
  store <4 x i32> zeroinitializer, ptr %next.gep135, align 4, !tbaa !424, !alias.scope !9312
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !424, !alias.scope !9312
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dq, label %middle.block139, label %vector.body132, !llvm.loop !9303

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.di, %n.vec131
  br i1 %cmp.n140, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50.preheader167

.lr.ph.i50.preheader167:                          ; preds = %vector.memcheck126, %.lr.ph.i50.preheader, %middle.block139
  %.010.i51.ph = phi ptr [ %0, %vector.memcheck126 ], [ %0, %.lr.ph.i50.preheader ], [ %i.dl, %middle.block139 ]
  %.079.i52.ph = phi ptr [ %i.de, %vector.memcheck126 ], [ %i.de, %.lr.ph.i50.preheader ], [ %i.dm, %middle.block139 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader167, %.lr.ph.i50
  %.010.i51 = phi ptr [ %i.dt, %.lr.ph.i50 ], [ %.010.i51.ph, %.lr.ph.i50.preheader167 ] ; 2 uses
  %.079.i52 = phi ptr [ %i.ds, %.lr.ph.i50 ], [ %.079.i52.ph, %.lr.ph.i50.preheader167 ] ; 3 uses
  %i.dr = load i32, ptr %.079.i52, align 4, !tbaa !424
  store i32 %i.dr, ptr %.010.i51, align 4, !tbaa !424
  store i32 0, ptr %.079.i52, align 4, !tbaa !424
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i52, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i51, i64 4
  %.not.i53 = icmp eq ptr %i.ds, %i.df
  br i1 %.not.i53, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50, !llvm.loop !9304

bb.f:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  br label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55

_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55: ; preds = %.lr.ph.i50, %middle.block139, %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !604 ; 4 uses
  %.not.i56 = icmp eq i64 %i.dv, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55
  %i.dw = load ptr, ptr %4, align 8, !tbaa !605   ; 5 uses
  %xtraiter170 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 4
  br i1 %i.dx, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.dv, -4
  br label %bb.h

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.er, %.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !424
  %i.dz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.eb = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !9305

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  store i64 0, ptr %i.du, align 8, !tbaa !604
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.er, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.h ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  store i32 -2147483648, ptr %i.ec, align 4, !tbaa !424
  %i.ed = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !424
  %i.eh = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 -2147483648, ptr %i.ek, align 4, !tbaa !424
  %i.el = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 -2147483648, ptr %i.eo, align 4, !tbaa !424
  %i.ep = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.er = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !125

_ZN5boost7movelib13adaptive_xbufINS_9container4test11movable_intEPS4_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit55, %.epilog-lcssa
  %i.es = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.es)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !375    ; 16 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b ; 8 uses
  %i.d = sub i64 %3, %i.b                         ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !375
  %i.f = add i64 %i.e, %i.b                       ; 2 uses
  %i.g = icmp ugt i64 %i.d, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !604  ; 8 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !605    ; 18 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.b, 2                   ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.o = add i64 %.idx.i, -4                      ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i
  %bound0 = icmp ult ptr %i.m, %i.n
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %next.gep249 = getelementptr i8, ptr %2, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep249, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !424, !alias.scope !9351
  %wide.load250 = load <4 x i32>, ptr %i.w, align 4, !tbaa !424, !alias.scope !9351
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !424, !alias.scope !9352, !noalias !9351
  store <4 x i32> %wide.load250, ptr %i.x, align 4, !tbaa !424, !alias.scope !9352, !noalias !9351
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !424, !alias.scope !9351
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !424, !alias.scope !9351
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !9317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.c, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %bb.c ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.c ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !424
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i, align 4, !tbaa !424
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !9318

_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1730.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1730.i, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  %i.ac = sub i64 %i.l, %i.b
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.031.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !424
  %i.af = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !9319

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ah = sub i64 %i.b, %i.l
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !424
  %i.al = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.an = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !424
  %i.ap = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ar = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !424
  %i.at = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.av = add i64 %.031.i, -4                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !424
  %i.ax = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %.not17.i.3 = icmp eq i64 %i.av, %i.b
  br i1 %.not17.i.3, label %.thread, label %.lr.ph.i, !llvm.loop !131

bb.d:                                             ; preds = %bb.b
  %.idx27.i = shl i64 %i.l, 2                     ; 4 uses
  %i.az = getelementptr i8, ptr %2, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.d
  %i.ba = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check257, label %.lr.ph.i19.i.preheader395, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bd = getelementptr i8, ptr %i.m, i64 %.idx27.i
  %bound0259 = icmp ult ptr %i.m, %i.az
  %bound1260 = icmp ult ptr %2, %i.bd
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.lr.ph.i19.i.preheader395, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck258
  %n.vec263 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec263, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.bh = shl i64 %index265, 2                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.m, i64 %i.bh ; 2 uses
  %next.gep267 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !424, !alias.scope !9353
  %wide.load269 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !424, !alias.scope !9353
  %i.bj = getelementptr i8, ptr %next.gep266, i64 16
  store <4 x i32> %wide.load268, ptr %next.gep266, align 4, !tbaa !424, !alias.scope !9354, !noalias !9353
  store <4 x i32> %wide.load269, ptr %i.bj, align 4, !tbaa !424, !alias.scope !9354, !noalias !9353
  store <4 x i32> zeroinitializer, ptr %next.gep267, align 4, !tbaa !424, !alias.scope !9353
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !424, !alias.scope !9353
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bk, label %middle.block271, label %vector.body264, !llvm.loop !9323

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.bc, %n.vec263
  br i1 %cmp.n272, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader395

.lr.ph.i19.i.preheader395:                        ; preds = %vector.memcheck258, %.lr.ph.i19.i.preheader, %middle.block271
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck258 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.bf, %middle.block271 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck258 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.bg, %middle.block271 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader395, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bn, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader395 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bm, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader395 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i21.i, align 4, !tbaa !424
  store i32 %i.bl, ptr %.010.i20.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !424
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !9324

_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block271, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.d ], [ %i.bf, %middle.block271 ], [ %i.bn, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %i.b, 2                 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %i.az, %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !424
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !424
  store i32 0, ptr %.012.i.i, align 4, !tbaa !424
  %i.bq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !132

.thread:                                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit24.i, %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !604
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep297.a = getelementptr i8, ptr %2, i64 %i.bv
  %i.bw = shl i64 %3, 2
  %i.bx = add i64 %i.bw, -4
  %i.by = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.by
  br label %bb.e

._crit_edge:                                      ; preds = %bb.t
  %i.bz = select i1 %.1, i1 %i.ck, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !375
  %i.ca = sub i64 %i.f, %spec.select
  store i64 %i.ca, ptr %1, align 8, !tbaa !375
  br i1 %or.cond188, label %bb.u, label %_ZN5boost4moveIPNS_9container4test11movable_intES4_EET0_T_S6_S5_.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.cd, %bb.t ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %bb.t ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.t ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.t ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.t ] ; 12 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.ck, %bb.t ]
  %i.cb = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %i.cc = load i64, ptr %1, align 8, !tbaa !375   ; 4 uses
  %i.cd = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.cb, 0
  br i1 %.not.i144, label %bb.f, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = lshr i64 %i.cc, 1                       ; 3 uses
  %i.cf = sub nuw i64 %i.cc, %i.ce                ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 3
  br i1 %i.cg, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ch = udiv i64 %i.cd, %i.ce
  %.not193 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %i.ci = udiv i64 %i.cd, %i.cc
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.e, %bb.g, %.critedge.i
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge.i ], [ true, %bb.e ] ; 10 uses
  %.1.i = phi i64 [ %i.ce, %bb.g ], [ %i.ci, %.critedge.i ], [ %i.cb, %bb.e ] ; 11 uses
  %i.cj = and i64 %.0130205, 1
  %i.ck = icmp eq i64 %i.cj, 0                    ; 9 uses
  %i.cl = urem i64 %i.d, %i.cd                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cl, %.0206
  %i.cm = select i1 %.not.i145, i64 0, i64 %i.cl  ; 5 uses
  %spec.select15.i = sub i64 %i.d, %i.cm          ; 5 uses
  %i.cn = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cn, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.h, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ck, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = sub i64 0, %.0132203
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %i.co ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.cq = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 5 uses
  %.idx13.i = shl i64 %.0133202, 2                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.idx13.i ; 5 uses
  %i.cs = add i64 %.idx13.i, -4                   ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i148.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.preheader.i
  %bound0318 = icmp ult ptr %i.c, %i.cr
  %bound1319 = icmp ult ptr %i.cp, %i.cq
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i148.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck317
  %n.vec324 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec324, -4                   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cr, i64 %i.cv
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.cy = mul i64 %index326, -4                   ; 2 uses
  %next.gep327.a = getelementptr i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.cr, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep328, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep328, i64 -32 ; 2 uses
  %wide.load329.a = load <4 x i32>, ptr %i.cz, align 4, !tbaa !424, !alias.scope !9355
  %wide.load330 = load <4 x i32>, ptr %i.da, align 4, !tbaa !424, !alias.scope !9355
  %i.db = getelementptr inbounds i8, ptr %next.gep327.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep327.a, i64 -32
  store <4 x i32> %wide.load329.a, ptr %i.db, align 4, !tbaa !424, !alias.scope !9356, !noalias !9355
  store <4 x i32> %wide.load330, ptr %i.dc, align 4, !tbaa !424, !alias.scope !9356, !noalias !9355
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !424, !alias.scope !9355
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !424, !alias.scope !9355
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.dd, label %middle.block332, label %vector.body325, !llvm.loop !9328

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.cu, %n.vec324
  br i1 %cmp.n333, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %vector.memcheck317, %.lr.ph.i.preheader.i, %middle.block332
  %.010.i.i149.ph = phi ptr [ %i.cq, %vector.memcheck317 ], [ %i.cq, %.lr.ph.i.preheader.i ], [ %i.cw, %middle.block332 ]
  %.079.i.i150.ph = phi ptr [ %i.cr, %vector.memcheck317 ], [ %i.cr, %.lr.ph.i.preheader.i ], [ %i.cx, %middle.block332 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.df, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader ]
  %.079.i.i150 = phi ptr [ %i.de, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i150, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i149, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !424
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !424
  store i32 0, ptr %i.de, align 4, !tbaa !424
  %.not.i.i151 = icmp eq ptr %i.cp, %i.de
  br i1 %.not.i.i151, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148, !llvm.loop !9329

bb.k:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx.i147 = shl i64 %.0133202, 2               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i147 ; 2 uses
  %i.dj = add i64 %.idx.i147, -4                  ; 2 uses
  %i.dk = and i64 %i.dj, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod399.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !424
  store i32 0, ptr %i.dl, align 4, !tbaa !424
  %i.do = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !424
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !424
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !424
  %i.dr = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i10.preheader.i ], [ %i.dm, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.di, %.lr.ph.i10.preheader.i ], [ %i.dl, %.lr.ph.i10.i.prol ]
  %i.dt = icmp eq i64 %i.dj, 0
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ed, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ec, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !424
  store i32 0, ptr %i.du, align 4, !tbaa !424
  %i.dx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !424
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !424
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !424
  %i.ea = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ec = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !424
  store i32 0, ptr %i.ec, align 4, !tbaa !424
  %i.ef = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !424
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !424
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !424
  %i.ei = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %.not.i11.i.1 = icmp eq ptr %i.cp, %i.ec
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !137

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 14 uses
  %i.el = sub i64 0, %.1.i
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el ; 7 uses
  %i.en = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eo = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.ep = sub i64 0, %i.eo
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.ep ; 4 uses
  %.idx13.i160 = shl i64 %i.eo, 2
  %i.er = getelementptr i8, ptr %i.eq, i64 %.idx13.i160 ; 6 uses
  br i1 %or.cond188, label %.lr.ph.i.i161.preheader, label %.lr.ph.i10.i155

.lr.ph.i.i161.preheader:                          ; preds = %bb.m
  %i.es = add i64 %i.cm, %.0133202
  %i.et = add i64 %i.es, %i.b
  %i.eu = shl i64 %i.et, 2
  %.reass = add i64 %i.eu, %invariant.op          ; 2 uses
  %i.ev = lshr exact i64 %.reass, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check282, label %.lr.ph.i.i161.preheader388, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ex = mul i64 %i.cm, -4
  %scevgep277 = getelementptr i8, ptr %scevgep, i64 %i.ex
  %bound0278 = icmp ult ptr %scevgep277, %i.er
  %bound1279 = icmp ult ptr %i.eq, %i.ek
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i161.preheader388, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %n.vec284 = and i64 %i.ew, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec284, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ek, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ey
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.fb = mul i64 %index286, -4                   ; 2 uses
  %next.gep287.a = getelementptr i8, ptr %i.ek, i64 %i.fb ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep288, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep288, i64 -32 ; 2 uses
  %wide.load289.a = load <4 x i32>, ptr %i.fc, align 4, !tbaa !424, !alias.scope !9357
  %wide.load290 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !424, !alias.scope !9357
  %i.fe = getelementptr inbounds i8, ptr %next.gep287.a, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep287.a, i64 -32
  store <4 x i32> %wide.load289.a, ptr %i.fe, align 4, !tbaa !424, !alias.scope !9358, !noalias !9357
  store <4 x i32> %wide.load290, ptr %i.ff, align 4, !tbaa !424, !alias.scope !9358, !noalias !9357
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !424, !alias.scope !9357
  store <4 x i32> zeroinitializer, ptr %i.fd, align 4, !tbaa !424, !alias.scope !9357
  %index.next291 = add nuw i64 %index286, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.fg, label %middle.block292, label %vector.body285, !llvm.loop !9333

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.ew, %n.vec284
  br i1 %cmp.n293, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161.preheader388

.lr.ph.i.i161.preheader388:                       ; preds = %vector.memcheck275, %.lr.ph.i.i161.preheader, %middle.block292
  %.010.i.i162.ph = phi ptr [ %i.ek, %vector.memcheck275 ], [ %i.ek, %.lr.ph.i.i161.preheader ], [ %i.ez, %middle.block292 ]
  %.079.i.i163.ph = phi ptr [ %i.er, %vector.memcheck275 ], [ %i.er, %.lr.ph.i.i161.preheader ], [ %i.fa, %middle.block292 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader388, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.fi, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader388 ]
  %.079.i.i163 = phi ptr [ %i.fh, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader388 ]
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 4 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !424
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !424
  store i32 0, ptr %i.fh, align 4, !tbaa !424
  %.not.i.i164 = icmp eq ptr %i.eq, %i.fh
  br i1 %.not.i.i164, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161, !llvm.loop !9334

.lr.ph.i10.i155:                                  ; preds = %bb.m, %.lr.ph.i10.i155
  %.08.i.i156 = phi ptr [ %i.fl, %.lr.ph.i10.i155 ], [ %i.ek, %bb.m ]
  %.057.i.i157 = phi ptr [ %i.fk, %.lr.ph.i10.i155 ], [ %i.er, %bb.m ]
  %i.fk = getelementptr inbounds i8, ptr %.057.i.i157, i64 -4 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %.08.i.i156, i64 -4 ; 3 uses
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !424
  store i32 0, ptr %i.fk, align 4, !tbaa !424
  %i.fn = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !424
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !424
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !424
  %i.fq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %.not.i11.i158 = icmp eq ptr %i.eq, %i.fk
  br i1 %.not.i11.i158, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i155, !llvm.loop !137

bb.n:                                             ; preds = %bb.l
  %i.fs = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fs, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.ft = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.ft, 2
  %i.fu = getelementptr i8, ptr %i.ek, i64 %.idx14.i ; 3 uses
  br i1 %or.cond188, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.o
  %i.fv = add i64 %i.cm, %.0133202
  %i.fw = add i64 %i.fv, %i.b
  %i.fx = shl i64 %i.fw, 2
  %i.fy = sub i64 %i.bx, %i.fx                    ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.fy, 28
  br i1 %min.iters.check303, label %.lr.ph.i.i168.preheader390, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gb = add i64 %i.cm, %.1.i
  %i.gc = mul i64 %i.gb, -4
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.gc
  %bound0299 = icmp ult ptr %i.em, %i.fu
  %bound1300 = icmp ult ptr %i.ek, %scevgep298
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i168.preheader390, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec305 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gd = shl i64 %n.vec305, 2                    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.em, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ek, i64 %i.gd
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ] ; 2 uses
  %i.gg = shl i64 %index307, 2                    ; 2 uses
  %next.gep308.a = getelementptr i8, ptr %i.em, i64 %i.gg ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.ek, i64 %i.gg ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load310.a = load <4 x i32>, ptr %next.gep309, align 4, !tbaa !424, !alias.scope !9359
  %wide.load311 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !424, !alias.scope !9359
  %i.gi = getelementptr i8, ptr %next.gep308.a, i64 16
  store <4 x i32> %wide.load310.a, ptr %next.gep308.a, align 4, !tbaa !424, !alias.scope !9360, !noalias !9359
  store <4 x i32> %wide.load311, ptr %i.gi, align 4, !tbaa !424, !alias.scope !9360, !noalias !9359
  store <4 x i32> zeroinitializer, ptr %next.gep309, align 4, !tbaa !424, !alias.scope !9359
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !424, !alias.scope !9359
  %index.next312 = add nuw i64 %index307, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gj, label %middle.block313, label %vector.body306, !llvm.loop !9338

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ga, %n.vec305
  br i1 %cmp.n314, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168.preheader390

.lr.ph.i.i168.preheader390:                       ; preds = %vector.memcheck296, %.lr.ph.i.i168.preheader, %middle.block313
  %.010.i.i169.ph = phi ptr [ %i.em, %vector.memcheck296 ], [ %i.em, %.lr.ph.i.i168.preheader ], [ %i.ge, %middle.block313 ]
  %.079.i.i170.ph = phi ptr [ %i.ek, %vector.memcheck296 ], [ %i.ek, %.lr.ph.i.i168.preheader ], [ %i.gf, %middle.block313 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader390, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gm, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader390 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gl, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader390 ] ; 3 uses
  %i.gk = load i32, ptr %.079.i.i170, align 4, !tbaa !424
  store i32 %i.gk, ptr %.010.i.i169, align 4, !tbaa !424
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !424
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gl, %i.fu
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168, !llvm.loop !9339

.lr.ph.i9.i:                                      ; preds = %bb.o, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gu, %.lr.ph.i9.i ], [ %i.em, %bb.o ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gt, %.lr.ph.i9.i ], [ %i.ek, %bb.o ] ; 4 uses
  %i.gn = load i32, ptr %.079.i11.i, align 4, !tbaa !424
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !424
  %i.go = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gq = load i32, ptr %.010.i10.i, align 4, !tbaa !424
  store i32 %i.gq, ptr %.079.i11.i, align 4, !tbaa !424
  store i32 %i.gn, ptr %.010.i10.i, align 4, !tbaa !424
  %i.gr = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !367
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gt, %i.fu
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !135

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i155, %.lr.ph.i.i161, %middle.block332, %middle.block313, %middle.block292, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cc, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gv = udiv i64 %i.cd, %.1.i
  %i.gw = icmp ugt i64 %i.gv, 256
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ck
  %i.gx = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gx
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gy, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ck
  %i.gz = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gz
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test11movable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.ha, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test11movable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.hb = load i64, ptr %i.bu, align 8, !tbaa !604
  %i.hc = load ptr, ptr %6, align 8, !tbaa !605
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = add i64 %i.he, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = inttoptr i64 %i.hg to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ck
end_hunk_1
begin_hunk_2_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a
  %wide.load160 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !528, !alias.scope !13845
  %i.cm = getelementptr i8, ptr %next.gep157, i64 16
  store <4 x i32> %wide.load159, ptr %next.gep157, align 4, !tbaa !528, !alias.scope !13846, !noalias !13845
  store <4 x i32> %wide.load160, ptr %i.cm, align 4, !tbaa !528, !alias.scope !13846, !noalias !13845
  store <4 x i32> zeroinitializer, ptr %next.gep158, align 4, !tbaa !528, !alias.scope !13845
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !528, !alias.scope !13845
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cn, label %middle.block162, label %vector.body155, !llvm.loop !13833

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ce, %n.vec154
  br i1 %cmp.n163, label %.loopexit.thread, label %.lr.ph.i47.preheader166

.lr.ph.i47.preheader166:                          ; preds = %vector.memcheck149, %.lr.ph.i47.preheader, %middle.block162
  %.010.i.ph = phi ptr [ %i.ca, %vector.memcheck149 ], [ %i.ca, %.lr.ph.i47.preheader ], [ %i.ci, %middle.block162 ]
  %.079.i.ph = phi ptr [ %i.cb, %vector.memcheck149 ], [ %i.cb, %.lr.ph.i47.preheader ], [ %i.cj, %middle.block162 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader166, %.lr.ph.i47
  %.010.i = phi ptr [ %i.cq, %.lr.ph.i47 ], [ %.010.i.ph, %.lr.ph.i47.preheader166 ] ; 2 uses
  %.079.i = phi ptr [ %i.cp, %.lr.ph.i47 ], [ %.079.i.ph, %.lr.ph.i47.preheader166 ] ; 3 uses
  %i.co = load i32, ptr %.079.i, align 4, !tbaa !528
  store i32 %i.co, ptr %.010.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i, align 4, !tbaa !528
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i48 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not.i48, label %.loopexit.thread, label %.lr.ph.i47, !llvm.loop !13834

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.a
  %i.cr = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESG_SI_SI_T0_(ptr noundef %i.a, i64 noundef %i.b, i64 noundef %2) ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.cv = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %i.ct, ptr noundef %i.a, ptr noundef %i.cu) ; 0 uses
  %i.cw = sub i64 %3, %i.cr
  %i.cx = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.ct, i64 noundef %i.b, i64 noundef %i.cr, i64 noundef %3, i64 noundef %i.cw) ; 0 uses
  br label %bb.f

.loopexit.thread:                                 ; preds = %.lr.ph.i47, %middle.block162, %bb.e
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  %i.cz = sub i64 %3, %i.bv
  %i.da = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef nonnull %i.cy, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.cz) ; 0 uses
  br label %bb.f

.lr.ph.i50.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %.pre = sub i64 0, %i.bv
  %i.db = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.dc = sub i64 %3, %i.bv
  %i.dd = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_SJ_T0_T1_(ptr noundef %i.db, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.dc) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  %i.de = load ptr, ptr %4, align 8, !tbaa !644   ; 6 uses
  %.idx85 = shl nuw nsw i64 %.sroa.speculated60, 2 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx85 ; 2 uses
  %i.dg = add nsw i64 %.idx85, -4                 ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check125, label %.lr.ph.i50.preheader167, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i50.preheader
  %i.dj = getelementptr i8, ptr %0, i64 %.idx85
  %bound0127 = icmp ult ptr %0, %i.df
  %bound1128 = icmp ult ptr %i.de, %i.dj
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.i50.preheader167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec131, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.dn = shl i64 %index133, 2                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %0, i64 %i.dn ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.de, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep135, i64 16 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !528, !alias.scope !13847
  %wide.load137 = load <4 x i32>, ptr %i.do, align 4, !tbaa !528, !alias.scope !13847
  %i.dp = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %wide.load136, ptr %next.gep134, align 4, !tbaa !528, !alias.scope !13848, !noalias !13847
  store <4 x i32> %wide.load137, ptr %i.dp, align 4, !tbaa !528, !alias.scope !13848, !noalias !13847
  store <4 x i32> zeroinitializer, ptr %next.gep135, align 4, !tbaa !528, !alias.scope !13847
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !528, !alias.scope !13847
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dq, label %middle.block139, label %vector.body132, !llvm.loop !13838

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.di, %n.vec131
  br i1 %cmp.n140, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50.preheader167

.lr.ph.i50.preheader167:                          ; preds = %vector.memcheck126, %.lr.ph.i50.preheader, %middle.block139
  %.010.i51.ph = phi ptr [ %0, %vector.memcheck126 ], [ %0, %.lr.ph.i50.preheader ], [ %i.dl, %middle.block139 ]
  %.079.i52.ph = phi ptr [ %i.de, %vector.memcheck126 ], [ %i.de, %.lr.ph.i50.preheader ], [ %i.dm, %middle.block139 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader167, %.lr.ph.i50
  %.010.i51 = phi ptr [ %i.dt, %.lr.ph.i50 ], [ %.010.i51.ph, %.lr.ph.i50.preheader167 ] ; 2 uses
  %.079.i52 = phi ptr [ %i.ds, %.lr.ph.i50 ], [ %.079.i52.ph, %.lr.ph.i50.preheader167 ] ; 3 uses
  %i.dr = load i32, ptr %.079.i52, align 4, !tbaa !528
  store i32 %i.dr, ptr %.010.i51, align 4, !tbaa !528
  store i32 0, ptr %.079.i52, align 4, !tbaa !528
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i52, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i51, i64 4
  %.not.i53 = icmp eq ptr %i.ds, %i.df
  br i1 %.not.i53, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50, !llvm.loop !13839

bb.f:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISG_E4typeESJ_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  br label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55: ; preds = %.lr.ph.i50, %middle.block139, %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !643 ; 4 uses
  %.not.i56 = icmp eq i64 %i.dv, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55
  %i.dw = load ptr, ptr %4, align 8, !tbaa !644   ; 5 uses
  %xtraiter170 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 4
  br i1 %i.dx, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.dv, -4
  br label %bb.h

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.er, %.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !528
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eb = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !13840

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  store i64 0, ptr %i.du, align 8, !tbaa !643
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.er, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.h ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  store i32 -2147483648, ptr %i.ec, align 4, !tbaa !528
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !528
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 -2147483648, ptr %i.ek, align 4, !tbaa !528
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 -2147483648, ptr %i.eo, align 4, !tbaa !528
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.er = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !238

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, %.epilog-lcssa
  %i.es = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.es)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISH_E4typeESH_SK_SK_SL_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !375    ; 16 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b ; 8 uses
  %i.d = sub i64 %3, %i.b                         ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !375
  %i.f = add i64 %i.e, %i.b                       ; 2 uses
  %i.g = icmp ugt i64 %i.d, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !643  ; 8 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !644    ; 18 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.b, 2                   ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.o = add i64 %.idx.i, -4                      ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i
  %bound0 = icmp ult ptr %i.m, %i.n
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %next.gep249 = getelementptr i8, ptr %2, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep249, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !528, !alias.scope !13886
  %wide.load250 = load <4 x i32>, ptr %i.w, align 4, !tbaa !528, !alias.scope !13886
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !528, !alias.scope !13887, !noalias !13886
  store <4 x i32> %wide.load250, ptr %i.x, align 4, !tbaa !528, !alias.scope !13887, !noalias !13886
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !528, !alias.scope !13886
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !528, !alias.scope !13886
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !13852

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.c, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %bb.c ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.c ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !13853

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1730.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1730.i, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ac = sub i64 %i.l, %i.b
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.031.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !528
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !13854

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ah = sub i64 %i.b, %i.l
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !528
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.an = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !528
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ar = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !528
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.av = add i64 %.031.i, -4                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !528
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not17.i.3 = icmp eq i64 %i.av, %i.b
  br i1 %.not17.i.3, label %.thread, label %.lr.ph.i, !llvm.loop !246

bb.d:                                             ; preds = %bb.b
  %.idx27.i = shl i64 %i.l, 2                     ; 4 uses
  %i.az = getelementptr i8, ptr %2, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.d
  %i.ba = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check257, label %.lr.ph.i19.i.preheader395, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bd = getelementptr i8, ptr %i.m, i64 %.idx27.i
  %bound0259 = icmp ult ptr %i.m, %i.az
  %bound1260 = icmp ult ptr %2, %i.bd
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.lr.ph.i19.i.preheader395, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck258
  %n.vec263 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec263, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.bh = shl i64 %index265, 2                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.m, i64 %i.bh ; 2 uses
  %next.gep267 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !528, !alias.scope !13888
  %wide.load269 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !528, !alias.scope !13888
  %i.bj = getelementptr i8, ptr %next.gep266, i64 16
  store <4 x i32> %wide.load268, ptr %next.gep266, align 4, !tbaa !528, !alias.scope !13889, !noalias !13888
  store <4 x i32> %wide.load269, ptr %i.bj, align 4, !tbaa !528, !alias.scope !13889, !noalias !13888
  store <4 x i32> zeroinitializer, ptr %next.gep267, align 4, !tbaa !528, !alias.scope !13888
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !528, !alias.scope !13888
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bk, label %middle.block271, label %vector.body264, !llvm.loop !13858

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.bc, %n.vec263
  br i1 %cmp.n272, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader395

.lr.ph.i19.i.preheader395:                        ; preds = %vector.memcheck258, %.lr.ph.i19.i.preheader, %middle.block271
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck258 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.bf, %middle.block271 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck258 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.bg, %middle.block271 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader395, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bn, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader395 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bm, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader395 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i21.i, align 4, !tbaa !528
  store i32 %i.bl, ptr %.010.i20.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !528
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !13859

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block271, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.d ], [ %i.bf, %middle.block271 ], [ %i.bn, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %i.b, 2                 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %i.az, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !528
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !528
  store i32 0, ptr %.012.i.i, align 4, !tbaa !528
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !247

.thread:                                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !643
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep297.a = getelementptr i8, ptr %2, i64 %i.bv
  %i.bw = shl i64 %3, 2
  %i.bx = add i64 %i.bw, -4
  %i.by = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.by
  br label %bb.e

._crit_edge:                                      ; preds = %bb.t
  %i.bz = select i1 %.1, i1 %i.ck, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !375
  %i.ca = sub i64 %i.f, %spec.select
  store i64 %i.ca, ptr %1, align 8, !tbaa !375
  br i1 %or.cond188, label %bb.u, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.cd, %bb.t ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %bb.t ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.t ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.t ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.t ] ; 12 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.ck, %bb.t ]
  %i.cb = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %i.cc = load i64, ptr %1, align 8, !tbaa !375   ; 4 uses
  %i.cd = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.cb, 0
  br i1 %.not.i144, label %bb.f, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = lshr i64 %i.cc, 1                       ; 3 uses
  %i.cf = sub nuw i64 %i.cc, %i.ce                ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 3
  br i1 %i.cg, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ch = udiv i64 %i.cd, %i.ce
  %.not193 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %i.ci = udiv i64 %i.cd, %i.cc
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.e, %bb.g, %.critedge.i
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge.i ], [ true, %bb.e ] ; 10 uses
  %.1.i = phi i64 [ %i.ce, %bb.g ], [ %i.ci, %.critedge.i ], [ %i.cb, %bb.e ] ; 11 uses
  %i.cj = and i64 %.0130205, 1
  %i.ck = icmp eq i64 %i.cj, 0                    ; 9 uses
  %i.cl = urem i64 %i.d, %i.cd                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cl, %.0206
  %i.cm = select i1 %.not.i145, i64 0, i64 %i.cl  ; 5 uses
  %spec.select15.i = sub i64 %i.d, %i.cm          ; 5 uses
  %i.cn = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cn, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.h, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ck, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = sub i64 0, %.0132203
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %i.co ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.cq = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 5 uses
  %.idx13.i = shl i64 %.0133202, 2                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.idx13.i ; 5 uses
  %i.cs = add i64 %.idx13.i, -4                   ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i148.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.preheader.i
  %bound0318 = icmp ult ptr %i.c, %i.cr
  %bound1319 = icmp ult ptr %i.cp, %i.cq
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i148.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck317
  %n.vec324 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec324, -4                   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cr, i64 %i.cv
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.cy = mul i64 %index326, -4                   ; 2 uses
  %next.gep327.a = getelementptr i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.cr, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep328, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep328, i64 -32 ; 2 uses
  %wide.load329.a = load <4 x i32>, ptr %i.cz, align 4, !tbaa !528, !alias.scope !13890
  %wide.load330 = load <4 x i32>, ptr %i.da, align 4, !tbaa !528, !alias.scope !13890
  %i.db = getelementptr inbounds i8, ptr %next.gep327.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep327.a, i64 -32
  store <4 x i32> %wide.load329.a, ptr %i.db, align 4, !tbaa !528, !alias.scope !13891, !noalias !13890
  store <4 x i32> %wide.load330, ptr %i.dc, align 4, !tbaa !528, !alias.scope !13891, !noalias !13890
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !528, !alias.scope !13890
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !528, !alias.scope !13890
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.dd, label %middle.block332, label %vector.body325, !llvm.loop !13863

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.cu, %n.vec324
  br i1 %cmp.n333, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %vector.memcheck317, %.lr.ph.i.preheader.i, %middle.block332
  %.010.i.i149.ph = phi ptr [ %i.cq, %vector.memcheck317 ], [ %i.cq, %.lr.ph.i.preheader.i ], [ %i.cw, %middle.block332 ]
  %.079.i.i150.ph = phi ptr [ %i.cr, %vector.memcheck317 ], [ %i.cr, %.lr.ph.i.preheader.i ], [ %i.cx, %middle.block332 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.df, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader ]
  %.079.i.i150 = phi ptr [ %i.de, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i150, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i149, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !528
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !528
  store i32 0, ptr %i.de, align 4, !tbaa !528
  %.not.i.i151 = icmp eq ptr %i.cp, %i.de
  br i1 %.not.i.i151, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148, !llvm.loop !13864

bb.k:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx.i147 = shl i64 %.0133202, 2               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i147 ; 2 uses
  %i.dj = add i64 %.idx.i147, -4                  ; 2 uses
  %i.dk = and i64 %i.dj, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod399.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !528
  store i32 0, ptr %i.dl, align 4, !tbaa !528
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !528
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !528
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !528
  %i.dr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i10.preheader.i ], [ %i.dm, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.di, %.lr.ph.i10.preheader.i ], [ %i.dl, %.lr.ph.i10.i.prol ]
  %i.dt = icmp eq i64 %i.dj, 0
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ed, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ec, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !528
  store i32 0, ptr %i.du, align 4, !tbaa !528
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !528
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !528
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !528
  %i.ea = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ec = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !528
  store i32 0, ptr %i.ec, align 4, !tbaa !528
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !528
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !528
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !528
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i11.i.1 = icmp eq ptr %i.cp, %i.ec
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !253

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 14 uses
  %i.el = sub i64 0, %.1.i
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el ; 7 uses
  %i.en = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eo = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.ep = sub i64 0, %i.eo
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.ep ; 4 uses
  %.idx13.i160 = shl i64 %i.eo, 2
  %i.er = getelementptr i8, ptr %i.eq, i64 %.idx13.i160 ; 6 uses
  br i1 %or.cond188, label %.lr.ph.i.i161.preheader, label %.lr.ph.i10.i155

.lr.ph.i.i161.preheader:                          ; preds = %bb.m
  %i.es = add i64 %i.cm, %.0133202
  %i.et = add i64 %i.es, %i.b
  %i.eu = shl i64 %i.et, 2
  %.reass = add i64 %i.eu, %invariant.op          ; 2 uses
  %i.ev = lshr exact i64 %.reass, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check282, label %.lr.ph.i.i161.preheader388, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ex = mul i64 %i.cm, -4
  %scevgep277 = getelementptr i8, ptr %scevgep, i64 %i.ex
  %bound0278 = icmp ult ptr %scevgep277, %i.er
  %bound1279 = icmp ult ptr %i.eq, %i.ek
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i161.preheader388, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %n.vec284 = and i64 %i.ew, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec284, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ek, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ey
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.fb = mul i64 %index286, -4                   ; 2 uses
  %next.gep287.a = getelementptr i8, ptr %i.ek, i64 %i.fb ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep288, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep288, i64 -32 ; 2 uses
  %wide.load289.a = load <4 x i32>, ptr %i.fc, align 4, !tbaa !528, !alias.scope !13892
  %wide.load290 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !528, !alias.scope !13892
  %i.fe = getelementptr inbounds i8, ptr %next.gep287.a, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep287.a, i64 -32
  store <4 x i32> %wide.load289.a, ptr %i.fe, align 4, !tbaa !528, !alias.scope !13893, !noalias !13892
  store <4 x i32> %wide.load290, ptr %i.ff, align 4, !tbaa !528, !alias.scope !13893, !noalias !13892
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !528, !alias.scope !13892
  store <4 x i32> zeroinitializer, ptr %i.fd, align 4, !tbaa !528, !alias.scope !13892
  %index.next291 = add nuw i64 %index286, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.fg, label %middle.block292, label %vector.body285, !llvm.loop !13868

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.ew, %n.vec284
  br i1 %cmp.n293, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161.preheader388

.lr.ph.i.i161.preheader388:                       ; preds = %vector.memcheck275, %.lr.ph.i.i161.preheader, %middle.block292
  %.010.i.i162.ph = phi ptr [ %i.ek, %vector.memcheck275 ], [ %i.ek, %.lr.ph.i.i161.preheader ], [ %i.ez, %middle.block292 ]
  %.079.i.i163.ph = phi ptr [ %i.er, %vector.memcheck275 ], [ %i.er, %.lr.ph.i.i161.preheader ], [ %i.fa, %middle.block292 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader388, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.fi, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader388 ]
  %.079.i.i163 = phi ptr [ %i.fh, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader388 ]
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 4 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !528
  store i32 0, ptr %i.fh, align 4, !tbaa !528
  %.not.i.i164 = icmp eq ptr %i.eq, %i.fh
  br i1 %.not.i.i164, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161, !llvm.loop !13869

.lr.ph.i10.i155:                                  ; preds = %bb.m, %.lr.ph.i10.i155
  %.08.i.i156 = phi ptr [ %i.fl, %.lr.ph.i10.i155 ], [ %i.ek, %bb.m ]
  %.057.i.i157 = phi ptr [ %i.fk, %.lr.ph.i10.i155 ], [ %i.er, %bb.m ]
  %i.fk = getelementptr inbounds i8, ptr %.057.i.i157, i64 -4 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %.08.i.i156, i64 -4 ; 3 uses
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !528
  store i32 0, ptr %i.fk, align 4, !tbaa !528
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !528
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !528
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !528
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i11.i158 = icmp eq ptr %i.eq, %i.fk
  br i1 %.not.i11.i158, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i155, !llvm.loop !253

bb.n:                                             ; preds = %bb.l
  %i.fs = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fs, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.ft = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.ft, 2
  %i.fu = getelementptr i8, ptr %i.ek, i64 %.idx14.i ; 3 uses
  br i1 %or.cond188, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.o
  %i.fv = add i64 %i.cm, %.0133202
  %i.fw = add i64 %i.fv, %i.b
  %i.fx = shl i64 %i.fw, 2
  %i.fy = sub i64 %i.bx, %i.fx                    ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.fy, 28
  br i1 %min.iters.check303, label %.lr.ph.i.i168.preheader390, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gb = add i64 %i.cm, %.1.i
  %i.gc = mul i64 %i.gb, -4
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.gc
  %bound0299 = icmp ult ptr %i.em, %i.fu
  %bound1300 = icmp ult ptr %i.ek, %scevgep298
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i168.preheader390, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec305 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gd = shl i64 %n.vec305, 2                    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.em, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ek, i64 %i.gd
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ] ; 2 uses
  %i.gg = shl i64 %index307, 2                    ; 2 uses
  %next.gep308.a = getelementptr i8, ptr %i.em, i64 %i.gg ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.ek, i64 %i.gg ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load310.a = load <4 x i32>, ptr %next.gep309, align 4, !tbaa !528, !alias.scope !13894
  %wide.load311 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !528, !alias.scope !13894
  %i.gi = getelementptr i8, ptr %next.gep308.a, i64 16
  store <4 x i32> %wide.load310.a, ptr %next.gep308.a, align 4, !tbaa !528, !alias.scope !13895, !noalias !13894
  store <4 x i32> %wide.load311, ptr %i.gi, align 4, !tbaa !528, !alias.scope !13895, !noalias !13894
  store <4 x i32> zeroinitializer, ptr %next.gep309, align 4, !tbaa !528, !alias.scope !13894
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !528, !alias.scope !13894
  %index.next312 = add nuw i64 %index307, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gj, label %middle.block313, label %vector.body306, !llvm.loop !13873

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ga, %n.vec305
  br i1 %cmp.n314, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168.preheader390

.lr.ph.i.i168.preheader390:                       ; preds = %vector.memcheck296, %.lr.ph.i.i168.preheader, %middle.block313
  %.010.i.i169.ph = phi ptr [ %i.em, %vector.memcheck296 ], [ %i.em, %.lr.ph.i.i168.preheader ], [ %i.ge, %middle.block313 ]
  %.079.i.i170.ph = phi ptr [ %i.ek, %vector.memcheck296 ], [ %i.ek, %.lr.ph.i.i168.preheader ], [ %i.gf, %middle.block313 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader390, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gm, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader390 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gl, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader390 ] ; 3 uses
  %i.gk = load i32, ptr %.079.i.i170, align 4, !tbaa !528
  store i32 %i.gk, ptr %.010.i.i169, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !528
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gl, %i.fu
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168, !llvm.loop !13874

.lr.ph.i9.i:                                      ; preds = %bb.o, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gu, %.lr.ph.i9.i ], [ %i.em, %bb.o ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gt, %.lr.ph.i9.i ], [ %i.ek, %bb.o ] ; 4 uses
  %i.gn = load i32, ptr %.079.i11.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !528
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gq = load i32, ptr %.010.i10.i, align 4, !tbaa !528
  store i32 %i.gq, ptr %.079.i11.i, align 4, !tbaa !528
  store i32 %i.gn, ptr %.010.i10.i, align 4, !tbaa !528
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gt, %i.fu
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !250

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i155, %.lr.ph.i.i161, %middle.block332, %middle.block313, %middle.block292, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cc, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gv = udiv i64 %i.cd, %.1.i
  %i.gw = icmp ugt i64 %i.gv, 256
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ck
  %i.gx = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gx
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gy, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ck
  %i.gz = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gz
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.ha, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.hb = load i64, ptr %i.bu, align 8, !tbaa !643
  %i.hc = load ptr, ptr %6, align 8, !tbaa !644
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = add i64 %i.he, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = inttoptr i64 %i.hg to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ck
end_hunk_2
begin_hunk_3_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_:bb.a
  %wide.load160 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !528, !alias.scope !16401
  %i.cm = getelementptr i8, ptr %next.gep157, i64 16
  store <4 x i32> %wide.load159, ptr %next.gep157, align 4, !tbaa !528, !alias.scope !16402, !noalias !16401
  store <4 x i32> %wide.load160, ptr %i.cm, align 4, !tbaa !528, !alias.scope !16402, !noalias !16401
  store <4 x i32> zeroinitializer, ptr %next.gep158, align 4, !tbaa !528, !alias.scope !16401
  store <4 x i32> zeroinitializer, ptr %i.cl, align 4, !tbaa !528, !alias.scope !16401
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.cn, label %middle.block162, label %vector.body155, !llvm.loop !16389

middle.block162:                                  ; preds = %vector.body155
  %cmp.n163 = icmp eq i64 %i.ce, %n.vec154
  br i1 %cmp.n163, label %.loopexit.thread, label %.lr.ph.i47.preheader166

.lr.ph.i47.preheader166:                          ; preds = %vector.memcheck149, %.lr.ph.i47.preheader, %middle.block162
  %.010.i.ph = phi ptr [ %i.ca, %vector.memcheck149 ], [ %i.ca, %.lr.ph.i47.preheader ], [ %i.ci, %middle.block162 ]
  %.079.i.ph = phi ptr [ %i.cb, %vector.memcheck149 ], [ %i.cb, %.lr.ph.i47.preheader ], [ %i.cj, %middle.block162 ]
  br label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.preheader166, %.lr.ph.i47
  %.010.i = phi ptr [ %i.cq, %.lr.ph.i47 ], [ %.010.i.ph, %.lr.ph.i47.preheader166 ] ; 2 uses
  %.079.i = phi ptr [ %i.cp, %.lr.ph.i47 ], [ %.079.i.ph, %.lr.ph.i47.preheader166 ] ; 3 uses
  %i.co = load i32, ptr %.079.i, align 4, !tbaa !528
  store i32 %i.co, ptr %.010.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i, align 4, !tbaa !528
  %i.cp = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.010.i, i64 4
  %.not.i48 = icmp eq ptr %i.cp, %i.bx
  br i1 %.not.i48, label %.loopexit.thread, label %.lr.ph.i47, !llvm.loop !16390

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit: ; preds = %bb.a
  %i.cr = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive19insertion_sort_stepIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEEEENS0_9iter_sizeIT_E4typeESF_SH_SH_T0_(ptr noundef %i.a, i64 noundef %i.b, i64 noundef %2) ; 3 uses
  %i.cs = sub i64 0, %i.cr
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1
  %i.cv = tail call noundef ptr @_ZN5boost7movelib10rotate_gcdIPNS_9container4test24movable_and_copyable_intEEET_S6_S6_S6_(ptr noundef %i.ct, ptr noundef %i.a, ptr noundef %i.cu) ; 0 uses
  %i.cw = sub i64 %3, %i.cr
  %i.cx = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.ct, i64 noundef %i.b, i64 noundef %i.cr, i64 noundef %3, i64 noundef %i.cw) ; 0 uses
  br label %bb.f

.loopexit.thread:                                 ; preds = %.lr.ph.i47, %middle.block162, %bb.e
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.by
  %i.cz = sub i64 %3, %i.bv
  %i.da = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef nonnull %i.cy, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.cz) ; 0 uses
  br label %bb.f

.lr.ph.i50.preheader:                             ; preds = %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE11move_assignIS5_EEvT_m.exit
  %.pre = sub i64 0, %i.bv
  %i.db = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre
  %i.dc = sub i64 %3, %i.bv
  %i.dd = tail call noundef i64 @_ZN5boost7movelib15detail_adaptive27op_merge_left_step_multipleIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEENS0_9iter_sizeIT_E4typeESG_SI_SI_SI_SI_T0_T1_(ptr noundef %i.db, i64 noundef %i.b, i64 noundef %i.bv, i64 noundef %3, i64 noundef %i.dc) ; 0 uses
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  %i.de = load ptr, ptr %4, align 8, !tbaa !644   ; 6 uses
  %.idx85 = shl nuw nsw i64 %.sroa.speculated60, 2 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx85 ; 2 uses
  %i.dg = add nsw i64 %.idx85, -4                 ; 2 uses
  %i.dh = lshr exact i64 %i.dg, 2
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check125 = icmp ult i64 %i.dg, 28
  br i1 %min.iters.check125, label %.lr.ph.i50.preheader167, label %vector.memcheck126

vector.memcheck126:                               ; preds = %.lr.ph.i50.preheader
  %i.dj = getelementptr i8, ptr %0, i64 %.idx85
  %bound0127 = icmp ult ptr %0, %i.df
  %bound1128 = icmp ult ptr %i.de, %i.dj
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.i50.preheader167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck126
  %n.vec131 = and i64 %i.di, 9223372036854775800  ; 3 uses
  %i.dk = shl i64 %n.vec131, 2                    ; 2 uses
  %i.dl = getelementptr i8, ptr %0, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dk
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.dn = shl i64 %index133, 2                    ; 2 uses
  %next.gep134 = getelementptr i8, ptr %0, i64 %i.dn ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.de, i64 %i.dn ; 3 uses
  %i.do = getelementptr i8, ptr %next.gep135, i64 16 ; 2 uses
  %wide.load136 = load <4 x i32>, ptr %next.gep135, align 4, !tbaa !528, !alias.scope !16403
  %wide.load137 = load <4 x i32>, ptr %i.do, align 4, !tbaa !528, !alias.scope !16403
  %i.dp = getelementptr i8, ptr %next.gep134, i64 16
  store <4 x i32> %wide.load136, ptr %next.gep134, align 4, !tbaa !528, !alias.scope !16404, !noalias !16403
  store <4 x i32> %wide.load137, ptr %i.dp, align 4, !tbaa !528, !alias.scope !16404, !noalias !16403
  store <4 x i32> zeroinitializer, ptr %next.gep135, align 4, !tbaa !528, !alias.scope !16403
  store <4 x i32> zeroinitializer, ptr %i.do, align 4, !tbaa !528, !alias.scope !16403
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next138, %n.vec131
  br i1 %i.dq, label %middle.block139, label %vector.body132, !llvm.loop !16394

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.di, %n.vec131
  br i1 %cmp.n140, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50.preheader167

.lr.ph.i50.preheader167:                          ; preds = %vector.memcheck126, %.lr.ph.i50.preheader, %middle.block139
  %.010.i51.ph = phi ptr [ %0, %vector.memcheck126 ], [ %0, %.lr.ph.i50.preheader ], [ %i.dl, %middle.block139 ]
  %.079.i52.ph = phi ptr [ %i.de, %vector.memcheck126 ], [ %i.de, %.lr.ph.i50.preheader ], [ %i.dm, %middle.block139 ]
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %.lr.ph.i50.preheader167, %.lr.ph.i50
  %.010.i51 = phi ptr [ %i.dt, %.lr.ph.i50 ], [ %.010.i51.ph, %.lr.ph.i50.preheader167 ] ; 2 uses
  %.079.i52 = phi ptr [ %i.ds, %.lr.ph.i50 ], [ %.079.i52.ph, %.lr.ph.i50.preheader167 ] ; 3 uses
  %i.dr = load i32, ptr %.079.i52, align 4, !tbaa !528
  store i32 %i.dr, ptr %.010.i51, align 4, !tbaa !528
  store i32 0, ptr %.079.i52, align 4, !tbaa !528
  %i.ds = getelementptr inbounds nuw i8, ptr %.079.i52, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.010.i51, i64 4
  %.not.i53 = icmp eq ptr %i.ds, %i.df
  br i1 %.not.i53, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, label %.lr.ph.i50, !llvm.loop !16395

bb.f:                                             ; preds = %.loopexit.thread, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_right_step_onceIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_7swap_opEEEvT_NS0_9iter_sizeISF_E4typeESI_T0_T1_(ptr noundef %0, i64 noundef %i.b, i64 noundef %3)
  br label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55: ; preds = %.lr.ph.i50, %middle.block139, %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !643 ; 4 uses
  %.not.i56 = icmp eq i64 %i.dv, 0
  br i1 %.not.i56, label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55
  %i.dw = load ptr, ptr %4, align 8, !tbaa !644   ; 5 uses
  %xtraiter170 = and i64 %i.dv, 3                 ; 3 uses
  %i.dx = icmp ult i64 %i.dv, 4
  br i1 %i.dx, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter = and i64 %i.dv, -4
  br label %bb.h

.unr-lcssa:                                       ; preds = %bb.h
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br i1 %lcmp.mod171.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader.i.i
  %.07.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.er, %.unr-lcssa ]
  %lcmp.mod172 = icmp ne i64 %xtraiter170, 0
  tail call void @llvm.assume(i1 %lcmp.mod172)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %.07.i.i.epil = phi i64 [ %.07.i.i.epil.init, %.epil.preheader ], [ %i.eb, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i.epil
  store i32 -2147483648, ptr %i.dy, align 4, !tbaa !528
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ea = add i32 %i.dz, -1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eb = add nuw i64 %.07.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter170
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !16396

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  store i64 0, ptr %i.du, align 8, !tbaa !643
  br label %_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit

bb.h:                                             ; preds = %bb.h, %.preheader.i.i.new
  %.07.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.er, %bb.h ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.3, %bb.h ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  store i32 -2147483648, ptr %i.ec, align 4, !tbaa !528
  %i.ed = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ee = add i32 %i.ed, -1
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 -2147483648, ptr %i.eg, align 4, !tbaa !528
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ei = add i32 %i.eh, -1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 -2147483648, ptr %i.ek, align 4, !tbaa !528
  %i.el = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.em = add i32 %i.el, -1
  store i32 %i.em, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.07.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  store i32 -2147483648, ptr %i.eo, align 4, !tbaa !528
  %i.ep = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.er = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.h, !llvm.loop !238

_ZN5boost7movelib13adaptive_xbufINS_9container4test24movable_and_copyable_intEPS4_mE5clearEv.exit: ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit55, %.epilog-lcssa
  %i.es = shl i64 %3, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.es)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost7movelib15detail_adaptive32adaptive_sort_combine_all_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEEbT_RNS0_9iter_sizeISG_E4typeESG_SJ_SJ_SK_RT1_T0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = load i64, ptr %5, align 8, !tbaa !375    ; 16 uses
  %i.c = getelementptr [4 x i8], ptr %2, i64 %i.b ; 8 uses
  %i.d = sub i64 %3, %i.b                         ; 8 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !375
  %i.f = add i64 %i.e, %i.b                       ; 2 uses
  %i.g = icmp ugt i64 %i.d, %4                    ; 3 uses
  %.not139 = icmp ne i64 %i.b, 0
  %or.cond143.not190 = and i1 %.not139, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp ule i64 %i.b, %i.i
  %or.cond188 = select i1 %or.cond143.not190, i1 %i.j, i1 false ; 8 uses
  br i1 %or.cond188, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !643  ; 8 uses
  %.not.i = icmp ugt i64 %i.b, %i.l
  %i.m = load ptr, ptr %6, align 8, !tbaa !644    ; 18 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.idx.i = shl nsw i64 %i.b, 2                   ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %2, i64 %.idx.i ; 2 uses
  %i.o = add i64 %.idx.i, -4                      ; 2 uses
  %i.p = lshr exact i64 %i.o, 2
  %i.q = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.o, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.m, i64 %.idx.i
  %bound0 = icmp ult ptr %i.m, %i.n
  %bound1 = icmp ult ptr %2, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 9223372036854775800      ; 3 uses
  %i.s = shl i64 %n.vec, 2                        ; 2 uses
  %i.t = getelementptr i8, ptr %i.m, i64 %i.s
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.v ; 2 uses
  %next.gep249 = getelementptr i8, ptr %2, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep249, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep249, align 4, !tbaa !528, !alias.scope !16442
  %wide.load250 = load <4 x i32>, ptr %i.w, align 4, !tbaa !528, !alias.scope !16442
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !528, !alias.scope !16443, !noalias !16442
  store <4 x i32> %wide.load250, ptr %i.x, align 4, !tbaa !528, !alias.scope !16443, !noalias !16442
  store <4 x i32> zeroinitializer, ptr %next.gep249, align 4, !tbaa !528, !alias.scope !16442
  store <4 x i32> zeroinitializer, ptr %i.w, align 4, !tbaa !528, !alias.scope !16442
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !16408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %bb.c, %middle.block
  %.010.i.i.ph = phi ptr [ %i.m, %vector.memcheck ], [ %i.m, %bb.c ], [ %i.t, %middle.block ]
  %.079.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %bb.c ], [ %i.u, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.079.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.z = load i32, ptr %.079.i.i, align 4, !tbaa !528
  store i32 %i.z, ptr %.010.i.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i, align 4, !tbaa !528
  %i.aa = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %.not.i.i = icmp eq ptr %i.aa, %i.n
  br i1 %.not.i.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i, label %.lr.ph.i.i, !llvm.loop !16409

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i, %middle.block
  %.not1730.i = icmp eq i64 %i.l, %i.b
  br i1 %.not1730.i, label %.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  %i.ac = sub i64 %i.l, %i.b
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.031.i.prol = phi i64 [ %i.ad, %.lr.ph.i.prol ], [ %i.l, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ad = add i64 %.031.i.prol, -1                ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  store i32 -2147483648, ptr %i.ae, align 4, !tbaa !528
  %i.af = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ag = add i32 %i.af, -1
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !16410

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.031.i.unr = phi i64 [ %i.l, %.lr.ph.i.preheader ], [ %i.ad, %.lr.ph.i.prol ]
  %i.ah = sub i64 %i.b, %i.l
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.031.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.aj = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  store i32 -2147483648, ptr %i.ak, align 4, !tbaa !528
  %i.al = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.am = add i32 %i.al, -1
  store i32 %i.am, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.an = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.ao = getelementptr i8, ptr %i.an, i64 -8
  store i32 -2147483648, ptr %i.ao, align 4, !tbaa !528
  %i.ap = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ar = getelementptr [4 x i8], ptr %i.m, i64 %.031.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  store i32 -2147483648, ptr %i.as, align 4, !tbaa !528
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.av = add i64 %.031.i, -4                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.av
  store i32 -2147483648, ptr %i.aw, align 4, !tbaa !528
  %i.ax = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ay = add i32 %i.ax, -1
  store i32 %i.ay, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not17.i.3 = icmp eq i64 %i.av, %i.b
  br i1 %.not17.i.3, label %.thread, label %.lr.ph.i, !llvm.loop !246

bb.d:                                             ; preds = %bb.b
  %.idx27.i = shl i64 %i.l, 2                     ; 4 uses
  %i.az = getelementptr i8, ptr %2, i64 %.idx27.i ; 3 uses
  %.not8.i18.i = icmp eq i64 %i.l, 0
  br i1 %.not8.i18.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader

.lr.ph.i19.i.preheader:                           ; preds = %bb.d
  %i.ba = add i64 %.idx27.i, -4                   ; 2 uses
  %i.bb = lshr exact i64 %i.ba, 2
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check257 = icmp ult i64 %i.ba, 28
  br i1 %min.iters.check257, label %.lr.ph.i19.i.preheader395, label %vector.memcheck258

vector.memcheck258:                               ; preds = %.lr.ph.i19.i.preheader
  %i.bd = getelementptr i8, ptr %i.m, i64 %.idx27.i
  %bound0259 = icmp ult ptr %i.m, %i.az
  %bound1260 = icmp ult ptr %2, %i.bd
  %found.conflict261 = and i1 %bound0259, %bound1260
  br i1 %found.conflict261, label %.lr.ph.i19.i.preheader395, label %vector.ph262

vector.ph262:                                     ; preds = %vector.memcheck258
  %n.vec263 = and i64 %i.bc, 9223372036854775800  ; 3 uses
  %i.be = shl i64 %n.vec263, 2                    ; 2 uses
  %i.bf = getelementptr i8, ptr %i.m, i64 %i.be   ; 2 uses
  %i.bg = getelementptr i8, ptr %2, i64 %i.be
  br label %vector.body264

vector.body264:                                   ; preds = %vector.body264, %vector.ph262
  %index265 = phi i64 [ 0, %vector.ph262 ], [ %index.next270, %vector.body264 ] ; 2 uses
  %i.bh = shl i64 %index265, 2                    ; 2 uses
  %next.gep266 = getelementptr i8, ptr %i.m, i64 %i.bh ; 2 uses
  %next.gep267 = getelementptr i8, ptr %2, i64 %i.bh ; 3 uses
  %i.bi = getelementptr i8, ptr %next.gep267, i64 16 ; 2 uses
  %wide.load268 = load <4 x i32>, ptr %next.gep267, align 4, !tbaa !528, !alias.scope !16444
  %wide.load269 = load <4 x i32>, ptr %i.bi, align 4, !tbaa !528, !alias.scope !16444
  %i.bj = getelementptr i8, ptr %next.gep266, i64 16
  store <4 x i32> %wide.load268, ptr %next.gep266, align 4, !tbaa !528, !alias.scope !16445, !noalias !16444
  store <4 x i32> %wide.load269, ptr %i.bj, align 4, !tbaa !528, !alias.scope !16445, !noalias !16444
  store <4 x i32> zeroinitializer, ptr %next.gep267, align 4, !tbaa !528, !alias.scope !16444
  store <4 x i32> zeroinitializer, ptr %i.bi, align 4, !tbaa !528, !alias.scope !16444
  %index.next270 = add nuw i64 %index265, 8       ; 2 uses
  %i.bk = icmp eq i64 %index.next270, %n.vec263
  br i1 %i.bk, label %middle.block271, label %vector.body264, !llvm.loop !16414

middle.block271:                                  ; preds = %vector.body264
  %cmp.n272 = icmp eq i64 %i.bc, %n.vec263
  br i1 %cmp.n272, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i.preheader395

.lr.ph.i19.i.preheader395:                        ; preds = %vector.memcheck258, %.lr.ph.i19.i.preheader, %middle.block271
  %.010.i20.i.ph = phi ptr [ %i.m, %vector.memcheck258 ], [ %i.m, %.lr.ph.i19.i.preheader ], [ %i.bf, %middle.block271 ]
  %.079.i21.i.ph = phi ptr [ %2, %vector.memcheck258 ], [ %2, %.lr.ph.i19.i.preheader ], [ %i.bg, %middle.block271 ]
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader395, %.lr.ph.i19.i
  %.010.i20.i = phi ptr [ %i.bn, %.lr.ph.i19.i ], [ %.010.i20.i.ph, %.lr.ph.i19.i.preheader395 ] ; 2 uses
  %.079.i21.i = phi ptr [ %i.bm, %.lr.ph.i19.i ], [ %.079.i21.i.ph, %.lr.ph.i19.i.preheader395 ] ; 3 uses
  %i.bl = load i32, ptr %.079.i21.i, align 4, !tbaa !528
  store i32 %i.bl, ptr %.010.i20.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i21.i, align 4, !tbaa !528
  %i.bm = getelementptr inbounds nuw i8, ptr %.079.i21.i, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i20.i, i64 4 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.bm, %i.az
  br i1 %.not.i22.i, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, label %.lr.ph.i19.i, !llvm.loop !16415

_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i: ; preds = %.lr.ph.i19.i, %middle.block271, %bb.d
  %.0.lcssa.i23.i = phi ptr [ %i.m, %bb.d ], [ %i.bf, %middle.block271 ], [ %i.bn, %.lr.ph.i19.i ]
  %.idx28.i = shl nsw i64 %i.b, 2                 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %.idx28.i
  %.not10.i.i = icmp eq i64 %.idx27.i, %.idx28.i
  br i1 %.not10.i.i, label %.thread, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %.lr.ph.i25.i
  %.012.i.i = phi ptr [ %i.bs, %.lr.ph.i25.i ], [ %i.az, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 3 uses
  %.0911.i.i = phi ptr [ %i.bt, %.lr.ph.i25.i ], [ %.0.lcssa.i23.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i ] ; 2 uses
  %i.bp = load i32, ptr %.012.i.i, align 4, !tbaa !528
  store i32 %i.bp, ptr %.0911.i.i, align 4, !tbaa !528
  store i32 0, ptr %.012.i.i, align 4, !tbaa !528
  %i.bq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.br = add i32 %i.bq, 1
  store i32 %i.br, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 4
  %.not.i26.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not.i26.i, label %.thread, label %.lr.ph.i25.i, !llvm.loop !247

.thread:                                          ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph.i25.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit24.i, %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.i
  store i64 %i.b, ptr %i.k, align 8, !tbaa !643
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.thread.thread:                                   ; preds = %bb.a
  br i1 %i.g, label %.lr.ph, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit.sink.split

.lr.ph:                                           ; preds = %.thread.thread, %.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bv = shl i64 %3, 2                           ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.bv
  %scevgep297.a = getelementptr i8, ptr %2, i64 %i.bv
  %i.bw = shl i64 %3, 2
  %i.bx = add i64 %i.bw, -4
  %i.by = shl i64 %3, 2
  %invariant.op = sub i64 -4, %i.by
  br label %bb.e

._crit_edge:                                      ; preds = %bb.t
  %i.bz = select i1 %.1, i1 %i.ck, i1 false       ; 2 uses
  %spec.select = select i1 %.1, i64 %.1.i, i64 0  ; 2 uses
  store i64 %spec.select, ptr %5, align 8, !tbaa !375
  %i.ca = sub i64 %i.f, %spec.select
  store i64 %i.ca, ptr %1, align 8, !tbaa !375
  br i1 %or.cond188, label %bb.u, label %_ZN5boost4moveIPNS_9container4test24movable_and_copyable_intES4_EET0_T_S6_S5_.exit

bb.e:                                             ; preds = %.lr.ph, %bb.t
  %.0206 = phi i64 [ %4, %.lr.ph ], [ %i.cd, %bb.t ] ; 5 uses
  %.0130205 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %bb.t ] ; 3 uses
  %.0131204 = phi i1 [ true, %.lr.ph ], [ %.1, %bb.t ]
  %.0132203 = phi i64 [ 0, %.lr.ph ], [ %.1.i, %bb.t ]
  %.0133202 = phi i64 [ %4, %.lr.ph ], [ %spec.select15.i, %bb.t ] ; 12 uses
  %.0134201 = phi i1 [ true, %.lr.ph ], [ %i.ck, %bb.t ]
  %i.cb = load i64, ptr %5, align 8, !tbaa !375   ; 2 uses
  %i.cc = load i64, ptr %1, align 8, !tbaa !375   ; 4 uses
  %i.cd = shl i64 %.0206, 1                       ; 6 uses
  %.not.i144 = icmp eq i64 %i.cb, 0
  br i1 %.not.i144, label %bb.f, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

bb.f:                                             ; preds = %bb.e
  %i.ce = lshr i64 %i.cc, 1                       ; 3 uses
  %i.cf = sub nuw i64 %i.cc, %i.ce                ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 3
  br i1 %i.cg, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.ch = udiv i64 %i.cd, %i.ce
  %.not193 = icmp ult i64 %i.cf, %i.ch
  br i1 %.not193, label %.critedge.i, label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

.critedge.i:                                      ; preds = %bb.f, %bb.g
  %i.ci = udiv i64 %i.cd, %i.cc
  br label %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit

_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit: ; preds = %bb.e, %bb.g, %.critedge.i
  %.1 = phi i1 [ true, %bb.g ], [ false, %.critedge.i ], [ true, %bb.e ] ; 10 uses
  %.1.i = phi i64 [ %i.ce, %bb.g ], [ %i.ci, %.critedge.i ], [ %i.cb, %bb.e ] ; 11 uses
  %i.cj = and i64 %.0130205, 1
  %i.ck = icmp eq i64 %i.cj, 0                    ; 9 uses
  %i.cl = urem i64 %i.d, %i.cd                    ; 2 uses
  %.not.i145 = icmp ugt i64 %i.cl, %.0206
  %i.cm = select i1 %.not.i145, i64 0, i64 %i.cl  ; 5 uses
  %spec.select15.i = sub i64 %i.d, %i.cm          ; 5 uses
  %i.cn = icmp ne i64 %.0130205, 0
  %or.cond = and i1 %i.cn, %.0131204
  %or.cond3 = select i1 %or.cond, i1 %.0134201, i1 false
  br i1 %or.cond3, label %bb.h, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.h:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not = xor i1 %i.ck, true
  %or.cond5 = and i1 %.1, %.not
  br i1 %or.cond5, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = sub i64 0, %.0132203
  %i.cp = getelementptr [4 x i8], ptr %i.c, i64 %i.co ; 5 uses
  %.not8.i.i146 = icmp eq i64 %.0133202, 0        ; 2 uses
  br i1 %or.cond188, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.j
  %i.cq = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 5 uses
  %.idx13.i = shl i64 %.0133202, 2                ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cp, i64 %.idx13.i ; 5 uses
  %i.cs = add i64 %.idx13.i, -4                   ; 2 uses
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check322 = icmp ult i64 %i.cs, 28
  br i1 %min.iters.check322, label %.lr.ph.i.i148.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.i.preheader.i
  %bound0318 = icmp ult ptr %i.c, %i.cr
  %bound1319 = icmp ult ptr %i.cp, %i.cq
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %.lr.ph.i.i148.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %vector.memcheck317
  %n.vec324 = and i64 %i.cu, 9223372036854775800  ; 3 uses
  %i.cv = mul i64 %n.vec324, -4                   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.cr, i64 %i.cv
  br label %vector.body325

vector.body325:                                   ; preds = %vector.body325, %vector.ph323
  %index326 = phi i64 [ 0, %vector.ph323 ], [ %index.next331, %vector.body325 ] ; 2 uses
  %i.cy = mul i64 %index326, -4                   ; 2 uses
  %next.gep327.a = getelementptr i8, ptr %i.cq, i64 %i.cy ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.cr, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep328, i64 -16 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %next.gep328, i64 -32 ; 2 uses
  %wide.load329.a = load <4 x i32>, ptr %i.cz, align 4, !tbaa !528, !alias.scope !16446
  %wide.load330 = load <4 x i32>, ptr %i.da, align 4, !tbaa !528, !alias.scope !16446
  %i.db = getelementptr inbounds i8, ptr %next.gep327.a, i64 -16
  %i.dc = getelementptr inbounds i8, ptr %next.gep327.a, i64 -32
  store <4 x i32> %wide.load329.a, ptr %i.db, align 4, !tbaa !528, !alias.scope !16447, !noalias !16446
  store <4 x i32> %wide.load330, ptr %i.dc, align 4, !tbaa !528, !alias.scope !16447, !noalias !16446
  store <4 x i32> zeroinitializer, ptr %i.cz, align 4, !tbaa !528, !alias.scope !16446
  store <4 x i32> zeroinitializer, ptr %i.da, align 4, !tbaa !528, !alias.scope !16446
  %index.next331 = add nuw i64 %index326, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next331, %n.vec324
  br i1 %i.dd, label %middle.block332, label %vector.body325, !llvm.loop !16419

middle.block332:                                  ; preds = %vector.body325
  %cmp.n333 = icmp eq i64 %i.cu, %n.vec324
  br i1 %cmp.n333, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %vector.memcheck317, %.lr.ph.i.preheader.i, %middle.block332
  %.010.i.i149.ph = phi ptr [ %i.cq, %vector.memcheck317 ], [ %i.cq, %.lr.ph.i.preheader.i ], [ %i.cw, %middle.block332 ]
  %.079.i.i150.ph = phi ptr [ %i.cr, %vector.memcheck317 ], [ %i.cr, %.lr.ph.i.preheader.i ], [ %i.cx, %middle.block332 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.df, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader ]
  %.079.i.i150 = phi ptr [ %i.de, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader ]
  %i.de = getelementptr inbounds i8, ptr %.079.i.i150, i64 -4 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %.010.i.i149, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !528
  store i32 %i.dg, ptr %i.df, align 4, !tbaa !528
  store i32 0, ptr %i.de, align 4, !tbaa !528
  %.not.i.i151 = icmp eq ptr %i.cp, %i.de
  br i1 %.not.i.i151, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i148, !llvm.loop !16420

bb.k:                                             ; preds = %bb.i
  br i1 %.not8.i.i146, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.preheader.i

.lr.ph.i10.preheader.i:                           ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0133202 ; 2 uses
  %.idx.i147 = shl i64 %.0133202, 2               ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.idx.i147 ; 2 uses
  %i.dj = add i64 %.idx.i147, -4                  ; 2 uses
  %i.dk = and i64 %i.dj, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.dk, 0
  br i1 %lcmp.mod399.not.not, label %.lr.ph.i10.i.prol, label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol:                                ; preds = %.lr.ph.i10.preheader.i
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 -4 ; 4 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 -4 ; 3 uses
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !528
  store i32 0, ptr %i.dl, align 4, !tbaa !528
  %i.do = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !528
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !528
  store i32 %i.dn, ptr %i.dm, align 4, !tbaa !528
  %i.dr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  br label %.lr.ph.i10.i.prol.loopexit

.lr.ph.i10.i.prol.loopexit:                       ; preds = %.lr.ph.i10.i.prol, %.lr.ph.i10.preheader.i
  %.08.i.i.unr = phi ptr [ %i.dh, %.lr.ph.i10.preheader.i ], [ %i.dm, %.lr.ph.i10.i.prol ]
  %.057.i.i.unr = phi ptr [ %i.di, %.lr.ph.i10.preheader.i ], [ %i.dl, %.lr.ph.i10.i.prol ]
  %i.dt = icmp eq i64 %i.dj, 0
  br i1 %i.dt, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i
  %.08.i.i = phi ptr [ %i.ed, %.lr.ph.i10.i ], [ %.08.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %.057.i.i = phi ptr [ %i.ec, %.lr.ph.i10.i ], [ %.057.i.i.unr, %.lr.ph.i10.i.prol.loopexit ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.057.i.i, i64 -4 ; 3 uses
  %i.dv = getelementptr inbounds i8, ptr %.08.i.i, i64 -4 ; 2 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !528
  store i32 0, ptr %i.du, align 4, !tbaa !528
  %i.dx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.dz = load i32, ptr %i.dv, align 4, !tbaa !528
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !528
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !528
  %i.ea = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ec = getelementptr inbounds i8, ptr %.057.i.i, i64 -8 ; 5 uses
  %i.ed = getelementptr inbounds i8, ptr %.08.i.i, i64 -8 ; 3 uses
  %i.ee = load i32, ptr %i.ec, align 4, !tbaa !528
  store i32 0, ptr %i.ec, align 4, !tbaa !528
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.eh = load i32, ptr %i.ed, align 4, !tbaa !528
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !528
  store i32 %i.ee, ptr %i.ed, align 4, !tbaa !528
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i11.i.1 = icmp eq ptr %i.cp, %i.ec
  br i1 %.not.i11.i.1, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i, !llvm.loop !253

bb.l:                                             ; preds = %bb.h
  %i.ek = getelementptr [4 x i8], ptr %i.c, i64 %.0133202 ; 14 uses
  %i.el = sub i64 0, %.1.i
  %i.em = getelementptr [4 x i8], ptr %i.ek, i64 %i.el ; 7 uses
  %i.en = icmp ugt i64 %.0133202, %spec.select15.i
  br i1 %i.en, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eo = sub nuw i64 %.0133202, %spec.select15.i ; 2 uses
  %i.ep = sub i64 0, %i.eo
  %i.eq = getelementptr [4 x i8], ptr %i.em, i64 %i.ep ; 4 uses
  %.idx13.i160 = shl i64 %i.eo, 2
  %i.er = getelementptr i8, ptr %i.eq, i64 %.idx13.i160 ; 6 uses
  br i1 %or.cond188, label %.lr.ph.i.i161.preheader, label %.lr.ph.i10.i155

.lr.ph.i.i161.preheader:                          ; preds = %bb.m
  %i.es = add i64 %i.cm, %.0133202
  %i.et = add i64 %i.es, %i.b
  %i.eu = shl i64 %i.et, 2
  %.reass = add i64 %i.eu, %invariant.op          ; 2 uses
  %i.ev = lshr exact i64 %.reass, 2
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 2 uses
  %min.iters.check282 = icmp ult i64 %.reass, 28
  br i1 %min.iters.check282, label %.lr.ph.i.i161.preheader388, label %vector.memcheck275

vector.memcheck275:                               ; preds = %.lr.ph.i.i161.preheader
  %i.ex = mul i64 %i.cm, -4
  %scevgep277 = getelementptr i8, ptr %scevgep, i64 %i.ex
  %bound0278 = icmp ult ptr %scevgep277, %i.er
  %bound1279 = icmp ult ptr %i.eq, %i.ek
  %found.conflict280 = and i1 %bound0278, %bound1279
  br i1 %found.conflict280, label %.lr.ph.i.i161.preheader388, label %vector.ph283

vector.ph283:                                     ; preds = %vector.memcheck275
  %n.vec284 = and i64 %i.ew, 9223372036854775800  ; 3 uses
  %i.ey = mul i64 %n.vec284, -4                   ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ek, i64 %i.ey
  %i.fa = getelementptr i8, ptr %i.er, i64 %i.ey
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next291, %vector.body285 ] ; 2 uses
  %i.fb = mul i64 %index286, -4                   ; 2 uses
  %next.gep287.a = getelementptr i8, ptr %i.ek, i64 %i.fb ; 2 uses
  %next.gep288 = getelementptr i8, ptr %i.er, i64 %i.fb ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %next.gep288, i64 -16 ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %next.gep288, i64 -32 ; 2 uses
  %wide.load289.a = load <4 x i32>, ptr %i.fc, align 4, !tbaa !528, !alias.scope !16448
  %wide.load290 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !528, !alias.scope !16448
  %i.fe = getelementptr inbounds i8, ptr %next.gep287.a, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %next.gep287.a, i64 -32
  store <4 x i32> %wide.load289.a, ptr %i.fe, align 4, !tbaa !528, !alias.scope !16449, !noalias !16448
  store <4 x i32> %wide.load290, ptr %i.ff, align 4, !tbaa !528, !alias.scope !16449, !noalias !16448
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !528, !alias.scope !16448
  store <4 x i32> zeroinitializer, ptr %i.fd, align 4, !tbaa !528, !alias.scope !16448
  %index.next291 = add nuw i64 %index286, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next291, %n.vec284
  br i1 %i.fg, label %middle.block292, label %vector.body285, !llvm.loop !16424

middle.block292:                                  ; preds = %vector.body285
  %cmp.n293 = icmp eq i64 %i.ew, %n.vec284
  br i1 %cmp.n293, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161.preheader388

.lr.ph.i.i161.preheader388:                       ; preds = %vector.memcheck275, %.lr.ph.i.i161.preheader, %middle.block292
  %.010.i.i162.ph = phi ptr [ %i.ek, %vector.memcheck275 ], [ %i.ek, %.lr.ph.i.i161.preheader ], [ %i.ez, %middle.block292 ]
  %.079.i.i163.ph = phi ptr [ %i.er, %vector.memcheck275 ], [ %i.er, %.lr.ph.i.i161.preheader ], [ %i.fa, %middle.block292 ]
  br label %.lr.ph.i.i161

.lr.ph.i.i161:                                    ; preds = %.lr.ph.i.i161.preheader388, %.lr.ph.i.i161
  %.010.i.i162 = phi ptr [ %i.fi, %.lr.ph.i.i161 ], [ %.010.i.i162.ph, %.lr.ph.i.i161.preheader388 ]
  %.079.i.i163 = phi ptr [ %i.fh, %.lr.ph.i.i161 ], [ %.079.i.i163.ph, %.lr.ph.i.i161.preheader388 ]
  %i.fh = getelementptr inbounds i8, ptr %.079.i.i163, i64 -4 ; 4 uses
  %i.fi = getelementptr inbounds i8, ptr %.010.i.i162, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fh, align 4, !tbaa !528
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !528
  store i32 0, ptr %i.fh, align 4, !tbaa !528
  %.not.i.i164 = icmp eq ptr %i.eq, %i.fh
  br i1 %.not.i.i164, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i161, !llvm.loop !16425

.lr.ph.i10.i155:                                  ; preds = %bb.m, %.lr.ph.i10.i155
  %.08.i.i156 = phi ptr [ %i.fl, %.lr.ph.i10.i155 ], [ %i.ek, %bb.m ]
  %.057.i.i157 = phi ptr [ %i.fk, %.lr.ph.i10.i155 ], [ %i.er, %bb.m ]
  %i.fk = getelementptr inbounds i8, ptr %.057.i.i157, i64 -4 ; 5 uses
  %i.fl = getelementptr inbounds i8, ptr %.08.i.i156, i64 -4 ; 3 uses
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !528
  store i32 0, ptr %i.fk, align 4, !tbaa !528
  %i.fn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fp = load i32, ptr %i.fl, align 4, !tbaa !528
  store i32 %i.fp, ptr %i.fk, align 4, !tbaa !528
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !528
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.fr = add i32 %i.fq, -1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %.not.i11.i158 = icmp eq ptr %i.eq, %i.fk
  br i1 %.not.i11.i158, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i10.i155, !llvm.loop !253

bb.n:                                             ; preds = %bb.l
  %i.fs = icmp ult i64 %.0133202, %spec.select15.i
  br i1 %i.fs, label %bb.o, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit

bb.o:                                             ; preds = %bb.n
  %i.ft = sub nuw i64 %spec.select15.i, %.0133202
  %.idx14.i = shl i64 %i.ft, 2
  %i.fu = getelementptr i8, ptr %i.ek, i64 %.idx14.i ; 3 uses
  br i1 %or.cond188, label %.lr.ph.i.i168.preheader, label %.lr.ph.i9.i

.lr.ph.i.i168.preheader:                          ; preds = %bb.o
  %i.fv = add i64 %i.cm, %.0133202
  %i.fw = add i64 %i.fv, %i.b
  %i.fx = shl i64 %i.fw, 2
  %i.fy = sub i64 %i.bx, %i.fx                    ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check303 = icmp ult i64 %i.fy, 28
  br i1 %min.iters.check303, label %.lr.ph.i.i168.preheader390, label %vector.memcheck296

vector.memcheck296:                               ; preds = %.lr.ph.i.i168.preheader
  %i.gb = add i64 %i.cm, %.1.i
  %i.gc = mul i64 %i.gb, -4
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.gc
  %bound0299 = icmp ult ptr %i.em, %i.fu
  %bound1300 = icmp ult ptr %i.ek, %scevgep298
  %found.conflict301 = and i1 %bound0299, %bound1300
  br i1 %found.conflict301, label %.lr.ph.i.i168.preheader390, label %vector.ph304

vector.ph304:                                     ; preds = %vector.memcheck296
  %n.vec305 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gd = shl i64 %n.vec305, 2                    ; 2 uses
  %i.ge = getelementptr i8, ptr %i.em, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ek, i64 %i.gd
  br label %vector.body306

vector.body306:                                   ; preds = %vector.body306, %vector.ph304
  %index307 = phi i64 [ 0, %vector.ph304 ], [ %index.next312, %vector.body306 ] ; 2 uses
  %i.gg = shl i64 %index307, 2                    ; 2 uses
  %next.gep308.a = getelementptr i8, ptr %i.em, i64 %i.gg ; 2 uses
  %next.gep309 = getelementptr i8, ptr %i.ek, i64 %i.gg ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep309, i64 16 ; 2 uses
  %wide.load310.a = load <4 x i32>, ptr %next.gep309, align 4, !tbaa !528, !alias.scope !16450
  %wide.load311 = load <4 x i32>, ptr %i.gh, align 4, !tbaa !528, !alias.scope !16450
  %i.gi = getelementptr i8, ptr %next.gep308.a, i64 16
  store <4 x i32> %wide.load310.a, ptr %next.gep308.a, align 4, !tbaa !528, !alias.scope !16451, !noalias !16450
  store <4 x i32> %wide.load311, ptr %i.gi, align 4, !tbaa !528, !alias.scope !16451, !noalias !16450
  store <4 x i32> zeroinitializer, ptr %next.gep309, align 4, !tbaa !528, !alias.scope !16450
  store <4 x i32> zeroinitializer, ptr %i.gh, align 4, !tbaa !528, !alias.scope !16450
  %index.next312 = add nuw i64 %index307, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next312, %n.vec305
  br i1 %i.gj, label %middle.block313, label %vector.body306, !llvm.loop !16429

middle.block313:                                  ; preds = %vector.body306
  %cmp.n314 = icmp eq i64 %i.ga, %n.vec305
  br i1 %cmp.n314, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168.preheader390

.lr.ph.i.i168.preheader390:                       ; preds = %vector.memcheck296, %.lr.ph.i.i168.preheader, %middle.block313
  %.010.i.i169.ph = phi ptr [ %i.em, %vector.memcheck296 ], [ %i.em, %.lr.ph.i.i168.preheader ], [ %i.ge, %middle.block313 ]
  %.079.i.i170.ph = phi ptr [ %i.ek, %vector.memcheck296 ], [ %i.ek, %.lr.ph.i.i168.preheader ], [ %i.gf, %middle.block313 ]
  br label %.lr.ph.i.i168

.lr.ph.i.i168:                                    ; preds = %.lr.ph.i.i168.preheader390, %.lr.ph.i.i168
  %.010.i.i169 = phi ptr [ %i.gm, %.lr.ph.i.i168 ], [ %.010.i.i169.ph, %.lr.ph.i.i168.preheader390 ] ; 2 uses
  %.079.i.i170 = phi ptr [ %i.gl, %.lr.ph.i.i168 ], [ %.079.i.i170.ph, %.lr.ph.i.i168.preheader390 ] ; 3 uses
  %i.gk = load i32, ptr %.079.i.i170, align 4, !tbaa !528
  store i32 %i.gk, ptr %.010.i.i169, align 4, !tbaa !528
  store i32 0, ptr %.079.i.i170, align 4, !tbaa !528
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.gl, %i.fu
  br i1 %.not.i.i171, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i.i168, !llvm.loop !16430

.lr.ph.i9.i:                                      ; preds = %bb.o, %.lr.ph.i9.i
  %.010.i10.i = phi ptr [ %i.gu, %.lr.ph.i9.i ], [ %i.em, %bb.o ] ; 3 uses
  %.079.i11.i = phi ptr [ %i.gt, %.lr.ph.i9.i ], [ %i.ek, %bb.o ] ; 4 uses
  %i.gn = load i32, ptr %.079.i11.i, align 4, !tbaa !528
  store i32 0, ptr %.079.i11.i, align 4, !tbaa !528
  %i.go = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gp = add i32 %i.go, 1
  store i32 %i.gp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gq = load i32, ptr %.010.i10.i, align 4, !tbaa !528
  store i32 %i.gq, ptr %.079.i11.i, align 4, !tbaa !528
  store i32 %i.gn, ptr %.010.i10.i, align 4, !tbaa !528
  %i.gr = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gs = add i32 %i.gr, -1
  store i32 %i.gs, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !367
  %i.gt = getelementptr inbounds nuw i8, ptr %.079.i11.i, i64 4 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.010.i10.i, i64 4
  %.not.i12.i = icmp eq ptr %i.gt, %i.fu
  br i1 %.not.i12.i, label %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit, label %.lr.ph.i9.i, !llvm.loop !250

_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit: ; preds = %.lr.ph.i10.i.prol.loopexit, %.lr.ph.i10.i, %.lr.ph.i.i148, %.lr.ph.i9.i, %.lr.ph.i.i168, %.lr.ph.i10.i155, %.lr.ph.i.i161, %middle.block332, %middle.block313, %middle.block292, %bb.k, %bb.j, %bb.n, %_ZN5boost7movelib15detail_adaptive18lblock_for_combineImEET_S3_S3_S3_Rb.exit
  %.not140 = icmp eq i64 %i.cc, 0
  br i1 %.not140, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.gv = udiv i64 %i.cd, %.1.i
  %i.gw = icmp ugt i64 %i.gv, 256
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not6 = xor i1 %.1, true
  %or.cond8 = select i1 %.not6, i1 true, i1 %i.ck
  %i.gx = sub i64 0, %.1.i
  %.idx142 = select i1 %or.cond8, i64 0, i64 %i.gx
  %i.gy = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx142
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEES6_SD_NS0_13adaptive_xbufIS5_S6_mEEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_bbRT3_T2_b(ptr noundef %0, ptr noundef %i.gy, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %.not9 = xor i1 %.1, true
  %or.cond11 = select i1 %.not9, i1 true, i1 %i.ck
  %i.gz = sub i64 0, %.1.i
  %.idx141 = select i1 %or.cond11, i64 0, i64 %i.gz
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.c, i64 %.idx141
  call void @_ZN5boost7movelib15detail_adaptive28adaptive_sort_combine_blocksIPhNS1_4lessEPNS_9container4test24movable_and_copyable_intENS5_3dtl23flat_tree_value_compareINS6_16less_transparentES7_NS_11move_detail8identityIS7_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_bbRT3_T2_b(ptr noundef nonnull %i.a, ptr noundef %i.ha, i64 noundef %i.d, i64 noundef %.0206, i64 noundef %.1.i, i1 noundef zeroext %.1, i1 noundef zeroext %or.cond188, ptr noundef nonnull align 8 dereferenceable(24) %6, i1 noundef zeroext %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.t

bb.s:                                             ; preds = %_ZN5boost7movelib15detail_adaptive18move_data_backwardIPNS_9container4test24movable_and_copyable_intEEEvT_NS0_9iter_sizeIS7_E4typeES7_b.exit
  %i.hb = load i64, ptr %i.bu, align 8, !tbaa !643
  %i.hc = load ptr, ptr %6, align 8, !tbaa !644
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.hb
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = add i64 %i.he, 7
  %i.hg = and i64 %i.hf, -8
  %i.hh = inttoptr i64 %i.hg to ptr
  %.not12 = xor i1 %.1, true
  %or.cond14 = select i1 %.not12, i1 true, i1 %i.ck
end_hunk_3
