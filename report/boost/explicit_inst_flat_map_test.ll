Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_flat_map_test?download=true
inline.NumInlined: 24578
inline.NumDeleted: 2911
loop-unroll.NumRuntimeUnrolled: 171
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZN5boost7movelib15detail_adaptive29adaptive_merge_combine_blocksIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEENS0_13adaptive_xbufIS7_S8_mEEEEvT_NS0_9iter_sizeISI_E4typeESL_SL_SL_SL_bbT0_RT1_:bb.a
  store i32 %i.bw, ptr %i.bv, align 4, !tbaa !254
  store i32 0, ptr %0, align 4, !tbaa !254
  %i.bx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !254
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !254
  store i32 0, ptr %i.bz, align 4, !tbaa !254
  %storemerge911.i57 = add i32 %i.bx, 2
  store i32 %storemerge911.i57, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
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
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !254
  store i32 0, ptr %i.cf, align 4, !tbaa !254
  %i.ch = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !254
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !254
  store i32 0, ptr %i.cj, align 4, !tbaa !254
  %storemerge9.i63.prol = add i32 %i.ch, 2
  store i32 %storemerge9.i63.prol, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i64.prol = add nuw i64 %i.bn, 2
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !254
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !254
  store i32 0, ptr %i.cn, align 4, !tbaa !254
  %i.cp = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !254
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !254
  store i32 0, ptr %i.cr, align 4, !tbaa !254
  %storemerge9.i63 = add i32 %i.cp, 2
  store i32 %storemerge9.i63, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i64 = add nuw i64 %storemerge15.i61, 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.i64 ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge15.i61 ; 3 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !254
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !254
  store i32 0, ptr %i.cu, align 4, !tbaa !254
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !254
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !254
  store i32 0, ptr %i.cy, align 4, !tbaa !254
  %storemerge9.i63.1 = add i32 %i.cw, 2
  store i32 %storemerge9.i63.1, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  %storemerge.i64.1 = add nuw i64 %storemerge15.i61, 2 ; 2 uses
  %.not.i65.1 = icmp eq i64 %storemerge.i64.1, %5
  br i1 %.not.i65.1, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68, label %.lr.ph.i60

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE16initialize_untilEmRS6_.exit68: ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60, %bb.j
  %storemerge.in.lcssa.i67 = phi i64 [ %i.bn, %bb.j ], [ %storemerge12.i58, %.lr.ph.i60.prol.loopexit ], [ %storemerge.i64, %.lr.ph.i60 ]
  store i64 %5, ptr %i.bm, align 8, !tbaa !266
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %storemerge.in.lcssa.i67 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !254
  store i32 %i.db, ptr %0, align 4, !tbaa !254
  store i32 0, ptr %i.da, align 4, !tbaa !254
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !254
  store i32 %i.dd, ptr %i.bz, align 4, !tbaa !254
  store i32 0, ptr %i.dc, align 4, !tbaa !254
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
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !226
  store <2 x i64> %step.add, ptr %i.dx, align 8, !tbaa !226
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !4653

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
  store i64 %.010.i.i, ptr %.079.i.i, align 8, !tbaa !226
  %i.dz = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8
  %i.ea = add nuw i64 %.010.i.i, 1                ; 2 uses
  %.not.i.i = icmp eq i64 %i.ea, %i.ds
  br i1 %.not.i.i, label %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, label %.lr.ph.i.i, !llvm.loop !4654

_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit: ; preds = %.lr.ph.i.i, %middle.block, %bb.k
  tail call void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %i.di, ptr noundef %0, i64 noundef %5, i64 noundef %i.dj, i64 noundef %i.dp, i64 noundef %i.dq, i64 noundef %i.dl, ptr noundef %.pre107)
  %i.eb = load i64, ptr %i.bm, align 8, !tbaa !266 ; 2 uses
  %.not.i69 = icmp eq i64 %i.eb, 0
  br i1 %.not.i69, label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = shl i32 %i.ec, 1
  %i.ee = sub i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, %i.ed
  store i32 %i.ee, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !255
  store i64 0, ptr %i.bm, align 8, !tbaa !266
  br label %_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit

