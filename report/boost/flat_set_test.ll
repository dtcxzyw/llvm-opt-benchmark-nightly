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
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_:bb.a
  %i.hw = icmp slt i32 %i.hu, %i.hv
  br i1 %i.hw, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hx = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i144 = icmp eq ptr %i.hx, %.0222.lcssa
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

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
  %wide.load452 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !367
  %wide.load453 = load <4 x i32>, ptr %i.in, align 4, !tbaa !367
  %i.io = getelementptr i8, ptr %next.gep450, i64 16
  store <4 x i32> %wide.load452, ptr %next.gep450, align 4, !tbaa !367
  store <4 x i32> %wide.load453, ptr %i.io, align 4, !tbaa !367
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.ip, label %middle.block455, label %vector.body448, !llvm.loop !5074

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
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !367
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5075

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
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !367
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
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
  %wide.load471 = load <4 x i32>, ptr %next.gep470, align 4, !tbaa !367
  %wide.load472 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !367
  %i.jn = getelementptr i8, ptr %next.gep469, i64 16
  store <4 x i32> %wide.load471, ptr %next.gep469, align 4, !tbaa !367
  store <4 x i32> %wide.load472, ptr %i.jn, align 4, !tbaa !367
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.jo, label %middle.block474, label %vector.body467, !llvm.loop !5076

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
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5077

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
  %wide.load435 = load <4 x i32>, ptr %next.gep434, align 4, !tbaa !367
  %wide.load436 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !367
  %i.kf = getelementptr i8, ptr %next.gep433, i64 16
  store <4 x i32> %wide.load435, ptr %next.gep433, align 4, !tbaa !367
  store <4 x i32> %wide.load436, ptr %i.kf, align 4, !tbaa !367
  %index.next437 = add nuw i64 %index432, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.kg, label %middle.block438, label %vector.body431, !llvm.loop !5078

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
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !367
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5079

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
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
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
  %wide.load488 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !367
  %wide.load489 = load <4 x i32>, ptr %i.la, align 4, !tbaa !367
  %i.lb = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %wide.load488, ptr %next.gep486, align 4, !tbaa !367
  store <4 x i32> %wide.load489, ptr %i.lb, align 4, !tbaa !367
  %index.next490 = add nuw i64 %index485, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.lc, label %middle.block491, label %vector.body484, !llvm.loop !5080

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
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !367
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5081

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block491, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEES3_SC_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISG_E4typeESJ_SJ_SJ_SJ_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
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
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !100

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
  %wide.load524 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !367, !noalias !5252
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !367, !noalias !5252
  %i.ib = getelementptr inbounds i8, ptr %next.gep522, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep522, i64 -32
  store <4 x i32> %wide.load524, ptr %i.ib, align 4, !tbaa !367, !noalias !5252
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !367, !noalias !5252
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.id, label %middle.block527, label %vector.body520, !llvm.loop !5218

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
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !367, !noalias !5252
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !367, !noalias !5252
  %.not.i.i91 = icmp eq ptr %i.if, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89, !llvm.loop !5219

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
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !367, !noalias !5253 ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !367, !noalias !5253 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.in, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.im, ptr %i.io, align 4, !tbaa !367, !noalias !5253
  %i.iq = icmp eq ptr %i.ip, %i.he
  br i1 %i.iq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !76

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.il, ptr %i.io, align 4, !tbaa !367, !noalias !5253
  %i.ir = icmp eq ptr %i.ik, %.sroa.0220.5
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.io, %bb.ah ], [ %i.io, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.he, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.ik, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !571, !noalias !5253
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
  %wide.load543 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !367, !noalias !5254
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !367, !noalias !5254
  %i.je = getelementptr inbounds i8, ptr %next.gep541, i64 -16
  %i.jf = getelementptr inbounds i8, ptr %next.gep541, i64 -32
  store <4 x i32> %wide.load543, ptr %i.je, align 4, !tbaa !367, !noalias !5254
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !367, !noalias !5254
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.jg, label %middle.block546, label %vector.body539, !llvm.loop !5226

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
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !367, !noalias !5254
  %i.jk = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !367, !noalias !5254
  %.not.i.i97 = icmp eq ptr %i.ji, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95, !llvm.loop !5227

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
  %wide.load507 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !367, !noalias !5255
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !367, !noalias !5255
  %i.jz = getelementptr inbounds i8, ptr %next.gep505, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep505, i64 -32
  store <4 x i32> %wide.load507, ptr %i.jz, align 4, !tbaa !367, !noalias !5255
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !367, !noalias !5255
  %index.next509 = add nuw i64 %index504, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.kb, label %middle.block510, label %vector.body503, !llvm.loop !5232

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
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !367, !noalias !5255
  %i.kf = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !367, !noalias !5255
  %.not.i.i102 = icmp eq ptr %i.kd, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !5233

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block510, %middle.block546, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kg = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.hb, %middle.block546 ], [ %i.jl, %middle.block510 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.jl, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block546 ], [ %.2, %middle.block510 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block546 ], [ %.sroa.0210.0330, %middle.block510 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block546 ], [ %.sroa.0260.0320, %middle.block510 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block546 ], [ %.0284317, %middle.block510 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block546 ], [ %.063314, %middle.block510 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kh = phi ptr [ %i.he, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.he, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.he, %middle.block546 ], [ %i.jm, %middle.block510 ], [ %i.he, %.lr.ph.i.i95 ], [ %i.jm, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iz, %middle.block546 ], [ %i.ju, %middle.block510 ], [ %i.jk, %.lr.ph.i.i95 ], [ %i.kf, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !571
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !571
  store ptr %i.kg, ptr %36, align 8, !tbaa !571
  store ptr %i.kh, ptr %37, align 8, !tbaa !571
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !571
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_S5_S5_SG_NS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.ki = load ptr, ptr %33, align 8, !tbaa !571  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.kj = load ptr, ptr %32, align 8, !tbaa !571  ; 5 uses
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
  %wide.load560 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !367, !noalias !5256
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367, !noalias !5256
  %i.ky = getelementptr inbounds i8, ptr %next.gep558, i64 -16
  %i.kz = getelementptr inbounds i8, ptr %next.gep558, i64 -32
  store <4 x i32> %wide.load560, ptr %i.ky, align 4, !tbaa !367, !noalias !5256
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !367, !noalias !5256
  %index.next562 = add nuw i64 %index557, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next562, %n.vec555
  br i1 %i.la, label %middle.block563, label %vector.body556, !llvm.loop !5238

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
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !367, !noalias !5256
  %i.le = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !367, !noalias !5256
  %.not.i.i107 = icmp eq ptr %i.lc, %i.kh
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !5239

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block563, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEES5_SG_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  %16 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
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
  %i.b = load ptr, ptr %0, align 8, !tbaa !571    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !571    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !571
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
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

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
  %wide.load451 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !367
  %wide.load452 = load <4 x i32>, ptr %i.in, align 4, !tbaa !367
  %i.io = getelementptr i8, ptr %next.gep449, i64 16
  store <4 x i32> %wide.load451, ptr %next.gep449, align 4, !tbaa !367
  store <4 x i32> %wide.load452, ptr %i.io, align 4, !tbaa !367
  %index.next453 = add nuw i64 %index448, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next453, %n.vec446
  br i1 %i.ip, label %middle.block454, label %vector.body447, !llvm.loop !5530

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
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !367
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5531

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
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !367
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
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
  %wide.load470 = load <4 x i32>, ptr %next.gep469, align 4, !tbaa !367
  %wide.load471 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !367
  %i.jn = getelementptr i8, ptr %next.gep468, i64 16
  store <4 x i32> %wide.load470, ptr %next.gep468, align 4, !tbaa !367
  store <4 x i32> %wide.load471, ptr %i.jn, align 4, !tbaa !367
  %index.next472 = add nuw i64 %index467, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next472, %n.vec465
  br i1 %i.jo, label %middle.block473, label %vector.body466, !llvm.loop !5532

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
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5533

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
  %wide.load434 = load <4 x i32>, ptr %next.gep433, align 4, !tbaa !367
  %wide.load435 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !367
  %i.kf = getelementptr i8, ptr %next.gep432, i64 16
  store <4 x i32> %wide.load434, ptr %next.gep432, align 4, !tbaa !367
  store <4 x i32> %wide.load435, ptr %i.kf, align 4, !tbaa !367
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.kg, label %middle.block437, label %vector.body430, !llvm.loop !5534

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
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !367
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108265
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5535

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
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
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
  %wide.load487 = load <4 x i32>, ptr %next.gep486, align 4, !tbaa !367
  %wide.load488 = load <4 x i32>, ptr %i.la, align 4, !tbaa !367
  %i.lb = getelementptr i8, ptr %next.gep485, i64 16
  store <4 x i32> %wide.load487, ptr %next.gep485, align 4, !tbaa !367
  store <4 x i32> %wide.load488, ptr %i.lb, align 4, !tbaa !367
  %index.next489 = add nuw i64 %index484, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next489, %n.vec482
  br i1 %i.lc, label %middle.block490, label %vector.body483, !llvm.loop !5536

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
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !367
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5537

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block490, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
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
  br i1 %.not.i88, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !100

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
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !367, !noalias !5708
  %wide.load526 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !367, !noalias !5708
  %i.ic = getelementptr inbounds i8, ptr %next.gep523, i64 -16
  %i.id = getelementptr inbounds i8, ptr %next.gep523, i64 -32
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !367, !noalias !5708
  store <4 x i32> %wide.load526, ptr %i.id, align 4, !tbaa !367, !noalias !5708
  %index.next527 = add nuw i64 %index522, 8       ; 2 uses
  %i.ie = icmp eq i64 %index.next527, %n.vec520
  br i1 %i.ie, label %middle.block528, label %vector.body521, !llvm.loop !5674

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
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !367, !noalias !5708
  %i.ii = getelementptr inbounds i8, ptr %.sroa.0.0.i91, i64 -4 ; 2 uses
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !367, !noalias !5708
  %.not.i.i92 = icmp eq ptr %i.ig, %.sroa.0223.0.lcssa
  br i1 %.not.i.i92, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit93, label %.lr.ph.i.i90, !llvm.loop !5675

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
  %i.im = load i32, ptr %i.il, align 4, !tbaa !367, !noalias !5709 ; 2 uses
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !367, !noalias !5709 ; 2 uses
  %i.io = icmp slt i32 %i.im, %i.in
  %i.ip = getelementptr inbounds i8, ptr %.sroa.0121.0, i64 -4 ; 6 uses
  br i1 %i.io, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iq = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.in, ptr %i.ip, align 4, !tbaa !367, !noalias !5709
  %i.ir = icmp eq ptr %i.iq, %i.hf
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !76

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.im, ptr %i.ip, align 4, !tbaa !367, !noalias !5709
  %i.is = icmp eq ptr %i.il, %.sroa.0223.5
  br i1 %i.is, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0121.1 = phi ptr [ %.sroa.0252.6, %bb.ag ], [ %i.ip, %bb.ah ], [ %i.ip, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.hf, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0238.5, %bb.ag ], [ %i.il, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !571, !noalias !5709
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
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !367, !noalias !5710
  %wide.load545 = load <4 x i32>, ptr %i.je, align 4, !tbaa !367, !noalias !5710
  %i.jf = getelementptr inbounds i8, ptr %next.gep542, i64 -16
  %i.jg = getelementptr inbounds i8, ptr %next.gep542, i64 -32
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !367, !noalias !5710
  store <4 x i32> %wide.load545, ptr %i.jg, align 4, !tbaa !367, !noalias !5710
  %index.next546 = add nuw i64 %index541, 8       ; 2 uses
  %i.jh = icmp eq i64 %index.next546, %n.vec539
  br i1 %i.jh, label %middle.block547, label %vector.body540, !llvm.loop !5682

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
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !367, !noalias !5710
  %i.jl = getelementptr inbounds i8, ptr %.sroa.0.0.i97, i64 -4 ; 3 uses
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !367, !noalias !5710
  %.not.i.i98 = icmp eq ptr %i.jj, %.sroa.0223.5
  br i1 %.not.i.i98, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i96, !llvm.loop !5683

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
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !367, !noalias !5711
  %wide.load509 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !367, !noalias !5711
  %i.ka = getelementptr inbounds i8, ptr %next.gep506, i64 -16
  %i.kb = getelementptr inbounds i8, ptr %next.gep506, i64 -32
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !367, !noalias !5711
  store <4 x i32> %wide.load509, ptr %i.kb, align 4, !tbaa !367, !noalias !5711
  %index.next510 = add nuw i64 %index505, 8       ; 2 uses
  %i.kc = icmp eq i64 %index.next510, %n.vec503
  br i1 %i.kc, label %middle.block511, label %vector.body504, !llvm.loop !5688

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
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !367, !noalias !5711
  %i.kg = getelementptr inbounds i8, ptr %.sroa.0.0.i102, i64 -4 ; 3 uses
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !367, !noalias !5711
  %.not.i.i103 = icmp eq ptr %i.ke, %.sroa.0223.0329
  br i1 %.not.i.i103, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99, label %.lr.ph.i.i101, !llvm.loop !5689

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99: ; preds = %.lr.ph.i.i101, %.lr.ph.i.i96, %middle.block511, %middle.block547, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kh = phi ptr [ %i.hc, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hc, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.hc, %middle.block547 ], [ %i.jm, %middle.block511 ], [ %i.hc, %.lr.ph.i.i96 ], [ %i.jm, %.lr.ph.i.i101 ]
  %.3 = phi i64 [ %.1391, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated276, %.thread.thread ], [ %.1391, %bb.aj ], [ %.2, %bb.ak ], [ %.1391, %middle.block547 ], [ %.2, %middle.block511 ], [ %.1391, %.lr.ph.i.i96 ], [ %.2, %.lr.ph.i.i101 ]
  %.sroa.0213.0332 = phi ptr [ %.sroa.0213.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0213.0334, %.thread.thread ], [ %.sroa.0213.0.lcssa, %bb.aj ], [ %.sroa.0213.0331, %bb.ak ], [ %.sroa.0213.0.lcssa, %middle.block547 ], [ %.sroa.0213.0331, %middle.block511 ], [ %.sroa.0213.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0213.0331, %.lr.ph.i.i101 ]
  %.sroa.0263.0322 = phi ptr [ %.sroa.0263.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0263.0339, %.thread.thread ], [ %.sroa.0263.0.lcssa, %bb.aj ], [ %.sroa.0263.0321, %bb.ak ], [ %.sroa.0263.0.lcssa, %middle.block547 ], [ %.sroa.0263.0321, %middle.block511 ], [ %.sroa.0263.0.lcssa, %.lr.ph.i.i96 ], [ %.sroa.0263.0321, %.lr.ph.i.i101 ]
  %.0287319 = phi i64 [ %.0287.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0287340, %.thread.thread ], [ %.0287.lcssa, %bb.aj ], [ %.0287318, %bb.ak ], [ %.0287.lcssa, %middle.block547 ], [ %.0287318, %middle.block511 ], [ %.0287.lcssa, %.lr.ph.i.i96 ], [ %.0287318, %.lr.ph.i.i101 ]
  %.063316 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063341, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063315, %bb.ak ], [ %.063.lcssa, %middle.block547 ], [ %.063315, %middle.block511 ], [ %.063.lcssa, %.lr.ph.i.i96 ], [ %.063315, %.lr.ph.i.i101 ]
  %i.ki = phi ptr [ %i.hf, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.hf, %bb.aj ], [ %i.jn, %bb.ak ], [ %i.hf, %middle.block547 ], [ %i.jn, %middle.block511 ], [ %i.hf, %.lr.ph.i.i96 ], [ %i.jn, %.lr.ph.i.i101 ] ; 4 uses
  %.sroa.0252.7 = phi ptr [ %.sroa.0121.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0252.0338, %.thread.thread ], [ %.sroa.0252.0.lcssa, %bb.aj ], [ %.sroa.0252.0324, %bb.ak ], [ %i.ja, %middle.block547 ], [ %i.jv, %middle.block511 ], [ %i.jl, %.lr.ph.i.i96 ], [ %i.kg, %.lr.ph.i.i101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0213.0332, ptr %34, align 8, !tbaa !582
  store ptr %.sroa.0263.0322, ptr %35, align 8, !tbaa !582
  store ptr %i.kh, ptr %36, align 8, !tbaa !571
  store ptr %i.ki, ptr %37, align 8, !tbaa !571
  store ptr %.sroa.0252.7, ptr %38, align 8, !tbaa !571
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0287319, i64 noundef %.063316, i64 noundef %.3, i1 noundef zeroext false)
  %i.kj = load ptr, ptr %33, align 8, !tbaa !571  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.kk = load ptr, ptr %32, align 8, !tbaa !571  ; 5 uses
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
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367, !noalias !5712
  %wide.load562 = load <4 x i32>, ptr %i.ky, align 4, !tbaa !367, !noalias !5712
  %i.kz = getelementptr inbounds i8, ptr %next.gep559, i64 -16
  %i.la = getelementptr inbounds i8, ptr %next.gep559, i64 -32
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !367, !noalias !5712
  store <4 x i32> %wide.load562, ptr %i.la, align 4, !tbaa !367, !noalias !5712
  %index.next563 = add nuw i64 %index558, 8       ; 2 uses
  %i.lb = icmp eq i64 %index.next563, %n.vec556
  br i1 %i.lb, label %middle.block564, label %vector.body557, !llvm.loop !5694

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
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !367, !noalias !5712
  %i.lf = getelementptr inbounds i8, ptr %.sroa.0.0.i107, i64 -4 ; 2 uses
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !367, !noalias !5712
  %.not.i.i108 = icmp eq ptr %i.ld, %i.ki
  br i1 %.not.i.i108, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109, label %.lr.ph.i.i106, !llvm.loop !5695

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit109: ; preds = %.lr.ph.i.i106, %middle.block564, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  %16 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.46", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.46", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !582    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !571    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !571
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
  br i1 %.not.i144, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEET_SD_SD_RKNS0_15iterator_traitsISD_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !78

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
  %wide.load452 = load <4 x i32>, ptr %next.gep451, align 4, !tbaa !367
  %wide.load453 = load <4 x i32>, ptr %i.in, align 4, !tbaa !367
  %i.io = getelementptr i8, ptr %next.gep450, i64 16
  store <4 x i32> %wide.load452, ptr %next.gep450, align 4, !tbaa !367
  store <4 x i32> %wide.load453, ptr %i.io, align 4, !tbaa !367
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.ip = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.ip, label %middle.block455, label %vector.body448, !llvm.loop !5942

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
  %i.iq = load i32, ptr %.079.i.i148, align 4, !tbaa !367
  store i32 %i.iq, ptr %.010.i.i147, align 4, !tbaa !367
  %i.ir = getelementptr inbounds nuw i8, ptr %.079.i.i148, i64 4 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.010.i.i147, i64 4
  %.not.i.i149 = icmp eq ptr %i.ir, %.0222.lcssa
  br i1 %.not.i.i149, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit151, label %.lr.ph.i.i146, !llvm.loop !5943

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
  %i.iu = load i32, ptr %.0.i, align 4, !tbaa !367 ; 2 uses
  %i.iv = load i32, ptr %.021.i.ph, align 4, !tbaa !367 ; 2 uses
  %i.iw = icmp slt i32 %i.iu, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.iw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.iu, ptr %.024.i, align 4, !tbaa !367
  %i.iz = icmp eq ptr %i.iy, %i.hs
  br i1 %i.iz, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i, !llvm.loop !80

bb.ai:                                            ; preds = %.preheader.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.iv, ptr %.024.i, align 4, !tbaa !367
  %i.jb = icmp eq ptr %i.ja, %.5
  br i1 %i.jb, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !80

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPiS3_S3_NS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7move_opEEET1_RT_SF_RT0_SH_SE_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5227, %bb.ag ], [ %i.ix, %bb.ai ], [ %i.ix, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5221, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.ja, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.hs, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !376
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
  %wide.load471 = load <4 x i32>, ptr %next.gep470, align 4, !tbaa !367
  %wide.load472 = load <4 x i32>, ptr %i.jm, align 4, !tbaa !367
  %i.jn = getelementptr i8, ptr %next.gep469, i64 16
  store <4 x i32> %wide.load471, ptr %next.gep469, align 4, !tbaa !367
  store <4 x i32> %wide.load472, ptr %i.jn, align 4, !tbaa !367
  %index.next473 = add nuw i64 %index468, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next473, %n.vec466
  br i1 %i.jo, label %middle.block474, label %vector.body467, !llvm.loop !5944

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
  %i.jp = load i32, ptr %.079.i.i156, align 4, !tbaa !367
  store i32 %i.jp, ptr %.010.i.i155, align 4, !tbaa !367
  %i.jq = getelementptr inbounds nuw i8, ptr %.079.i.i156, i64 4 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.010.i.i155, i64 4 ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.jq, %.5
  br i1 %.not.i.i157, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i154, !llvm.loop !5945

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
  %wide.load435 = load <4 x i32>, ptr %next.gep434, align 4, !tbaa !367
  %wide.load436 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !367
  %i.kf = getelementptr i8, ptr %next.gep433, i64 16
  store <4 x i32> %wide.load435, ptr %next.gep433, align 4, !tbaa !367
  store <4 x i32> %wide.load436, ptr %i.kf, align 4, !tbaa !367
  %index.next437 = add nuw i64 %index432, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next437, %n.vec430
  br i1 %i.kg, label %middle.block438, label %vector.body431, !llvm.loop !5946

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
  %i.kh = load i32, ptr %.079.i.i163, align 4, !tbaa !367
  store i32 %i.kh, ptr %.010.i.i162, align 4, !tbaa !367
  %i.ki = getelementptr inbounds nuw i8, ptr %.079.i.i163, i64 4 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.010.i.i162, i64 4 ; 2 uses
  %.not.i.i164 = icmp eq ptr %i.ki, %.0108266
  br i1 %.not.i.i164, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159, label %.lr.ph.i.i161, !llvm.loop !5947

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
  %i.kn = load ptr, ptr %i.d, align 8, !tbaa !376 ; 5 uses
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
  %wide.load488 = load <4 x i32>, ptr %next.gep487, align 4, !tbaa !367
  %wide.load489 = load <4 x i32>, ptr %i.la, align 4, !tbaa !367
  %i.lb = getelementptr i8, ptr %next.gep486, i64 16
  store <4 x i32> %wide.load488, ptr %next.gep486, align 4, !tbaa !367
  store <4 x i32> %wide.load489, ptr %i.lb, align 4, !tbaa !367
  %index.next490 = add nuw i64 %index485, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next490, %n.vec483
  br i1 %i.lc, label %middle.block491, label %vector.body484, !llvm.loop !5948

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
  %i.ld = load i32, ptr %.079.i.i170, align 4, !tbaa !367
  store i32 %i.ld, ptr %.010.i.i169, align 4, !tbaa !367
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i170, i64 4 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.010.i.i169, i64 4
  %.not.i.i171 = icmp eq ptr %i.le, %i.kl
  br i1 %.not.i.i171, label %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173, label %.lr.ph.i.i168, !llvm.loop !5949

_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit173: ; preds = %.lr.ph.i.i168, %middle.block491, %_ZN5boost7movelib7move_opclIPiS3_EET0_NS0_9forward_tET_S6_S4_.exit159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPiNS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !376
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
  br i1 %.not.i87, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPiEENS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEEEET_SH_SH_RKNS0_15iterator_traitsISH_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !100

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
  %wide.load524 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !367, !noalias !6120
  %wide.load525 = load <4 x i32>, ptr %i.ia, align 4, !tbaa !367, !noalias !6120
  %i.ib = getelementptr inbounds i8, ptr %next.gep522, i64 -16
  %i.ic = getelementptr inbounds i8, ptr %next.gep522, i64 -32
  store <4 x i32> %wide.load524, ptr %i.ib, align 4, !tbaa !367, !noalias !6120
  store <4 x i32> %wide.load525, ptr %i.ic, align 4, !tbaa !367, !noalias !6120
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.id, label %middle.block527, label %vector.body520, !llvm.loop !6086

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
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !367, !noalias !6120
  %i.ih = getelementptr inbounds i8, ptr %.sroa.0.0.i90, i64 -4 ; 2 uses
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !367, !noalias !6120
  %.not.i.i91 = icmp eq ptr %i.if, %.sroa.0220.0.lcssa
  br i1 %.not.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit92, label %.lr.ph.i.i89, !llvm.loop !6087

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
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !367, !noalias !6121 ; 2 uses
  %i.im = load i32, ptr %i.ij, align 4, !tbaa !367, !noalias !6121 ; 2 uses
  %i.in = icmp slt i32 %i.il, %i.im
  %i.io = getelementptr inbounds i8, ptr %.sroa.0120.0, i64 -4 ; 6 uses
  br i1 %i.in, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.ip = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.im, ptr %i.io, align 4, !tbaa !367, !noalias !6121
  %i.iq = icmp eq ptr %i.ip, %i.he
  br i1 %i.iq, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !76

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.il, ptr %i.io, align 4, !tbaa !367, !noalias !6121
  %i.ir = icmp eq ptr %i.ik, %.sroa.0220.5
  br i1 %i.ir, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, label %.preheader.i, !llvm.loop !76

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0120.1 = phi ptr [ %.sroa.0249.6, %bb.ag ], [ %i.io, %bb.ah ], [ %i.io, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.he, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0235.5, %bb.ag ], [ %i.ik, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !571, !noalias !6121
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
  %wide.load543 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !367, !noalias !6122
  %wide.load544 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !367, !noalias !6122
  %i.je = getelementptr inbounds i8, ptr %next.gep541, i64 -16
  %i.jf = getelementptr inbounds i8, ptr %next.gep541, i64 -32
  store <4 x i32> %wide.load543, ptr %i.je, align 4, !tbaa !367, !noalias !6122
  store <4 x i32> %wide.load544, ptr %i.jf, align 4, !tbaa !367, !noalias !6122
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.jg = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.jg, label %middle.block546, label %vector.body539, !llvm.loop !6094

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
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !367, !noalias !6122
  %i.jk = getelementptr inbounds i8, ptr %.sroa.0.0.i96, i64 -4 ; 3 uses
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !367, !noalias !6122
  %.not.i.i97 = icmp eq ptr %i.ji, %.sroa.0220.5
  br i1 %.not.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i95, !llvm.loop !6095

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
  %wide.load507 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !367, !noalias !6123
  %wide.load508 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !367, !noalias !6123
  %i.jz = getelementptr inbounds i8, ptr %next.gep505, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep505, i64 -32
  store <4 x i32> %wide.load507, ptr %i.jz, align 4, !tbaa !367, !noalias !6123
  store <4 x i32> %wide.load508, ptr %i.ka, align 4, !tbaa !367, !noalias !6123
  %index.next509 = add nuw i64 %index504, 8       ; 2 uses
  %i.kb = icmp eq i64 %index.next509, %n.vec502
  br i1 %i.kb, label %middle.block510, label %vector.body503, !llvm.loop !6100

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
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !367, !noalias !6123
  %i.kf = getelementptr inbounds i8, ptr %.sroa.0.0.i101, i64 -4 ; 3 uses
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !367, !noalias !6123
  %.not.i.i102 = icmp eq ptr %i.kd, %.sroa.0220.0328
  br i1 %.not.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98, label %.lr.ph.i.i100, !llvm.loop !6101

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98: ; preds = %.lr.ph.i.i100, %.lr.ph.i.i95, %middle.block510, %middle.block546, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit, %bb.aj
  %i.kg = phi ptr [ %i.hb, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.an, %.thread.thread ], [ %i.hb, %bb.aj ], [ %i.jl, %bb.ak ], [ %i.hb, %middle.block546 ], [ %i.jl, %middle.block510 ], [ %i.hb, %.lr.ph.i.i95 ], [ %i.jl, %.lr.ph.i.i100 ]
  %.3 = phi i64 [ %.1390, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.speculated273, %.thread.thread ], [ %.1390, %bb.aj ], [ %.2, %bb.ak ], [ %.1390, %middle.block546 ], [ %.2, %middle.block510 ], [ %.1390, %.lr.ph.i.i95 ], [ %.2, %.lr.ph.i.i100 ]
  %.sroa.0210.0331 = phi ptr [ %.sroa.0210.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0210.0333, %.thread.thread ], [ %.sroa.0210.0.lcssa, %bb.aj ], [ %.sroa.0210.0330, %bb.ak ], [ %.sroa.0210.0.lcssa, %middle.block546 ], [ %.sroa.0210.0330, %middle.block510 ], [ %.sroa.0210.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0210.0330, %.lr.ph.i.i100 ]
  %.sroa.0260.0321 = phi ptr [ %.sroa.0260.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0260.0338, %.thread.thread ], [ %.sroa.0260.0.lcssa, %bb.aj ], [ %.sroa.0260.0320, %bb.ak ], [ %.sroa.0260.0.lcssa, %middle.block546 ], [ %.sroa.0260.0320, %middle.block510 ], [ %.sroa.0260.0.lcssa, %.lr.ph.i.i95 ], [ %.sroa.0260.0320, %.lr.ph.i.i100 ]
  %.0284318 = phi i64 [ %.0284.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.0284339, %.thread.thread ], [ %.0284.lcssa, %bb.aj ], [ %.0284317, %bb.ak ], [ %.0284.lcssa, %middle.block546 ], [ %.0284317, %middle.block510 ], [ %.0284.lcssa, %.lr.ph.i.i95 ], [ %.0284317, %.lr.ph.i.i100 ]
  %.063315 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.063340, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063314, %bb.ak ], [ %.063.lcssa, %middle.block546 ], [ %.063314, %middle.block510 ], [ %.063.lcssa, %.lr.ph.i.i95 ], [ %.063314, %.lr.ph.i.i100 ]
  %i.kh = phi ptr [ %i.he, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.he, %bb.aj ], [ %i.jm, %bb.ak ], [ %i.he, %middle.block546 ], [ %i.jm, %middle.block510 ], [ %i.he, %.lr.ph.i.i95 ], [ %i.jm, %.lr.ph.i.i100 ] ; 4 uses
  %.sroa.0249.7 = phi ptr [ %.sroa.0120.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPiEES5_S5_NS0_7inverseINS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET1_RT_SJ_RT0_SL_SI_T2_T3_.exit ], [ %.sroa.0249.0337, %.thread.thread ], [ %.sroa.0249.0.lcssa, %bb.aj ], [ %.sroa.0249.0323, %bb.ak ], [ %i.iz, %middle.block546 ], [ %i.ju, %middle.block510 ], [ %i.jk, %.lr.ph.i.i95 ], [ %i.kf, %.lr.ph.i.i100 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0210.0331, ptr %34, align 8, !tbaa !575
  store ptr %.sroa.0260.0321, ptr %35, align 8, !tbaa !575
  store ptr %i.kg, ptr %36, align 8, !tbaa !571
  store ptr %i.kh, ptr %37, align 8, !tbaa !571
  store ptr %.sroa.0249.7, ptr %38, align 8, !tbaa !571
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEESA_SA_NS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7move_opEEET3_T_SN_T0_T1_RT2_SQ_SM_NS0_9iter_sizeISP_E4typeESU_SU_SU_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0284318, i64 noundef %.063315, i64 noundef %.3, i1 noundef zeroext false)
  %i.ki = load ptr, ptr %33, align 8, !tbaa !571  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.kj = load ptr, ptr %32, align 8, !tbaa !571  ; 5 uses
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
  %wide.load560 = load <4 x i32>, ptr %i.kw, align 4, !tbaa !367, !noalias !6124
  %wide.load561 = load <4 x i32>, ptr %i.kx, align 4, !tbaa !367, !noalias !6124
  %i.ky = getelementptr inbounds i8, ptr %next.gep558, i64 -16
  %i.kz = getelementptr inbounds i8, ptr %next.gep558, i64 -32
  store <4 x i32> %wide.load560, ptr %i.ky, align 4, !tbaa !367, !noalias !6124
  store <4 x i32> %wide.load561, ptr %i.kz, align 4, !tbaa !367, !noalias !6124
  %index.next562 = add nuw i64 %index557, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next562, %n.vec555
  br i1 %i.la, label %middle.block563, label %vector.body556, !llvm.loop !6106

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
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !367, !noalias !6124
  %i.le = getelementptr inbounds i8, ptr %.sroa.0.0.i106, i64 -4 ; 2 uses
  store i32 %i.ld, ptr %i.le, align 4, !tbaa !367, !noalias !6124
  %.not.i.i107 = icmp eq ptr %i.lc, %i.kh
  br i1 %.not.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108, label %.lr.ph.i.i105, !llvm.loop !6107

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit108: ; preds = %.lr.ph.i.i105, %middle.block563, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPiEES5_EET0_NS0_9forward_tET_S8_S6_.exit98
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPiEENS6_INS_9container3dtl23flat_tree_value_compareISt4lessIiEiNS_11move_detail8identityIiEEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISO_E4typeESR_SR_SR_SR_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  %16 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.38", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.39", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.39", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !575    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !571    ; 8 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !571
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
begin_hunk_7_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test11movable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a
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
end_hunk_7
begin_hunk_8_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_:bb.a
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fy = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fy, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fy, %bb.af ] ; 5 uses
  %i.fz = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.ga = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = ashr exact i64 %i.gb, 2
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gd ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gf = add i64 %i.fz, -4
  %i.gg = sub i64 %i.gf, %i.ga                    ; 2 uses
  %i.gh = lshr i64 %i.gg, 2
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.gg, 60
  %i.gj = sub i64 %i.fz, %i.fr
  %diff.check403 = icmp ugt i64 %i.gj, -32
  %or.cond456 = select i1 %min.iters.check405, i1 true, i1 %diff.check403
  br i1 %or.cond456, label %.lr.ph.i.i148.preheader471, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec407 = and i64 %i.gi, 9223372036854775800  ; 3 uses
  %i.gk = shl i64 %n.vec407, 2                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.ge, i64 %i.gk
  %i.gm = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gk
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.gn = shl i64 %index409, 2                    ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.ge, i64 %i.gn ; 2 uses
  %next.gep411 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gn ; 2 uses
  %i.go = getelementptr i8, ptr %next.gep411, i64 16
  %wide.load412 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !505
  %wide.load413 = load <4 x i32>, ptr %i.go, align 4, !tbaa !505
  %i.gp = getelementptr i8, ptr %next.gep410, i64 16
  store <4 x i32> %wide.load412, ptr %next.gep410, align 4, !tbaa !505
  store <4 x i32> %wide.load413, ptr %i.gp, align 4, !tbaa !505
  %index.next414 = add nuw i64 %index409, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.gq, label %middle.block415, label %vector.body408, !llvm.loop !11670

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.gi, %n.vec407
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader471

.lr.ph.i.i148.preheader471:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block415
  %.010.i.i149.ph = phi ptr [ %i.ge, %.lr.ph.i.i148.preheader ], [ %i.gl, %middle.block415 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.gm, %middle.block415 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader471, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gt, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader471 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gs, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader471 ] ; 2 uses
  %i.gr = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gr, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gs = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gs, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !11671

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block415, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gu, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.ge, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fq, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gy, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.hb, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gy, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gz, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gv = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.gw = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.gx = icmp slt i32 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gx, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gv, ptr %.024.i, align 4, !tbaa !505
  %i.ha = icmp eq ptr %i.gz, %i.ft
  br i1 %i.ha, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.gw, ptr %.024.i, align 4, !tbaa !505
  %i.hc = icmp eq ptr %i.hb, %.5
  br i1 %i.hc, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gy, %bb.ai ], [ %i.gy, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.hb, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.ft, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i421 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i420 = ptrtoaddr ptr %.226.i to i64
  %i.hd = ptrtoaddr ptr %.5 to i64
  %i.he = add i64 %i.hd, -4
  %i.hf = sub i64 %i.he, %.223.i421               ; 2 uses
  %i.hg = lshr i64 %i.hf, 2
  %i.hh = add nuw nsw i64 %i.hg, 1                ; 2 uses
  %min.iters.check424 = icmp ult i64 %i.hf, 44
  %i.hi = sub i64 %.223.i421, %.226.i420
  %diff.check422 = icmp ugt i64 %i.hi, -32
  %or.cond457 = select i1 %min.iters.check424, i1 true, i1 %diff.check422
  br i1 %or.cond457, label %.lr.ph.i.i156.preheader461, label %vector.ph425

vector.ph425:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec426 = and i64 %i.hh, 9223372036854775800  ; 3 uses
  %i.hj = shl i64 %n.vec426, 2                    ; 2 uses
  %i.hk = getelementptr i8, ptr %.226.i, i64 %i.hj ; 2 uses
  %i.hl = getelementptr i8, ptr %.223.i, i64 %i.hj
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next433, %vector.body427 ] ; 2 uses
  %i.hm = shl i64 %index428, 2                    ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.226.i, i64 %i.hm ; 2 uses
  %next.gep430 = getelementptr i8, ptr %.223.i, i64 %i.hm ; 2 uses
  %i.hn = getelementptr i8, ptr %next.gep430, i64 16
  %wide.load431 = load <4 x i32>, ptr %next.gep430, align 4, !tbaa !505
  %wide.load432 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !505
  %i.ho = getelementptr i8, ptr %next.gep429, i64 16
  store <4 x i32> %wide.load431, ptr %next.gep429, align 4, !tbaa !505
  store <4 x i32> %wide.load432, ptr %i.ho, align 4, !tbaa !505
  %index.next433 = add nuw i64 %index428, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next433, %n.vec426
  br i1 %i.hp, label %middle.block434, label %vector.body427, !llvm.loop !11672

