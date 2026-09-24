Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Archive?download=true
inline.NumInlined: 9836
inline.NumDeleted: 4264
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNSD_4TreeINSD_8RootNodeINSD_12InternalNodeINSH_INSD_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRSA_E_KNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.kw = lshr i64 %i.kv, 1                       ; 2 uses
  store i64 %i.kw, ptr %i.bh, align 16, !tbaa !367
  store i64 %i.kw, ptr %i.ku, align 16, !tbaa !367
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 120
  store i32 2, ptr %i.kx, align 8, !tbaa !365
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ko, i64 124
  %i.kz = load i8, ptr %i.bi, align 4, !tbaa !366
  %i.la = getelementptr inbounds nuw i8, ptr %i.ko, i64 128
  %i.lb = load i64, ptr %4, align 8, !tbaa !368
  store i64 %i.lb, ptr %i.la, align 64, !tbaa !368
  %i.lc = sub i8 %i.kz, %i.kn
  store i8 %i.lc, ptr %i.ky, align 4, !tbaa !366
  %i.ld = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !1194 ; 6 uses
  %i.le = load ptr, ptr %i.be, align 8, !tbaa !628
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !372
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store i32 2, ptr %i.lf, align 8, !tbaa !373
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lh = load i64, ptr %4, align 8, !tbaa !368
  store i64 %i.lh, ptr %i.lg, align 8, !tbaa !368
  %i.li = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  store i8 0, ptr %i.li, align 8, !tbaa !616
  store ptr %i.ld, ptr %i.be, align 8, !tbaa !623
  store ptr %i.ld, ptr %i.kt, align 8, !tbaa !623
  %i.lj = load ptr, ptr %3, align 8, !tbaa !629
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(136) %i.ko, ptr noundef nonnull align 8 dereferenceable(128) %i.lj), !inline_history !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.lk = add i8 %i.kj, -1
  %i.ll = add nuw nsw i8 %i.bj, 1
  %i.lm = and i8 %i.ll, 7
  br label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.ln = zext i8 %i.jv to i64                    ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !117
  %i.lq = icmp ult i8 %i.lp, %i.kh
  br i1 %i.lq, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.ac
  %i.lr = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.ln ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !592
  %i.lu = load i64, ptr %i.lr, align 8, !tbaa !590
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !591
  %i.lx = sub i64 %i.lu, %i.lw
  %i.ly = icmp ult i64 %i.lt, %i.lx
  br i1 %i.ly, label %thread-pre-split31, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.ac, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.lz = phi i8 [ %i.kf, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jv, %bb.ac ], [ %i.jv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.ma = phi i8 [ %i.kg, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ju, %bb.ac ], [ %i.ju, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.ln, %bb.ac ], [ %i.ln, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mb = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.pre-phi ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !591 ; 2 uses
  %i.me = load i64, ptr %i.mb, align 8, !tbaa !590 ; 2 uses
  %i.mf = icmp ult i64 %i.md, %i.me
  br i1 %i.mf, label %.lr.ph.i.i.i.i.i.i15, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24

.lr.ph.i.i.i.i.i.i15:                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mg = load ptr, ptr %i.bg, align 32, !tbaa !1199, !nonnull !154, !align !554 ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !579, !noalias !1202 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !580, !noalias !1202
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !578, !noalias !1202
  %i.mn = ptrtoint ptr %i.mi to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = ashr exact i64 %i.mp, 3
  %i.mr = load ptr, ptr %i.bf, align 8, !tbaa !1201, !nonnull !154, !align !554
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !583
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i23, %.lr.ph.i.i.i.i.i.i15
  %.06.i.i.i.i.i.i16 = phi i64 [ %i.md, %.lr.ph.i.i.i.i.i.i15 ], [ %i.nt, %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i23 ] ; 4 uses
  %i.mt = add nsw i64 %.06.i.i.i.i.i.i16, %i.mq   ; 5 uses
  %i.mu = icmp sgt i64 %i.mt, -1
  br i1 %i.mu, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.mv = icmp samesign ult i64 %i.mt, 64
  br i1 %i.mv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mi, i64 %.06.i.i.i.i.i.i16
  br label %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17

bb.ag:                                            ; preds = %bb.ae
  %i.mx = lshr i64 %i.mt, 6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.my = ashr i64 %i.mt, 6
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.mz = phi i64 [ %i.mx, %bb.ag ], [ %i.my, %bb.ah ] ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %i.mm, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !588, !noalias !1202
  %i.nc = shl nsw i64 %i.mz, 6
  %i.nd = sub nsw i64 %i.mt, %i.nc
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.nb, i64 %i.nd
  br label %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17

_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17: ; preds = %bb.ai, %bb.af
  %storemerge.i.i.i.i.i.i.i.i.i.i18 = phi ptr [ %i.ne, %bb.ai ], [ %i.mw, %bb.af ]
  %i.nf = load ptr, ptr %storemerge.i.i.i.i.i.i.i.i.i.i18, align 8, !tbaa !571
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32768
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17
  %index = phi i64 [ 0, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17 ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17 ], [ %i.nn, %vector.body ]
  %vec.phi84 = phi <2 x i32> [ zeroinitializer, %_ZNSt5dequeIPKN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIiLj3EEELj4EEESaIS8_EEixEm.exit.i.i.i.i.i.i17 ], [ %i.no, %vector.body ]
  %i.nh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ng, i64 %i.nh ; 2 uses
  %i.ni = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !83
  %wide.load85 = load <2 x i64>, ptr %i.ni, align 8, !tbaa !83
  %i.nj = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.nk = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load85)
  %i.nl = trunc nuw nsw <2 x i64> %i.nj to <2 x i32>
  %i.nm = trunc nuw nsw <2 x i64> %i.nk to <2 x i32>
  %i.nn = add <2 x i32> %vec.phi, %i.nl           ; 2 uses
  %i.no = add <2 x i32> %vec.phi84, %i.nm         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.np = icmp eq i64 %index.next, 64
  br i1 %i.np, label %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i23, label %vector.body, !llvm.loop !1197

_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i23: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.no, %i.nn
  %i.nq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.06.i.i.i.i.i.i16
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !83
  %i.nt = add nuw i64 %.06.i.i.i.i.i.i16, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.nt, %i.me
  br i1 %exitcond.not, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24, label %bb.ad, !llvm.loop !1193

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i23, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.nu = add i8 %i.ma, -1
  %i.nv = add nuw i8 %i.lz, 7
  %i.nw = and i8 %i.nv, 7
  br label %thread-pre-split31

thread-pre-split31:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24
  %i.nx = phi i8 [ %i.nu, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24 ], [ %i.ju, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ny = phi i8 [ %i.nw, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit24 ], [ %i.jv, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nz = icmp eq i8 %i.nx, 0
  br i1 %i.nz, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit30, label %bb.aj

bb.aj:                                            ; preds = %.noexc, %thread-pre-split31
  %i.oa = phi i8 [ %i.lm, %.noexc ], [ %i.bj, %thread-pre-split31 ]
  %i.ob = phi i8 [ %i.lk, %.noexc ], [ %i.nx, %thread-pre-split31 ]
  %i.oc = phi i8 [ %i.kk, %.noexc ], [ %i.ny, %thread-pre-split31 ]
  %i.od = load ptr, ptr %3, align 8, !tbaa !629   ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 15
  %i.of = load atomic i8, ptr %i.oe monotonic, align 1
  %i.og = icmp eq i8 %i.of, -1
  br i1 %i.og, label %bb.ak, label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

bb.ak:                                            ; preds = %bb.aj
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !117
  br label %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i

_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i: ; preds = %bb.ak, %bb.aj
  %.0.i.i = phi ptr [ %i.oi, %bb.ak ], [ %i.od, %bb.aj ]
  %i.oj = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.oj, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit30, label %bb.k, !llvm.loop !1198

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit30: ; preds = %thread-pre-split31, %_ZN3tbb6detail2d118task_group_context14actual_contextEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E_KNS1_16auto_partitionerEE8run_bodyESK_.exit: ; preds = %_ZNK7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIiLj3EEELj4EE10childCountEv.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit30
  ret void
}

declare noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

declare void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK7openvdb5v13_04util8NodeMaskILj4EE11findFirstOnEv(ptr noundef nonnull align 8 dereferenceable(512) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !83     ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not.1 = icmp eq i64 %i.c, 0
  br i1 %.not.1, label %bb.c, label %.critedge.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83   ; 2 uses
  %.not.2 = icmp eq i64 %i.e, 0
  br i1 %.not.2, label %bb.d, label %.critedge.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83   ; 2 uses
  %.not.3 = icmp eq i64 %i.g, 0
  br i1 %.not.3, label %bb.e, label %.critedge.thread

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %.not.4 = icmp eq i64 %i.i, 0
  br i1 %.not.4, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !83   ; 2 uses
  %.not.5 = icmp eq i64 %i.k, 0
  br i1 %.not.5, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !83   ; 2 uses
  %.not.6 = icmp eq i64 %i.m, 0
  br i1 %.not.6, label %bb.h, label %.critedge.thread

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !83   ; 2 uses
  %.not.7 = icmp eq i64 %i.o, 0
  br i1 %.not.7, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !83   ; 2 uses
  %.not.8 = icmp eq i64 %i.q, 0
  br i1 %.not.8, label %bb.j, label %.critedge.thread

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !83   ; 2 uses
  %.not.9 = icmp eq i64 %i.s, 0
  br i1 %.not.9, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !83   ; 2 uses
  %.not.10 = icmp eq i64 %i.u, 0
  br i1 %.not.10, label %bb.l, label %.critedge.thread

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i64, ptr %i.v, align 8, !tbaa !83   ; 2 uses
  %.not.11 = icmp eq i64 %i.w, 0
  br i1 %.not.11, label %bb.m, label %.critedge.thread

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.y = load i64, ptr %i.x, align 8, !tbaa !83   ; 2 uses
  %.not.12 = icmp eq i64 %i.y, 0
  br i1 %.not.12, label %bb.n, label %.critedge.thread

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not.13 = icmp eq i64 %i.aa, 0
  br i1 %.not.13, label %bb.o, label %.critedge.thread

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not.14 = icmp eq i64 %i.ac, 0
  br i1 %.not.14, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !83 ; 2 uses
  %.not.15 = icmp eq i64 %i.ae, 0
  br i1 %.not.15, label %bb.q, label %.critedge.thread

bb.q:                                             ; preds = %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !83 ; 2 uses
  %.not.16 = icmp eq i64 %i.ag, 0
  br i1 %.not.16, label %bb.r, label %.critedge.thread

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !83 ; 2 uses
  %.not.17 = icmp eq i64 %i.ai, 0
  br i1 %.not.17, label %bb.s, label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !83 ; 2 uses
  %.not.18 = icmp eq i64 %i.ak, 0
  br i1 %.not.18, label %bb.t, label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = load i64, ptr %i.al, align 8, !tbaa !83 ; 2 uses
  %.not.19 = icmp eq i64 %i.am, 0
  br i1 %.not.19, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !83 ; 2 uses
  %.not.20 = icmp eq i64 %i.ao, 0
  br i1 %.not.20, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !83 ; 2 uses
  %.not.21 = icmp eq i64 %i.aq, 0
  br i1 %.not.21, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !83 ; 2 uses
  %.not.22 = icmp eq i64 %i.as, 0
  br i1 %.not.22, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.au = load i64, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %.not.23 = icmp eq i64 %i.au, 0
  br i1 %.not.23, label %bb.y, label %.critedge.thread

bb.y:                                             ; preds = %bb.x
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !83 ; 2 uses
  %.not.24 = icmp eq i64 %i.aw, 0
  br i1 %.not.24, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !83 ; 2 uses
  %.not.25 = icmp eq i64 %i.ay, 0
  br i1 %.not.25, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !83 ; 2 uses
  %.not.26 = icmp eq i64 %i.ba, 0
  br i1 %.not.26, label %bb.ab, label %.critedge.thread

bb.ab:                                            ; preds = %bb.aa
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !83 ; 2 uses
  %.not.27 = icmp eq i64 %i.bc, 0
  br i1 %.not.27, label %bb.ac, label %.critedge.thread

bb.ac:                                            ; preds = %bb.ab
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !83 ; 2 uses
  %.not.28 = icmp eq i64 %i.be, 0
  br i1 %.not.28, label %bb.ad, label %.critedge.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !83 ; 2 uses
  %.not.29 = icmp eq i64 %i.bg, 0
  br i1 %.not.29, label %bb.ae, label %.critedge.thread

bb.ae:                                            ; preds = %bb.ad
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !83 ; 2 uses
  %.not.30 = icmp eq i64 %i.bi, 0
  br i1 %.not.30, label %bb.af, label %.critedge.thread

bb.af:                                            ; preds = %bb.ae
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !83 ; 2 uses
  %.not.31 = icmp eq i64 %i.bk, 0
  br i1 %.not.31, label %bb.ag, label %.critedge.thread

bb.ag:                                            ; preds = %bb.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %.not.32 = icmp eq i64 %i.bm, 0
  br i1 %.not.32, label %bb.ah, label %.critedge.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !83 ; 2 uses
  %.not.33 = icmp eq i64 %i.bo, 0
  br i1 %.not.33, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !83 ; 2 uses
  %.not.34 = icmp eq i64 %i.bq, 0
  br i1 %.not.34, label %bb.aj, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !83 ; 2 uses
  %.not.35 = icmp eq i64 %i.bs, 0
  br i1 %.not.35, label %bb.ak, label %.critedge.thread

bb.ak:                                            ; preds = %bb.aj
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !83 ; 2 uses
  %.not.36 = icmp eq i64 %i.bu, 0
  br i1 %.not.36, label %bb.al, label %.critedge.thread

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !83 ; 2 uses
  %.not.37 = icmp eq i64 %i.bw, 0
  br i1 %.not.37, label %bb.am, label %.critedge.thread

bb.am:                                            ; preds = %bb.al
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !83 ; 2 uses
  %.not.38 = icmp eq i64 %i.by, 0
  br i1 %.not.38, label %bb.an, label %.critedge.thread

bb.an:                                            ; preds = %bb.am
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !83 ; 2 uses
  %.not.39 = icmp eq i64 %i.ca, 0
  br i1 %.not.39, label %bb.ao, label %.critedge.thread

bb.ao:                                            ; preds = %bb.an
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !83 ; 2 uses
  %.not.40 = icmp eq i64 %i.cc, 0
  br i1 %.not.40, label %bb.ap, label %.critedge.thread

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !83 ; 2 uses
  %.not.41 = icmp eq i64 %i.ce, 0
  br i1 %.not.41, label %bb.aq, label %.critedge.thread

bb.aq:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !83 ; 2 uses
  %.not.42 = icmp eq i64 %i.cg, 0
  br i1 %.not.42, label %bb.ar, label %.critedge.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !83 ; 2 uses
  %.not.43 = icmp eq i64 %i.ci, 0
  br i1 %.not.43, label %bb.as, label %.critedge.thread

bb.as:                                            ; preds = %bb.ar
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !83 ; 2 uses
  %.not.44 = icmp eq i64 %i.ck, 0
  br i1 %.not.44, label %bb.at, label %.critedge.thread

bb.at:                                            ; preds = %bb.as
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !83 ; 2 uses
  %.not.45 = icmp eq i64 %i.cm, 0
  br i1 %.not.45, label %bb.au, label %.critedge.thread

bb.au:                                            ; preds = %bb.at
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !83 ; 2 uses
  %.not.46 = icmp eq i64 %i.co, 0
  br i1 %.not.46, label %bb.av, label %.critedge.thread

bb.av:                                            ; preds = %bb.au
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !83 ; 2 uses
  %.not.47 = icmp eq i64 %i.cq, 0
  br i1 %.not.47, label %bb.aw, label %.critedge.thread

bb.aw:                                            ; preds = %bb.av
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !83 ; 2 uses
  %.not.48 = icmp eq i64 %i.cs, 0
  br i1 %.not.48, label %bb.ax, label %.critedge.thread

bb.ax:                                            ; preds = %bb.aw
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !83 ; 2 uses
  %.not.49 = icmp eq i64 %i.cu, 0
  br i1 %.not.49, label %bb.ay, label %.critedge.thread

bb.ay:                                            ; preds = %bb.ax
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !83 ; 2 uses
  %.not.50 = icmp eq i64 %i.cw, 0
  br i1 %.not.50, label %bb.az, label %.critedge.thread

bb.az:                                            ; preds = %bb.ay
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !83 ; 2 uses
  %.not.51 = icmp eq i64 %i.cy, 0
  br i1 %.not.51, label %bb.ba, label %.critedge.thread

bb.ba:                                            ; preds = %bb.az
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !83 ; 2 uses
  %.not.52 = icmp eq i64 %i.da, 0
  br i1 %.not.52, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !83 ; 2 uses
  %.not.53 = icmp eq i64 %i.dc, 0
  br i1 %.not.53, label %bb.bc, label %.critedge.thread

bb.bc:                                            ; preds = %bb.bb
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !83 ; 2 uses
  %.not.54 = icmp eq i64 %i.de, 0
  br i1 %.not.54, label %bb.bd, label %.critedge.thread

bb.bd:                                            ; preds = %bb.bc
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !83 ; 2 uses
  %.not.55 = icmp eq i64 %i.dg, 0
  br i1 %.not.55, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !83 ; 2 uses
  %.not.56 = icmp eq i64 %i.di, 0
  br i1 %.not.56, label %bb.bf, label %.critedge.thread

bb.bf:                                            ; preds = %bb.be
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !83 ; 2 uses
  %.not.57 = icmp eq i64 %i.dk, 0
  br i1 %.not.57, label %bb.bg, label %.critedge.thread

bb.bg:                                            ; preds = %bb.bf
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !83 ; 2 uses
  %.not.58 = icmp eq i64 %i.dm, 0
  br i1 %.not.58, label %bb.bh, label %.critedge.thread

bb.bh:                                            ; preds = %bb.bg
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !83 ; 2 uses
  %.not.59 = icmp eq i64 %i.do, 0
  br i1 %.not.59, label %bb.bi, label %.critedge.thread

bb.bi:                                            ; preds = %bb.bh
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !83 ; 2 uses
  %.not.60 = icmp eq i64 %i.dq, 0
  br i1 %.not.60, label %bb.bj, label %.critedge.thread

bb.bj:                                            ; preds = %bb.bi
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !83 ; 2 uses
  %.not.61 = icmp eq i64 %i.ds, 0
  br i1 %.not.61, label %bb.bk, label %.critedge.thread

bb.bk:                                            ; preds = %bb.bj
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !83 ; 2 uses
  %.not.62 = icmp eq i64 %i.du, 0
  br i1 %.not.62, label %bb.bl, label %.critedge.thread

bb.bl:                                            ; preds = %bb.bk
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !83 ; 2 uses
  %.not.63 = icmp eq i64 %i.dw, 0
  br i1 %.not.63, label %.critedge, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %1 = phi i64 [ %i.a, %bb.a ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.k, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.h ], [ %i.q, %bb.i ], [ %i.s, %bb.j ], [ %i.u, %bb.k ], [ %i.w, %bb.l ], [ %i.y, %bb.m ], [ %i.aa, %bb.n ], [ %i.ac, %bb.o ], [ %i.ae, %bb.p ], [ %i.ag, %bb.q ], [ %i.ai, %bb.r ], [ %i.ak, %bb.s ], [ %i.am, %bb.t ], [ %i.ao, %bb.u ], [ %i.aq, %bb.v ], [ %i.as, %bb.w ], [ %i.au, %bb.x ], [ %i.aw, %bb.y ], [ %i.ay, %bb.z ], [ %i.ba, %bb.aa ], [ %i.bc, %bb.ab ], [ %i.be, %bb.ac ], [ %i.bg, %bb.ad ], [ %i.bi, %bb.ae ], [ %i.bk, %bb.af ], [ %i.bm, %bb.ag ], [ %i.bo, %bb.ah ], [ %i.bq, %bb.ai ], [ %i.bs, %bb.aj ], [ %i.bu, %bb.ak ], [ %i.bw, %bb.al ], [ %i.by, %bb.am ], [ %i.ca, %bb.an ], [ %i.cc, %bb.ao ], [ %i.ce, %bb.ap ], [ %i.cg, %bb.aq ], [ %i.ci, %bb.ar ], [ %i.ck, %bb.as ], [ %i.cm, %bb.at ], [ %i.co, %bb.au ], [ %i.cq, %bb.av ], [ %i.cs, %bb.aw ], [ %i.cu, %bb.ax ], [ %i.cw, %bb.ay ], [ %i.cy, %bb.az ], [ %i.da, %bb.ba ], [ %i.dc, %bb.bb ], [ %i.de, %bb.bc ], [ %i.dg, %bb.bd ], [ %i.di, %bb.be ], [ %i.dk, %bb.bf ], [ %i.dm, %bb.bg ], [ %i.do, %bb.bh ], [ %i.dq, %bb.bi ], [ %i.ds, %bb.bj ], [ %i.du, %bb.bk ], [ %i.dw, %bb.bl ]
  %.0712.lcssa = phi i32 [ 0, %bb.a ], [ 64, %bb.b ], [ 128, %bb.c ], [ 192, %bb.d ], [ 256, %bb.e ], [ 320, %bb.f ], [ 384, %bb.g ], [ 448, %bb.h ], [ 512, %bb.i ], [ 576, %bb.j ], [ 640, %bb.k ], [ 704, %bb.l ], [ 768, %bb.m ], [ 832, %bb.n ], [ 896, %bb.o ], [ 960, %bb.p ], [ 1024, %bb.q ], [ 1088, %bb.r ], [ 1152, %bb.s ], [ 1216, %bb.t ], [ 1280, %bb.u ], [ 1344, %bb.v ], [ 1408, %bb.w ], [ 1472, %bb.x ], [ 1536, %bb.y ], [ 1600, %bb.z ], [ 1664, %bb.aa ], [ 1728, %bb.ab ], [ 1792, %bb.ac ], [ 1856, %bb.ad ], [ 1920, %bb.ae ], [ 1984, %bb.af ], [ 2048, %bb.ag ], [ 2112, %bb.ah ], [ 2176, %bb.ai ], [ 2240, %bb.aj ], [ 2304, %bb.ak ], [ 2368, %bb.al ], [ 2432, %bb.am ], [ 2496, %bb.an ], [ 2560, %bb.ao ], [ 2624, %bb.ap ], [ 2688, %bb.aq ], [ 2752, %bb.ar ], [ 2816, %bb.as ], [ 2880, %bb.at ], [ 2944, %bb.au ], [ 3008, %bb.av ], [ 3072, %bb.aw ], [ 3136, %bb.ax ], [ 3200, %bb.ay ], [ 3264, %bb.az ], [ 3328, %bb.ba ], [ 3392, %bb.bb ], [ 3456, %bb.bc ], [ 3520, %bb.bd ], [ 3584, %bb.be ], [ 3648, %bb.bf ], [ 3712, %bb.bg ], [ 3776, %bb.bh ], [ 3840, %bb.bi ], [ 3904, %bb.bj ], [ 3968, %bb.bk ], [ 4032, %bb.bl ]
  %i.dx = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
  %i.dy = trunc nuw nsw i64 %i.dx to i32
  %i.dz = or disjoint i32 %.0712.lcssa, %i.dy
  br label %.critedge

.critedge:                                        ; preds = %bb.bl, %.critedge.thread
  %i.ea = phi i32 [ %i.dz, %.critedge.thread ], [ 4096, %bb.bl ]
  ret i32 %i.ea
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(33808) ptr @_ZNK7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEEKNS1_12InternalNodeINS1_8LeafNodeIiLj3EEELj4EEEE6parentEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !603    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !116
  store i8 0, ptr %i.b, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.43, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(112) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %3) #32 ; 0 uses
  %i.f = load ptr, ptr %3, align 8, !tbaa !118    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !117
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.h

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.l, %bb.f ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.h ], [ %i.k, %bb.e ]
  %.1 = extractvalue { ptr, i32 } %.pn.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.n = call ptr @__cxa_begin_catch(ptr %.1) #32 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @_ZN7openvdb5v13_09ExceptionC2EPKcPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull @.str.44, ptr noundef nonnull align 8 dereferenceable(32) %1) #32
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_010ValueErrorE, i64 16), ptr %i.o, align 8, !tbaa !106
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7openvdb5v13_010ValueErrorE, ptr nonnull @_ZN7openvdb5v13_09ExceptionD2Ev) #47
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %1, align 8, !tbaa !118    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.k
  %i.s = load i64, ptr %i.b, align 8, !tbaa !117
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.p