_ZN5boost7movelib13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES5_EPS6_mE5clearEv.exit: ; preds = %.preheader.i.i, %_ZN5boost7movelib15detail_adaptive14combine_paramsIPmNS1_4lessEmNS0_13adaptive_xbufISt4pairINS_9container4test24movable_and_copyable_intES9_EPSA_mEEEEvT_T0_T1_SF_SF_RT2_RSF_SI_SI_SI_b.exit, %bb.g, %bb.h, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7move_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !262
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !262
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 9 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 3 uses
  %17 = add i64 %i.n, %.idx208                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %17
  %18 = getelementptr i8, ptr %1, i64 %17
  %scevgep340 = getelementptr i8, ptr %18, i64 -4
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep338 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %scevgep437 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0343 = icmp ult ptr %7, %scevgep338
  %bound1344 = icmp ult ptr %i.g, %scevgep339
  %found.conflict345 = and i1 %bound0343, %bound1344
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict345, %stride.check
  %bound0347 = icmp ult ptr %7, %i.i
  %bound1348 = icmp ult ptr %scevgep.a, %scevgep339
  %found.conflict349 = and i1 %bound0347, %bound1348
  %invariant.op = or i1 %i.ai, %found.conflict349
  %bound0371.a = icmp ult ptr %i.g, %scevgep
  %bound1372.a = icmp ult ptr %scevgep.a, %scevgep340
  %found.conflict373.a = and i1 %bound0371.a, %bound1372.a
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !254 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !254 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i32, ptr %i.aw, align 4, !tbaa !254
  %i.bc = load i32, ptr %i.av, align 4, !tbaa !254
  %i.bd = icmp slt i32 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit, label %.lr.ph.i, !llvm.loop !55

_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !254
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !254
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_EENS0_9iter_sizeIT1_E4typeET_T0_SH_SJ_SJ_SJ_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 16 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !254
  %i.bu = load i32, ptr %.0191218, align 4, !tbaa !254
  %i.bv = icmp slt i32 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check393, label %.lr.ph.i.i.preheader544, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0395 = icmp ult ptr %.0114219, %i.cg
  %bound1396 = icmp ult ptr %i.am, %i.cf
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i.preheader544, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec399, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next414, %vector.body400 ] ; 2 uses
  %i.ck = shl i64 %index401, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep403 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep404 = getelementptr i8, ptr %i.am, i64 %i.ck ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.am, i64 %i.cl ; 2 uses
  %wide.vec406 = load <4 x i32>, ptr %next.gep404, align 4, !tbaa !254, !alias.scope !4695
  %wide.vec409 = load <4 x i32>, ptr %next.gep405, align 4, !tbaa !254, !alias.scope !4695
  store <4 x i32> %wide.vec406, ptr %next.gep402, align 4, !tbaa !254, !alias.scope !4696, !noalias !4695
  store <4 x i32> %wide.vec409, ptr %next.gep403, align 4, !tbaa !254, !alias.scope !4696, !noalias !4695
  store <4 x i32> zeroinitializer, ptr %next.gep404, align 4, !tbaa !254, !alias.scope !4695
  store <4 x i32> zeroinitializer, ptr %next.gep405, align 4, !tbaa !254, !alias.scope !4695
  %index.next414 = add nuw i64 %index401, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next414, %n.vec399
  br i1 %i.cm, label %middle.block415, label %vector.body400, !llvm.loop !4658

middle.block415:                                  ; preds = %vector.body400
  %cmp.n416 = icmp eq i64 %i.cc, %n.vec399
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader544