middle.block434:                                  ; preds = %vector.body427
  %cmp.n435 = icmp eq i64 %i.hh, %n.vec426
  br i1 %cmp.n435, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader461

.lr.ph.i.i156.preheader461:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block434
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.hk, %middle.block434 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hl, %middle.block434 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader461, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hs, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader461 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hr, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader461 ] ; 2 uses
  %i.hq = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.hq, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hr = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hr, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !11673

bb.aj:                                            ; preds = %.thread
  br i1 %i.fs, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ht = phi ptr [ %i.fq, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1322, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236277 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236280, %.thread.thread ] ; 3 uses
  %.0230274 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230281, %.thread.thread ] ; 3 uses
  %.0224272 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224282, %.thread.thread ] ; 5 uses
  %.0218270 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218283, %.thread.thread ] ; 5 uses
  %.0108268 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108284, %.thread.thread ] ; 3 uses
  %.0102264 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102286, %.thread.thread ] ; 3 uses
  %.099261 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099288, %.thread.thread ] ; 3 uses
  %i.hu = phi ptr [ %i.ft, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218270, %.0108268
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218270385 = ptrtoaddr ptr %.0218270 to i64   ; 2 uses
  %.0224272384 = ptrtoaddr ptr %.0224272 to i64
  %i.hv = ptrtoaddr ptr %.0108268 to i64
  %i.hw = add i64 %i.hv, -4
  %i.hx = sub i64 %i.hw, %.0218270385             ; 2 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check388 = icmp ult i64 %i.hx, 44
  %i.ia = sub i64 %.0218270385, %.0224272384
  %diff.check386 = icmp ugt i64 %i.ia, -32
  %or.cond458 = or i1 %min.iters.check388, %diff.check386
  br i1 %or.cond458, label %.lr.ph.i.i163.preheader472, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec390 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.ib = shl i64 %n.vec390, 2                    ; 2 uses
  %i.ic = getelementptr i8, ptr %.0224272, i64 %i.ib ; 2 uses
  %i.id = getelementptr i8, ptr %.0218270, i64 %i.ib
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 2 uses
  %i.ie = shl i64 %index392, 2                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0224272, i64 %i.ie ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.0218270, i64 %i.ie ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load395 = load <4 x i32>, ptr %next.gep394, align 4, !tbaa !505
  %wide.load396 = load <4 x i32>, ptr %i.if, align 4, !tbaa !505
  %i.ig = getelementptr i8, ptr %next.gep393, i64 16
  store <4 x i32> %wide.load395, ptr %next.gep393, align 4, !tbaa !505
  store <4 x i32> %wide.load396, ptr %i.ig, align 4, !tbaa !505
  %index.next397 = add nuw i64 %index392, 8       ; 2 uses
  %i.ih = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.ih, label %middle.block398, label %vector.body391, !llvm.loop !11674

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %i.hz, %n.vec390
  br i1 %cmp.n399, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader472

.lr.ph.i.i163.preheader472:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block398
  %.010.i.i164.ph = phi ptr [ %.0224272, %.lr.ph.i.i163.preheader ], [ %i.ic, %middle.block398 ]
  %.079.i.i165.ph = phi ptr [ %.0218270, %.lr.ph.i.i163.preheader ], [ %i.id, %middle.block398 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader472, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ik, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader472 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.ij, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader472 ] ; 2 uses
  %i.ii = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.ii, ptr %.010.i.i164, align 4, !tbaa !505
  %i.ij = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ij, %.0108268
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !11675

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block398, %middle.block434, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.il = phi ptr [ %i.fq, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fq, %bb.aj ], [ %i.ht, %bb.ak ], [ %i.fq, %middle.block434 ], [ %i.ht, %middle.block398 ], [ %i.fq, %.lr.ph.i.i156 ], [ %i.ht, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1322, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1322, %bb.aj ], [ %.2, %bb.ak ], [ %.1322, %middle.block434 ], [ %.2, %middle.block398 ], [ %.1322, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236278 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236280, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236277, %bb.ak ], [ %.0236.lcssa, %middle.block434 ], [ %.0236277, %middle.block398 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236277, %.lr.ph.i.i163 ]
  %.0230275 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230281, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230274, %bb.ak ], [ %.0230.lcssa, %middle.block434 ], [ %.0230274, %middle.block398 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230274, %.lr.ph.i.i163 ]
  %.0102265 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102286, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102264, %bb.ak ], [ %.0102.lcssa, %middle.block434 ], [ %.0102264, %middle.block398 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102264, %.lr.ph.i.i163 ]
  %.099262 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099288, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099261, %bb.ak ], [ %.099.lcssa, %middle.block434 ], [ %.099261, %middle.block398 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099261, %.lr.ph.i.i163 ]
  %i.im = phi ptr [ %i.ft, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ft, %bb.aj ], [ %i.hu, %bb.ak ], [ %i.ft, %middle.block434 ], [ %i.hu, %middle.block398 ], [ %i.ft, %.lr.ph.i.i156 ], [ %i.hu, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224282, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224272, %bb.ak ], [ %i.hk, %middle.block434 ], [ %i.ic, %middle.block398 ], [ %i.hs, %.lr.ph.i.i156 ], [ %i.ik, %.lr.ph.i.i163 ]
  %i.in = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_S6_S6_SE_NS0_7move_opEEET3_T_SH_T0_T1_RT2_SK_SG_NS0_9iter_sizeISJ_E4typeESO_SO_SO_T4_bT5_(ptr noundef %.0102265, ptr noundef %.0230275, ptr noundef %i.il, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.im, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236278, i64 noundef %.099262, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.io, %i.im
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.ip = ptrtoaddr ptr %i.io to i64              ; 2 uses
  %i.iq = ptrtoaddr ptr %i.in to i64
  %i.ir = ptrtoaddr ptr %i.im to i64
  %i.is = add i64 %i.ir, -4
  %i.it = sub i64 %i.is, %i.ip                    ; 2 uses
  %i.iu = lshr i64 %i.it, 2
  %i.iv = add nuw nsw i64 %i.iu, 1                ; 2 uses
  %min.iters.check441 = icmp ult i64 %i.it, 44
  %i.iw = sub i64 %i.ip, %i.iq
  %diff.check439 = icmp ugt i64 %i.iw, -32
  %or.cond459 = or i1 %min.iters.check441, %diff.check439
  br i1 %or.cond459, label %.lr.ph.i.i170.preheader460, label %vector.ph442

vector.ph442:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec443 = and i64 %i.iv, 9223372036854775800  ; 3 uses
  %i.ix = shl i64 %n.vec443, 2                    ; 2 uses
  %i.iy = getelementptr i8, ptr %i.in, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.io, i64 %i.ix
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next450, %vector.body444 ] ; 2 uses
  %i.ja = shl i64 %index445, 2                    ; 2 uses
  %next.gep446 = getelementptr i8, ptr %i.in, i64 %i.ja ; 2 uses
  %next.gep447 = getelementptr i8, ptr %i.io, i64 %i.ja ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep447, i64 16
  %wide.load448 = load <4 x i32>, ptr %next.gep447, align 4, !tbaa !505
  %wide.load449 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !505
  %i.jc = getelementptr i8, ptr %next.gep446, i64 16
  store <4 x i32> %wide.load448, ptr %next.gep446, align 4, !tbaa !505
  store <4 x i32> %wide.load449, ptr %i.jc, align 4, !tbaa !505
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.jd = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.jd, label %middle.block451, label %vector.body444, !llvm.loop !11676

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %i.iv, %n.vec443
  br i1 %cmp.n452, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader460

