Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79533
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINSC_4math4Vec3IfEESaISY_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store i8 %i.av, ptr %i.y, align 1, !tbaa !768
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !768
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !2037
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !132

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !2013
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !788, !noundef !789
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !2013
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !788, !noundef !789
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !2015
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !2038
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !2015
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !2039
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !768
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2001
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6206 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS6_4math4Vec3IfEESaISS_EEEUlRKS4_E_KNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !743
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !2002
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !2004
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 104 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !2013
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bu = load i64, ptr %i.q, align 16, !tbaa !2016
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 16, !tbaa !2016
  store i64 %i.bv, ptr %i.bt, align 16, !tbaa !2016
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  store i32 2, ptr %i.bw, align 8, !tbaa !2014
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.by = load i8, ptr %i.r, align 4, !tbaa !2015
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.ca = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.ca, ptr %i.bz, align 64, !tbaa !2017
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !2015
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6206 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !2031
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !2021
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !2022
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !2017
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !2033
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !2013
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !2013
  %i.ci = load ptr, ptr %3, align 8, !tbaa !2034
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !6206
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !2037
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !2037
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !2039
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !2039
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !2038
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !768
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1781
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !1779
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !1780
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZSt13__invoke_implIvRKZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS1_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS1_4math4Vec3IfEESaISN_EEEUlRKN3tbb6detail2d113blocked_rangeImEEE_JRSV_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !2037
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !2037
  %i.de = load i8, ptr %5, align 8, !tbaa !2038
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !2038
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dj = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %.0.i.i = select i1 %i.dm, ptr %i.do, ptr %i.dj
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !6207

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvRKZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS1_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS1_4math4Vec3IfEESaISN_EEEUlRKN3tbb6detail2d113blocked_rangeImEEE_JRSV_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1960
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1780 ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !1779
  %.not45.i = icmp eq i64 %i.c, %i.d
  br i1 %.not45.i, label %_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i
  %storemerge46.i = phi i64 [ %i.c, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i ], [ %i.aj, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1957 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1944, !noalias !6211, !nonnull !789, !align !844
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1829, !noalias !6211
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %storemerge46.i ; 3 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.l, align 4, !noalias !6211
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !6211
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !6211
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1956, !noalias !6211, !nonnull !789, !align !844
  %i.n = zext i32 %.sroa.03.0.copyload.i.i to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1791, !noalias !6211 ; 3 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !6211
  %i.q = zext i32 %.sroa.5.0.copyload.i.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !6211
  %i.s = zext i32 %.sroa.6.0.copyload.i.i to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !noalias !6211
  %i.u = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !6211 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.u, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !6211
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.u, align 4
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %4 = load float, ptr %3, align 4, !tbaa !1161
  %i.w = fadd float %.sroa.6.0.copyload.i14.i, %4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load float, ptr %i.y, align 4, !tbaa !1161
  %i.aa = fadd float %i.w, %i.z
  %i.ab = load <2 x float>, ptr %i.v, align 4, !tbaa !1161
  %i.ac = fadd <2 x float> %.sroa.0.0.copyload4.i.i, %i.ab
  %i.ad = load <2 x float>, ptr %i.x, align 4, !tbaa !1161
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  %i.af = fdiv <2 x float> %i.ae, splat (float 3.000000e+00)
  %5 = fdiv float %i.aa, 3.000000e+00
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !6212, !nonnull !789, !align !844
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1791
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %storemerge46.i ; 2 uses
  store <2 x float> %i.af, ptr %i.ai, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %5, ptr %.sroa.5.0..sroa_idx.i, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 36) #31
  %i.aj = add i64 %storemerge46.i, 1              ; 2 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !1779
  %.not.i = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.i, label %_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, !llvm.loop !6210

_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2040 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #31
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_N7openvdb5v13_04math5CoordEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1971 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #31
  br label %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZNSt10unique_ptrIA_N7openvdb5v13_04math5CoordESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1966 ; 2 uses
  %.not.i2.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i2.i.i, label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #31
  br label %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i