.lr.ph.i.i.preheader544:                          ; preds = %vector.memcheck394, %.lr.ph.i.i.preheader, %middle.block415
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck394 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block415 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck394 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block415 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader544, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.co, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !4659

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block415, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_S8_NS0_7move_opEEET1_T_SB_RSB_T0_SD_SD_SA_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPSt4pairINS_9container4test24movable_and_copyable_intES6_ENS4_3dtl23flat_tree_value_compareISt4lessIS6_ES7_NS9_9select1stIS6_EEEES8_SF_NS0_7swap_opES8_EEvT_T0_T1_NS0_9iter_sizeISJ_E4typeESM_SM_SM_SM_T2_T3_T4_:bb.a
  store i32 %i.ek, ptr %i.eh, align 4, !tbaa !254
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !254
  %i.el = getelementptr inbounds nuw i8, ptr %.079.i.i147, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i146, i64 8
  %.not.i.i148 = icmp eq ptr %i.el, %i.eb
  br i1 %.not.i.i148, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph.i.i145, !llvm.loop !47

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150: ; preds = %.lr.ph.i.i145, %bb.a, %.thread
  %.0108.lcssa284 = phi ptr [ %1, %bb.a ], [ %i.ee, %.thread ], [ %i.ee, %.lr.ph.i.i145 ]
  %.0111.lcssa283 = phi ptr [ %i.f, %bb.a ], [ %.0111.lcssa.ph, %.thread ], [ %.0111.lcssa.ph, %.lr.ph.i.i145 ]
  %.0191.lcssa282 = phi ptr [ %i.e, %bb.a ], [ %.0191.lcssa.ph, %.thread ], [ %.0191.lcssa.ph, %.lr.ph.i.i145 ]
  %.0195.lcssa281 = phi i64 [ 0, %bb.a ], [ %.0195.lcssa.ph, %.thread ], [ %.0195.lcssa.ph, %.lr.ph.i.i145 ] ; 2 uses
  %.idx210 = shl i64 %6, 3                        ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx210 ; 2 uses
  %.not8.i.i151 = icmp eq i64 %6, 0
  br i1 %.not8.i.i151, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152.preheader

.lr.ph.i.i152.preheader:                          ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  %i.eo = add i64 %.idx210, -8                    ; 2 uses
  %i.ep = and i64 %i.eo, 8
  %lcmp.mod.not.not = icmp eq i64 %i.ep, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i152.prol, label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol:                               ; preds = %.lr.ph.i.i152.preheader
  %i.eq = load i32, ptr %i.h, align 4, !tbaa !254
  store i32 0, ptr %i.h, align 4, !tbaa !254
  %i.er = load i32, ptr %7, align 4, !tbaa !254
  store i32 %i.er, ptr %i.h, align 4, !tbaa !254
  store i32 %i.eq, ptr %7, align 4, !tbaa !254
  %i.es = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !254
  store i32 0, ptr %i.es, align 4, !tbaa !254
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !254
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !254
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %.lr.ph.i.i152.prol.loopexit

.lr.ph.i.i152.prol.loopexit:                      ; preds = %.lr.ph.i.i152.prol, %.lr.ph.i.i152.preheader
  %.010.i.i153.unr = phi ptr [ %7, %.lr.ph.i.i152.preheader ], [ %i.ex, %.lr.ph.i.i152.prol ]
  %.079.i.i154.unr = phi ptr [ %i.h, %.lr.ph.i.i152.preheader ], [ %i.ew, %.lr.ph.i.i152.prol ]
  %i.ey = icmp eq i64 %i.eo, 0
  br i1 %i.ey, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152
  %.010.i.i153 = phi ptr [ %i.fo, %.lr.ph.i.i152 ], [ %.010.i.i153.unr, %.lr.ph.i.i152.prol.loopexit ] ; 6 uses
  %.079.i.i154 = phi ptr [ %i.fn, %.lr.ph.i.i152 ], [ %.079.i.i154.unr, %.lr.ph.i.i152.prol.loopexit ] ; 7 uses
  %i.ez = load i32, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i154, align 4, !tbaa !254
  %i.fa = load i32, ptr %.010.i.i153, align 4, !tbaa !254
  store i32 %i.fa, ptr %.079.i.i154, align 4, !tbaa !254
  store i32 %i.ez, ptr %.010.i.i153, align 4, !tbaa !254
  %i.fb = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 4 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 4 ; 2 uses
  %i.fd = load i32, ptr %i.fb, align 4, !tbaa !254
  store i32 0, ptr %i.fb, align 4, !tbaa !254
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !254
  store i32 %i.fe, ptr %i.fb, align 4, !tbaa !254
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !254
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 8 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 8 ; 2 uses
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !254
  store i32 0, ptr %i.ff, align 4, !tbaa !254
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !254
  store i32 %i.fi, ptr %i.ff, align 4, !tbaa !254
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !254
  %i.fj = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 12 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 12 ; 2 uses
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !254
  store i32 0, ptr %i.fj, align 4, !tbaa !254
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !254
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !254
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !254
  %i.fn = getelementptr inbounds nuw i8, ptr %.079.i.i154, i64 16 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.010.i.i153, i64 16
  %.not.i.i155.1 = icmp eq ptr %i.fn, %i.en
  br i1 %.not.i.i155.1, label %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, label %.lr.ph.i.i152, !llvm.loop !47