.lr.ph.i.i170.preheader460:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block451
  %.010.i.i171.ph = phi ptr [ %i.in, %.lr.ph.i.i170.preheader ], [ %i.iy, %middle.block451 ]
  %.079.i.i172.ph = phi ptr [ %i.io, %.lr.ph.i.i170.preheader ], [ %i.iz, %middle.block451 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader460, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.jg, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader460 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.jf, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader460 ] ; 2 uses
  %i.je = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.je, ptr %.010.i.i171, align 4, !tbaa !505
  %i.jf = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.jf, %i.im
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !11677

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block451, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not293 = icmp eq i64 %i.e, 0
  br i1 %.not293, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.fe, %.sink.split.i ] ; 3 uses
  %.0303 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099302 = phi i64 [ %i.m, %.lr.ph ], [ %i.fc, %.sink.split.i ] ; 7 uses
  %.0102300 = phi ptr [ %0, %.lr.ph ], [ %i.fa, %.sink.split.i ] ; 15 uses
  %.0105299 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108298 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0232297 = phi ptr [ %1, %.lr.ph ], [ %.2234, %.sink.split.i ] ; 12 uses
  %.0238296 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %.sink.split.i ] ; 12 uses
  %.0244295 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %.sink.split.i ] ; 13 uses
  %.0250294 = phi i64 [ %i.e, %.lr.ph ], [ %i.ff, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099302, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEES6_SE_EENS0_9iter_sizeIT1_E4typeET_T0_SG_SI_SI_SI_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099302, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.0102300, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.0102300, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i32, ptr %i.z, align 4, !tbaa !505
  %i.af = load i32, ptr %i.y, align 4, !tbaa !505
  %i.ag = icmp slt i32 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
end_hunk_8
begin_hunk_9_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_NS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_:bb.a
  %.not.i89 = icmp eq ptr %i.gm, %.sroa.0222.0.lcssa
  br i1 %.not.i89, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !226

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0237.0.lcssa, %bb.ad ], [ %i.gl, %bb.ae ], [ %i.gm, %bb.af ] ; 5 uses
  %i.gp = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.gq = ptrtoint ptr %.sroa.0222.0.lcssa to i64 ; 3 uses
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = getelementptr inbounds i8, ptr %i.ge, i64 %i.gr ; 5 uses
  %.not1.i.i90 = icmp eq ptr %.lcssa.i, %.sroa.0222.0.lcssa
  br i1 %.not1.i.i90, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91.preheader

.lr.ph.i.i91.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gt = add i64 %i.gp, -4
  %i.gu = sub i64 %i.gt, %i.gq                    ; 2 uses
  %i.gv = lshr i64 %i.gu, 2
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check475 = icmp ult i64 %i.gu, 44
  %i.gx = sub i64 %i.gf, %i.gq
  %diff.check473 = icmp ugt i64 %i.gx, -32
  %or.cond526 = select i1 %min.iters.check475, i1 true, i1 %diff.check473
  br i1 %or.cond526, label %.lr.ph.i.i91.preheader544, label %vector.ph476

vector.ph476:                                     ; preds = %.lr.ph.i.i91.preheader
  %n.vec477 = and i64 %i.gw, 9223372036854775800  ; 3 uses
  %i.gy = mul i64 %n.vec477, -4                   ; 2 uses
  %i.gz = getelementptr i8, ptr %i.gs, i64 %i.gy
  %i.ha = getelementptr i8, ptr %.lcssa.i, i64 %i.gy
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body478 ] ; 2 uses
  %i.hb = mul i64 %index479, -4                   ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.gs, i64 %i.hb ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.lcssa.i, i64 %i.hb ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %next.gep481, i64 -16
  %i.hd = getelementptr inbounds i8, ptr %next.gep481, i64 -32
  %wide.load482 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !505, !noalias !11744
  %wide.load483 = load <4 x i32>, ptr %i.hd, align 4, !tbaa !505, !noalias !11744
  %i.he = getelementptr inbounds i8, ptr %next.gep480, i64 -16
  %i.hf = getelementptr inbounds i8, ptr %next.gep480, i64 -32
  store <4 x i32> %wide.load482, ptr %i.he, align 4, !tbaa !505, !noalias !11744
  store <4 x i32> %wide.load483, ptr %i.hf, align 4, !tbaa !505, !noalias !11744
  %index.next484 = add nuw i64 %index479, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.hg, label %middle.block485, label %vector.body478, !llvm.loop !11716

middle.block485:                                  ; preds = %vector.body478
  %cmp.n486 = icmp eq i64 %i.gw, %n.vec477
  br i1 %cmp.n486, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91.preheader544