_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_sEclIsEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, %_ZNSt10unique_ptrIA_jSt14default_deleteIS0_EED2Ev.exit.i.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1971 ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i3.i.i, label %_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit, label %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i

_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i: ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit

_ZSt8_DestroyIN7openvdb5v13_05tools16PointPartitionerIjLj3EEEEvPT_.exit: ; preds = %_ZNSt10unique_ptrIA_sSt14default_deleteIS0_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIA_jEclIjEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i4.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools16PointPartitionerIjLj3EEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1968 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !768
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7openvdb5v13_05tools16PointPartitionerIjLj3EEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !786  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !798
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !799
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !743
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !2
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !768
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !741
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !800

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools26point_partitioner_internal9partitionIjsNS1_6lvlset10PointArrayINS0_4math4Vec3IfEEEEEEvRKT1_RKNS6_9TransformEjRSt10unique_ptrIA_T_St14default_deleteISI_EESM_RSG_IA_NS6_5CoordESJ_ISO_EERSH_RSG_IA_T0_SJ_ISU_EEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %11 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %12 = alloca %"class.tbb::detail::d1::auto_partitioner", align 1 ; 3 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %13 = alloca %"class.std::vector.545", align 8  ; 12 uses
  %14 = alloca %"class.std::unique_ptr.1096", align 8 ; 10 uses
  %15 = alloca %"class.std::unique_ptr.1096", align 8 ; 10 uses
  %16 = alloca %"class.tbb::detail::d1::blocked_range.803", align 8 ; 9 uses
  %17 = alloca %"class.std::unique_ptr.1104", align 8 ; 10 uses
  %18 = alloca %"class.std::unique_ptr.1104", align 8 ; 7 uses
  %19 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::OrderSegmentsOp", align 8 ; 9 uses
  %20 = alloca %"class.std::vector.1027", align 8 ; 14 uses
  %21 = alloca %class.anon.1125, align 8          ; 10 uses
  %22 = alloca %"struct.openvdb::v13_0::tools::point_partitioner_internal::MoveSegmentDataOp", align 8 ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !741
  br i1 %8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !2042, !nonnull !789, !align !844 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1854
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !1791
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = sdiv exact i64 %i.h, 12
  %i.j = shl nsw i64 %i.i, 1
  %.inv = icmp sgt i64 %i.h, -12
  %i.k = select i1 %.inv, i64 %i.j, i64 -1
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINSC_4math4Vec3IfEESaISY_EEEUlRKSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.at = load i64, ptr %i.as, align 8, !tbaa !1781
  store i64 %i.at, ptr %i.ab, align 8, !tbaa !1781
  %i.au = load i8, ptr %i.y, align 1, !tbaa !768
  %i.av = add i8 %i.au, 1                         ; 3 uses
  store i8 %i.av, ptr %i.y, align 1, !tbaa !768
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ak
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !768
  %i.ax = add nuw nsw i8 %i.v, 1                  ; 3 uses
  store i8 %i.ax, ptr %i.l, align 2, !tbaa !2037
  %exitcond.not.i = icmp eq i8 %i.ax, 8
  br i1 %exitcond.not.i, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, label %bb.f, !llvm.loop !132

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i, %bb.f, %bb.e
  %.pr = phi i8 [ %.promoted.i, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.i ] ; 2 uses
  %i.ay = load ptr, ptr %i.o, align 8, !tbaa !3111
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load atomic i8, ptr %i.az monotonic, align 1, !range !788, !noundef !789
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.h, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread: ; preds = %bb.g
  %i.bc = load ptr, ptr %i.o, align 8, !tbaa !3111
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load atomic i8, ptr %i.bd monotonic, align 1, !range !788, !noundef !789
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %.thread, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge

.thread:                                          ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread
  %i.bg = add i8 %i.s, 1
  store i8 %i.bg, ptr %i.h, align 4, !tbaa !2015
  br label %.noexc

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit.thread, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %.pre23 = load i8, ptr %5, align 8, !tbaa !2038
  %.pre25 = zext i8 %.pre23 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !2015
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !2039
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !768
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !2001
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !8049 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS6_4math4Vec3IfEESaISS_EEEUlRKS4_E_KNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !743
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !2002
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !3109
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 104 ; 2 uses
  store ptr null, ptr %i.bs, align 8, !tbaa !3111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bu = load i64, ptr %i.q, align 16, !tbaa !2016
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 16, !tbaa !2016
  store i64 %i.bv, ptr %i.bt, align 16, !tbaa !2016
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  store i32 2, ptr %i.bw, align 8, !tbaa !2014
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 124
  %i.by = load i8, ptr %i.r, align 4, !tbaa !2015
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 128
  %i.ca = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.ca, ptr %i.bz, align 64, !tbaa !2017
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !2015
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !8049 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !2031
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !2021
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !2022
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !2017
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !2033
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !3111
  store ptr %i.cc, ptr %i.bs, align 8, !tbaa !3111
  %i.ci = load ptr, ptr %3, align 8, !tbaa !2034
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !8049
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !2037
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !2037
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !2039
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !2039
  br label %thread-pre-split22

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !2038
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !768
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !1781
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !1779
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !1780
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split22, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre25, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZSt13__invoke_implIvRKZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS1_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS1_4math4Vec3IfEESaISN_EEEUlRKN3tbb6detail2d113blocked_rangeImEEE_JRSV_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !2037
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !2037
  %i.de = load i8, ptr %5, align 8, !tbaa !2038
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !2038
  br label %thread-pre-split22

thread-pre-split22:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split22
  %i.dj = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %.0.i.i = select i1 %i.dm, ptr %i.do, ptr %i.dj
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, label %thread-pre-split, !llvm.loop !8050

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21: ; preds = %thread-pre-split22, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit21, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__invoke_implIvRKZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS1_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS1_4math4Vec3IfEESaISN_EEEUlRKN3tbb6detail2d113blocked_rangeImEEE_JRSV_EET_St14__invoke_otherOT0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !3107
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1780 ; 2 uses
  %i.d = load i64, ptr %1, align 8, !tbaa !1779
  %.not45.i = icmp eq i64 %i.c, %i.d
  br i1 %.not45.i, label %_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i
  %storemerge46.i = phi i64 [ %i.c, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.lr.ph.i ], [ %i.aj, %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i ] ; 3 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !1957 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1944, !noalias !8054, !nonnull !789, !align !844
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1829, !noalias !8054
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %storemerge46.i ; 3 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %i.l, align 4, !noalias !8054
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !8054
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !8054
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1956, !noalias !8054, !nonnull !789, !align !844
  %i.n = zext i32 %.sroa.03.0.copyload.i.i to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !1791, !noalias !8054 ; 3 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.p, i64 12, i1 false), !noalias !8054
  %i.q = zext i32 %.sroa.5.0.copyload.i.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !8054
  %i.s = zext i32 %.sroa.6.0.copyload.i.i to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !noalias !8054
  %i.u = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !8054 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.u, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !8054
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.u, align 4
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %4 = load float, ptr %3, align 4, !tbaa !1161
  %i.w = fadd float %.sroa.6.0.copyload.i14.i, %4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load float, ptr %i.y, align 4, !tbaa !1161
  %i.aa = fadd float %i.w, %i.z
  %i.ab = load <2 x float>, ptr %i.v, align 4, !tbaa !1161
  %i.ac = fadd <2 x float> %.sroa.0.0.copyload4.i.i, %i.ab
  %i.ad = load <2 x float>, ptr %i.x, align 4, !tbaa !1161
  %i.ae = fadd <2 x float> %i.ac, %i.ad
  %i.af = fdiv <2 x float> %i.ae, splat (float 3.000000e+00)
  %5 = fdiv float %i.aa, 3.000000e+00
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !8055, !nonnull !789, !align !844
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1791
  %i.ai = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %storemerge46.i ; 2 uses
  store <2 x float> %i.af, ptr %i.ai, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %5, ptr %.sroa.5.0..sroa_idx.i, align 4
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 36) #31
  %i.aj = add i64 %storemerge46.i, 1              ; 2 uses
  %i.ak = load i64, ptr %1, align 8, !tbaa !1779
  %.not.i = icmp eq i64 %i.aj, %i.ak
  br i1 %.not.i, label %_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit, label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, !llvm.loop !8053

_ZZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16computeCentroidsERSt6vectorINS0_4math4Vec3IfEESaISM_EEENKUlRKN3tbb6detail2d113blocked_rangeImEEE_clESW_.exit: ; preds = %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(696) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 696) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(696) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !743
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(680) dereferenceable(680) %i.a) #24, !inline_history !8056
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(696) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 696) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS1_4GridINS1_4tree4TreeINS6_8RootNodeINS6_12InternalNodeINS9_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(696) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1968 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !768
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEC2ERSt10shared_ptrISF_ERKbPSH_(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_EC2ERSt10shared_ptrISE_ERKbPSI_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEE, i64 16), ptr %0, align 8, !tbaa !743
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 0, ptr %i.d, align 8
  %i.e = ptrtoint ptr %0 to i64
  store i64 %i.e, ptr %i.a, align 8, !tbaa !1821
  store ptr @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE14prismBottomTopMUlS0_S0_S2_S2_E_EE9_M_invokeERKSt9_Any_dataS0_S0_S2_S2_, ptr %i.c, align 8, !tbaa !1883
  store ptr @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE14prismBottomTopMUlS0_S0_S2_S2_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.b, align 8, !tbaa !1876
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #30
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.g, ptr %i.f, align 8, !tbaa !3113
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !3114
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 544
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, i8 0, i64 144, i1 false)
  store ptr %i.h, ptr %i.j, align 8, !tbaa !3115
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #30
          to label %.noexc16 unwind label %bb.f   ; 3 uses

.noexc16:                                         ; preds = %.noexc
  store ptr %i.l, ptr %i.k, align 8, !tbaa !3113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !3114
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 592
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.l, i8 0, i64 120, i1 false)
  store ptr %i.m, ptr %i.o, align 8, !tbaa !3115
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.b unwind label %bb.g       ; 3 uses

bb.b:                                             ; preds = %.noexc16
  store ptr %i.q, ptr %i.p, align 8, !tbaa !3116
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !3117
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 616
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, i8 0, i64 40, i1 false)
  store ptr %i.r, ptr %i.t, align 8, !tbaa !3118
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %i.v = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.c unwind label %bb.h       ; 3 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.v, ptr %i.u, align 8, !tbaa !3116
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !3117
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  store ptr %i.w, ptr %i.y, align 8, !tbaa !3118
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30
          to label %bb.d unwind label %bb.i       ; 3 uses

bb.d:                                             ; preds = %bb.c
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !3116
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !3117
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i8 0, i64 40, i1 false)
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !3118
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit27

bb.f:                                             ; preds = %.noexc
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IdEESaIS4_EED2Ev.exit

bb.g:                                             ; preds = %.noexc16
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit24

bb.h:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.u, align 8, !tbaa !3116 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !3117
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.h ], [ %i.ai, %bb.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !3116 ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIdSaIdEED2Ev.exit24, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ap = load ptr, ptr %i.s, align 8, !tbaa !3117
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.as) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit24

_ZNSt6vectorIdSaIdEED2Ev.exit24:                  ; preds = %bb.k, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.k ] ; 2 uses
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !3113 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.at, null
end_hunk_1