_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157: ; preds = %.lr.ph.i.i152.prol.loopexit, %.lr.ph.i.i152, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150
  store ptr %7, ptr %i.a, align 8, !tbaa !262
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %6 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.fp, ptr %10, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %5
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %4
  store ptr %i.fr, ptr %12, align 8, !tbaa !345, !alias.scope !4725
  store ptr %.0191.lcssa282, ptr %13, align 8, !tbaa !345, !alias.scope !4726
  store ptr %i.h, ptr %14, align 8, !tbaa !345, !alias.scope !4727
  store ptr %7, ptr %15, align 8, !tbaa !345, !alias.scope !4728
  store ptr %i.en, ptr %16, align 8, !tbaa !345, !alias.scope !4729
  call void @_ZN5boost7movelib15detail_adaptive26op_merge_blocks_with_irregINS0_16reverse_iteratorIPSt4pairINS_9container4test24movable_and_copyable_intES7_EEENS0_7inverseINS5_3dtl23flat_tree_value_compareISt4lessIS7_ES8_NSC_9select1stIS7_EEEEEESA_SA_SA_SJ_NS0_7swap_opEEET3_T_SM_T0_T1_RT2_SP_SL_NS0_9iter_sizeISO_E4typeEST_ST_ST_T4_bT5_(ptr dead_on_unwind nonnull writable sret(%"class.boost::movelib::reverse_iterator.91") align 8 %11, ptr noundef nonnull align 8 dead_on_return %12, ptr noundef nonnull align 8 dead_on_return %13, ptr noundef nonnull align 8 dead_on_return %14, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dead_on_return %15, ptr noundef nonnull align 8 dead_on_return %16, i64 noundef %2, i64 noundef %.0195.lcssa281, i64 noundef 0, i64 noundef %.0195.lcssa281, i1 noundef zeroext true)
  %i.fs = load ptr, ptr %11, align 8, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.ft = load ptr, ptr %10, align 8, !tbaa !345  ; 2 uses
  %i.fu = load ptr, ptr %i.a, align 8, !tbaa !262 ; 3 uses
  %.not27.i = icmp eq ptr %i.fu, %i.ft
  br i1 %.not27.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157, %bb.ab
  %.030.i = phi ptr [ %.1.i159, %bb.ab ], [ %i.ft, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.01929.i = phi ptr [ %.120.i, %bb.ab ], [ %.0111.lcssa283, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 4 uses
  %.02128.i = phi ptr [ %i.gj, %bb.ab ], [ %i.fs, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157 ] ; 3 uses
  %i.fv = icmp eq ptr %.0108.lcssa284, %.01929.i
  br i1 %i.fv, label %.lr.ph.i.i.i, label %bb.y

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i158, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.fx, %.lr.ph.i.i.i ], [ %.02128.i, %.lr.ph.i158 ] ; 2 uses
  %.057.i.i.i = phi ptr [ %i.fw, %.lr.ph.i.i.i ], [ %.030.i, %.lr.ph.i158 ] ; 2 uses
  %i.fw = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -8 ; 5 uses
  %i.fx = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -8 ; 3 uses
  %i.fy = load i32, ptr %i.fw, align 4, !tbaa !254
  store i32 0, ptr %i.fw, align 4, !tbaa !254
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !254
  store i32 %i.fz, ptr %i.fw, align 4, !tbaa !254
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !254
  %i.ga = getelementptr inbounds i8, ptr %.057.i.i.i, i64 -4 ; 3 uses
  %i.gb = getelementptr inbounds i8, ptr %.08.i.i.i, i64 -4 ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !tbaa !254
  store i32 0, ptr %i.ga, align 4, !tbaa !254
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !254
  store i32 %i.gd, ptr %i.ga, align 4, !tbaa !254
  store i32 %i.gc, ptr %i.gb, align 4, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.fu, %i.fw
  br i1 %.not.i.i.i, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !46

bb.y:                                             ; preds = %.lr.ph.i158
  %i.ge = getelementptr inbounds i8, ptr %.030.i, i64 -8 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.01929.i, i64 -8 ; 4 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !254
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !254
  %i.gi = icmp slt i32 %i.gg, %i.gh
  %i.gj = getelementptr inbounds i8, ptr %.02128.i, i64 -8 ; 5 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !254 ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !254
  %i.gl = getelementptr inbounds i8, ptr %.02128.i, i64 -4 ; 3 uses
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gm = load i32, ptr %i.gf, align 4, !tbaa !254
  store i32 %i.gm, ptr %i.gj, align 4, !tbaa !254
  store i32 %i.gk, ptr %i.gf, align 4, !tbaa !254
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.gn = load i32, ptr %i.ge, align 4, !tbaa !254
  store i32 %i.gn, ptr %i.gj, align 4, !tbaa !254
  store i32 %i.gk, ptr %i.ge, align 4, !tbaa !254
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.030.sink.i = phi ptr [ %.030.i, %bb.aa ], [ %.01929.i, %bb.z ]
  %.120.i = phi ptr [ %.01929.i, %bb.aa ], [ %i.gf, %bb.z ]
  %.1.i159 = phi ptr [ %i.ge, %bb.aa ], [ %.030.i, %bb.z ] ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.030.sink.i, i64 -4 ; 2 uses
  %i.gp = load i32, ptr %i.gl, align 4, !tbaa !254
  store i32 0, ptr %i.gl, align 4, !tbaa !254
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !254
  store i32 %i.gq, ptr %i.gl, align 4, !tbaa !254
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !254
  %.not.i160 = icmp eq ptr %i.fu, %.1.i159
  br i1 %.not.i160, label %_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit, label %.lr.ph.i158, !llvm.loop !4724

_ZN5boost7movelib25op_merge_with_left_placedINS_9container3dtl23flat_tree_value_compareISt4lessINS2_4test24movable_and_copyable_intEESt4pairIS7_S7_ENS3_9select1stIS7_EEEENS0_7swap_opEPSA_SF_EEvT2_SG_SG_T1_SH_T_T0_.exit: ; preds = %bb.ab, %.lr.ph.i.i.i, %_ZN5boost7movelib7swap_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost7movelib15detail_adaptive24op_merge_blocks_with_bufIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEENS0_7move_opESA_EEvT_T0_T1_NS0_9iter_sizeISL_E4typeESO_SO_SO_SO_T2_T3_T4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %8 = alloca %"class.boost::container::dtl::flat_tree_value_compare.10", align 1 ; 4 uses
  %9 = alloca %"struct.boost::movelib::antistable.89", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %10 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 5 uses
  %11 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 4 uses
  %12 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 2 uses
  %13 = alloca %"class.boost::movelib::reverse_iterator.79", align 8 ; 2 uses
  %14 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %15 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %16 = alloca %"class.boost::movelib::reverse_iterator.91", align 8 ; 2 uses
  %i.e = add i64 %5, %4                           ; 6 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store ptr %7, ptr %i.c, align 8, !tbaa !262
  %i.g = getelementptr [8 x i8], ptr %1, i64 %3   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store ptr %i.g, ptr %i.d, align 8, !tbaa !262
  %i.h = mul i64 %i.e, %2
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h ; 12 uses
  %.not216 = icmp eq i64 %i.e, 0
  br i1 %.not216, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit150, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = icmp eq i64 %5, 0
  %i.k = select i1 %i.j, i64 0, i64 %4            ; 2 uses
  %i.l = add i64 %i.k, 1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.e)
  %.idx208 = shl i64 %2, 3                        ; 9 uses
  %.not121 = icmp eq i64 %6, 0
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %.not2830.i = icmp eq i64 %2, 0
  %i.n = shl i64 %3, 3                            ; 3 uses
  %17 = add i64 %i.n, %.idx208                    ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %17
  %18 = getelementptr i8, ptr %1, i64 %17
  %scevgep340 = getelementptr i8, ptr %18, i64 -4
  %i.o = or disjoint i64 %i.n, 4                  ; 2 uses
  %scevgep.a = getelementptr i8, ptr %1, i64 %i.o ; 4 uses
  %i.p = mul i64 %2, %i.e
  %i.q = add i64 %i.p, %3
  %i.r = shl i64 %i.q, 3
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %scevgep338 = getelementptr i8, ptr %i.s, i64 -4 ; 3 uses
  %scevgep339 = getelementptr i8, ptr %7, i64 %.idx208 ; 4 uses
  %i.t = shl i64 %3, 3                            ; 2 uses
  %i.u = add i64 %i.t, 8
  %i.v = add i64 %i.t, %i.a
  %i.w = add i64 %i.v, %.idx208
  %i.x = add i64 %i.w, -8
  %scevgep437 = getelementptr i8, ptr %7, i64 8
  %i.y = shl i64 %3, 3
  %i.z = add i64 %i.y, %i.a
  %i.aa = add i64 %i.z, %.idx208
  %i.ab = add i64 %i.aa, -8
  %i.ac = add i64 %.idx208, -8                    ; 2 uses
  %i.ad = lshr exact i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  %i.af = getelementptr i8, ptr %1, i64 %i.n
  %i.ag = getelementptr i8, ptr %i.af, i64 -4
  %i.ah = getelementptr i8, ptr %1, i64 %i.o
  %bound0343 = icmp ult ptr %7, %scevgep338
  %bound1344 = icmp ult ptr %i.g, %scevgep339
  %found.conflict345 = and i1 %bound0343, %bound1344
  %stride.check = icmp slt i64 %.idx208, 0
  %i.ai = or i1 %found.conflict345, %stride.check
  %bound0347 = icmp ult ptr %7, %i.i
  %bound1348 = icmp ult ptr %scevgep.a, %scevgep339
  %found.conflict349 = and i1 %bound0347, %bound1348
  %invariant.op = or i1 %i.ai, %found.conflict349
  %bound0371.a = icmp ult ptr %i.g, %scevgep
  %bound1372.a = icmp ult ptr %scevgep.a, %scevgep340
  %found.conflict373.a = and i1 %bound0371.a, %bound1372.a
  %n.vec = and i64 %i.ae, 4611686018427387902     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 3 uses
  %i.ak = getelementptr i8, ptr %7, i64 %i.aj     ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %bb.x ] ; 3 uses
  %i.al = phi ptr [ %7, %.lr.ph ], [ %i.hb, %bb.x ] ; 5 uses
  %i.am = phi ptr [ %7, %.lr.ph ], [ %i.hc, %bb.x ] ; 11 uses
  %i.an = phi ptr [ %i.g, %.lr.ph ], [ %i.bl, %bb.x ] ; 9 uses
  %.0 = phi i64 [ %.sroa.speculated, %.lr.ph ], [ %i.hk, %bb.x ] ; 3 uses
  %.0227 = phi i64 [ %5, %.lr.ph ], [ %.1, %bb.x ] ; 2 uses
  %.0104226 = phi i64 [ %i.k, %.lr.ph ], [ %i.hi, %bb.x ] ; 4 uses
  %.0106223 = phi ptr [ %0, %.lr.ph ], [ %i.hg, %bb.x ] ; 16 uses
  %.0108222 = phi i8 [ 1, %.lr.ph ], [ %.1109, %bb.x ] ; 5 uses
  %.0111220 = phi ptr [ %i.g, %.lr.ph ], [ %i.hf, %bb.x ] ; 5 uses
  %.0114219 = phi ptr [ %1, %.lr.ph ], [ %.1115, %bb.x ] ; 11 uses
  %.0191218 = phi ptr [ %i.f, %.lr.ph ], [ %.2193, %bb.x ] ; 16 uses
  %.0195217 = phi i64 [ %i.e, %.lr.ph ], [ %i.hl, %bb.x ] ; 4 uses
  %i.ao = ptrtoaddr ptr %i.al to i64
  %i.ap = ptrtoaddr ptr %i.am to i64
  %i.aq = icmp ult i64 %.0104226, %.0
  br i1 %i.aq, label %.lr.ph.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.thread24.i
  %.027.i = phi i64 [ %i.bf, %.thread24.i ], [ %.0104226, %bb.b ] ; 4 uses
  %.02226.i = phi i64 [ %i.be, %.thread24.i ], [ 0, %bb.b ] ; 4 uses
  %i.ar = mul i64 %.02226.i, %2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ar
  %i.at = mul i64 %.027.i, %2
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.at
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.02226.i
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0106223, i64 %.027.i
  %i.ax = load i32, ptr %i.au, align 4, !tbaa !254 ; 2 uses
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !254 ; 2 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ba = icmp slt i32 %i.ay, %i.ax
  br i1 %i.ba, label %.thread24.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !226
  %i.bc = load i64, ptr %i.av, align 8, !tbaa !226
  %i.bd = icmp ult i64 %i.bb, %i.bc
  %cond.fr.i = freeze i1 %i.bd
  br i1 %cond.fr.i, label %.thread.i, label %.thread24.i