.lr.ph.i.i91.preheader544:                        ; preds = %.lr.ph.i.i91.preheader, %middle.block485
  %.sroa.0.0.i92.ph = phi ptr [ %i.gs, %.lr.ph.i.i91.preheader ], [ %i.gz, %middle.block485 ]
  %.ph545 = phi ptr [ %.lcssa.i, %.lr.ph.i.i91.preheader ], [ %i.ha, %middle.block485 ]
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader544, %.lr.ph.i.i91
  %.sroa.0.0.i92 = phi ptr [ %i.hj, %.lr.ph.i.i91 ], [ %.sroa.0.0.i92.ph, %.lr.ph.i.i91.preheader544 ]
  %i.hh = phi ptr [ %i.hi, %.lr.ph.i.i91 ], [ %.ph545, %.lr.ph.i.i91.preheader544 ]
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -4 ; 3 uses
  %i.hj = getelementptr inbounds i8, ptr %.sroa.0.0.i92, i64 -4 ; 2 uses
  %i.hk = load i32, ptr %i.hi, align 4, !tbaa !505, !noalias !11744
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !505, !noalias !11744
  %.not.i.i93 = icmp eq ptr %i.hi, %.sroa.0222.0.lcssa
  br i1 %.not.i.i93, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91, !llvm.loop !11717

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94: ; preds = %.lr.ph.i.i91, %middle.block485, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, %bb.ac
  %.sroa.0222.5 = phi ptr [ %i.ge, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0222.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0237.5 = phi ptr [ %i.gs, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0237.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0251.6 = phi ptr [ %i.hl, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0251.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i95 = icmp eq i64 %.neg307, 0
  %.not17.i = icmp eq ptr %.sroa.0222.5, %.sroa.0237.5
  %or.cond = select i1 %.not.i95, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0122.0.ph = phi ptr [ %i.hr, %bb.ah ], [ %.sroa.0251.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.hs, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0237.5, %bb.ag ]
  %i.hm = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0122.0 = phi ptr [ %i.hr, %bb.ai ], [ %.sroa.0122.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.hn, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.hn = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !505, !noalias !11745 ; 2 uses
  %i.hp = load i32, ptr %i.hm, align 4, !tbaa !505, !noalias !11745 ; 2 uses
  %i.hq = icmp slt i32 %i.ho, %i.hp
  %i.hr = getelementptr inbounds i8, ptr %.sroa.0122.0, i64 -4 ; 6 uses
  br i1 %i.hq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hs = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.hp, ptr %i.hr, align 4, !tbaa !505, !noalias !11745
  %i.ht = icmp eq ptr %i.hs, %i.gh
  br i1 %i.ht, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !199

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.ho, ptr %i.hr, align 4, !tbaa !505, !noalias !11745
  %i.hu = icmp eq ptr %i.hn, %.sroa.0222.5
  br i1 %i.hu, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !199

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0122.1 = phi ptr [ %.sroa.0251.6, %bb.ag ], [ %i.hr, %bb.ah ], [ %i.hr, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.gh, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0237.5, %bb.ag ], [ %i.hn, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !630, !noalias !11745
  %.not1.i.i96 = icmp eq ptr %.sroa.012.2.i, %.sroa.0222.5
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %.sroa.0122.1491 = ptrtoaddr ptr %.sroa.0122.1 to i64
  %.sroa.012.2.i490 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.hv = ptrtoaddr ptr %.sroa.0222.5 to i64
  %i.hw = add i64 %.sroa.012.2.i490, -4
  %i.hx = sub i64 %i.hw, %i.hv                    ; 2 uses
  %i.hy = lshr i64 %i.hx, 2
  %i.hz = add nuw nsw i64 %i.hy, 1                ; 2 uses
  %min.iters.check494 = icmp ult i64 %i.hx, 44
  %i.ia = sub i64 %.sroa.0122.1491, %.sroa.012.2.i490
  %diff.check492 = icmp ugt i64 %i.ia, -32
  %or.cond527 = select i1 %min.iters.check494, i1 true, i1 %diff.check492
  br i1 %or.cond527, label %.lr.ph.i.i97.preheader531, label %vector.ph495

vector.ph495:                                     ; preds = %.lr.ph.i.i97.preheader
  %n.vec496 = and i64 %i.hz, 9223372036854775800  ; 3 uses
  %i.ib = mul i64 %n.vec496, -4                   ; 2 uses
  %i.ic = getelementptr i8, ptr %.sroa.0122.1, i64 %i.ib ; 2 uses
  %i.id = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ib
  br label %vector.body497

vector.body497:                                   ; preds = %vector.body497, %vector.ph495
  %index498 = phi i64 [ 0, %vector.ph495 ], [ %index.next503, %vector.body497 ] ; 2 uses
  %i.ie = mul i64 %index498, -4                   ; 2 uses
  %next.gep499 = getelementptr i8, ptr %.sroa.0122.1, i64 %i.ie ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds i8, ptr %next.gep500, i64 -16
  %i.ig = getelementptr inbounds i8, ptr %next.gep500, i64 -32
  %wide.load501 = load <4 x i32>, ptr %i.if, align 4, !tbaa !505, !noalias !11746
  %wide.load502 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !505, !noalias !11746
  %i.ih = getelementptr inbounds i8, ptr %next.gep499, i64 -16
  %i.ii = getelementptr inbounds i8, ptr %next.gep499, i64 -32
  store <4 x i32> %wide.load501, ptr %i.ih, align 4, !tbaa !505, !noalias !11746
  store <4 x i32> %wide.load502, ptr %i.ii, align 4, !tbaa !505, !noalias !11746
  %index.next503 = add nuw i64 %index498, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.ij, label %middle.block504, label %vector.body497, !llvm.loop !11724

middle.block504:                                  ; preds = %vector.body497
  %cmp.n505 = icmp eq i64 %i.hz, %n.vec496
  br i1 %cmp.n505, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97.preheader531

.lr.ph.i.i97.preheader531:                        ; preds = %.lr.ph.i.i97.preheader, %middle.block504
  %.sroa.0.0.i98.ph = phi ptr [ %.sroa.0122.1, %.lr.ph.i.i97.preheader ], [ %i.ic, %middle.block504 ]
  %.ph532 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i97.preheader ], [ %i.id, %middle.block504 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader531, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.im, %.lr.ph.i.i97 ], [ %.sroa.0.0.i98.ph, %.lr.ph.i.i97.preheader531 ]
  %i.ik = phi ptr [ %i.il, %.lr.ph.i.i97 ], [ %.ph532, %.lr.ph.i.i97.preheader531 ]
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -4 ; 3 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.0.0.i98, i64 -4 ; 3 uses
  %i.in = load i32, ptr %i.il, align 4, !tbaa !505, !noalias !11746
  store i32 %i.in, ptr %i.im, align 4, !tbaa !505, !noalias !11746
  %.not.i.i99 = icmp eq ptr %i.il, %.sroa.0222.5
  br i1 %.not.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97, !llvm.loop !11725

bb.aj:                                            ; preds = %.thread
  br i1 %i.gg, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.io = phi ptr [ %i.ge, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1392, %bb.aj ], [ %.sroa.speculated275, %.thread.thread ] ; 3 uses
  %.sroa.0212.0332 = phi ptr [ %.sroa.0212.0.lcssa, %bb.aj ], [ %.sroa.0212.0335, %.thread.thread ] ; 3 uses
  %.sroa.0222.0330 = phi ptr [ %.sroa.0222.0.lcssa, %bb.aj ], [ %.sroa.0222.0337, %.thread.thread ] ; 3 uses
  %.sroa.0237.0327 = phi ptr [ %.sroa.0237.0.lcssa, %bb.aj ], [ %.sroa.0237.0338, %.thread.thread ] ; 5 uses
  %.sroa.0251.0325 = phi ptr [ %.sroa.0251.0.lcssa, %bb.aj ], [ %.sroa.0251.0339, %.thread.thread ] ; 5 uses
  %.sroa.0262.0322 = phi ptr [ %.sroa.0262.0.lcssa, %bb.aj ], [ %.sroa.0262.0340, %.thread.thread ] ; 3 uses
  %.0286319 = phi i64 [ %.0286.lcssa, %bb.aj ], [ %.0286341, %.thread.thread ] ; 3 uses
  %.063316 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063342, %.thread.thread ] ; 3 uses
  %i.ip = phi ptr [ %i.gh, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i101 = icmp eq ptr %.sroa.0237.0327, %.sroa.0222.0330
  br i1 %.not1.i.i101, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102.preheader

.lr.ph.i.i102.preheader:                          ; preds = %bb.ak
  %.sroa.0251.0325455 = ptrtoaddr ptr %.sroa.0251.0325 to i64
  %.sroa.0237.0327454 = ptrtoaddr ptr %.sroa.0237.0327 to i64 ; 2 uses
  %i.iq = ptrtoaddr ptr %.sroa.0222.0330 to i64
  %i.ir = add i64 %.sroa.0237.0327454, -4
  %i.is = sub i64 %i.ir, %i.iq                    ; 2 uses
  %i.it = lshr i64 %i.is, 2
  %i.iu = add nuw nsw i64 %i.it, 1                ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.is, 44
  %i.iv = sub i64 %.sroa.0251.0325455, %.sroa.0237.0327454
  %diff.check456 = icmp ugt i64 %i.iv, -32
  %or.cond528 = or i1 %min.iters.check458, %diff.check456
  br i1 %or.cond528, label %.lr.ph.i.i102.preheader546, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph.i.i102.preheader
  %n.vec460 = and i64 %i.iu, 9223372036854775800  ; 3 uses
  %i.iw = mul i64 %n.vec460, -4                   ; 2 uses
  %i.ix = getelementptr i8, ptr %.sroa.0251.0325, i64 %i.iw ; 2 uses
  %i.iy = getelementptr i8, ptr %.sroa.0237.0327, i64 %i.iw
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %i.iz = mul i64 %index462, -4                   ; 2 uses
  %next.gep463 = getelementptr i8, ptr %.sroa.0251.0325, i64 %i.iz ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.sroa.0237.0327, i64 %i.iz ; 2 uses
  %i.ja = getelementptr inbounds i8, ptr %next.gep464, i64 -16
  %i.jb = getelementptr inbounds i8, ptr %next.gep464, i64 -32
  %wide.load465 = load <4 x i32>, ptr %i.ja, align 4, !tbaa !505, !noalias !11747
  %wide.load466 = load <4 x i32>, ptr %i.jb, align 4, !tbaa !505, !noalias !11747
  %i.jc = getelementptr inbounds i8, ptr %next.gep463, i64 -16
  %i.jd = getelementptr inbounds i8, ptr %next.gep463, i64 -32
  store <4 x i32> %wide.load465, ptr %i.jc, align 4, !tbaa !505, !noalias !11747
  store <4 x i32> %wide.load466, ptr %i.jd, align 4, !tbaa !505, !noalias !11747
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.je = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.je, label %middle.block468, label %vector.body461, !llvm.loop !11730

middle.block468:                                  ; preds = %vector.body461
  %cmp.n469 = icmp eq i64 %i.iu, %n.vec460
  br i1 %cmp.n469, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102.preheader546

.lr.ph.i.i102.preheader546:                       ; preds = %.lr.ph.i.i102.preheader, %middle.block468
  %.sroa.0.0.i103.ph = phi ptr [ %.sroa.0251.0325, %.lr.ph.i.i102.preheader ], [ %i.ix, %middle.block468 ]
  %.ph547 = phi ptr [ %.sroa.0237.0327, %.lr.ph.i.i102.preheader ], [ %i.iy, %middle.block468 ]
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader546, %.lr.ph.i.i102
  %.sroa.0.0.i103 = phi ptr [ %i.jh, %.lr.ph.i.i102 ], [ %.sroa.0.0.i103.ph, %.lr.ph.i.i102.preheader546 ]
  %i.jf = phi ptr [ %i.jg, %.lr.ph.i.i102 ], [ %.ph547, %.lr.ph.i.i102.preheader546 ]
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 -4 ; 3 uses
  %i.jh = getelementptr inbounds i8, ptr %.sroa.0.0.i103, i64 -4 ; 3 uses
  %i.ji = load i32, ptr %i.jg, align 4, !tbaa !505, !noalias !11747
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !505, !noalias !11747
  %.not.i.i104 = icmp eq ptr %i.jg, %.sroa.0222.0330
  br i1 %.not.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102, !llvm.loop !11731

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100: ; preds = %.lr.ph.i.i102, %.lr.ph.i.i97, %middle.block468, %middle.block504, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jj = phi ptr [ %i.ge, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.ge, %bb.aj ], [ %i.io, %bb.ak ], [ %i.ge, %middle.block504 ], [ %i.io, %middle.block468 ], [ %i.ge, %.lr.ph.i.i97 ], [ %i.io, %.lr.ph.i.i102 ]
  %.3 = phi i64 [ %.1392, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated275, %.thread.thread ], [ %.1392, %bb.aj ], [ %.2, %bb.ak ], [ %.1392, %middle.block504 ], [ %.2, %middle.block468 ], [ %.1392, %.lr.ph.i.i97 ], [ %.2, %.lr.ph.i.i102 ]
  %.sroa.0212.0333 = phi ptr [ %.sroa.0212.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0212.0335, %.thread.thread ], [ %.sroa.0212.0.lcssa, %bb.aj ], [ %.sroa.0212.0332, %bb.ak ], [ %.sroa.0212.0.lcssa, %middle.block504 ], [ %.sroa.0212.0332, %middle.block468 ], [ %.sroa.0212.0.lcssa, %.lr.ph.i.i97 ], [ %.sroa.0212.0332, %.lr.ph.i.i102 ]
  %.sroa.0262.0323 = phi ptr [ %.sroa.0262.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0262.0340, %.thread.thread ], [ %.sroa.0262.0.lcssa, %bb.aj ], [ %.sroa.0262.0322, %bb.ak ], [ %.sroa.0262.0.lcssa, %middle.block504 ], [ %.sroa.0262.0322, %middle.block468 ], [ %.sroa.0262.0.lcssa, %.lr.ph.i.i97 ], [ %.sroa.0262.0322, %.lr.ph.i.i102 ]
  %.0286320 = phi i64 [ %.0286.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0286341, %.thread.thread ], [ %.0286.lcssa, %bb.aj ], [ %.0286319, %bb.ak ], [ %.0286.lcssa, %middle.block504 ], [ %.0286319, %middle.block468 ], [ %.0286.lcssa, %.lr.ph.i.i97 ], [ %.0286319, %.lr.ph.i.i102 ]
  %.063317 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063342, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063316, %bb.ak ], [ %.063.lcssa, %middle.block504 ], [ %.063316, %middle.block468 ], [ %.063.lcssa, %.lr.ph.i.i97 ], [ %.063316, %.lr.ph.i.i102 ]
  %i.jk = phi ptr [ %i.gh, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.gh, %bb.aj ], [ %i.ip, %bb.ak ], [ %i.gh, %middle.block504 ], [ %i.ip, %middle.block468 ], [ %i.gh, %.lr.ph.i.i97 ], [ %i.ip, %.lr.ph.i.i102 ] ; 4 uses
  %.sroa.0251.7 = phi ptr [ %.sroa.0122.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0251.0339, %.thread.thread ], [ %.sroa.0251.0.lcssa, %bb.aj ], [ %.sroa.0251.0325, %bb.ak ], [ %i.ic, %middle.block504 ], [ %i.ix, %middle.block468 ], [ %i.im, %.lr.ph.i.i97 ], [ %i.jh, %.lr.ph.i.i102 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0212.0333, ptr %34, align 8, !tbaa !630
  store ptr %.sroa.0262.0323, ptr %35, align 8, !tbaa !630
  store ptr %i.jj, ptr %36, align 8, !tbaa !630
  store ptr %i.jk, ptr %37, align 8, !tbaa !630
  store ptr %.sroa.0251.7, ptr %38, align 8, !tbaa !630
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_S8_S8_SI_NS0_7move_opEEET3_T_SL_T0_T1_RT2_SO_SK_NS0_9iter_sizeISN_E4typeESS_SS_SS_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0286320, i64 noundef %.063317, i64 noundef %.3, i1 noundef zeroext false)
  %i.jl = load ptr, ptr %33, align 8, !tbaa !630  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.jm = load ptr, ptr %32, align 8, !tbaa !630  ; 5 uses
  %.not1.i.i106 = icmp eq ptr %i.jm, %i.jk
  br i1 %.not1.i.i106, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107.preheader

.lr.ph.i.i107.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  %i.jn = ptrtoaddr ptr %i.jm to i64              ; 2 uses
  %i.jo = ptrtoaddr ptr %i.jl to i64
  %i.jp = ptrtoaddr ptr %i.jk to i64
  %i.jq = add i64 %i.jn, -4
  %i.jr = sub i64 %i.jq, %i.jp                    ; 2 uses
  %i.js = lshr i64 %i.jr, 2
  %i.jt = add nuw nsw i64 %i.js, 1                ; 2 uses
  %min.iters.check511 = icmp ult i64 %i.jr, 44
  %i.ju = sub i64 %i.jo, %i.jn
  %diff.check509 = icmp ugt i64 %i.ju, -32
  %or.cond529 = select i1 %min.iters.check511, i1 true, i1 %diff.check509
  br i1 %or.cond529, label %.lr.ph.i.i107.preheader530, label %vector.ph512

vector.ph512:                                     ; preds = %.lr.ph.i.i107.preheader
  %n.vec513 = and i64 %i.jt, 9223372036854775800  ; 3 uses
  %i.jv = mul i64 %n.vec513, -4                   ; 2 uses
  %i.jw = getelementptr i8, ptr %i.jl, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jm, i64 %i.jv
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph512
  %index515 = phi i64 [ 0, %vector.ph512 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %i.jy = mul i64 %index515, -4                   ; 2 uses
  %next.gep516 = getelementptr i8, ptr %i.jl, i64 %i.jy ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.jm, i64 %i.jy ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %next.gep517, i64 -16
  %i.ka = getelementptr inbounds i8, ptr %next.gep517, i64 -32
  %wide.load518 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !505, !noalias !11748
  %wide.load519 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !505, !noalias !11748
  %i.kb = getelementptr inbounds i8, ptr %next.gep516, i64 -16
  %i.kc = getelementptr inbounds i8, ptr %next.gep516, i64 -32
  store <4 x i32> %wide.load518, ptr %i.kb, align 4, !tbaa !505, !noalias !11748
  store <4 x i32> %wide.load519, ptr %i.kc, align 4, !tbaa !505, !noalias !11748
  %index.next520 = add nuw i64 %index515, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.kd, label %middle.block521, label %vector.body514, !llvm.loop !11736

middle.block521:                                  ; preds = %vector.body514
  %cmp.n522 = icmp eq i64 %i.jt, %n.vec513
  br i1 %cmp.n522, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107.preheader530

.lr.ph.i.i107.preheader530:                       ; preds = %.lr.ph.i.i107.preheader, %middle.block521
  %.sroa.0.0.i108.ph = phi ptr [ %i.jl, %.lr.ph.i.i107.preheader ], [ %i.jw, %middle.block521 ]
  %.ph = phi ptr [ %i.jm, %.lr.ph.i.i107.preheader ], [ %i.jx, %middle.block521 ]
  br label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %.lr.ph.i.i107.preheader530, %.lr.ph.i.i107
  %.sroa.0.0.i108 = phi ptr [ %i.kg, %.lr.ph.i.i107 ], [ %.sroa.0.0.i108.ph, %.lr.ph.i.i107.preheader530 ]
  %i.ke = phi ptr [ %i.kf, %.lr.ph.i.i107 ], [ %.ph, %.lr.ph.i.i107.preheader530 ]
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -4 ; 3 uses
  %i.kg = getelementptr inbounds i8, ptr %.sroa.0.0.i108, i64 -4 ; 2 uses
  %i.kh = load i32, ptr %i.kf, align 4, !tbaa !505, !noalias !11748
  store i32 %i.kh, ptr %i.kg, align 4, !tbaa !505, !noalias !11748
  %.not.i.i109 = icmp eq ptr %i.kf, %i.jk
  br i1 %.not.i.i109, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107, !llvm.loop !11737

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110: ; preds = %.lr.ph.i.i107, %middle.block521, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEES8_SI_NS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISM_E4typeESP_SP_SP_SP_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !630    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !630    ; 4 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !630
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not348 = icmp eq i64 %i.a, 0
  br i1 %.not348, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = mul i64 %2, -4
  %i.p = sub i64 0, %2                            ; 2 uses
  %.idx = shl nsw i64 %i.p, 2
  %.not68 = icmp eq i64 %6, 0
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.r = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.s = and i64 %2, 4611686018427387903
  %i.t = icmp eq i64 %i.s, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
end_hunk_9
begin_hunk_10_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fq, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fq, %bb.af ] ; 5 uses
  %i.fr = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.fs = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 2
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fv ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fx = add i64 %i.fr, -4
  %i.fy = sub i64 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.fy, 60
  %i.gb = sub i64 %i.fr, %i.fj
  %diff.check402 = icmp ugt i64 %i.gb, -32
  %or.cond455 = select i1 %min.iters.check404, i1 true, i1 %diff.check402
  br i1 %or.cond455, label %.lr.ph.i.i148.preheader470, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec406 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec406, 2                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fw, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gc
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body407 ] ; 2 uses
  %i.gf = shl i64 %index408, 2                    ; 2 uses
  %next.gep409 = getelementptr i8, ptr %i.fw, i64 %i.gf ; 2 uses
  %next.gep410 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep410, i64 16
  %wide.load411 = load <4 x i32>, ptr %next.gep410, align 4, !tbaa !505
  %wide.load412 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !505
  %i.gh = getelementptr i8, ptr %next.gep409, i64 16
  store <4 x i32> %wide.load411, ptr %next.gep409, align 4, !tbaa !505
  store <4 x i32> %wide.load412, ptr %i.gh, align 4, !tbaa !505
  %index.next413 = add nuw i64 %index408, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.gi, label %middle.block414, label %vector.body407, !llvm.loop !11915

middle.block414:                                  ; preds = %vector.body407
  %cmp.n415 = icmp eq i64 %i.ga, %n.vec406
  br i1 %cmp.n415, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader470

.lr.ph.i.i148.preheader470:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block414
  %.010.i.i149.ph = phi ptr [ %i.fw, %.lr.ph.i.i148.preheader ], [ %i.gd, %middle.block414 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.ge, %middle.block414 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader470, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gl, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader470 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gk, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader470 ] ; 2 uses
  %i.gj = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gj, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gk, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !11916

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block414, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gm, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.fw, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fi, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gq, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gt, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gq, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gr, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gn = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.go = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.gp = icmp slt i32 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gn, ptr %.024.i, align 4, !tbaa !505
  %i.gs = icmp eq ptr %i.gr, %i.fl
  br i1 %i.gs, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.go, ptr %.024.i, align 4, !tbaa !505
  %i.gu = icmp eq ptr %i.gt, %.5
  br i1 %i.gu, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gq, %bb.ai ], [ %i.gq, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gt, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fl, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i420 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i419 = ptrtoaddr ptr %.226.i to i64
  %i.gv = ptrtoaddr ptr %.5 to i64
  %i.gw = add i64 %i.gv, -4
  %i.gx = sub i64 %i.gw, %.223.i420               ; 2 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check423 = icmp ult i64 %i.gx, 44
  %i.ha = sub i64 %.223.i420, %.226.i419
  %diff.check421 = icmp ugt i64 %i.ha, -32
  %or.cond456 = select i1 %min.iters.check423, i1 true, i1 %diff.check421
  br i1 %or.cond456, label %.lr.ph.i.i156.preheader460, label %vector.ph424

vector.ph424:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec425 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hb = shl i64 %n.vec425, 2                    ; 2 uses
  %i.hc = getelementptr i8, ptr %.226.i, i64 %i.hb ; 2 uses
  %i.hd = getelementptr i8, ptr %.223.i, i64 %i.hb
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph424
  %index427 = phi i64 [ 0, %vector.ph424 ], [ %index.next432, %vector.body426 ] ; 2 uses
  %i.he = shl i64 %index427, 2                    ; 2 uses
  %next.gep428 = getelementptr i8, ptr %.226.i, i64 %i.he ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.223.i, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep429, i64 16
  %wide.load430 = load <4 x i32>, ptr %next.gep429, align 4, !tbaa !505
  %wide.load431 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !505
  %i.hg = getelementptr i8, ptr %next.gep428, i64 16
  store <4 x i32> %wide.load430, ptr %next.gep428, align 4, !tbaa !505
  store <4 x i32> %wide.load431, ptr %i.hg, align 4, !tbaa !505
  %index.next432 = add nuw i64 %index427, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.hh, label %middle.block433, label %vector.body426, !llvm.loop !11917

middle.block433:                                  ; preds = %vector.body426
  %cmp.n434 = icmp eq i64 %i.gz, %n.vec425
  br i1 %cmp.n434, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader460

.lr.ph.i.i156.preheader460:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block433
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.hc, %middle.block433 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hd, %middle.block433 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader460, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hk, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader460 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hj, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader460 ] ; 2 uses
  %i.hi = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.hi, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hj = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hj, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !11918

bb.aj:                                            ; preds = %.thread
  br i1 %i.fk, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hl = phi ptr [ %i.fi, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1321, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236276 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236279, %.thread.thread ] ; 3 uses
  %.0230273 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230280, %.thread.thread ] ; 3 uses
  %.0224271 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224281, %.thread.thread ] ; 5 uses
  %.0218269 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218282, %.thread.thread ] ; 5 uses
  %.0108267 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108283, %.thread.thread ] ; 3 uses
  %.0102263 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102285, %.thread.thread ] ; 3 uses
  %.099260 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099287, %.thread.thread ] ; 3 uses
  %i.hm = phi ptr [ %i.fl, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218269, %.0108267
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218269384 = ptrtoaddr ptr %.0218269 to i64   ; 2 uses
  %.0224271383 = ptrtoaddr ptr %.0224271 to i64
  %i.hn = ptrtoaddr ptr %.0108267 to i64
  %i.ho = add i64 %i.hn, -4
  %i.hp = sub i64 %i.ho, %.0218269384             ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check387 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %.0218269384, %.0224271383
  %diff.check385 = icmp ugt i64 %i.hs, -32
  %or.cond457 = or i1 %min.iters.check387, %diff.check385
  br i1 %or.cond457, label %.lr.ph.i.i163.preheader471, label %vector.ph388

vector.ph388:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec389 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = shl i64 %n.vec389, 2                    ; 2 uses
  %i.hu = getelementptr i8, ptr %.0224271, i64 %i.ht ; 2 uses
  %i.hv = getelementptr i8, ptr %.0218269, i64 %i.ht
  br label %vector.body390

vector.body390:                                   ; preds = %vector.body390, %vector.ph388
  %index391 = phi i64 [ 0, %vector.ph388 ], [ %index.next396, %vector.body390 ] ; 2 uses
  %i.hw = shl i64 %index391, 2                    ; 2 uses
  %next.gep392 = getelementptr i8, ptr %.0224271, i64 %i.hw ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0218269, i64 %i.hw ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep393, i64 16
  %wide.load394 = load <4 x i32>, ptr %next.gep393, align 4, !tbaa !505
  %wide.load395 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !505
  %i.hy = getelementptr i8, ptr %next.gep392, i64 16
  store <4 x i32> %wide.load394, ptr %next.gep392, align 4, !tbaa !505
  store <4 x i32> %wide.load395, ptr %i.hy, align 4, !tbaa !505
  %index.next396 = add nuw i64 %index391, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next396, %n.vec389
  br i1 %i.hz, label %middle.block397, label %vector.body390, !llvm.loop !11919

middle.block397:                                  ; preds = %vector.body390
  %cmp.n398 = icmp eq i64 %i.hr, %n.vec389
  br i1 %cmp.n398, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader471

.lr.ph.i.i163.preheader471:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block397
  %.010.i.i164.ph = phi ptr [ %.0224271, %.lr.ph.i.i163.preheader ], [ %i.hu, %middle.block397 ]
  %.079.i.i165.ph = phi ptr [ %.0218269, %.lr.ph.i.i163.preheader ], [ %i.hv, %middle.block397 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader471, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ic, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader471 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.ib, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader471 ] ; 2 uses
  %i.ia = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.ia, ptr %.010.i.i164, align 4, !tbaa !505
  %i.ib = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ib, %.0108267
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !11920

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block397, %middle.block433, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.id = phi ptr [ %i.fi, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fi, %bb.aj ], [ %i.hl, %bb.ak ], [ %i.fi, %middle.block433 ], [ %i.hl, %middle.block397 ], [ %i.fi, %.lr.ph.i.i156 ], [ %i.hl, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1321, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1321, %bb.aj ], [ %.2, %bb.ak ], [ %.1321, %middle.block433 ], [ %.2, %middle.block397 ], [ %.1321, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236277 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236279, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236276, %bb.ak ], [ %.0236.lcssa, %middle.block433 ], [ %.0236276, %middle.block397 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236276, %.lr.ph.i.i163 ]
  %.0230274 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230280, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230273, %bb.ak ], [ %.0230.lcssa, %middle.block433 ], [ %.0230273, %middle.block397 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230273, %.lr.ph.i.i163 ]
  %.0102264 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102285, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102263, %bb.ak ], [ %.0102.lcssa, %middle.block433 ], [ %.0102263, %middle.block397 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102263, %.lr.ph.i.i163 ]
  %.099261 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099287, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099260, %bb.ak ], [ %.099.lcssa, %middle.block433 ], [ %.099260, %middle.block397 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099260, %.lr.ph.i.i163 ]
  %i.ie = phi ptr [ %i.fl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fl, %bb.aj ], [ %i.hm, %bb.ak ], [ %i.fl, %middle.block433 ], [ %i.hm, %middle.block397 ], [ %i.fl, %.lr.ph.i.i156 ], [ %i.hm, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224281, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224271, %bb.ak ], [ %i.hc, %middle.block433 ], [ %i.hu, %middle.block397 ], [ %i.hk, %.lr.ph.i.i156 ], [ %i.ic, %.lr.ph.i.i163 ]
  %i.if = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPhNS1_4lessEPNS_9container4test12copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102264, ptr noundef %.0230274, ptr noundef %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ie, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236277, i64 noundef %.099261, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.ig, %i.ie
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.ih = ptrtoaddr ptr %i.ig to i64              ; 2 uses
  %i.ii = ptrtoaddr ptr %i.if to i64
  %i.ij = ptrtoaddr ptr %i.ie to i64
  %i.ik = add i64 %i.ij, -4
  %i.il = sub i64 %i.ik, %i.ih                    ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check440 = icmp ult i64 %i.il, 44
  %i.io = sub i64 %i.ih, %i.ii
  %diff.check438 = icmp ugt i64 %i.io, -32
  %or.cond458 = or i1 %min.iters.check440, %diff.check438
  br i1 %or.cond458, label %.lr.ph.i.i170.preheader459, label %vector.ph441

vector.ph441:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec442 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.ip = shl i64 %n.vec442, 2                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.if, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.ig, i64 %i.ip
  br label %vector.body443

vector.body443:                                   ; preds = %vector.body443, %vector.ph441
  %index444 = phi i64 [ 0, %vector.ph441 ], [ %index.next449, %vector.body443 ] ; 2 uses
  %i.is = shl i64 %index444, 2                    ; 2 uses
  %next.gep445 = getelementptr i8, ptr %i.if, i64 %i.is ; 2 uses
  %next.gep446 = getelementptr i8, ptr %i.ig, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep446, i64 16
  %wide.load447 = load <4 x i32>, ptr %next.gep446, align 4, !tbaa !505
  %wide.load448 = load <4 x i32>, ptr %i.it, align 4, !tbaa !505
  %i.iu = getelementptr i8, ptr %next.gep445, i64 16
  store <4 x i32> %wide.load447, ptr %next.gep445, align 4, !tbaa !505
  store <4 x i32> %wide.load448, ptr %i.iu, align 4, !tbaa !505
  %index.next449 = add nuw i64 %index444, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next449, %n.vec442
  br i1 %i.iv, label %middle.block450, label %vector.body443, !llvm.loop !11921

middle.block450:                                  ; preds = %vector.body443
  %cmp.n451 = icmp eq i64 %i.in, %n.vec442
  br i1 %cmp.n451, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader459