bb.l:                                             ; preds = %bb.a
  ret ptr %i.a

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7openvdb5v13_010ValueErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7openvdb5v13_09ExceptionE, i64 16), ptr %0, align 8, !tbaa !106
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN7openvdb5v13_09ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !117
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #45, !inline_history !553
  br label %_ZN7openvdb5v13_09ExceptionD2Ev.exit

_ZN7openvdb5v13_09ExceptionD2Ev.exit:             ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #32, !inline_history !553
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E0_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %4 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 1, ptr %i.a, align 4, !tbaa !341
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 1, ptr %i.c, align 8, !tbaa !342
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 13
  store i8 4, ptr %i.d, align 1, !tbaa !117
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !591
  %i.g = load i64, ptr %0, align 8, !tbaa !590
  %.not.i = icmp ult i64 %i.f, %i.g
  br i1 %.not.i, label %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E0_KNS1_16auto_partitionerEE3runERKS4_RKSL_RSN_RNS1_18task_group_contextE.exit

_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr null, ptr %3, align 8, !tbaa !345
  %i.h = invoke noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 192)
          to label %.noexc unwind label %bb.d     ; 10 uses

.noexc:                                           ; preds = %_ZN3tbb6detail2d116execute_and_waitERNS1_4taskERNS1_18task_group_contextERNS1_12wait_contextES5_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEZN7openvdb5v13_04tree11LeafManagerIKNS7_4TreeINS7_8RootNodeINS7_12InternalNodeINSB_INS7_8LeafNodeIiLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEbEUlRS4_E0_KNS1_16auto_partitionerEEE, i64 16), ptr %i.h, align 64, !tbaa !106
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !619
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !630
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  store ptr null, ptr %i.l, align 16, !tbaa !632
  %i.m = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 0, ptr %i.p, align 64, !tbaa !365
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 132
  store i8 5, ptr %i.q, align 4, !tbaa !366
  %i.r = shl nsw i64 %i.o, 1
  %i.s = and i64 %i.r, 9223372036854775806
  store i64 %i.s, ptr %i.n, align 8, !tbaa !367
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.u = load i64, ptr %3, align 8, !tbaa !368
  store i64 %i.u, ptr %i.t, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store ptr null, ptr %4, align 8, !tbaa !372
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 1, ptr %i.v, align 8, !tbaa !373
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 1, ptr %i.w, align 8, !tbaa !377
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 1, ptr %i.x, align 8, !tbaa !378
end_hunk_0