.thread.i:                                        ; preds = %bb.d, %.lr.ph.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %.thread.i, %bb.d, %bb.c
  %i.be = phi i64 [ %.027.i, %.thread.i ], [ %.02226.i, %bb.d ], [ %.02226.i, %bb.c ] ; 2 uses
  %i.bf = add nuw i64 %.027.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %.0
  br i1 %exitcond.not.i, label %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit, label %.lr.ph.i, !llvm.loop !87

_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit: ; preds = %.thread24.i, %bb.b
  %.022.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.be, %.thread24.i ] ; 8 uses
  %i.bg = add i64 %.022.lcssa.i, 2
  %i.bh = call i64 @llvm.umax.i64(i64 %.0, i64 %i.bg) ; 2 uses
  %.sroa.speculated180 = call i64 @llvm.umin.i64(i64 %i.bh, i64 %.0195217)
  %i.bi = mul i64 %.022.lcssa.i, %2               ; 2 uses
  %.idx = shl i64 %i.bi, 3                        ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx  ; 12 uses
  %i.bk = getelementptr [8 x i8], ptr %i.bj, i64 %2 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx208 ; 8 uses
  %i.bm = icmp eq ptr %i.am, %i.al
  %.not120 = icmp eq i64 %.0227, 0
  br i1 %.not120, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  br i1 %.not121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !254
  %i.bo = load i32, ptr %i.bj, align 4, !tbaa !254
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old123 = trunc nuw i8 %.0108222 to i1
  br i1 %.old123, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %_ZN5boost7movelib15detail_adaptive15find_next_blockIPmNS1_4lessEPSt4pairINS_9container4test24movable_and_copyable_intES8_ENS6_3dtl23flat_tree_value_compareISt4lessIS8_ES9_NSB_9select1stIS8_EEEEEENS0_9iter_sizeIT1_E4typeET_T0_SJ_SL_SL_SL_T2_.exit
  %.idx209 = shl nuw nsw i64 %.022.lcssa.i, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %.0106223, i64 %.idx209 ; 13 uses
  %i.br = icmp eq ptr %.0191218, %i.m
  br i1 %i.br, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %bb.h
  %i.bs = trunc nuw i8 %.0108222 to i1
  br i1 %i.bs, label %bb.j, label %.thread276