.lr.ph.i.i170.preheader459:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block450
  %.010.i.i171.ph = phi ptr [ %i.if, %.lr.ph.i.i170.preheader ], [ %i.iq, %middle.block450 ]
  %.079.i.i172.ph = phi ptr [ %i.ig, %.lr.ph.i.i170.preheader ], [ %i.ir, %middle.block450 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader459, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.iy, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader459 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.ix, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader459 ] ; 2 uses
  %i.iw = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.iw, ptr %.010.i.i171, align 4, !tbaa !505
  %i.ix = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.ix, %i.ie
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !11922

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block450, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not292 = icmp eq i64 %i.e, 0
  br i1 %.not292, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ew, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 3 uses
  %.0302 = phi i64 [ %5, %.lr.ph ], [ %.1, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 2 uses
  %.099301 = phi i64 [ %i.m, %.lr.ph ], [ %i.eu, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 7 uses
  %.0102299 = phi ptr [ %0, %.lr.ph ], [ %i.es, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0105298 = phi i8 [ 1, %.lr.ph ], [ %.2107, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 8 uses
  %.0108297 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 15 uses
  %.0232296 = phi ptr [ %1, %.lr.ph ], [ %.2234, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0238295 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 12 uses
  %.0244294 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 13 uses
  %.0250293 = phi i64 [ %i.e, %.lr.ph ], [ %i.ex, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyIPhPNS_9container4test12copyable_intEEEvT_S8_RS8_T0_SA_SA_.exit ] ; 5 uses
  %i.t = icmp ult i64 %.099301, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPhNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099301, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.0102299, i64 %.02226.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0102299, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !464
  %i.af = load i8, ptr %i.y, align 1, !tbaa !464
  %i.ag = icmp ult i8 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
end_hunk_10
begin_hunk_11_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_:bb.a
  %.not.i90 = icmp eq ptr %i.gf, %.sroa.0225.0.lcssa
  br i1 %.not.i90, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !226

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0240.0.lcssa, %bb.ad ], [ %i.ge, %bb.ae ], [ %i.gf, %bb.af ] ; 5 uses
  %i.gi = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.gj = ptrtoint ptr %.sroa.0225.0.lcssa to i64 ; 3 uses
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %i.fx, i64 %i.gk ; 5 uses
  %.not1.i.i91 = icmp eq ptr %.lcssa.i, %.sroa.0225.0.lcssa
  br i1 %.not1.i.i91, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95, label %.lr.ph.i.i92.preheader

.lr.ph.i.i92.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gm = add i64 %i.gi, -4
  %i.gn = sub i64 %i.gm, %i.gj                    ; 2 uses
  %i.go = lshr i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check476 = icmp ult i64 %i.gn, 44
  %i.gq = sub i64 %i.fy, %i.gj
  %diff.check474 = icmp ugt i64 %i.gq, -32
  %or.cond527 = select i1 %min.iters.check476, i1 true, i1 %diff.check474
  br i1 %or.cond527, label %.lr.ph.i.i92.preheader545, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph.i.i92.preheader
  %n.vec478 = and i64 %i.gp, 9223372036854775800  ; 3 uses
  %i.gr = mul i64 %n.vec478, -4                   ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gl, i64 %i.gr
  %i.gt = getelementptr i8, ptr %.lcssa.i, i64 %i.gr
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next485, %vector.body479 ] ; 2 uses
  %i.gu = mul i64 %index480, -4                   ; 2 uses
  %next.gep481 = getelementptr i8, ptr %i.gl, i64 %i.gu ; 2 uses
  %next.gep482 = getelementptr i8, ptr %.lcssa.i, i64 %i.gu ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %next.gep482, i64 -16
  %i.gw = getelementptr inbounds i8, ptr %next.gep482, i64 -32
  %wide.load483 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !505, !noalias !11989
  %wide.load484 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !505, !noalias !11989
  %i.gx = getelementptr inbounds i8, ptr %next.gep481, i64 -16
  %i.gy = getelementptr inbounds i8, ptr %next.gep481, i64 -32
  store <4 x i32> %wide.load483, ptr %i.gx, align 4, !tbaa !505, !noalias !11989
  store <4 x i32> %wide.load484, ptr %i.gy, align 4, !tbaa !505, !noalias !11989
  %index.next485 = add nuw i64 %index480, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next485, %n.vec478
  br i1 %i.gz, label %middle.block486, label %vector.body479, !llvm.loop !11961

middle.block486:                                  ; preds = %vector.body479
  %cmp.n487 = icmp eq i64 %i.gp, %n.vec478
  br i1 %cmp.n487, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95, label %.lr.ph.i.i92.preheader545

.lr.ph.i.i92.preheader545:                        ; preds = %.lr.ph.i.i92.preheader, %middle.block486
  %.sroa.0.0.i93.ph = phi ptr [ %i.gl, %.lr.ph.i.i92.preheader ], [ %i.gs, %middle.block486 ]
  %.ph546 = phi ptr [ %.lcssa.i, %.lr.ph.i.i92.preheader ], [ %i.gt, %middle.block486 ]
  br label %.lr.ph.i.i92

.lr.ph.i.i92:                                     ; preds = %.lr.ph.i.i92.preheader545, %.lr.ph.i.i92
  %.sroa.0.0.i93 = phi ptr [ %i.hc, %.lr.ph.i.i92 ], [ %.sroa.0.0.i93.ph, %.lr.ph.i.i92.preheader545 ]
  %i.ha = phi ptr [ %i.hb, %.lr.ph.i.i92 ], [ %.ph546, %.lr.ph.i.i92.preheader545 ]
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -4 ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %.sroa.0.0.i93, i64 -4 ; 2 uses
  %i.hd = load i32, ptr %i.hb, align 4, !tbaa !505, !noalias !11989
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !505, !noalias !11989
  %.not.i.i94 = icmp eq ptr %i.hb, %.sroa.0225.0.lcssa
  br i1 %.not.i.i94, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95, label %.lr.ph.i.i92, !llvm.loop !11962

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95: ; preds = %.lr.ph.i.i92, %middle.block486, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95, %bb.ac
  %.sroa.0225.5 = phi ptr [ %i.fx, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95 ], [ %.sroa.0225.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0240.5 = phi ptr [ %i.gl, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95 ], [ %.sroa.0240.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0254.6 = phi ptr [ %i.he, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit95 ], [ %.sroa.0254.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i96 = icmp eq i64 %.neg308, 0
  %.not17.i = icmp eq ptr %.sroa.0225.5, %.sroa.0240.5
  %or.cond = select i1 %.not.i96, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0123.0.ph = phi ptr [ %i.hk, %bb.ah ], [ %.sroa.0254.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.hl, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0240.5, %bb.ag ]
  %i.hf = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0123.0 = phi ptr [ %i.hk, %bb.ai ], [ %.sroa.0123.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.hg, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.hg = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !505, !noalias !11990 ; 2 uses
  %i.hi = load i32, ptr %i.hf, align 4, !tbaa !505, !noalias !11990 ; 2 uses
  %i.hj = icmp slt i32 %i.hh, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.sroa.0123.0, i64 -4 ; 6 uses
  br i1 %i.hj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hl = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.hi, ptr %i.hk, align 4, !tbaa !505, !noalias !11990
  %i.hm = icmp eq ptr %i.hl, %i.ga
  br i1 %i.hm, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !199

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.hh, ptr %i.hk, align 4, !tbaa !505, !noalias !11990
  %i.hn = icmp eq ptr %i.hg, %.sroa.0225.5
  br i1 %i.hn, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !199

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0123.1 = phi ptr [ %.sroa.0254.6, %bb.ag ], [ %i.hk, %bb.ah ], [ %i.hk, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.ga, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0240.5, %bb.ag ], [ %i.hg, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !630, !noalias !11990
  %.not1.i.i97 = icmp eq ptr %.sroa.012.2.i, %.sroa.0225.5
  br i1 %.not1.i.i97, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i98.preheader

.lr.ph.i.i98.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %.sroa.0123.1492 = ptrtoaddr ptr %.sroa.0123.1 to i64
  %.sroa.012.2.i491 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.ho = ptrtoaddr ptr %.sroa.0225.5 to i64
  %i.hp = add i64 %.sroa.012.2.i491, -4
  %i.hq = sub i64 %i.hp, %i.ho                    ; 2 uses
  %i.hr = lshr i64 %i.hq, 2
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check495 = icmp ult i64 %i.hq, 44
  %i.ht = sub i64 %.sroa.0123.1492, %.sroa.012.2.i491
  %diff.check493 = icmp ugt i64 %i.ht, -32
  %or.cond528 = select i1 %min.iters.check495, i1 true, i1 %diff.check493
  br i1 %or.cond528, label %.lr.ph.i.i98.preheader532, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph.i.i98.preheader
  %n.vec497 = and i64 %i.hs, 9223372036854775800  ; 3 uses
  %i.hu = mul i64 %n.vec497, -4                   ; 2 uses
  %i.hv = getelementptr i8, ptr %.sroa.0123.1, i64 %i.hu ; 2 uses
  %i.hw = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.hu
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next504, %vector.body498 ] ; 2 uses
  %i.hx = mul i64 %index499, -4                   ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.sroa.0123.1, i64 %i.hx ; 2 uses
  %next.gep501 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.hx ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %next.gep501, i64 -16
  %i.hz = getelementptr inbounds i8, ptr %next.gep501, i64 -32
  %wide.load502 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !505, !noalias !11991
  %wide.load503 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !505, !noalias !11991
  %i.ia = getelementptr inbounds i8, ptr %next.gep500, i64 -16
  %i.ib = getelementptr inbounds i8, ptr %next.gep500, i64 -32
  store <4 x i32> %wide.load502, ptr %i.ia, align 4, !tbaa !505, !noalias !11991
  store <4 x i32> %wide.load503, ptr %i.ib, align 4, !tbaa !505, !noalias !11991
  %index.next504 = add nuw i64 %index499, 8       ; 2 uses
  %i.ic = icmp eq i64 %index.next504, %n.vec497
  br i1 %i.ic, label %middle.block505, label %vector.body498, !llvm.loop !11969

middle.block505:                                  ; preds = %vector.body498
  %cmp.n506 = icmp eq i64 %i.hs, %n.vec497
  br i1 %cmp.n506, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i98.preheader532

.lr.ph.i.i98.preheader532:                        ; preds = %.lr.ph.i.i98.preheader, %middle.block505
  %.sroa.0.0.i99.ph = phi ptr [ %.sroa.0123.1, %.lr.ph.i.i98.preheader ], [ %i.hv, %middle.block505 ]
  %.ph533 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i98.preheader ], [ %i.hw, %middle.block505 ]
  br label %.lr.ph.i.i98

.lr.ph.i.i98:                                     ; preds = %.lr.ph.i.i98.preheader532, %.lr.ph.i.i98
  %.sroa.0.0.i99 = phi ptr [ %i.if, %.lr.ph.i.i98 ], [ %.sroa.0.0.i99.ph, %.lr.ph.i.i98.preheader532 ]
  %i.id = phi ptr [ %i.ie, %.lr.ph.i.i98 ], [ %.ph533, %.lr.ph.i.i98.preheader532 ]
  %i.ie = getelementptr inbounds i8, ptr %i.id, i64 -4 ; 3 uses
  %i.if = getelementptr inbounds i8, ptr %.sroa.0.0.i99, i64 -4 ; 3 uses
  %i.ig = load i32, ptr %i.ie, align 4, !tbaa !505, !noalias !11991
  store i32 %i.ig, ptr %i.if, align 4, !tbaa !505, !noalias !11991
  %.not.i.i100 = icmp eq ptr %i.ie, %.sroa.0225.5
  br i1 %.not.i.i100, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i98, !llvm.loop !11970

bb.aj:                                            ; preds = %.thread
  br i1 %i.fz, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ih = phi ptr [ %i.fx, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1393, %bb.aj ], [ %.sroa.speculated278, %.thread.thread ] ; 3 uses
  %.sroa.0215.0333 = phi ptr [ %.sroa.0215.0.lcssa, %bb.aj ], [ %.sroa.0215.0336, %.thread.thread ] ; 3 uses
  %.sroa.0225.0331 = phi ptr [ %.sroa.0225.0.lcssa, %bb.aj ], [ %.sroa.0225.0338, %.thread.thread ] ; 3 uses
  %.sroa.0240.0328 = phi ptr [ %.sroa.0240.0.lcssa, %bb.aj ], [ %.sroa.0240.0339, %.thread.thread ] ; 5 uses
  %.sroa.0254.0326 = phi ptr [ %.sroa.0254.0.lcssa, %bb.aj ], [ %.sroa.0254.0340, %.thread.thread ] ; 5 uses
  %.sroa.0265.0323 = phi ptr [ %.sroa.0265.0.lcssa, %bb.aj ], [ %.sroa.0265.0341, %.thread.thread ] ; 3 uses
  %.0289320 = phi i64 [ %.0289.lcssa, %bb.aj ], [ %.0289342, %.thread.thread ] ; 3 uses
  %.063317 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063343, %.thread.thread ] ; 3 uses
  %i.ii = phi ptr [ %i.ga, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i102 = icmp eq ptr %.sroa.0240.0328, %.sroa.0225.0331
  br i1 %.not1.i.i102, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i103.preheader

.lr.ph.i.i103.preheader:                          ; preds = %bb.ak
  %.sroa.0254.0326456 = ptrtoaddr ptr %.sroa.0254.0326 to i64
  %.sroa.0240.0328455 = ptrtoaddr ptr %.sroa.0240.0328 to i64 ; 2 uses
  %i.ij = ptrtoaddr ptr %.sroa.0225.0331 to i64
  %i.ik = add i64 %.sroa.0240.0328455, -4
  %i.il = sub i64 %i.ik, %i.ij                    ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.il, 44
  %i.io = sub i64 %.sroa.0254.0326456, %.sroa.0240.0328455
  %diff.check457 = icmp ugt i64 %i.io, -32
  %or.cond529 = or i1 %min.iters.check459, %diff.check457
  br i1 %or.cond529, label %.lr.ph.i.i103.preheader547, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph.i.i103.preheader
  %n.vec461 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.ip = mul i64 %n.vec461, -4                   ; 2 uses
  %i.iq = getelementptr i8, ptr %.sroa.0254.0326, i64 %i.ip ; 2 uses
  %i.ir = getelementptr i8, ptr %.sroa.0240.0328, i64 %i.ip
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next468, %vector.body462 ] ; 2 uses
  %i.is = mul i64 %index463, -4                   ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.sroa.0254.0326, i64 %i.is ; 2 uses
  %next.gep465 = getelementptr i8, ptr %.sroa.0240.0328, i64 %i.is ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %next.gep465, i64 -16
  %i.iu = getelementptr inbounds i8, ptr %next.gep465, i64 -32
  %wide.load466 = load <4 x i32>, ptr %i.it, align 4, !tbaa !505, !noalias !11992
  %wide.load467 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !505, !noalias !11992
  %i.iv = getelementptr inbounds i8, ptr %next.gep464, i64 -16
  %i.iw = getelementptr inbounds i8, ptr %next.gep464, i64 -32
  store <4 x i32> %wide.load466, ptr %i.iv, align 4, !tbaa !505, !noalias !11992
  store <4 x i32> %wide.load467, ptr %i.iw, align 4, !tbaa !505, !noalias !11992
  %index.next468 = add nuw i64 %index463, 8       ; 2 uses
  %i.ix = icmp eq i64 %index.next468, %n.vec461
  br i1 %i.ix, label %middle.block469, label %vector.body462, !llvm.loop !11975

middle.block469:                                  ; preds = %vector.body462
  %cmp.n470 = icmp eq i64 %i.in, %n.vec461
  br i1 %cmp.n470, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i103.preheader547

.lr.ph.i.i103.preheader547:                       ; preds = %.lr.ph.i.i103.preheader, %middle.block469
  %.sroa.0.0.i104.ph = phi ptr [ %.sroa.0254.0326, %.lr.ph.i.i103.preheader ], [ %i.iq, %middle.block469 ]
  %.ph548 = phi ptr [ %.sroa.0240.0328, %.lr.ph.i.i103.preheader ], [ %i.ir, %middle.block469 ]
  br label %.lr.ph.i.i103

.lr.ph.i.i103:                                    ; preds = %.lr.ph.i.i103.preheader547, %.lr.ph.i.i103
  %.sroa.0.0.i104 = phi ptr [ %i.ja, %.lr.ph.i.i103 ], [ %.sroa.0.0.i104.ph, %.lr.ph.i.i103.preheader547 ]
  %i.iy = phi ptr [ %i.iz, %.lr.ph.i.i103 ], [ %.ph548, %.lr.ph.i.i103.preheader547 ]
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 -4 ; 3 uses
  %i.ja = getelementptr inbounds i8, ptr %.sroa.0.0.i104, i64 -4 ; 3 uses
  %i.jb = load i32, ptr %i.iz, align 4, !tbaa !505, !noalias !11992
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !505, !noalias !11992
  %.not.i.i105 = icmp eq ptr %i.iz, %.sroa.0225.0331
  br i1 %.not.i.i105, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101, label %.lr.ph.i.i103, !llvm.loop !11976

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101: ; preds = %.lr.ph.i.i103, %.lr.ph.i.i98, %middle.block469, %middle.block505, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jc = phi ptr [ %i.fx, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.fx, %bb.aj ], [ %i.ih, %bb.ak ], [ %i.fx, %middle.block505 ], [ %i.ih, %middle.block469 ], [ %i.fx, %.lr.ph.i.i98 ], [ %i.ih, %.lr.ph.i.i103 ]
  %.3 = phi i64 [ %.1393, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated278, %.thread.thread ], [ %.1393, %bb.aj ], [ %.2, %bb.ak ], [ %.1393, %middle.block505 ], [ %.2, %middle.block469 ], [ %.1393, %.lr.ph.i.i98 ], [ %.2, %.lr.ph.i.i103 ]
  %.sroa.0215.0334 = phi ptr [ %.sroa.0215.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0215.0336, %.thread.thread ], [ %.sroa.0215.0.lcssa, %bb.aj ], [ %.sroa.0215.0333, %bb.ak ], [ %.sroa.0215.0.lcssa, %middle.block505 ], [ %.sroa.0215.0333, %middle.block469 ], [ %.sroa.0215.0.lcssa, %.lr.ph.i.i98 ], [ %.sroa.0215.0333, %.lr.ph.i.i103 ]
  %.sroa.0265.0324 = phi ptr [ %.sroa.0265.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0265.0341, %.thread.thread ], [ %.sroa.0265.0.lcssa, %bb.aj ], [ %.sroa.0265.0323, %bb.ak ], [ %.sroa.0265.0.lcssa, %middle.block505 ], [ %.sroa.0265.0323, %middle.block469 ], [ %.sroa.0265.0.lcssa, %.lr.ph.i.i98 ], [ %.sroa.0265.0323, %.lr.ph.i.i103 ]
  %.0289321 = phi i64 [ %.0289.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0289342, %.thread.thread ], [ %.0289.lcssa, %bb.aj ], [ %.0289320, %bb.ak ], [ %.0289.lcssa, %middle.block505 ], [ %.0289320, %middle.block469 ], [ %.0289.lcssa, %.lr.ph.i.i98 ], [ %.0289320, %.lr.ph.i.i103 ]
  %.063318 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063343, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063317, %bb.ak ], [ %.063.lcssa, %middle.block505 ], [ %.063317, %middle.block469 ], [ %.063.lcssa, %.lr.ph.i.i98 ], [ %.063317, %.lr.ph.i.i103 ]
  %i.jd = phi ptr [ %i.ga, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.ga, %bb.aj ], [ %i.ii, %bb.ak ], [ %i.ga, %middle.block505 ], [ %i.ii, %middle.block469 ], [ %i.ga, %.lr.ph.i.i98 ], [ %i.ii, %.lr.ph.i.i103 ] ; 4 uses
  %.sroa.0254.7 = phi ptr [ %.sroa.0123.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0254.0340, %.thread.thread ], [ %.sroa.0254.0.lcssa, %bb.aj ], [ %.sroa.0254.0326, %bb.ak ], [ %i.hv, %middle.block505 ], [ %i.iq, %middle.block469 ], [ %i.if, %.lr.ph.i.i98 ], [ %i.ja, %.lr.ph.i.i103 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0215.0334, ptr %34, align 8, !tbaa !582
  store ptr %.sroa.0265.0324, ptr %35, align 8, !tbaa !582
  store ptr %i.jc, ptr %36, align 8, !tbaa !630
  store ptr %i.jd, ptr %37, align 8, !tbaa !630
  store ptr %.sroa.0254.7, ptr %38, align 8, !tbaa !630
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0289321, i64 noundef %.063318, i64 noundef %.3, i1 noundef zeroext false)
  %i.je = load ptr, ptr %33, align 8, !tbaa !630  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.jf = load ptr, ptr %32, align 8, !tbaa !630  ; 5 uses
  %.not1.i.i107 = icmp eq ptr %i.jf, %i.jd
  br i1 %.not1.i.i107, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit111, label %.lr.ph.i.i108.preheader

.lr.ph.i.i108.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101
  %i.jg = ptrtoaddr ptr %i.jf to i64              ; 2 uses
  %i.jh = ptrtoaddr ptr %i.je to i64
  %i.ji = ptrtoaddr ptr %i.jd to i64
  %i.jj = add i64 %i.jg, -4
  %i.jk = sub i64 %i.jj, %i.ji                    ; 2 uses
  %i.jl = lshr i64 %i.jk, 2
  %i.jm = add nuw nsw i64 %i.jl, 1                ; 2 uses
  %min.iters.check512 = icmp ult i64 %i.jk, 44
  %i.jn = sub i64 %i.jh, %i.jg
  %diff.check510 = icmp ugt i64 %i.jn, -32
  %or.cond530 = select i1 %min.iters.check512, i1 true, i1 %diff.check510
  br i1 %or.cond530, label %.lr.ph.i.i108.preheader531, label %vector.ph513

vector.ph513:                                     ; preds = %.lr.ph.i.i108.preheader
  %n.vec514 = and i64 %i.jm, 9223372036854775800  ; 3 uses
  %i.jo = mul i64 %n.vec514, -4                   ; 2 uses
  %i.jp = getelementptr i8, ptr %i.je, i64 %i.jo
  %i.jq = getelementptr i8, ptr %i.jf, i64 %i.jo
  br label %vector.body515

vector.body515:                                   ; preds = %vector.body515, %vector.ph513
  %index516 = phi i64 [ 0, %vector.ph513 ], [ %index.next521, %vector.body515 ] ; 2 uses
  %i.jr = mul i64 %index516, -4                   ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.je, i64 %i.jr ; 2 uses
  %next.gep518 = getelementptr i8, ptr %i.jf, i64 %i.jr ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %next.gep518, i64 -16
  %i.jt = getelementptr inbounds i8, ptr %next.gep518, i64 -32
  %wide.load519 = load <4 x i32>, ptr %i.js, align 4, !tbaa !505, !noalias !11993
  %wide.load520 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !505, !noalias !11993
  %i.ju = getelementptr inbounds i8, ptr %next.gep517, i64 -16
  %i.jv = getelementptr inbounds i8, ptr %next.gep517, i64 -32
  store <4 x i32> %wide.load519, ptr %i.ju, align 4, !tbaa !505, !noalias !11993
  store <4 x i32> %wide.load520, ptr %i.jv, align 4, !tbaa !505, !noalias !11993
  %index.next521 = add nuw i64 %index516, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next521, %n.vec514
  br i1 %i.jw, label %middle.block522, label %vector.body515, !llvm.loop !11981

middle.block522:                                  ; preds = %vector.body515
  %cmp.n523 = icmp eq i64 %i.jm, %n.vec514
  br i1 %cmp.n523, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit111, label %.lr.ph.i.i108.preheader531

.lr.ph.i.i108.preheader531:                       ; preds = %.lr.ph.i.i108.preheader, %middle.block522
  %.sroa.0.0.i109.ph = phi ptr [ %i.je, %.lr.ph.i.i108.preheader ], [ %i.jp, %middle.block522 ]
  %.ph = phi ptr [ %i.jf, %.lr.ph.i.i108.preheader ], [ %i.jq, %middle.block522 ]
  br label %.lr.ph.i.i108

.lr.ph.i.i108:                                    ; preds = %.lr.ph.i.i108.preheader531, %.lr.ph.i.i108
  %.sroa.0.0.i109 = phi ptr [ %i.jz, %.lr.ph.i.i108 ], [ %.sroa.0.0.i109.ph, %.lr.ph.i.i108.preheader531 ]
  %i.jx = phi ptr [ %i.jy, %.lr.ph.i.i108 ], [ %.ph, %.lr.ph.i.i108.preheader531 ]
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 -4 ; 3 uses
  %i.jz = getelementptr inbounds i8, ptr %.sroa.0.0.i109, i64 -4 ; 2 uses
  %i.ka = load i32, ptr %i.jy, align 4, !tbaa !505, !noalias !11993
  store i32 %i.ka, ptr %i.jz, align 4, !tbaa !505, !noalias !11993
  %.not.i.i110 = icmp eq ptr %i.jy, %i.jd
  br i1 %.not.i.i110, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit111, label %.lr.ph.i.i108, !llvm.loop !11982

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit111: ; preds = %.lr.ph.i.i108, %middle.block522, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit101
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPhEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.46", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.46", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !582    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !630    ; 4 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !630
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not349 = icmp eq i64 %i.a, 0
  br i1 %.not349, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = mul i64 %2, -4
  %i.p = sub i64 0, %2                            ; 2 uses
  %.idx = shl nsw i64 %i.p, 2
  %.not68 = icmp eq i64 %6, 0
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.r = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.s = and i64 %2, 4611686018427387903
  %i.t = icmp eq i64 %i.s, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost7movelib15detail_adaptive19swap_and_update_keyINS0_16reverse_iteratorIPhEENS3_IPNS_9container4test12copyable_intEEEEEvT_SB_RSB_T0_SD_SD_.exit
end_hunk_11
begin_hunk_12_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_:bb.a
  %i.fp = icmp slt i32 %i.fn, %i.fo
  br i1 %i.fp, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fq = getelementptr inbounds nuw i8, ptr %.07.i, i64 4 ; 3 uses
  %.not.i146 = icmp eq ptr %i.fq, %.0224.lcssa
  br i1 %.not.i146, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !202

_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.0.lcssa.i = phi ptr [ %.0218.lcssa, %bb.ad ], [ %.07.i, %bb.ae ], [ %i.fq, %bb.af ] ; 5 uses
  %i.fr = ptrtoint ptr %.0224.lcssa to i64        ; 3 uses
  %i.fs = ptrtoint ptr %.0.lcssa.i to i64         ; 2 uses
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = ashr exact i64 %i.ft, 2
  %i.fv = sub nsw i64 0, %i.fu
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fv ; 5 uses
  %.not8.i.i147 = icmp eq ptr %.0.lcssa.i, %.0224.lcssa
  br i1 %.not8.i.i147, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader

.lr.ph.i.i148.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.fx = add i64 %i.fr, -4
  %i.fy = sub i64 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i64 %i.fy, 2
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.fy, 60
  %i.gb = sub i64 %i.fr, %i.fj
  %diff.check403 = icmp ugt i64 %i.gb, -32
  %or.cond456 = select i1 %min.iters.check405, i1 true, i1 %diff.check403
  br i1 %or.cond456, label %.lr.ph.i.i148.preheader471, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph.i.i148.preheader
  %n.vec407 = and i64 %i.ga, 9223372036854775800  ; 3 uses
  %i.gc = shl i64 %n.vec407, 2                    ; 2 uses
  %i.gd = getelementptr i8, ptr %i.fw, i64 %i.gc
  %i.ge = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gc
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.gf = shl i64 %index409, 2                    ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.fw, i64 %i.gf ; 2 uses
  %next.gep411 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep411, i64 16
  %wide.load412 = load <4 x i32>, ptr %next.gep411, align 4, !tbaa !505
  %wide.load413 = load <4 x i32>, ptr %i.gg, align 4, !tbaa !505
  %i.gh = getelementptr i8, ptr %next.gep410, i64 16
  store <4 x i32> %wide.load412, ptr %next.gep410, align 4, !tbaa !505
  store <4 x i32> %wide.load413, ptr %i.gh, align 4, !tbaa !505
  %index.next414 = add nuw i64 %index409, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.gi, label %middle.block415, label %vector.body408, !llvm.loop !12109

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.ga, %n.vec407
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148.preheader471

.lr.ph.i.i148.preheader471:                       ; preds = %.lr.ph.i.i148.preheader, %middle.block415
  %.010.i.i149.ph = phi ptr [ %i.fw, %.lr.ph.i.i148.preheader ], [ %i.gd, %middle.block415 ]
  %.079.i.i150.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i148.preheader ], [ %i.ge, %middle.block415 ]
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %.lr.ph.i.i148.preheader471, %.lr.ph.i.i148
  %.010.i.i149 = phi ptr [ %i.gl, %.lr.ph.i.i148 ], [ %.010.i.i149.ph, %.lr.ph.i.i148.preheader471 ] ; 2 uses
  %.079.i.i150 = phi ptr [ %i.gk, %.lr.ph.i.i148 ], [ %.079.i.i150.ph, %.lr.ph.i.i148.preheader471 ] ; 2 uses
  %i.gj = load i32, ptr %.079.i.i150, align 4, !tbaa !505
  store i32 %i.gj, ptr %.010.i.i149, align 4, !tbaa !505
  %i.gk = getelementptr inbounds nuw i8, ptr %.079.i.i150, i64 4 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.010.i.i149, i64 4
  %.not.i.i151 = icmp eq ptr %i.gk, %.0224.lcssa
  br i1 %.not.i.i151, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, label %.lr.ph.i.i148, !llvm.loop !12110

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153: ; preds = %.lr.ph.i.i148, %middle.block415, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeIPNS_9container4test12copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEEEET_SF_SF_RKNS0_15iterator_traitsISF_E10value_typeET0_.exit
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.g
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153, %bb.ac
  %.5229 = phi ptr [ %i.gm, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0224.lcssa, %bb.ac ] ; 2 uses
  %.5223 = phi ptr [ %i.fw, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0218.lcssa, %bb.ac ] ; 3 uses
  %.5 = phi ptr [ %i.fi, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit153 ], [ %.0108.lcssa, %bb.ac ] ; 5 uses
  %.not36.i = icmp eq ptr %.5, %.5223
  br i1 %.not36.i, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ai
  %.024.i.ph = phi ptr [ %i.gq, %bb.ai ], [ %.5229, %bb.ag ]
  %.021.i.ph = phi ptr [ %i.gt, %bb.ai ], [ %.5223, %bb.ag ] ; 3 uses
  %.0.i.ph = phi ptr [ %.0.i, %bb.ai ], [ %i.k, %bb.ag ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ah
  %.024.i = phi ptr [ %i.gq, %bb.ah ], [ %.024.i.ph, %.preheader.i.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.gr, %bb.ah ], [ %.0.i.ph, %.preheader.i.outer ] ; 4 uses
  %i.gn = load i32, ptr %.0.i, align 4, !tbaa !505 ; 2 uses
  %i.go = load i32, ptr %.021.i.ph, align 4, !tbaa !505 ; 2 uses
  %i.gp = icmp slt i32 %i.gn, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %.024.i, i64 4 ; 4 uses
  br i1 %i.gp, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.gn, ptr %.024.i, align 4, !tbaa !505
  %i.gs = icmp eq ptr %i.gr, %i.fl
  br i1 %i.gs, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i, !llvm.loop !204

bb.ai:                                            ; preds = %.preheader.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.021.i.ph, i64 4 ; 3 uses
  store i32 %i.go, ptr %.024.i, align 4, !tbaa !505
  %i.gu = icmp eq ptr %i.gt, %.5
  br i1 %i.gu, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !204

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit: ; preds = %bb.ah, %bb.ai, %bb.ag
  %.226.i = phi ptr [ %.5229, %bb.ag ], [ %i.gq, %bb.ai ], [ %i.gq, %bb.ah ] ; 5 uses
  %.223.i = phi ptr [ %.5223, %bb.ag ], [ %.021.i.ph, %bb.ah ], [ %i.gt, %bb.ai ] ; 5 uses
  %.2.i = phi ptr [ %i.k, %bb.ag ], [ %i.fl, %bb.ah ], [ %.0.i, %bb.ai ]
  store ptr %.2.i, ptr %i.d, align 8, !tbaa !516
  %.not8.i.i155 = icmp eq ptr %.223.i, %.5
  br i1 %.not8.i.i155, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit
  %.223.i421 = ptrtoaddr ptr %.223.i to i64       ; 2 uses
  %.226.i420 = ptrtoaddr ptr %.226.i to i64
  %i.gv = ptrtoaddr ptr %.5 to i64
  %i.gw = add i64 %i.gv, -4
  %i.gx = sub i64 %i.gw, %.223.i421               ; 2 uses
  %i.gy = lshr i64 %i.gx, 2
  %i.gz = add nuw nsw i64 %i.gy, 1                ; 2 uses
  %min.iters.check424 = icmp ult i64 %i.gx, 44
  %i.ha = sub i64 %.223.i421, %.226.i420
  %diff.check422 = icmp ugt i64 %i.ha, -32
  %or.cond457 = select i1 %min.iters.check424, i1 true, i1 %diff.check422
  br i1 %or.cond457, label %.lr.ph.i.i156.preheader461, label %vector.ph425

vector.ph425:                                     ; preds = %.lr.ph.i.i156.preheader
  %n.vec426 = and i64 %i.gz, 9223372036854775800  ; 3 uses
  %i.hb = shl i64 %n.vec426, 2                    ; 2 uses
  %i.hc = getelementptr i8, ptr %.226.i, i64 %i.hb ; 2 uses
  %i.hd = getelementptr i8, ptr %.223.i, i64 %i.hb
  br label %vector.body427

vector.body427:                                   ; preds = %vector.body427, %vector.ph425
  %index428 = phi i64 [ 0, %vector.ph425 ], [ %index.next433, %vector.body427 ] ; 2 uses
  %i.he = shl i64 %index428, 2                    ; 2 uses
  %next.gep429 = getelementptr i8, ptr %.226.i, i64 %i.he ; 2 uses
  %next.gep430 = getelementptr i8, ptr %.223.i, i64 %i.he ; 2 uses
  %i.hf = getelementptr i8, ptr %next.gep430, i64 16
  %wide.load431 = load <4 x i32>, ptr %next.gep430, align 4, !tbaa !505
  %wide.load432 = load <4 x i32>, ptr %i.hf, align 4, !tbaa !505
  %i.hg = getelementptr i8, ptr %next.gep429, i64 16
  store <4 x i32> %wide.load431, ptr %next.gep429, align 4, !tbaa !505
  store <4 x i32> %wide.load432, ptr %i.hg, align 4, !tbaa !505
  %index.next433 = add nuw i64 %index428, 8       ; 2 uses
  %i.hh = icmp eq i64 %index.next433, %n.vec426
  br i1 %i.hh, label %middle.block434, label %vector.body427, !llvm.loop !12111

middle.block434:                                  ; preds = %vector.body427
  %cmp.n435 = icmp eq i64 %i.gz, %n.vec426
  br i1 %cmp.n435, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156.preheader461

.lr.ph.i.i156.preheader461:                       ; preds = %.lr.ph.i.i156.preheader, %middle.block434
  %.010.i.i157.ph = phi ptr [ %.226.i, %.lr.ph.i.i156.preheader ], [ %i.hc, %middle.block434 ]
  %.079.i.i158.ph = phi ptr [ %.223.i, %.lr.ph.i.i156.preheader ], [ %i.hd, %middle.block434 ]
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %.lr.ph.i.i156.preheader461, %.lr.ph.i.i156
  %.010.i.i157 = phi ptr [ %i.hk, %.lr.ph.i.i156 ], [ %.010.i.i157.ph, %.lr.ph.i.i156.preheader461 ] ; 2 uses
  %.079.i.i158 = phi ptr [ %i.hj, %.lr.ph.i.i156 ], [ %.079.i.i158.ph, %.lr.ph.i.i156.preheader461 ] ; 2 uses
  %i.hi = load i32, ptr %.079.i.i158, align 4, !tbaa !505
  store i32 %i.hi, ptr %.010.i.i157, align 4, !tbaa !505
  %i.hj = getelementptr inbounds nuw i8, ptr %.079.i.i158, i64 4 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.010.i.i157, i64 4 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hj, %.5
  br i1 %.not.i.i159, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i156, !llvm.loop !12112

bb.aj:                                            ; preds = %.thread
  br i1 %i.fk, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.hl = phi ptr [ %i.fi, %bb.aj ], [ %i.s, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1322, %bb.aj ], [ %.sroa.speculated208, %.thread.thread ] ; 3 uses
  %.0236277 = phi i64 [ %.0236.lcssa, %bb.aj ], [ %.0236280, %.thread.thread ] ; 3 uses
  %.0230274 = phi ptr [ %.0230.lcssa, %bb.aj ], [ %.0230281, %.thread.thread ] ; 3 uses
  %.0224272 = phi ptr [ %.0224.lcssa, %bb.aj ], [ %.0224282, %.thread.thread ] ; 5 uses
  %.0218270 = phi ptr [ %.0218.lcssa, %bb.aj ], [ %.0218283, %.thread.thread ] ; 5 uses
  %.0108268 = phi ptr [ %.0108.lcssa, %bb.aj ], [ %.0108284, %.thread.thread ] ; 3 uses
  %.0102264 = phi ptr [ %.0102.lcssa, %bb.aj ], [ %.0102286, %.thread.thread ] ; 3 uses
  %.099261 = phi i64 [ %.099.lcssa, %bb.aj ], [ %.099288, %.thread.thread ] ; 3 uses
  %i.hm = phi ptr [ %i.fl, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not8.i.i162 = icmp eq ptr %.0218270, %.0108268
  br i1 %.not8.i.i162, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader

.lr.ph.i.i163.preheader:                          ; preds = %bb.ak
  %.0218270385 = ptrtoaddr ptr %.0218270 to i64   ; 2 uses
  %.0224272384 = ptrtoaddr ptr %.0224272 to i64
  %i.hn = ptrtoaddr ptr %.0108268 to i64
  %i.ho = add i64 %i.hn, -4
  %i.hp = sub i64 %i.ho, %.0218270385             ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check388 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %.0218270385, %.0224272384
  %diff.check386 = icmp ugt i64 %i.hs, -32
  %or.cond458 = or i1 %min.iters.check388, %diff.check386
  br i1 %or.cond458, label %.lr.ph.i.i163.preheader472, label %vector.ph389

vector.ph389:                                     ; preds = %.lr.ph.i.i163.preheader
  %n.vec390 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = shl i64 %n.vec390, 2                    ; 2 uses
  %i.hu = getelementptr i8, ptr %.0224272, i64 %i.ht ; 2 uses
  %i.hv = getelementptr i8, ptr %.0218270, i64 %i.ht
  br label %vector.body391

vector.body391:                                   ; preds = %vector.body391, %vector.ph389
  %index392 = phi i64 [ 0, %vector.ph389 ], [ %index.next397, %vector.body391 ] ; 2 uses
  %i.hw = shl i64 %index392, 2                    ; 2 uses
  %next.gep393 = getelementptr i8, ptr %.0224272, i64 %i.hw ; 2 uses
  %next.gep394 = getelementptr i8, ptr %.0218270, i64 %i.hw ; 2 uses
  %i.hx = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load395 = load <4 x i32>, ptr %next.gep394, align 4, !tbaa !505
  %wide.load396 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !505
  %i.hy = getelementptr i8, ptr %next.gep393, i64 16
  store <4 x i32> %wide.load395, ptr %next.gep393, align 4, !tbaa !505
  store <4 x i32> %wide.load396, ptr %i.hy, align 4, !tbaa !505
  %index.next397 = add nuw i64 %index392, 8       ; 2 uses
  %i.hz = icmp eq i64 %index.next397, %n.vec390
  br i1 %i.hz, label %middle.block398, label %vector.body391, !llvm.loop !12113

middle.block398:                                  ; preds = %vector.body391
  %cmp.n399 = icmp eq i64 %i.hr, %n.vec390
  br i1 %cmp.n399, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163.preheader472

.lr.ph.i.i163.preheader472:                       ; preds = %.lr.ph.i.i163.preheader, %middle.block398
  %.010.i.i164.ph = phi ptr [ %.0224272, %.lr.ph.i.i163.preheader ], [ %i.hu, %middle.block398 ]
  %.079.i.i165.ph = phi ptr [ %.0218270, %.lr.ph.i.i163.preheader ], [ %i.hv, %middle.block398 ]
  br label %.lr.ph.i.i163

.lr.ph.i.i163:                                    ; preds = %.lr.ph.i.i163.preheader472, %.lr.ph.i.i163
  %.010.i.i164 = phi ptr [ %i.ic, %.lr.ph.i.i163 ], [ %.010.i.i164.ph, %.lr.ph.i.i163.preheader472 ] ; 2 uses
  %.079.i.i165 = phi ptr [ %i.ib, %.lr.ph.i.i163 ], [ %.079.i.i165.ph, %.lr.ph.i.i163.preheader472 ] ; 2 uses
  %i.ia = load i32, ptr %.079.i.i165, align 4, !tbaa !505
  store i32 %i.ia, ptr %.010.i.i164, align 4, !tbaa !505
  %i.ib = getelementptr inbounds nuw i8, ptr %.079.i.i165, i64 4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i.i164, i64 4 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.ib, %.0108268
  br i1 %.not.i.i166, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161, label %.lr.ph.i.i163, !llvm.loop !12114

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161: ; preds = %.lr.ph.i.i163, %.lr.ph.i.i156, %middle.block398, %middle.block434, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit, %bb.aj
  %i.id = phi ptr [ %i.fi, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.s, %.thread.thread ], [ %i.fi, %bb.aj ], [ %i.hl, %bb.ak ], [ %i.fi, %middle.block434 ], [ %i.hl, %middle.block398 ], [ %i.fi, %.lr.ph.i.i156 ], [ %i.hl, %.lr.ph.i.i163 ]
  %.3 = phi i64 [ %.1322, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.sroa.speculated208, %.thread.thread ], [ %.1322, %bb.aj ], [ %.2, %bb.ak ], [ %.1322, %middle.block434 ], [ %.2, %middle.block398 ], [ %.1322, %.lr.ph.i.i156 ], [ %.2, %.lr.ph.i.i163 ]
  %.0236278 = phi i64 [ %.0236.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0236280, %.thread.thread ], [ %.0236.lcssa, %bb.aj ], [ %.0236277, %bb.ak ], [ %.0236.lcssa, %middle.block434 ], [ %.0236277, %middle.block398 ], [ %.0236.lcssa, %.lr.ph.i.i156 ], [ %.0236277, %.lr.ph.i.i163 ]
  %.0230275 = phi ptr [ %.0230.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0230281, %.thread.thread ], [ %.0230.lcssa, %bb.aj ], [ %.0230274, %bb.ak ], [ %.0230.lcssa, %middle.block434 ], [ %.0230274, %middle.block398 ], [ %.0230.lcssa, %.lr.ph.i.i156 ], [ %.0230274, %.lr.ph.i.i163 ]
  %.0102265 = phi ptr [ %.0102.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0102286, %.thread.thread ], [ %.0102.lcssa, %bb.aj ], [ %.0102264, %bb.ak ], [ %.0102.lcssa, %middle.block434 ], [ %.0102264, %middle.block398 ], [ %.0102.lcssa, %.lr.ph.i.i156 ], [ %.0102264, %.lr.ph.i.i163 ]
  %.099262 = phi i64 [ %.099.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.099288, %.thread.thread ], [ %.099.lcssa, %bb.aj ], [ %.099261, %bb.ak ], [ %.099.lcssa, %middle.block434 ], [ %.099261, %middle.block398 ], [ %.099.lcssa, %.lr.ph.i.i156 ], [ %.099261, %.lr.ph.i.i163 ]
  %i.ie = phi ptr [ %i.fl, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fl, %bb.aj ], [ %i.hm, %bb.ak ], [ %i.fl, %middle.block434 ], [ %i.hm, %middle.block398 ], [ %i.fl, %.lr.ph.i.i156 ], [ %i.hm, %.lr.ph.i.i163 ] ; 4 uses
  %.6 = phi ptr [ %.226.i, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implIPNS_9container4test12copyable_intES6_S6_NS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_7move_opEEET1_RT_SH_RT0_SJ_SG_T2_T3_.exit ], [ %.0224282, %.thread.thread ], [ %.0224.lcssa, %bb.aj ], [ %.0224272, %bb.ak ], [ %i.hc, %middle.block434 ], [ %i.hu, %middle.block398 ], [ %i.hk, %.lr.ph.i.i156 ], [ %i.ic, %.lr.ph.i.i163 ]
  %i.if = call noundef ptr @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregIPmNS1_4lessEPNS_9container4test12copyable_intES8_S8_NS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7move_opEEET3_T_SJ_T0_T1_RT2_SM_SI_NS0_9iter_sizeISL_E4typeESQ_SQ_SQ_T4_bT5_(ptr noundef %.0102265, ptr noundef %.0230275, ptr noundef %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.ie, ptr noundef %.6, i64 noundef %2, i64 noundef %.0236278, i64 noundef %.099262, i64 noundef %.3, i1 noundef zeroext false) ; 4 uses
  %i.ig = load ptr, ptr %i.d, align 8, !tbaa !516 ; 5 uses
  %.not8.i.i169 = icmp eq ptr %i.ig, %i.ie
  br i1 %.not8.i.i169, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader

.lr.ph.i.i170.preheader:                          ; preds = %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  %i.ih = ptrtoaddr ptr %i.ig to i64              ; 2 uses
  %i.ii = ptrtoaddr ptr %i.if to i64
  %i.ij = ptrtoaddr ptr %i.ie to i64
  %i.ik = add i64 %i.ij, -4
  %i.il = sub i64 %i.ik, %i.ih                    ; 2 uses
  %i.im = lshr i64 %i.il, 2
  %i.in = add nuw nsw i64 %i.im, 1                ; 2 uses
  %min.iters.check441 = icmp ult i64 %i.il, 44
  %i.io = sub i64 %i.ih, %i.ii
  %diff.check439 = icmp ugt i64 %i.io, -32
  %or.cond459 = or i1 %min.iters.check441, %diff.check439
  br i1 %or.cond459, label %.lr.ph.i.i170.preheader460, label %vector.ph442

vector.ph442:                                     ; preds = %.lr.ph.i.i170.preheader
  %n.vec443 = and i64 %i.in, 9223372036854775800  ; 3 uses
  %i.ip = shl i64 %n.vec443, 2                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.if, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.ig, i64 %i.ip
  br label %vector.body444

vector.body444:                                   ; preds = %vector.body444, %vector.ph442
  %index445 = phi i64 [ 0, %vector.ph442 ], [ %index.next450, %vector.body444 ] ; 2 uses
  %i.is = shl i64 %index445, 2                    ; 2 uses
  %next.gep446 = getelementptr i8, ptr %i.if, i64 %i.is ; 2 uses
  %next.gep447 = getelementptr i8, ptr %i.ig, i64 %i.is ; 2 uses
  %i.it = getelementptr i8, ptr %next.gep447, i64 16
  %wide.load448 = load <4 x i32>, ptr %next.gep447, align 4, !tbaa !505
  %wide.load449 = load <4 x i32>, ptr %i.it, align 4, !tbaa !505
  %i.iu = getelementptr i8, ptr %next.gep446, i64 16
  store <4 x i32> %wide.load448, ptr %next.gep446, align 4, !tbaa !505
  store <4 x i32> %wide.load449, ptr %i.iu, align 4, !tbaa !505
  %index.next450 = add nuw i64 %index445, 8       ; 2 uses
  %i.iv = icmp eq i64 %index.next450, %n.vec443
  br i1 %i.iv, label %middle.block451, label %vector.body444, !llvm.loop !12115

middle.block451:                                  ; preds = %vector.body444
  %cmp.n452 = icmp eq i64 %i.in, %n.vec443
  br i1 %cmp.n452, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170.preheader460

.lr.ph.i.i170.preheader460:                       ; preds = %.lr.ph.i.i170.preheader, %middle.block451
  %.010.i.i171.ph = phi ptr [ %i.if, %.lr.ph.i.i170.preheader ], [ %i.iq, %middle.block451 ]
  %.079.i.i172.ph = phi ptr [ %i.ig, %.lr.ph.i.i170.preheader ], [ %i.ir, %middle.block451 ]
  br label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.preheader460, %.lr.ph.i.i170
  %.010.i.i171 = phi ptr [ %i.iy, %.lr.ph.i.i170 ], [ %.010.i.i171.ph, %.lr.ph.i.i170.preheader460 ] ; 2 uses
  %.079.i.i172 = phi ptr [ %i.ix, %.lr.ph.i.i170 ], [ %.079.i.i172.ph, %.lr.ph.i.i170.preheader460 ] ; 2 uses
  %i.iw = load i32, ptr %.079.i.i172, align 4, !tbaa !505
  store i32 %i.iw, ptr %.010.i.i171, align 4, !tbaa !505
  %i.ix = getelementptr inbounds nuw i8, ptr %.079.i.i172, i64 4 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.010.i.i171, i64 4
  %.not.i.i173 = icmp eq ptr %i.ix, %i.ie
  br i1 %.not.i.i173, label %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175, label %.lr.ph.i.i170, !llvm.loop !12116

_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit175: ; preds = %.lr.ph.i.i170, %middle.block451, %_ZN5boost7movelib7move_opclIPNS_9container4test12copyable_intES6_EET0_NS0_9forward_tET_S9_S7_.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISK_E4typeESN_SN_SN_SN_T2_T3_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %8 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %9 = alloca %"class.boost::container::dtl::flat_tree_value_compare.196", align 1 ; 4 uses
  %10 = alloca %"struct.boost::movelib::antistable.222", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 12 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = add i64 %5, %4                           ; 5 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  %i.g = sub i64 0, %2                            ; 3 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %3 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %i.i, ptr %i.a, align 8, !tbaa !516
  %i.j = mul i64 %i.e, %2
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.e) ; 2 uses
  %.not293 = icmp eq i64 %i.e, 0
  br i1 %.not293, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx266 = shl i64 %2, 2                        ; 2 uses
  %.not120 = icmp eq i64 %6, 0
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not8.i.i126 = icmp eq i64 %2, 0
  %i.p = add i64 %.idx266, -4                     ; 2 uses
  %i.q = and i64 %i.p, 4
  %lcmp.mod.not.not = icmp eq i64 %i.q, 0
  %i.r = icmp eq i64 %i.p, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
  %i.s = phi ptr [ %i.i, %.lr.ph ], [ %i.ao, %.sink.split.i ] ; 16 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.ew, %.sink.split.i ] ; 3 uses
  %.0303 = phi i64 [ %5, %.lr.ph ], [ %.1, %.sink.split.i ] ; 2 uses
  %.099302 = phi i64 [ %i.m, %.lr.ph ], [ %i.eu, %.sink.split.i ] ; 7 uses
  %.0102300 = phi ptr [ %0, %.lr.ph ], [ %i.es, %.sink.split.i ] ; 15 uses
  %.0105299 = phi i8 [ 1, %.lr.ph ], [ %.2107, %.sink.split.i ] ; 8 uses
  %.0108298 = phi ptr [ %i.i, %.lr.ph ], [ %.2110, %.sink.split.i ] ; 15 uses
  %.0232297 = phi ptr [ %1, %.lr.ph ], [ %.2234, %.sink.split.i ] ; 12 uses
  %.0238296 = phi ptr [ %i.h, %.lr.ph ], [ %.2240, %.sink.split.i ] ; 12 uses
  %.0244295 = phi ptr [ %i.f, %.lr.ph ], [ %.1245, %.sink.split.i ] ; 13 uses
  %.0250294 = phi i64 [ %i.e, %.lr.ph ], [ %i.ex, %.sink.split.i ] ; 5 uses
  %i.t = icmp ult i64 %.099302, %.0
  br i1 %i.t, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPNS_9container4test12copyable_intENS5_3dtl23flat_tree_value_compareISt4lessIS7_ES7_NS_11move_detail8identityIS7_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SI_SK_SK_SK_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.ai, %.thread24.i ], [ %.099302, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.ah, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.u = mul i64 %.02226.i, %2
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.u
  %i.w = mul i64 %.027.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0102300, i64 %.02226.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.0102300, i64 %.027.i
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !505 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !505 ; 2 uses
  %i.ac = icmp slt i32 %i.aa, %i.ab
  br i1 %i.ac, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ad = icmp slt i32 %i.ab, %i.aa
  br i1 %i.ad, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.z, align 8, !tbaa !375
  %i.af = load i64, ptr %i.y, align 8, !tbaa !375
  %i.ag = icmp ult i64 %i.ae, %i.af
  %cond.fr.i = freeze i1 %i.ag
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
end_hunk_12
begin_hunk_13_@_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_:bb.a
  %.not.i89 = icmp eq ptr %i.ge, %.sroa.0222.0.lcssa
  br i1 %.not.i89, label %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit, label %bb.ae, !llvm.loop !226

_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit: ; preds = %bb.ae, %bb.af, %bb.ad
  %.lcssa.i = phi ptr [ %.sroa.0237.0.lcssa, %bb.ad ], [ %i.gd, %bb.ae ], [ %i.ge, %bb.af ] ; 5 uses
  %i.gh = ptrtoint ptr %.lcssa.i to i64           ; 2 uses
  %i.gi = ptrtoint ptr %.sroa.0222.0.lcssa to i64 ; 3 uses
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.fw, i64 %i.gj ; 5 uses
  %.not1.i.i90 = icmp eq ptr %.lcssa.i, %.sroa.0222.0.lcssa
  br i1 %.not1.i.i90, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91.preheader

.lr.ph.i.i91.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.gl = add i64 %i.gh, -4
  %i.gm = sub i64 %i.gl, %i.gi                    ; 2 uses
  %i.gn = lshr i64 %i.gm, 2
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check475 = icmp ult i64 %i.gm, 44
  %i.gp = sub i64 %i.fx, %i.gi
  %diff.check473 = icmp ugt i64 %i.gp, -32
  %or.cond526 = select i1 %min.iters.check475, i1 true, i1 %diff.check473
  br i1 %or.cond526, label %.lr.ph.i.i91.preheader544, label %vector.ph476

vector.ph476:                                     ; preds = %.lr.ph.i.i91.preheader
  %n.vec477 = and i64 %i.go, 9223372036854775800  ; 3 uses
  %i.gq = mul i64 %n.vec477, -4                   ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gk, i64 %i.gq
  %i.gs = getelementptr i8, ptr %.lcssa.i, i64 %i.gq
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next484, %vector.body478 ] ; 2 uses
  %i.gt = mul i64 %index479, -4                   ; 2 uses
  %next.gep480 = getelementptr i8, ptr %i.gk, i64 %i.gt ; 2 uses
  %next.gep481 = getelementptr i8, ptr %.lcssa.i, i64 %i.gt ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %next.gep481, i64 -16
  %i.gv = getelementptr inbounds i8, ptr %next.gep481, i64 -32
  %wide.load482 = load <4 x i32>, ptr %i.gu, align 4, !tbaa !505, !noalias !12183
  %wide.load483 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !505, !noalias !12183
  %i.gw = getelementptr inbounds i8, ptr %next.gep480, i64 -16
  %i.gx = getelementptr inbounds i8, ptr %next.gep480, i64 -32
  store <4 x i32> %wide.load482, ptr %i.gw, align 4, !tbaa !505, !noalias !12183
  store <4 x i32> %wide.load483, ptr %i.gx, align 4, !tbaa !505, !noalias !12183
  %index.next484 = add nuw i64 %index479, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next484, %n.vec477
  br i1 %i.gy, label %middle.block485, label %vector.body478, !llvm.loop !12155

middle.block485:                                  ; preds = %vector.body478
  %cmp.n486 = icmp eq i64 %i.go, %n.vec477
  br i1 %cmp.n486, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91.preheader544

.lr.ph.i.i91.preheader544:                        ; preds = %.lr.ph.i.i91.preheader, %middle.block485
  %.sroa.0.0.i92.ph = phi ptr [ %i.gk, %.lr.ph.i.i91.preheader ], [ %i.gr, %middle.block485 ]
  %.ph545 = phi ptr [ %.lcssa.i, %.lr.ph.i.i91.preheader ], [ %i.gs, %middle.block485 ]
  br label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %.lr.ph.i.i91.preheader544, %.lr.ph.i.i91
  %.sroa.0.0.i92 = phi ptr [ %i.hb, %.lr.ph.i.i91 ], [ %.sroa.0.0.i92.ph, %.lr.ph.i.i91.preheader544 ]
  %i.gz = phi ptr [ %i.ha, %.lr.ph.i.i91 ], [ %.ph545, %.lr.ph.i.i91.preheader544 ]
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -4 ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %.sroa.0.0.i92, i64 -4 ; 2 uses
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !505, !noalias !12183
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !505, !noalias !12183
  %.not.i.i93 = icmp eq ptr %i.ha, %.sroa.0222.0.lcssa
  br i1 %.not.i.i93, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, label %.lr.ph.i.i91, !llvm.loop !12156

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94: ; preds = %.lr.ph.i.i91, %middle.block485, %_ZN5boost7movelib15detail_adaptive16skip_until_mergeINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEENS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEEEET_SJ_SJ_RKNS0_15iterator_traitsISJ_E10value_typeET0_.exit
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %2
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94, %bb.ac
  %.sroa.0222.5 = phi ptr [ %i.fw, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0222.0.lcssa, %bb.ac ] ; 5 uses
  %.sroa.0237.5 = phi ptr [ %i.gk, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0237.0.lcssa, %bb.ac ] ; 3 uses
  %.sroa.0251.6 = phi ptr [ %i.hd, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit94 ], [ %.sroa.0251.0.lcssa, %bb.ac ] ; 2 uses
  %.not.i95 = icmp eq i64 %.neg307, 0
  %.not17.i = icmp eq ptr %.sroa.0222.5, %.sroa.0237.5
  %or.cond = select i1 %.not.i95, i1 true, i1 %.not17.i
  br i1 %or.cond, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer

.preheader.i.outer:                               ; preds = %bb.ag, %bb.ah
  %.sroa.0122.0.ph = phi ptr [ %i.hj, %bb.ah ], [ %.sroa.0251.6, %bb.ag ]
  %.sroa.07.0.i.ph = phi ptr [ %i.hk, %bb.ah ], [ %i.k, %bb.ag ] ; 3 uses
  %.sroa.012.0.i.ph = phi ptr [ %.sroa.012.0.i, %bb.ah ], [ %.sroa.0237.5, %bb.ag ]
  %i.he = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.outer, %bb.ai
  %.sroa.0122.0 = phi ptr [ %i.hj, %bb.ai ], [ %.sroa.0122.0.ph, %.preheader.i.outer ]
  %.sroa.012.0.i = phi ptr [ %i.hf, %bb.ai ], [ %.sroa.012.0.i.ph, %.preheader.i.outer ] ; 3 uses
  %i.hf = getelementptr inbounds i8, ptr %.sroa.012.0.i, i64 -4 ; 4 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !505, !noalias !12184 ; 2 uses
  %i.hh = load i32, ptr %i.he, align 4, !tbaa !505, !noalias !12184 ; 2 uses
  %i.hi = icmp slt i32 %i.hg, %i.hh
  %i.hj = getelementptr inbounds i8, ptr %.sroa.0122.0, i64 -4 ; 6 uses
  br i1 %i.hi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.preheader.i
  %i.hk = getelementptr inbounds i8, ptr %.sroa.07.0.i.ph, i64 -4 ; 2 uses
  store i32 %i.hh, ptr %i.hj, align 4, !tbaa !505, !noalias !12184
  %i.hl = icmp eq ptr %i.hk, %i.fz
  br i1 %i.hl, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i.outer, !llvm.loop !199

bb.ai:                                            ; preds = %.preheader.i
  store i32 %i.hg, ptr %i.hj, align 4, !tbaa !505, !noalias !12184
  %i.hm = icmp eq ptr %i.hf, %.sroa.0222.5
  br i1 %i.hm, label %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, label %.preheader.i, !llvm.loop !199

_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit: ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.0122.1 = phi ptr [ %.sroa.0251.6, %bb.ag ], [ %i.hj, %bb.ah ], [ %i.hj, %bb.ai ] ; 5 uses
  %.sroa.07.2.i = phi ptr [ %i.k, %bb.ag ], [ %.sroa.07.0.i.ph, %bb.ai ], [ %i.fz, %bb.ah ]
  %.sroa.012.2.i = phi ptr [ %.sroa.0237.5, %bb.ag ], [ %i.hf, %bb.ai ], [ %.sroa.012.0.i, %bb.ah ] ; 5 uses
  store ptr %.sroa.07.2.i, ptr %32, align 8, !tbaa !630, !noalias !12184
  %.not1.i.i96 = icmp eq ptr %.sroa.012.2.i, %.sroa.0222.5
  br i1 %.not1.i.i96, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97.preheader

.lr.ph.i.i97.preheader:                           ; preds = %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit
  %.sroa.0122.1491 = ptrtoaddr ptr %.sroa.0122.1 to i64
  %.sroa.012.2.i490 = ptrtoaddr ptr %.sroa.012.2.i to i64 ; 2 uses
  %i.hn = ptrtoaddr ptr %.sroa.0222.5 to i64
  %i.ho = add i64 %.sroa.012.2.i490, -4
  %i.hp = sub i64 %i.ho, %i.hn                    ; 2 uses
  %i.hq = lshr i64 %i.hp, 2
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check494 = icmp ult i64 %i.hp, 44
  %i.hs = sub i64 %.sroa.0122.1491, %.sroa.012.2.i490
  %diff.check492 = icmp ugt i64 %i.hs, -32
  %or.cond527 = select i1 %min.iters.check494, i1 true, i1 %diff.check492
  br i1 %or.cond527, label %.lr.ph.i.i97.preheader531, label %vector.ph495

vector.ph495:                                     ; preds = %.lr.ph.i.i97.preheader
  %n.vec496 = and i64 %i.hr, 9223372036854775800  ; 3 uses
  %i.ht = mul i64 %n.vec496, -4                   ; 2 uses
  %i.hu = getelementptr i8, ptr %.sroa.0122.1, i64 %i.ht ; 2 uses
  %i.hv = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.ht
  br label %vector.body497

vector.body497:                                   ; preds = %vector.body497, %vector.ph495
  %index498 = phi i64 [ 0, %vector.ph495 ], [ %index.next503, %vector.body497 ] ; 2 uses
  %i.hw = mul i64 %index498, -4                   ; 2 uses
  %next.gep499 = getelementptr i8, ptr %.sroa.0122.1, i64 %i.hw ; 2 uses
  %next.gep500 = getelementptr i8, ptr %.sroa.012.2.i, i64 %i.hw ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %next.gep500, i64 -16
  %i.hy = getelementptr inbounds i8, ptr %next.gep500, i64 -32
  %wide.load501 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !505, !noalias !12185
  %wide.load502 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !505, !noalias !12185
  %i.hz = getelementptr inbounds i8, ptr %next.gep499, i64 -16
  %i.ia = getelementptr inbounds i8, ptr %next.gep499, i64 -32
  store <4 x i32> %wide.load501, ptr %i.hz, align 4, !tbaa !505, !noalias !12185
  store <4 x i32> %wide.load502, ptr %i.ia, align 4, !tbaa !505, !noalias !12185
  %index.next503 = add nuw i64 %index498, 8       ; 2 uses
  %i.ib = icmp eq i64 %index.next503, %n.vec496
  br i1 %i.ib, label %middle.block504, label %vector.body497, !llvm.loop !12163

middle.block504:                                  ; preds = %vector.body497
  %cmp.n505 = icmp eq i64 %i.hr, %n.vec496
  br i1 %cmp.n505, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97.preheader531

.lr.ph.i.i97.preheader531:                        ; preds = %.lr.ph.i.i97.preheader, %middle.block504
  %.sroa.0.0.i98.ph = phi ptr [ %.sroa.0122.1, %.lr.ph.i.i97.preheader ], [ %i.hu, %middle.block504 ]
  %.ph532 = phi ptr [ %.sroa.012.2.i, %.lr.ph.i.i97.preheader ], [ %i.hv, %middle.block504 ]
  br label %.lr.ph.i.i97

.lr.ph.i.i97:                                     ; preds = %.lr.ph.i.i97.preheader531, %.lr.ph.i.i97
  %.sroa.0.0.i98 = phi ptr [ %i.ie, %.lr.ph.i.i97 ], [ %.sroa.0.0.i98.ph, %.lr.ph.i.i97.preheader531 ]
  %i.ic = phi ptr [ %i.id, %.lr.ph.i.i97 ], [ %.ph532, %.lr.ph.i.i97.preheader531 ]
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -4 ; 3 uses
  %i.ie = getelementptr inbounds i8, ptr %.sroa.0.0.i98, i64 -4 ; 3 uses
  %i.if = load i32, ptr %i.id, align 4, !tbaa !505, !noalias !12185
  store i32 %i.if, ptr %i.ie, align 4, !tbaa !505, !noalias !12185
  %.not.i.i99 = icmp eq ptr %i.id, %.sroa.0222.5
  br i1 %.not.i.i99, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i97, !llvm.loop !12164

bb.aj:                                            ; preds = %.thread
  br i1 %i.fy, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %bb.ak

bb.ak:                                            ; preds = %.thread.thread, %bb.aj
  %i.ig = phi ptr [ %i.fw, %bb.aj ], [ %i.u, %.thread.thread ] ; 3 uses
  %.2 = phi i64 [ %.1392, %bb.aj ], [ %.sroa.speculated275, %.thread.thread ] ; 3 uses
  %.sroa.0212.0332 = phi ptr [ %.sroa.0212.0.lcssa, %bb.aj ], [ %.sroa.0212.0335, %.thread.thread ] ; 3 uses
  %.sroa.0222.0330 = phi ptr [ %.sroa.0222.0.lcssa, %bb.aj ], [ %.sroa.0222.0337, %.thread.thread ] ; 3 uses
  %.sroa.0237.0327 = phi ptr [ %.sroa.0237.0.lcssa, %bb.aj ], [ %.sroa.0237.0338, %.thread.thread ] ; 5 uses
  %.sroa.0251.0325 = phi ptr [ %.sroa.0251.0.lcssa, %bb.aj ], [ %.sroa.0251.0339, %.thread.thread ] ; 5 uses
  %.sroa.0262.0322 = phi ptr [ %.sroa.0262.0.lcssa, %bb.aj ], [ %.sroa.0262.0340, %.thread.thread ] ; 3 uses
  %.0286319 = phi i64 [ %.0286.lcssa, %bb.aj ], [ %.0286341, %.thread.thread ] ; 3 uses
  %.063316 = phi i64 [ %.063.lcssa, %bb.aj ], [ %.063342, %.thread.thread ] ; 3 uses
  %i.ih = phi ptr [ %i.fz, %bb.aj ], [ %i.k, %.thread.thread ] ; 3 uses
  %.not1.i.i101 = icmp eq ptr %.sroa.0237.0327, %.sroa.0222.0330
  br i1 %.not1.i.i101, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102.preheader

.lr.ph.i.i102.preheader:                          ; preds = %bb.ak
  %.sroa.0251.0325455 = ptrtoaddr ptr %.sroa.0251.0325 to i64
  %.sroa.0237.0327454 = ptrtoaddr ptr %.sroa.0237.0327 to i64 ; 2 uses
  %i.ii = ptrtoaddr ptr %.sroa.0222.0330 to i64
  %i.ij = add i64 %.sroa.0237.0327454, -4
  %i.ik = sub i64 %i.ij, %i.ii                    ; 2 uses
  %i.il = lshr i64 %i.ik, 2
  %i.im = add nuw nsw i64 %i.il, 1                ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.ik, 44
  %i.in = sub i64 %.sroa.0251.0325455, %.sroa.0237.0327454
  %diff.check456 = icmp ugt i64 %i.in, -32
  %or.cond528 = or i1 %min.iters.check458, %diff.check456
  br i1 %or.cond528, label %.lr.ph.i.i102.preheader546, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph.i.i102.preheader
  %n.vec460 = and i64 %i.im, 9223372036854775800  ; 3 uses
  %i.io = mul i64 %n.vec460, -4                   ; 2 uses
  %i.ip = getelementptr i8, ptr %.sroa.0251.0325, i64 %i.io ; 2 uses
  %i.iq = getelementptr i8, ptr %.sroa.0237.0327, i64 %i.io
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %i.ir = mul i64 %index462, -4                   ; 2 uses
  %next.gep463 = getelementptr i8, ptr %.sroa.0251.0325, i64 %i.ir ; 2 uses
  %next.gep464 = getelementptr i8, ptr %.sroa.0237.0327, i64 %i.ir ; 2 uses
  %i.is = getelementptr inbounds i8, ptr %next.gep464, i64 -16
  %i.it = getelementptr inbounds i8, ptr %next.gep464, i64 -32
  %wide.load465 = load <4 x i32>, ptr %i.is, align 4, !tbaa !505, !noalias !12186
  %wide.load466 = load <4 x i32>, ptr %i.it, align 4, !tbaa !505, !noalias !12186
  %i.iu = getelementptr inbounds i8, ptr %next.gep463, i64 -16
  %i.iv = getelementptr inbounds i8, ptr %next.gep463, i64 -32
  store <4 x i32> %wide.load465, ptr %i.iu, align 4, !tbaa !505, !noalias !12186
  store <4 x i32> %wide.load466, ptr %i.iv, align 4, !tbaa !505, !noalias !12186
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.iw, label %middle.block468, label %vector.body461, !llvm.loop !12169

middle.block468:                                  ; preds = %vector.body461
  %cmp.n469 = icmp eq i64 %i.im, %n.vec460
  br i1 %cmp.n469, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102.preheader546

.lr.ph.i.i102.preheader546:                       ; preds = %.lr.ph.i.i102.preheader, %middle.block468
  %.sroa.0.0.i103.ph = phi ptr [ %.sroa.0251.0325, %.lr.ph.i.i102.preheader ], [ %i.ip, %middle.block468 ]
  %.ph547 = phi ptr [ %.sroa.0237.0327, %.lr.ph.i.i102.preheader ], [ %i.iq, %middle.block468 ]
  br label %.lr.ph.i.i102

.lr.ph.i.i102:                                    ; preds = %.lr.ph.i.i102.preheader546, %.lr.ph.i.i102
  %.sroa.0.0.i103 = phi ptr [ %i.iz, %.lr.ph.i.i102 ], [ %.sroa.0.0.i103.ph, %.lr.ph.i.i102.preheader546 ]
  %i.ix = phi ptr [ %i.iy, %.lr.ph.i.i102 ], [ %.ph547, %.lr.ph.i.i102.preheader546 ]
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -4 ; 3 uses
  %i.iz = getelementptr inbounds i8, ptr %.sroa.0.0.i103, i64 -4 ; 3 uses
  %i.ja = load i32, ptr %i.iy, align 4, !tbaa !505, !noalias !12186
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !505, !noalias !12186
  %.not.i.i104 = icmp eq ptr %i.iy, %.sroa.0222.0330
  br i1 %.not.i.i104, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100, label %.lr.ph.i.i102, !llvm.loop !12170

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100: ; preds = %.lr.ph.i.i102, %.lr.ph.i.i97, %middle.block468, %middle.block504, %.thread.thread, %bb.ak, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit, %bb.aj
  %i.jb = phi ptr [ %i.fw, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.u, %.thread.thread ], [ %i.fw, %bb.aj ], [ %i.ig, %bb.ak ], [ %i.fw, %middle.block504 ], [ %i.ig, %middle.block468 ], [ %i.fw, %.lr.ph.i.i97 ], [ %i.ig, %.lr.ph.i.i102 ]
  %.3 = phi i64 [ %.1392, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.speculated275, %.thread.thread ], [ %.1392, %bb.aj ], [ %.2, %bb.ak ], [ %.1392, %middle.block504 ], [ %.2, %middle.block468 ], [ %.1392, %.lr.ph.i.i97 ], [ %.2, %.lr.ph.i.i102 ]
  %.sroa.0212.0333 = phi ptr [ %.sroa.0212.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0212.0335, %.thread.thread ], [ %.sroa.0212.0.lcssa, %bb.aj ], [ %.sroa.0212.0332, %bb.ak ], [ %.sroa.0212.0.lcssa, %middle.block504 ], [ %.sroa.0212.0332, %middle.block468 ], [ %.sroa.0212.0.lcssa, %.lr.ph.i.i97 ], [ %.sroa.0212.0332, %.lr.ph.i.i102 ]
  %.sroa.0262.0323 = phi ptr [ %.sroa.0262.0.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0262.0340, %.thread.thread ], [ %.sroa.0262.0.lcssa, %bb.aj ], [ %.sroa.0262.0322, %bb.ak ], [ %.sroa.0262.0.lcssa, %middle.block504 ], [ %.sroa.0262.0322, %middle.block468 ], [ %.sroa.0262.0.lcssa, %.lr.ph.i.i97 ], [ %.sroa.0262.0322, %.lr.ph.i.i102 ]
  %.0286320 = phi i64 [ %.0286.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.0286341, %.thread.thread ], [ %.0286.lcssa, %bb.aj ], [ %.0286319, %bb.ak ], [ %.0286.lcssa, %middle.block504 ], [ %.0286319, %middle.block468 ], [ %.0286.lcssa, %.lr.ph.i.i97 ], [ %.0286319, %.lr.ph.i.i102 ]
  %.063317 = phi i64 [ %.063.lcssa, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.063342, %.thread.thread ], [ %.063.lcssa, %bb.aj ], [ %.063316, %bb.ak ], [ %.063.lcssa, %middle.block504 ], [ %.063316, %middle.block468 ], [ %.063.lcssa, %.lr.ph.i.i97 ], [ %.063316, %.lr.ph.i.i102 ]
  %i.jc = phi ptr [ %i.fz, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %i.k, %.thread.thread ], [ %i.fz, %bb.aj ], [ %i.ih, %bb.ak ], [ %i.fz, %middle.block504 ], [ %i.ih, %middle.block468 ], [ %i.fz, %.lr.ph.i.i97 ], [ %i.ih, %.lr.ph.i.i102 ] ; 4 uses
  %.sroa.0251.7 = phi ptr [ %.sroa.0122.1, %_ZN5boost7movelib15detail_adaptive21op_partial_merge_implINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_S8_NS0_7inverseINS4_3dtl23flat_tree_value_compareISt4lessIS6_ES6_NS_11move_detail8identityIS6_EEEEEENS0_7move_opEEET1_RT_SL_RT0_SN_SK_T2_T3_.exit ], [ %.sroa.0251.0339, %.thread.thread ], [ %.sroa.0251.0.lcssa, %bb.aj ], [ %.sroa.0251.0325, %bb.ak ], [ %i.hu, %middle.block504 ], [ %i.ip, %middle.block468 ], [ %i.ie, %.lr.ph.i.i97 ], [ %i.iz, %.lr.ph.i.i102 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #24
  store ptr %.sroa.0212.0333, ptr %34, align 8, !tbaa !575
  store ptr %.sroa.0262.0323, ptr %35, align 8, !tbaa !575
  store ptr %i.jb, ptr %36, align 8, !tbaa !630
  store ptr %i.jc, ptr %37, align 8, !tbaa !630
  store ptr %.sroa.0251.7, ptr %38, align 8, !tbaa !630
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEESD_SD_NS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7move_opEEET3_T_SP_T0_T1_RT2_SS_SO_NS0_9iter_sizeISR_E4typeESW_SW_SW_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.220") align 8 %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull align 8 dead_on_return %35, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dead_on_return %37, ptr noundef nonnull align 8 dead_on_return %38, i64 noundef %2, i64 noundef %.0286320, i64 noundef %.063317, i64 noundef %.3, i1 noundef zeroext false)
  %i.jd = load ptr, ptr %33, align 8, !tbaa !630  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  %i.je = load ptr, ptr %32, align 8, !tbaa !630  ; 5 uses
  %.not1.i.i106 = icmp eq ptr %i.je, %i.jc
  br i1 %.not1.i.i106, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107.preheader

.lr.ph.i.i107.preheader:                          ; preds = %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  %i.jf = ptrtoaddr ptr %i.je to i64              ; 2 uses
  %i.jg = ptrtoaddr ptr %i.jd to i64
  %i.jh = ptrtoaddr ptr %i.jc to i64
  %i.ji = add i64 %i.jf, -4
  %i.jj = sub i64 %i.ji, %i.jh                    ; 2 uses
  %i.jk = lshr i64 %i.jj, 2
  %i.jl = add nuw nsw i64 %i.jk, 1                ; 2 uses
  %min.iters.check511 = icmp ult i64 %i.jj, 44
  %i.jm = sub i64 %i.jg, %i.jf
  %diff.check509 = icmp ugt i64 %i.jm, -32
  %or.cond529 = select i1 %min.iters.check511, i1 true, i1 %diff.check509
  br i1 %or.cond529, label %.lr.ph.i.i107.preheader530, label %vector.ph512

vector.ph512:                                     ; preds = %.lr.ph.i.i107.preheader
  %n.vec513 = and i64 %i.jl, 9223372036854775800  ; 3 uses
  %i.jn = mul i64 %n.vec513, -4                   ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jd, i64 %i.jn
  %i.jp = getelementptr i8, ptr %i.je, i64 %i.jn
  br label %vector.body514

vector.body514:                                   ; preds = %vector.body514, %vector.ph512
  %index515 = phi i64 [ 0, %vector.ph512 ], [ %index.next520, %vector.body514 ] ; 2 uses
  %i.jq = mul i64 %index515, -4                   ; 2 uses
  %next.gep516 = getelementptr i8, ptr %i.jd, i64 %i.jq ; 2 uses
  %next.gep517 = getelementptr i8, ptr %i.je, i64 %i.jq ; 2 uses
  %i.jr = getelementptr inbounds i8, ptr %next.gep517, i64 -16
  %i.js = getelementptr inbounds i8, ptr %next.gep517, i64 -32
  %wide.load518 = load <4 x i32>, ptr %i.jr, align 4, !tbaa !505, !noalias !12187
  %wide.load519 = load <4 x i32>, ptr %i.js, align 4, !tbaa !505, !noalias !12187
  %i.jt = getelementptr inbounds i8, ptr %next.gep516, i64 -16
  %i.ju = getelementptr inbounds i8, ptr %next.gep516, i64 -32
  store <4 x i32> %wide.load518, ptr %i.jt, align 4, !tbaa !505, !noalias !12187
  store <4 x i32> %wide.load519, ptr %i.ju, align 4, !tbaa !505, !noalias !12187
  %index.next520 = add nuw i64 %index515, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.jv, label %middle.block521, label %vector.body514, !llvm.loop !12175

middle.block521:                                  ; preds = %vector.body514
  %cmp.n522 = icmp eq i64 %i.jl, %n.vec513
  br i1 %cmp.n522, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107.preheader530

.lr.ph.i.i107.preheader530:                       ; preds = %.lr.ph.i.i107.preheader, %middle.block521
  %.sroa.0.0.i108.ph = phi ptr [ %i.jd, %.lr.ph.i.i107.preheader ], [ %i.jo, %middle.block521 ]
  %.ph = phi ptr [ %i.je, %.lr.ph.i.i107.preheader ], [ %i.jp, %middle.block521 ]
  br label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %.lr.ph.i.i107.preheader530, %.lr.ph.i.i107
  %.sroa.0.0.i108 = phi ptr [ %i.jy, %.lr.ph.i.i107 ], [ %.sroa.0.0.i108.ph, %.lr.ph.i.i107.preheader530 ]
  %i.jw = phi ptr [ %i.jx, %.lr.ph.i.i107 ], [ %.ph, %.lr.ph.i.i107.preheader530 ]
  %i.jx = getelementptr inbounds i8, ptr %i.jw, i64 -4 ; 3 uses
  %i.jy = getelementptr inbounds i8, ptr %.sroa.0.0.i108, i64 -4 ; 2 uses
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !505, !noalias !12187
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !505, !noalias !12187
  %.not.i.i109 = icmp eq ptr %i.jx, %i.jc
  br i1 %.not.i.i109, label %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110, label %.lr.ph.i.i107, !llvm.loop !12176

_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit110: ; preds = %.lr.ph.i.i107, %middle.block521, %_ZN5boost7movelib7move_opclINS0_16reverse_iteratorIPNS_9container4test12copyable_intEEES8_EET0_NS0_9forward_tET_SB_S9_.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive20op_merge_blocks_leftINS0_16reverse_iteratorIPmEENS0_7inverseINS1_4lessEEENS3_IPNS_9container4test12copyable_intEEENS6_INS9_3dtl23flat_tree_value_compareISt4lessISB_ESB_NS_11move_detail8identityISB_EEEEEENS0_7swap_opEEEvT_T0_T1_NS0_9iter_sizeISQ_E4typeEST_ST_ST_ST_T2_T3_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %7 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %8 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %9 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %16 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %17 = alloca %"class.boost::movelib::inverse.221", align 1 ; 4 uses
  %18 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %19 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %20 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %21 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %22 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %23 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %24 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %25 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %26 = alloca %"struct.boost::movelib::antistable.223", align 8 ; 5 uses
  %27 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 9 uses
  %28 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %29 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 12 uses
  %30 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %31 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 5 uses
  %32 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 8 uses
  %33 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 4 uses
  %34 = alloca %"class.boost::movelib::reverse_iterator.39", align 8 ; 2 uses
  %35 = alloca %"class.boost::movelib::reverse_iterator.39", align 8 ; 2 uses
  %36 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %37 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %38 = alloca %"class.boost::movelib::reverse_iterator.220", align 8 ; 2 uses
  %i.a = add i64 %5, %4                           ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !575    ; 3 uses
  %i.c = sub i64 0, %4
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !630    ; 4 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.g = sub i64 0, %3
  %i.h = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.g ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #24
  store ptr %i.h, ptr %27, align 8, !tbaa !630
  %i.i = mul i64 %2, %i.a
  %i.j = sub i64 0, %i.i
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 9 uses
  %i.l = icmp eq i64 %5, 0
  %i.m = select i1 %i.l, i64 0, i64 %4            ; 3 uses
  %i.n = add i64 %i.m, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.a) ; 2 uses
  %.not348 = icmp eq i64 %i.a, 0
  br i1 %.not348, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = mul i64 %2, -4
  %i.p = sub i64 0, %2                            ; 2 uses
  %.idx = shl nsw i64 %i.p, 2
  %.not68 = icmp eq i64 %6, 0
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.r = sub i64 0, %i.a
  %.not1.i.i72 = icmp eq i64 %2, 0
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.s = and i64 %2, 4611686018427387903
  %i.t = icmp eq i64 %i.s, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.sink.split.i
end_hunk_13
begin_hunk_14_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareISt4lessIS5_ES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESI_SK_SK_SK_RT1_T0_:bb.a
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
end_hunk_14
begin_hunk_15_@_ZN5boost7movelib15detail_adaptive26adaptive_sort_build_blocksIPNS_9container4test24movable_and_copyable_intENS3_3dtl23flat_tree_value_compareINS4_16less_transparentES5_NS_11move_detail8identityIS5_EEEENS0_13adaptive_xbufIS5_S6_mEEEENS0_9iter_sizeIT_E4typeESH_SJ_SJ_SJ_RT1_T0_:bb.a
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
end_hunk_15