.thread276:                                       ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !226
  %i.bu = load i64, ptr %.0191218, align 8, !tbaa !226
  %i.bv = icmp ult i64 %i.bt, %i.bu               ; 4 uses
  %i.bw = trunc nuw i8 %.0108222 to i1            ; 2 uses
  %i.bx = xor i1 %i.bv, %i.bw
  br i1 %i.bx, label %bb.n, label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.by = phi i1 [ true, %._crit_edge ], [ %i.bv, %bb.i ]
  br i1 %i.bm, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bz = add i64 %i.ao, -8
  %i.ca = sub i64 %i.bz, %i.ap                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.ca, 40
  br i1 %min.iters.check393, label %.lr.ph.i.i.preheader544, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i.preheader
  %i.cd = and i64 %i.ca, -8
  %i.ce = add i64 %i.cd, 8                        ; 2 uses
  %i.cf = getelementptr i8, ptr %.0114219, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.am, i64 %i.ce
  %bound0395 = icmp ult ptr %.0114219, %i.cg
  %bound1396 = icmp ult ptr %i.am, %i.cf
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %.lr.ph.i.i.preheader544, label %vector.ph398

vector.ph398:                                     ; preds = %vector.memcheck394
  %n.vec399 = and i64 %i.cc, 4611686018427387900  ; 3 uses
  %i.ch = shl i64 %n.vec399, 3                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0114219, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.am, i64 %i.ch
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next414, %vector.body400 ] ; 2 uses
  %i.ck = shl i64 %index401, 3                    ; 3 uses
  %i.cl = or disjoint i64 %i.ck, 16               ; 2 uses
  %next.gep402 = getelementptr i8, ptr %.0114219, i64 %i.ck
  %next.gep403 = getelementptr i8, ptr %.0114219, i64 %i.cl
  %next.gep404 = getelementptr i8, ptr %i.am, i64 %i.ck ; 2 uses
  %next.gep405 = getelementptr i8, ptr %i.am, i64 %i.cl ; 2 uses
  %wide.vec406 = load <4 x i32>, ptr %next.gep404, align 4, !tbaa !254, !alias.scope !4770
  %wide.vec409 = load <4 x i32>, ptr %next.gep405, align 4, !tbaa !254, !alias.scope !4770
  store <4 x i32> %wide.vec406, ptr %next.gep402, align 4, !tbaa !254, !alias.scope !4771, !noalias !4770
  store <4 x i32> %wide.vec409, ptr %next.gep403, align 4, !tbaa !254, !alias.scope !4771, !noalias !4770
  store <4 x i32> zeroinitializer, ptr %next.gep404, align 4, !tbaa !254, !alias.scope !4770
  store <4 x i32> zeroinitializer, ptr %next.gep405, align 4, !tbaa !254, !alias.scope !4770
  %index.next414 = add nuw i64 %index401, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next414, %n.vec399
  br i1 %i.cm, label %middle.block415, label %vector.body400, !llvm.loop !4733

middle.block415:                                  ; preds = %vector.body400
  %cmp.n416 = icmp eq i64 %i.cc, %n.vec399
  br i1 %cmp.n416, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i.preheader544

.lr.ph.i.i.preheader544:                          ; preds = %vector.memcheck394, %.lr.ph.i.i.preheader, %middle.block415
  %.010.i.i.ph = phi ptr [ %.0114219, %vector.memcheck394 ], [ %.0114219, %.lr.ph.i.i.preheader ], [ %i.ci, %middle.block415 ]
  %.079.i.i.ph = phi ptr [ %i.am, %vector.memcheck394 ], [ %i.am, %.lr.ph.i.i.preheader ], [ %i.cj, %middle.block415 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader544, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.cs, %.lr.ph.i.i ], [ %.010.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 3 uses
  %.079.i.i = phi ptr [ %i.cr, %.lr.ph.i.i ], [ %.079.i.i.ph, %.lr.ph.i.i.preheader544 ] ; 4 uses
  %i.cn = load i32, ptr %.079.i.i, align 4, !tbaa !254
  store i32 %i.cn, ptr %.010.i.i, align 4, !tbaa !254
  store i32 0, ptr %.079.i.i, align 4, !tbaa !254
  %i.co = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !254
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !254
  store i32 0, ptr %i.co, align 4, !tbaa !254
  %i.cr = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.cr, %i.al
  br i1 %.not.i.i, label %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit, label %.lr.ph.i.i, !llvm.loop !4734

_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit: ; preds = %.lr.ph.i.i, %middle.block415, %bb.j
  store ptr %7, ptr %i.b, align 8, !tbaa !262
  %.not.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i, label %_ZN5boost7movelib15detail_adaptive21buffer_and_update_keyIPmPSt4pairINS_9container4test24movable_and_copyable_intES7_ES9_NS0_7move_opEEET1_T_SC_RSC_T0_SE_SE_SB_T2_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN5boost7movelib7move_opclIPSt4pairINS_9container4test24movable_and_copyable_intES6_ES8_EET0_NS0_9forward_tET_SB_S9_.exit
  br i1 %.not2830.i, label %._crit_edge.i, label %.lr.ph.i125.preheader

.lr.ph.i125.preheader:                            ; preds = %.preheader.i
  br i1 %min.iters.check, label %.lr.ph.i125.preheader543, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i125.preheader
  %i.ct = mul i64 %indvar, %.idx208               ; 2 uses
  %i.cu = shl i64 %.022.lcssa.i, 3
  %i.cv = add i64 %i.cu, 8
  %i.cw = mul i64 %2, %i.cv
  %i.cx = getelementptr i8, ptr %i.ag, i64 %i.ct
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cw  ; 4 uses
end_hunk_1
