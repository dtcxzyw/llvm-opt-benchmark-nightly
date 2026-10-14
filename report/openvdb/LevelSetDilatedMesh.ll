Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetDilatedMesh?download=true
inline.NumInlined: 79535
inline.NumDeleted: 25229
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 278
loop-unroll.NumUnrolled: 951
begin_hunk_0_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store i8 %i.lb, ptr %i.kw, align 4, !tbaa !2015
  store i8 0, ptr %i.bf, align 64, !tbaa !2213
  %i.lc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 152, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !6402 ; 8 uses
  %i.ld = load ptr, ptr %i.bb, align 32, !tbaa !2031
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !2021
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i32 2, ptr %i.le, align 8, !tbaa !2022
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lg = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !2017
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i8 0, ptr %i.lh, align 8, !tbaa !2033
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 136
  store ptr %i.kq, ptr %i.li, align 8, !tbaa !2003
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  store i8 0, ptr %i.lj, align 8, !tbaa !2218
  store ptr %i.lc, ptr %i.bb, align 32, !tbaa !2212
  store ptr %i.lc, ptr %i.kr, align 32, !tbaa !2212
  %i.lk = load ptr, ptr %3, align 8, !tbaa !2034
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(129) %i.kl, ptr noundef nonnull align 8 dereferenceable(128) %i.lk), !inline_history !6402
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ll = add i8 %i.kg, -1
  %i.lm = add nuw nsw i8 %i.bg, 1
  %i.ln = and i8 %i.lm, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.lo = zext i8 %i.js to i64                    ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !768
  %i.lr = icmp ult i8 %i.lq, %i.ke
  br i1 %i.lr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.aa
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.lo ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !1781
  %i.lv = load i64, ptr %i.ls, align 8, !tbaa !1779
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !1780
  %i.ly = sub i64 %i.lv, %i.lx
  %i.lz = icmp ult i64 %i.lu, %i.ly
  br i1 %i.lz, label %thread-pre-split38, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.aa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.ma = phi i8 [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.js, %bb.aa ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mb = phi i8 [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jr, %bb.aa ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre80, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lo, %bb.aa ], [ %i.lo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.pre-phi ; 2 uses
  %i.md = load ptr, ptr %i.bc, align 8, !tbaa !2211 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1805 ; 3 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i15, label %bb.ac, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !743
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = call noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef -1), !inline_history !6403
  br i1 %i.mj, label %.noexc28, label %bb.ac

.noexc28:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16
  %i.mk = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i.i.i.i.i.i.i25 = icmp eq ptr %i.mk, null
  br i1 %.not.i2.i.i.i.i.i.i.i25, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ab

bb.ab:                                            ; preds = %.noexc28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 15
  %i.mm = load atomic i8, ptr %i.ml monotonic, align 1
  %i.mn = icmp eq i8 %i.mm, -1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %.0.i.i.i.i.i.i.i.i.i.i26 = select i1 %i.mn, ptr %i.mp, ptr %i.mk
  %i.mq = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i.i.i26) ; 0 uses
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !1780 ; 2 uses
  %i.mt = load i64, ptr %i.mc, align 8, !tbaa !1779 ; 2 uses
  %i.mu = icmp ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

.lr.ph11.i.i.i.i.i.i17:                           ; preds = %bb.ac
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i19, %.lr.ph11.i.i.i.i.i.i17
  %.09.i.i.i.i.i.i18 = phi i64 [ %i.ms, %.lr.ph11.i.i.i.i.i.i17 ], [ %i.nj, %._crit_edge.i.i.i.i.i.i19 ] ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1756 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1971, !noalias !6408 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1971, !noalias !6408
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %.09.i.i.i.i.i.i18 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !741, !noalias !6408 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !741, !noalias !6408 ; 2 uses
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ne
  %i.ng = icmp ult i32 %i.nb, %i.nd
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i19

.lr.ph.preheader.i.i.i.i.i.i20:                   ; preds = %bb.ad
  %i.nh = zext i32 %i.nb to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nh
  br label %.lr.ph.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i19:                        ; preds = %.lr.ph.i.i.i.i.i.i21, %bb.ad
  %i.nj = add i64 %.09.i.i.i.i.i.i18, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.nj, %i.mt
  br i1 %exitcond.not, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ad, !llvm.loop !6400

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.lr.ph.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i.i.i20
  %.sroa.5.08.i.i.i.i.i.i22 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i21 ], [ %i.ni, %.lr.ph.preheader.i.i.i.i.i.i20 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nk = load i32, ptr %.sroa.5.08.i.i.i.i.i.i22, align 4, !tbaa !741
  %i.nl = zext i32 %i.nk to i64
  store i64 %i.nl, ptr %i.a, align 8, !tbaa !1112
  call void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.5.08.i.i.i.i.i.i22, i64 4 ; 2 uses
  %i.nn = icmp ult ptr %i.nm, %i.nf
  br i1 %i.nn, label %.lr.ph.i.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i.i19, !llvm.loop !6401

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31: ; preds = %._crit_edge.i.i.i.i.i.i19, %bb.ab, %bb.ac, %.noexc28
  %i.no = add i8 %i.mb, -1
  %i.np = add i8 %i.ma, 7
  %i.nq = and i8 %i.np, 7
  br label %thread-pre-split38

thread-pre-split38:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31
  %i.nr = phi i8 [ %i.no, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ns = phi i8 [ %i.nq, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nt = icmp eq i8 %i.nr, 0
  br i1 %i.nt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split38
  %i.nu = phi i8 [ %i.ln, %.noexc ], [ %i.bg, %thread-pre-split38 ]
  %i.nv = phi i8 [ %i.ll, %.noexc ], [ %i.nr, %thread-pre-split38 ]
  %i.nw = phi i8 [ %i.kh, %.noexc ], [ %i.ns, %thread-pre-split38 ]
  %i.nx = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 15
  %i.nz = load atomic i8, ptr %i.ny monotonic, align 1
  %i.oa = icmp eq i8 %i.nz, -1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %.0.i.i = select i1 %i.oa, ptr %i.oc, ptr %i.nx
  %i.od = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.od, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %bb.i, !llvm.loop !6406

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37: ; preds = %thread-pre-split38, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %3 = alloca %"class.std::vector.1027", align 8  ; 12 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 12 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1957   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.f = load i64, ptr %1, align 8, !tbaa !1112
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1829
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.h, align 4, !noalias !6412
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !6412
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !6412
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1956, !noalias !6412, !nonnull !789, !align !844
  %i.j = zext i32 %.sroa.03.0.copyload.i to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1791, !noalias !6412 ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !6412
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = zext i32 %.sroa.5.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !6412
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = zext i32 %.sroa.6.0.copyload.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !6412
  %i.s = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !6412 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.s, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !6412
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.t, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %6 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload4.i12.i = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !1161 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.w ; 2 uses
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = load <4 x float>, ptr %i.v, align 4
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload4.i12.i, <2 x float> %.sroa.0.0.copyload4.i.i, <2 x i32> <i32 0, i32 3>
  %i.z = fsub <2 x float> %i.y, %i.w              ; 3 uses
  %foldExtExtBinop65 = fsub <2 x float> %.sroa.0.0.copyload4.i12.i, %i.w ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.ab = insertelement <2 x float> %7, float %.sroa.6.0.copyload.i14.i, i64 1
  %i.ac = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fsub <2 x float> %i.ab, %i.ac           ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> %foldExtExtBinop65, <2 x i32> <i32 3, i32 1>
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fmul <2 x float> %i.ai, %i.ag
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ad, <2 x float> %i.aj)
  %i.al = extractelement <2 x float> %i.z, i64 0
  %i.am = fneg float %i.al
  %i.an = extractelement <2 x float> %i.z, i64 1
  %i.ao = fmul float %i.an, %i.am
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.x, float %i.aa, float %i.ao)
  %i.aq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.ar = fcmp ogt <2 x float> %i.aq, splat (float f0x322BCC77) ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %or.cond.not.i = select i1 %i.at, i1 true, i1 %i.as
  %i.au = tail call float @llvm.fabs.f32(float %i.ap)
  %i.av = fcmp ogt float %i.au, f0x322BCC77
  %i.aw = select i1 %or.cond.not.i, i1 true, i1 %i.av
  br i1 %i.aw, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE15voxelizeCapsuleERKNS0_4math4Vec3IfEESN_SN_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u)
          to label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit23

bb.d:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !6413 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_SP_RKSM_(ptr noundef nonnull align 8 dereferenceable(504) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.ba)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  br i1 %i.bb, label %bb.e, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E7iterateEv(ptr noundef nonnull align 8 dereferenceable(504) %i.az)
          to label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit unwind label %bb.c

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit: ; preds = %.noexc, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !741
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %0, align 8, !tbaa !1957
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !813
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.split.thread, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split

.split.thread:                                    ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.split:                                           ; preds = %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %.pre50 = load ptr, ptr %3, align 8, !tbaa !1953 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i = icmp eq ptr %.pre50, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1954
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %.pre50 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.pre50, i64 noundef %i.bm) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.split.thread, %.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split: ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %storemerge.fr48 = phi i32 [ %i.ls, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit ], [ 0, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit ] ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1957  ; 2 uses
  %i.bo = zext nneg i32 %storemerge.fr48 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !741 ; 2 uses
  %i.br = add nuw nsw i32 %storemerge.fr48, 1
  %.cmp.not = icmp eq i32 %storemerge.fr48, 2
  %i.bs = select i1 %.cmp.not, i32 0, i32 %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !741 ; 2 uses
  %.sroa.speculated5.i.i = call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bq) ; 4 uses
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !813 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not11.i.i.i.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bx, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.by, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1946 ; 2 uses
  %i.cb = icmp ult i32 %i.ca, %.sroa.speculated5.i.i
  br i1 %i.cb, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = icmp eq i32 %i.ca, %.sroa.speculated5.i.i
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !1947
  %i.cf = icmp ult i32 %i.ce, %.sroa.speculated.i.i
  br i1 %i.cf, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.ch = icmp eq ptr %.19.i.i.i.i, %i.by
  br i1 %i.ch, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !1946 ; 2 uses
  %i.ck = icmp ult i32 %.sroa.speculated5.i.i, %i.cj
  br i1 %i.ck, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = icmp eq i32 %.sroa.speculated5.i.i, %i.cj
  br i1 %i.cl, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i: ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !1947
  %.not.i = icmp ult i32 %.sroa.speculated.i.i, %i.cn
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit unwind label %bb.x ; 0 uses

_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit: ; preds = %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i
  %i.cq = load ptr, ptr %3, align 8, !tbaa !1953  ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !741 ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 5 uses
  %i.ct = load i64, ptr %1, align 8, !tbaa !1112
  %i.cu = icmp eq i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.j, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.cr, ptr %i.b, align 4, !tbaa !741
  %i.cv = load ptr, ptr %i.bc, align 8, !tbaa !1955
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 2 uses
  switch i64 %i.cz, label %bb.t [
    i64 1, label %bb.k
    i64 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %0, align 8, !tbaa !1957  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1829
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %i.cs ; 3 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !741 ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !741
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !1956, !nonnull !789, !align !844
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !1791 ; 3 uses
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.dk ; 4 uses
  %i.dn = add i32 %i.df, 1
end_hunk_0
begin_hunk_1_@_ZNK7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E8tileFitsISB_EEbRKNS0_4math4Vec3IfEE:bb.a
  %.sroa.6.0.copyload.i89 = load float, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.ar = fadd <2 x float> %.sroa.0.0.copyload4.i87, splat (float 2.047500e+03)
  %i.as = fadd float %.sroa.6.0.copyload.i89, -2.047500e+03
  store <2 x float> %i.ar, ptr %8, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.as, ptr %.sroa.24.0..sroa_idx, align 8
  %i.at = call noundef float @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IfEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(12) %8)
  %i.au = load float, ptr %i.b, align 4, !tbaa !2186
  %i.av = fneg float %i.au
  %i.aw = fcmp olt float %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload4.i96 = load <2 x float>, ptr %1, align 4
  %.sroa.6.0.copyload.i98 = load float, ptr %.sroa.6.0..sroa_idx.i, align 4
  %i.ax = fadd <2 x float> %.sroa.0.0.copyload4.i96, splat (float 2.047500e+03)
  %i.ay = fadd float %.sroa.6.0.copyload.i98, 2.047500e+03
  store <2 x float> %i.ax, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.ay, ptr %.sroa.2.0..sroa_idx, align 8
  %i.az = call noundef float @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IfEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(12) %9)
  %i.ba = load float, ptr %i.b, align 4, !tbaa !2186
  %i.bb = fneg float %i.ba
  %i.bc = fcmp olt float %i.az, %i.bb
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.bd = phi i1 [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ %i.bc, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  %.0 = phi i1 [ %i.bd, %bb.k ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE7addTileEjRKNS0_4math5CoordERKfb(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i32, ptr %2, align 4, !tbaa !741    ; 2 uses
  %i.c = and i32 %i.b, -128
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !741
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !741
  %i.i = and i32 %i.h, -128
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !741
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !741
  %i.o = and i32 %i.n, -128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !741
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread

bb.c:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1561
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.t, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread: ; preds = %bb.a, %bb.b, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit
  %i.u = and i32 %i.b, -4096
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !741
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.d:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !741
  %i.aa = and i32 %i.z, -4096
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !741
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !741
  %i.ag = and i32 %i.af, -4096
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !741
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit

bb.e:                                             ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1162
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIfLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.al, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm1EEEEbSM_.exit.thread, %bb.d, %_ZZNK7openvdb5v13_04tree17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSE_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSJ_OT0_ENKUlSM_E_clISt17integral_constantImLm2EEEEbSM_.exit
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !1542
  tail call void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(68) %i.am, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %0)
  br label %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit

_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm1ELm4EEEvSO_SQ_RT1_.exit: ; preds = %_ZN7openvdb5v13_017typelist_internal19TSEvalFirstPredImplIZNKS0_4tree17ValueAccessorImplINS3_4TreeINS3_8RootNodeINS3_12InternalNodeINS7_INS3_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEE15evalFirstCachedILm1EZNSG_7addTileEjRKNS0_4math5CoordERKfbEUlT_E_EEDaSL_OT0_EUlSO_E_SP_St5tupleIJPS9_PSA_PSB_PSC_EELm3ELm4EEEvSO_SQ_RT1_.exit, %bb.e, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef float @_ZNK7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23tilePointSignedDistanceERKNS0_4math4Vec3IfEE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %1, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload4.i, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload4.i, i64 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load <4 x float>, ptr %i.a, align 8, !tbaa !1161 ; 3 uses
  %i.d = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.e = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.f = fsub <2 x float> %i.d, %i.e              ; 4 uses
  %i.g = load <2 x float>, ptr %i.b, align 8, !tbaa !1161 ; 2 uses
  %i.h = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.i = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.k = shufflevector <4 x float> %i.c, <4 x float> %i.j, <2 x i32> <i32 1, i32 4>
  %i.l = fsub <2 x float> %i.h, %i.k              ; 4 uses
  %i.m = insertelement <2 x float> poison, float %.sroa.6.0.copyload.i, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = shufflevector <2 x float> %i.i, <2 x float> %i.g, <2 x i32> <i32 0, i32 3>
  %i.p = fsub <2 x float> %i.n, %i.o              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.r = load float, ptr %i.q, align 8, !tbaa !1161
  %i.s = fsub float %.sroa.0.0.vec.extract.i, %i.r ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.u = load float, ptr %i.t, align 4, !tbaa !1161
  %i.v = fsub float %.sroa.0.4.vec.extract.i, %i.u ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load float, ptr %i.w, align 8, !tbaa !1161
  %i.y = fsub float %.sroa.6.0.copyload.i, %i.x   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ab = load <4 x float>, ptr %i.z, align 4, !tbaa !1161 ; 3 uses
  %i.ac = load <2 x float>, ptr %i.aa, align 4, !tbaa !1161 ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ae = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.ae, <2 x i32> <i32 1, i32 4>
  %i.ag = fmul <2 x float> %i.l, %i.af
  %i.ah = shufflevector <4 x float> %i.ab, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ah, <2 x float> %i.f, <2 x float> %i.ag)
  %i.aj = shufflevector <2 x float> %i.ad, <2 x float> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.p, <2 x float> %i.ai) ; 3 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = fcmp ogt float %i.al, 0.000000e+00
  %i.an = zext i1 %i.am to i32
  %i.ao = fcmp olt <2 x float> %i.ak, zeroinitializer ; 2 uses
  %i.ap = extractelement <2 x i1> %i.ao, i64 0
  %.neg.i = sext i1 %i.ap to i32
  %i.aq = extractelement <2 x float> %i.ak, i64 1
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  %i.as = zext i1 %i.ar to i32
  %i.at = extractelement <2 x i1> %i.ao, i64 1
  %.neg.i60 = sext i1 %i.at to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.av = load float, ptr %i.au, align 4, !tbaa !1161
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !1161
  %i.ay = fmul float %i.v, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.av, float %i.s, float %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !1161
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.y, float %i.az) ; 2 uses
  %i.bd = fcmp ogt float %i.bc, 0.000000e+00
  %i.be = zext i1 %i.bd to i32
  %i.bf = fcmp olt float %i.bc, 0.000000e+00
  %.neg.i61 = sext i1 %i.bf to i32
  %i.bg = add nsw i32 %.neg.i, %i.an
  %i.bh = add nsw i32 %i.bg, %i.as
  %i.bi = add nsw i32 %i.bh, %.neg.i60
  %i.bj = add nsw i32 %i.bi, %i.be
  %i.bk = add nsw i32 %i.bj, %.neg.i61
  %i.bl = icmp slt i32 %i.bk, 2
  br i1 %i.bl, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.0.0.copyload4.i62 = load <2 x float>, ptr %i.bm, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %0, i64 264
  %2 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i63, align 8
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload4.i80 = load <2 x float>, ptr %i.bo, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %0, i64 276
  %.sroa.6.0.copyload.i82 = load float, ptr %.sroa.6.0..sroa_idx.i81, align 4
  %i.bq = load <4 x float>, ptr %i.bn, align 8, !tbaa !1161 ; 3 uses
  %i.br = load <2 x float>, ptr %i.bp, align 8, !tbaa !1161 ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bu = shufflevector <4 x float> %i.bq, <4 x float> %i.bt, <2 x i32> <i32 1, i32 4>
  %i.bv = fmul <2 x float> %i.l, %i.bu
  %i.bw = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.f, <2 x float> %i.bv)
  %i.by = shufflevector <2 x float> %i.bs, <2 x float> %i.br, <2 x i32> <i32 0, i32 3>
  %i.bz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.p, <2 x float> %i.bx) ; 3 uses
  %i.ca = fcmp ogt <2 x float> %i.bz, zeroinitializer
  %i.cb = fcmp olt <2 x float> %i.bz, splat (float 1.000000e+00)
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.bz, <2 x float> splat (float 1.000000e+00)
  %i.cd = select <2 x i1> %i.ca, <2 x float> %i.cc, <2 x float> zeroinitializer ; 3 uses
  %i.ce = shufflevector <2 x float> %.sroa.0.0.copyload4.i62, <2 x float> %.sroa.0.0.copyload4.i80, <2 x i32> <i32 0, i32 2>
  %i.cf = fmul <2 x float> %i.ce, %i.cd
  %i.cg = shufflevector <2 x float> %.sroa.0.0.copyload4.i62, <2 x float> %.sroa.0.0.copyload4.i80, <2 x i32> <i32 1, i32 3>
  %i.ch = fmul <2 x float> %i.cg, %i.cd
  %i.ci = insertelement <2 x float> %3, float %.sroa.6.0.copyload.i82, i64 1
  %i.cj = fmul <2 x float> %i.ci, %i.cd
  %i.ck = fsub <2 x float> %i.cf, %i.f            ; 2 uses
  %i.cl = fsub <2 x float> %i.ch, %i.l            ; 2 uses
  %i.cm = fsub <2 x float> %i.cj, %i.p            ; 2 uses
  %i.cn = fmul <2 x float> %i.cl, %i.cl
  %i.co = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ck, <2 x float> %i.cn)
  %i.cp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cm, <2 x float> %i.cm, <2 x float> %i.co) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !1161
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !1161
  %i.cv = fmul float %i.v, %i.cu
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.s, float %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cy = load float, ptr %i.cx, align 8, !tbaa !1161
  %i.cz = tail call noundef float @llvm.fmuladd.f32(float %i.cy, float %i.y, float %i.cw) ; 3 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  %i.db = fcmp olt float %i.cz, 1.000000e+00
  %i.dc = select i1 %i.db, float %i.cz, float 1.000000e+00
  %i.dd = select i1 %i.da, float %i.dc, float 0.000000e+00 ; 3 uses
  %.sroa.0.0.copyload4.i98 = load <2 x float>, ptr %i.cq, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.sroa.6.0.copyload.i100 = load float, ptr %.sroa.6.0..sroa_idx.i99, align 8
  %.sroa.0.0.vec.extract.i101 = extractelement <2 x float> %.sroa.0.0.copyload4.i98, i64 0
  %i.de = fmul float %.sroa.0.0.vec.extract.i101, %i.dd
  %.sroa.0.4.vec.extract.i102 = extractelement <2 x float> %.sroa.0.0.copyload4.i98, i64 1
  %i.df = fmul float %.sroa.0.4.vec.extract.i102, %i.dd
  %i.dg = fmul float %.sroa.6.0.copyload.i100, %i.dd
  %i.dh = fsub float %i.de, %i.s                  ; 2 uses
  %i.di = fsub float %i.df, %i.v                  ; 2 uses
  %i.dj = fsub float %i.dg, %i.y                  ; 2 uses
  %i.dk = fmul float %i.di, %i.di
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.dh, float %i.dk)
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dl) ; 2 uses
  %i.dn = extractelement <2 x float> %i.cp, i64 0 ; 2 uses
  %i.do = extractelement <2 x float> %i.cp, i64 1 ; 2 uses
  %i.dp = fcmp olt float %i.do, %i.dn
  %i.dq = select i1 %i.dp, float %i.do, float %i.dn ; 2 uses
  %i.dr = fcmp olt float %i.dm, %i.dq
  %.sroa.speculated = select i1 %i.dr, float %i.dm, float %i.dq
  %sqrt = tail call float @llvm.sqrt.f32(float %.sroa.speculated)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !1161
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.dv = load float, ptr %i.du, align 4, !tbaa !1161
  %i.dw = extractelement <2 x float> %i.l, i64 0
  %i.dx = fmul float %i.dw, %i.dv
  %i.dy = extractelement <2 x float> %i.f, i64 0
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.dy, float %i.dx)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.eb = load float, ptr %i.ea, align 8, !tbaa !1161
  %i.ec = extractelement <2 x float> %i.p, i64 0
  %i.ed = tail call noundef float @llvm.fmuladd.f32(float %i.eb, float %i.ec, float %i.dz)
  %i.ee = tail call noundef float @llvm.fabs.f32(float %i.ed)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ef = phi float [ %sqrt, %bb.b ], [ %i.ee, %bb.c ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !2221
  %i.ei = fsub float %i.ef, %i.eh
  ret float %i.ei
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIfLj3EEELj4EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_(ptr noundef nonnull align 8 dereferenceable(33808) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %_ZN7openvdb5v13_04tree8LeafNodeIfLj3EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS8_IS3_Lj4EEELj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKfbRT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !741    ; 2 uses
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 3840
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !741  ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = and i32 %i.g, 240
  %i.i = or disjoint i32 %i.h, %i.d               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !741  ; 2 uses
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 15
  %i.n = or disjoint i32 %i.i, %i.m               ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32768
  %i.p = lshr i32 %i.i, 6
  %i.q = zext nneg i32 %i.p to i64                ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !1112 ; 2 uses
  %i.t = and i32 %i.n, 63
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 1, %i.u                      ; 8 uses
  %i.w = and i64 %i.v, %i.s
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i32 %1, 0
  br i1 %i.x, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #30 ; 25 uses
  %i.z = zext nneg i32 %i.n to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33280
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.q ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !1112
  %i.ae = and i64 %i.ad, %i.v
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.d
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !768
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 5 uses
  store i8 0, ptr %i.ah, align 4, !tbaa !2033
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store atomic i32 0, ptr %i.ai seq_cst, align 8
  %i.aj = tail call noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(96) %i.y) ; 0 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !768 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %.loopexit, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %.pre.i.i.i = load float, ptr %i.aa, align 8, !tbaa !1161
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.pre.i.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.al = shl nuw nsw i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.al ; 2 uses
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %broadcast.splat, ptr %next.gep, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat, ptr %i.am, align 4, !tbaa !1161
  %index.next = shl i64 %index, 2
  %i.an = getelementptr i8, ptr %i.ak, i64 %index.next ; 2 uses
  %next.gep.1 = getelementptr i8, ptr %i.an, i64 32
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  store <4 x float> %broadcast.splat, ptr %next.gep.1, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat, ptr %i.ao, align 4, !tbaa !1161
  %index.next.1 = shl i64 %index, 2
  %i.ap = getelementptr i8, ptr %i.ak, i64 %index.next.1 ; 2 uses
  %next.gep.2 = getelementptr i8, ptr %i.ap, i64 64
  %i.aq = getelementptr i8, ptr %i.ap, i64 80
  store <4 x float> %broadcast.splat, ptr %next.gep.2, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat, ptr %i.aq, align 4, !tbaa !1161
  %index.next.2 = shl i64 %index, 2
  %i.ar = getelementptr i8, ptr %i.ak, i64 %index.next.2 ; 2 uses
  %next.gep.3 = getelementptr i8, ptr %i.ar, i64 96
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  store <4 x float> %broadcast.splat, ptr %next.gep.3, align 4, !tbaa !1161
  store <4 x float> %broadcast.splat, ptr %i.as, align 4, !tbaa !1161
  %index.next.3 = add nuw nsw i64 %index, 32      ; 2 uses
  %i.at = icmp eq i64 %index.next.3, 512
  br i1 %i.at, label %.loopexit, label %vector.body, !llvm.loop !7707

.loopexit:                                        ; preds = %vector.body, %.noexc
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 3 uses
  %i.av = sext i1 %i.af to i64                    ; 8 uses
  store i64 %i.av, ptr %i.au, align 8, !tbaa !1112
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !1112
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !1112
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i64 %i.av, ptr %i.ay, align 8, !tbaa !1112
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i64 %i.av, ptr %i.az, align 8, !tbaa !1112
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !1112
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !1112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i64 %i.av, ptr %i.bc, align 8, !tbaa !1112
  %i.bd = load i32, ptr %2, align 4, !tbaa !741
  %i.be = and i32 %i.bd, -8
  %i.bf = load i32, ptr %i.e, align 4, !tbaa !741
  %i.bg = and i32 %i.bf, -8
  %i.bh = load i32, ptr %i.j, align 4, !tbaa !741
  %i.bi = and i32 %i.bh, -8
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.bg to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.be to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.bj, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  store i32 %i.bi, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.y, i64 92
  store i32 0, ptr %i.bk, align 4, !tbaa !2338
  %i.bl = load i64, ptr %i.r, align 8, !tbaa !1112
  %i.bm = or i64 %i.bl, %i.v
  store i64 %i.bm, ptr %i.r, align 8, !tbaa !1112
  %i.bn = xor i64 %i.v, -1
end_hunk_1
begin_hunk_2_@_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a
  %i.md = fsub float %storemerge219, %i.mc
  %i.me = fmul float %i.mb, %i.md
  %i.mf = fadd float %i.me, 5.000000e-01
  %i.mg = tail call noundef float @llvm.floor.f32(float %i.mf)
  %i.mh = fptoui float %i.mg to i32
  %i.mi = zext i32 %i.mh to i64
  %i.mj = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !1161
  %i.mm = fcmp ogt float %i.lk, %i.ml
  br i1 %i.mm, label %bb.ac, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

bb.ac:                                            ; preds = %bb.ab
  store float %i.lk, ptr %i.mk, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, %bb.ab, %bb.ac
  %i.mn = fadd float %storemerge219, %i.b         ; 2 uses
  %i.mo = fcmp ugt float %i.mn, %i.ku
  br i1 %i.mo, label %._crit_edge, label %bb.y, !llvm.loop !7780

bb.ad:                                            ; preds = %._crit_edge
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !2206
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ms = load float, ptr %i.mr, align 8, !tbaa !7789
  %i.mt = fcmp ogt float %i.mq, %i.ms
  %i.mu = extractelement <4 x float> %i.ia, i64 2 ; 2 uses
  %i.mv = extractelement <4 x float> %i.ib, i64 3 ; 2 uses
  %i.mw = fcmp olt float %i.mv, %i.mu
  %.sroa.speculated176 = select i1 %i.mw, float %i.mv, float %i.mu ; 3 uses
  %i.mx = extractelement <4 x float> %i.ke, i64 1 ; 3 uses
  %i.my = fcmp ugt float %i.mx, %.sroa.speculated176 ; 2 uses
  br i1 %i.mt, label %.preheader215, label %.preheader217

.preheader217:                                    ; preds = %bb.ad
  br i1 %i.my, label %.loopexit216, label %.lr.ph221

.preheader215:                                    ; preds = %bb.ad
  br i1 %i.my, label %.loopexit216, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader215, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47
  %storemerge29222 = phi float [ %i.os, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47 ], [ %i.mx, %.preheader215 ] ; 4 uses
  %i.mz = load float, ptr %i.mp, align 4, !tbaa !2206 ; 2 uses
  %i.na = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.nb = load float, ptr %i.c, align 8, !tbaa !2203
  %i.nc = fsub float %storemerge29222, %i.nb      ; 3 uses
  %i.nd = load float, ptr %i.e, align 4, !tbaa !3004 ; 3 uses
  %i.ne = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.nf = fneg float %i.ne
  %i.ng = fmul float %i.nd, %i.nf
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.na, float %i.nc, float %i.ng)
  %i.ni = load float, ptr %i.kx, align 4, !tbaa !2205
  %i.nj = fdiv float %i.nh, %i.ni
  %i.nk = fadd float %i.mz, %i.nj                 ; 3 uses
  %i.nl = fmul float %i.nd, %i.nd
  %i.nm = fmul float %i.nc, %i.nc
  %i.nn = fsub float %i.nl, %i.nm
  %i.no = tail call noundef float @sqrtf(float noundef %i.nn) #24
  %i.np = fadd float %i.mz, %i.no                 ; 3 uses
  %i.nq = tail call float @llvm.fabs.f32(float %i.nk)
  %i.nr = fcmp ueq float %i.nq, +inf
  br i1 %i.nr, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph223
  %i.ns = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.nt = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.nu = fsub float %storemerge29222, %i.nt
  %i.nv = fmul float %i.ns, %i.nu
  %i.nw = fadd float %i.nv, 5.000000e-01
  %i.nx = tail call noundef float @llvm.floor.f32(float %i.nw)
  %i.ny = fptoui float %i.nx to i32
  %i.nz = zext i32 %i.ny to i64
  %i.oa = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %i.nz ; 2 uses
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !1161
  %i.od = fcmp olt float %i.nk, %i.oc
  br i1 %i.od, label %bb.af, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

bb.af:                                            ; preds = %bb.ae
  store float %i.nk, ptr %i.ob, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46: ; preds = %bb.af, %bb.ae, %.lr.ph223
  %i.oe = tail call float @llvm.fabs.f32(float %i.np)
  %i.of = fcmp ueq float %i.oe, +inf
  br i1 %i.of, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, label %bb.ag

bb.ag:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46
  %i.og = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.oh = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.oi = fsub float %storemerge29222, %i.oh
  %i.oj = fmul float %i.og, %i.oi
  %i.ok = fadd float %i.oj, 5.000000e-01
  %i.ol = tail call noundef float @llvm.floor.f32(float %i.ok)
  %i.om = fptoui float %i.ol to i32
  %i.on = zext i32 %i.om to i64
  %i.oo = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %i.on ; 2 uses
  %i.oq = load float, ptr %i.op, align 4, !tbaa !1161
  %i.or = fcmp ogt float %i.np, %i.oq
  br i1 %i.or, label %bb.ah, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

bb.ah:                                            ; preds = %bb.ag
  store float %i.np, ptr %i.op, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, %bb.ag, %bb.ah
  %i.os = fadd float %storemerge29222, %i.b       ; 2 uses
  %i.ot = fcmp ugt float %i.os, %.sroa.speculated176
  br i1 %i.ot, label %.loopexit216, label %.lr.ph223, !llvm.loop !7781

.lr.ph221:                                        ; preds = %.preheader217, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50
  %storemerge28220 = phi float [ %i.qm, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50 ], [ %i.mx, %.preheader217 ] ; 4 uses
  %i.ou = load float, ptr %i.mp, align 4, !tbaa !1161 ; 2 uses
  %i.ov = load float, ptr %i.e, align 4, !tbaa !1161 ; 3 uses
  %i.ow = fmul float %i.ov, %i.ov
  %i.ox = load float, ptr %i.c, align 8, !tbaa !1161
  %i.oy = fsub float %storemerge28220, %i.ox      ; 3 uses
  %i.oz = fmul float %i.oy, %i.oy
  %i.pa = fsub float %i.ow, %i.oz
  %i.pb = tail call noundef float @sqrtf(float noundef %i.pa) #24
  %i.pc = fsub float %i.ou, %i.pb                 ; 3 uses
  %i.pd = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.pe = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.pf = fmul float %i.ov, %i.pe
  %i.pg = tail call float @llvm.fmuladd.f32(float %i.pd, float %i.oy, float %i.pf)
  %i.ph = load float, ptr %i.kx, align 4, !tbaa !2205
  %i.pi = fdiv float %i.pg, %i.ph
  %i.pj = fadd float %i.ou, %i.pi                 ; 3 uses
  %i.pk = tail call float @llvm.fabs.f32(float %i.pc)
  %i.pl = fcmp ueq float %i.pk, +inf
  br i1 %i.pl, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph221
  %i.pm = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.pn = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.po = fsub float %storemerge28220, %i.pn
  %i.pp = fmul float %i.pm, %i.po
  %i.pq = fadd float %i.pp, 5.000000e-01
  %i.pr = tail call noundef float @llvm.floor.f32(float %i.pq)
  %i.ps = fptoui float %i.pr to i32
  %i.pt = zext i32 %i.ps to i64
  %i.pu = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.pt ; 2 uses
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !1161
  %i.px = fcmp olt float %i.pc, %i.pw
  br i1 %i.px, label %bb.aj, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

bb.aj:                                            ; preds = %bb.ai
  store float %i.pc, ptr %i.pv, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49: ; preds = %bb.aj, %bb.ai, %.lr.ph221
  %i.py = tail call float @llvm.fabs.f32(float %i.pj)
  %i.pz = fcmp ueq float %i.py, +inf
  br i1 %i.pz, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, label %bb.ak

bb.ak:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49
  %i.qa = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.qb = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.qc = fsub float %storemerge28220, %i.qb
  %i.qd = fmul float %i.qa, %i.qc
  %i.qe = fadd float %i.qd, 5.000000e-01
  %i.qf = tail call noundef float @llvm.floor.f32(float %i.qe)
  %i.qg = fptoui float %i.qf to i32
  %i.qh = zext i32 %i.qg to i64
  %i.qi = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.qh ; 2 uses
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !1161
  %i.ql = fcmp ogt float %i.pj, %i.qk
  br i1 %i.ql, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

bb.al:                                            ; preds = %bb.ak
  store float %i.pj, ptr %i.qj, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, %bb.ak, %bb.al
  %i.qm = fadd float %storemerge28220, %i.b       ; 2 uses
  %i.qn = fcmp ugt float %i.qm, %.sroa.speculated176
  br i1 %i.qn, label %.loopexit216, label %.lr.ph221, !llvm.loop !7782

.loopexit216:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, %.preheader217, %.preheader215, %._crit_edge
  %i.qo = extractelement <4 x float> %i.ia, i64 2 ; 4 uses
  %i.qp = extractelement <4 x float> %i.ib, i64 3 ; 3 uses
  %i.qq = fcmp olt float %i.qo, %i.qp
  br i1 %i.qq, label %.preheader, label %bb.ar

.preheader:                                       ; preds = %.loopexit216
  %i.qr = extractelement <4 x float> %i.ke, i64 2 ; 2 uses
  %i.qs = fcmp ugt float %i.qr, %i.qp
  br i1 %i.qs, label %.loopexit210, label %.lr.ph229

.lr.ph229:                                        ; preds = %.preheader
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph229, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52
  %storemerge32228 = phi float [ %i.qr, %.lr.ph229 ], [ %i.sp, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52 ] ; 4 uses
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !2206 ; 2 uses
  %10 = load <4 x float>, ptr %i.hn, align 8
  %i.qv = load float, ptr %i.c, align 8, !tbaa !2203
  %i.qw = fsub float %storemerge32228, %i.qv
  %11 = load <4 x float>, ptr %i.e, align 4
  %i.qx = load float, ptr %i.hr, align 8, !tbaa !3005 ; 2 uses
  %i.qy = fneg float %i.qx
  %12 = load <4 x float>, ptr %i.kx, align 4
  %i.qz = shufflevector <4 x float> %11, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ra = insertelement <2 x float> poison, float %i.qy, i64 0
  %i.rb = insertelement <2 x float> %i.ra, float %i.qx, i64 1
  %i.rc = fmul <2 x float> %i.qz, %i.rb
  %i.rd = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> zeroinitializer
  %i.re = insertelement <2 x float> poison, float %i.qw, i64 0
  %i.rf = shufflevector <2 x float> %i.re, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rd, <2 x float> %i.rf, <2 x float> %i.rc)
  %i.rh = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ri = fdiv <2 x float> %i.rg, %i.rh           ; 2 uses
  %i.rj = extractelement <2 x float> %i.ri, i64 0
  %i.rk = fadd float %i.qu, %i.rj                 ; 3 uses
  %i.rl = extractelement <2 x float> %i.ri, i64 1
  %i.rm = fadd float %i.qu, %i.rl                 ; 3 uses
  %i.rn = tail call float @llvm.fabs.f32(float %i.rk)
  %i.ro = fcmp ueq float %i.rn, +inf
  br i1 %i.ro, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rp = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.rq = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.rr = fsub float %storemerge32228, %i.rq
  %i.rs = fmul float %i.rp, %i.rr
  %i.rt = fadd float %i.rs, 5.000000e-01
  %i.ru = tail call noundef float @llvm.floor.f32(float %i.rt)
  %i.rv = fptoui float %i.ru to i32
  %i.rw = zext i32 %i.rv to i64
  %i.rx = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %i.rw ; 2 uses
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !1161
  %i.sa = fcmp olt float %i.rk, %i.rz
  br i1 %i.sa, label %bb.ao, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

bb.ao:                                            ; preds = %bb.an
  store float %i.rk, ptr %i.ry, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51: ; preds = %bb.ao, %bb.an, %bb.am
  %i.sb = tail call float @llvm.fabs.f32(float %i.rm)
  %i.sc = fcmp ueq float %i.sb, +inf
  br i1 %i.sc, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52, label %bb.ap

bb.ap:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51
  %i.sd = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.se = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.sf = fsub float %storemerge32228, %i.se
  %i.sg = fmul float %i.sd, %i.sf
  %i.sh = fadd float %i.sg, 5.000000e-01
  %i.si = tail call noundef float @llvm.floor.f32(float %i.sh)
  %i.sj = fptoui float %i.si to i32
  %i.sk = zext i32 %i.sj to i64
  %i.sl = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sk ; 2 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !1161
  %i.so = fcmp ogt float %i.rm, %i.sn
  br i1 %i.so, label %bb.aq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

bb.aq:                                            ; preds = %bb.ap
  store float %i.rm, ptr %i.sm, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, %bb.ap, %bb.aq
  %i.sp = fadd float %storemerge32228, %i.b       ; 2 uses
  %i.sq = fcmp ugt float %i.sp, %i.qp
  br i1 %i.sq, label %.loopexit210, label %bb.am, !llvm.loop !7783

bb.ar:                                            ; preds = %.loopexit216
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ss = load float, ptr %i.sr, align 8, !tbaa !7789
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.su = load float, ptr %i.st, align 4, !tbaa !2206
  %i.sv = fcmp ugt float %i.ss, %i.su
  %i.sw = extractelement <4 x float> %i.ke, i64 3 ; 3 uses
  %i.sx = fcmp ugt float %i.sw, %i.qo             ; 2 uses
  br i1 %i.sv, label %.preheader211, label %.preheader213

.preheader213:                                    ; preds = %bb.ar
  br i1 %i.sx, label %.loopexit210, label %.lr.ph225

.preheader211:                                    ; preds = %bb.ar
  br i1 %i.sx, label %.loopexit210, label %.lr.ph227

.lr.ph225:                                        ; preds = %.preheader213, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54
  %storemerge31224 = phi float [ %i.uq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54 ], [ %i.sw, %.preheader213 ] ; 5 uses
  %i.sy = load float, ptr %i.sr, align 8, !tbaa !1161
  %i.sz = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.ta = fmul float %i.sz, %i.sz                 ; 2 uses
  %i.tb = load float, ptr %i.g, align 4, !tbaa !1161
  %i.tc = fsub float %storemerge31224, %i.tb      ; 2 uses
  %i.td = fmul float %i.tc, %i.tc
  %i.te = fsub float %i.ta, %i.td
  %i.tf = tail call noundef float @sqrtf(float noundef %i.te) #24
  %i.tg = fsub float %i.sy, %i.tf                 ; 3 uses
  %i.th = load float, ptr %i.st, align 4, !tbaa !1161
  %i.ti = load float, ptr %i.c, align 8, !tbaa !1161
  %i.tj = fsub float %storemerge31224, %i.ti      ; 2 uses
  %i.tk = fmul float %i.tj, %i.tj
  %i.tl = fsub float %i.ta, %i.tk
  %i.tm = tail call noundef float @sqrtf(float noundef %i.tl) #24
  %i.tn = fadd float %i.th, %i.tm                 ; 3 uses
  %i.to = tail call float @llvm.fabs.f32(float %i.tg)
  %i.tp = fcmp ueq float %i.to, +inf
  br i1 %i.tp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, label %bb.as

bb.as:                                            ; preds = %.lr.ph225
  %i.tq = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.tr = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.ts = fsub float %storemerge31224, %i.tr
  %i.tt = fmul float %i.tq, %i.ts
  %i.tu = fadd float %i.tt, 5.000000e-01
  %i.tv = tail call noundef float @llvm.floor.f32(float %i.tu)
  %i.tw = fptoui float %i.tv to i32
  %i.tx = zext i32 %i.tw to i64
  %i.ty = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ty, i64 %i.tx ; 2 uses
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !1161
  %i.ub = fcmp olt float %i.tg, %i.ua
  br i1 %i.ub, label %bb.at, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

bb.at:                                            ; preds = %bb.as
  store float %i.tg, ptr %i.tz, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53: ; preds = %bb.at, %bb.as, %.lr.ph225
  %i.uc = tail call float @llvm.fabs.f32(float %i.tn)
  %i.ud = fcmp ueq float %i.uc, +inf
  br i1 %i.ud, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54, label %bb.au

bb.au:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53
  %i.ue = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.uf = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.ug = fsub float %storemerge31224, %i.uf
  %i.uh = fmul float %i.ue, %i.ug
  %i.ui = fadd float %i.uh, 5.000000e-01
  %i.uj = tail call noundef float @llvm.floor.f32(float %i.ui)
  %i.uk = fptoui float %i.uj to i32
  %i.ul = zext i32 %i.uk to i64
  %i.um = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.um, i64 %i.ul ; 2 uses
  %i.uo = load float, ptr %i.un, align 4, !tbaa !1161
  %i.up = fcmp ogt float %i.tn, %i.uo
  br i1 %i.up, label %bb.av, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

bb.av:                                            ; preds = %bb.au
  store float %i.tn, ptr %i.un, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, %bb.au, %bb.av
  %i.uq = fadd float %storemerge31224, %i.b       ; 2 uses
  %i.ur = fcmp ugt float %i.uq, %i.qo
  br i1 %i.ur, label %.loopexit210, label %.lr.ph225, !llvm.loop !7784

.lr.ph227:                                        ; preds = %.preheader211, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56
  %storemerge30226 = phi float [ %i.wk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56 ], [ %i.sw, %.preheader211 ] ; 5 uses
  %i.us = load float, ptr %i.st, align 4, !tbaa !1161
  %i.ut = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.uu = fmul float %i.ut, %i.ut                 ; 2 uses
  %i.uv = load float, ptr %i.c, align 8, !tbaa !1161
  %i.uw = fsub float %storemerge30226, %i.uv      ; 2 uses
  %i.ux = fmul float %i.uw, %i.uw
  %i.uy = fsub float %i.uu, %i.ux
  %i.uz = tail call noundef float @sqrtf(float noundef %i.uy) #24
  %i.va = fsub float %i.us, %i.uz                 ; 3 uses
  %i.vb = load float, ptr %i.sr, align 8, !tbaa !1161
  %i.vc = load float, ptr %i.g, align 4, !tbaa !1161
  %i.vd = fsub float %storemerge30226, %i.vc      ; 2 uses
  %i.ve = fmul float %i.vd, %i.vd
  %i.vf = fsub float %i.uu, %i.ve
  %i.vg = tail call noundef float @sqrtf(float noundef %i.vf) #24
  %i.vh = fadd float %i.vb, %i.vg                 ; 3 uses
  %i.vi = tail call float @llvm.fabs.f32(float %i.va)
  %i.vj = fcmp ueq float %i.vi, +inf
  br i1 %i.vj, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph227
  %i.vk = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.vl = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.vm = fsub float %storemerge30226, %i.vl
  %i.vn = fmul float %i.vk, %i.vm
  %i.vo = fadd float %i.vn, 5.000000e-01
  %i.vp = tail call noundef float @llvm.floor.f32(float %i.vo)
  %i.vq = fptoui float %i.vp to i32
  %i.vr = zext i32 %i.vq to i64
  %i.vs = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.vs, i64 %i.vr ; 2 uses
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !1161
  %i.vv = fcmp olt float %i.va, %i.vu
  br i1 %i.vv, label %bb.ax, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

bb.ax:                                            ; preds = %bb.aw
  store float %i.va, ptr %i.vt, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55: ; preds = %bb.ax, %bb.aw, %.lr.ph227
  %i.vw = tail call float @llvm.fabs.f32(float %i.vh)
  %i.vx = fcmp ueq float %i.vw, +inf
  br i1 %i.vx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56, label %bb.ay

bb.ay:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55
  %i.vy = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.vz = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.wa = fsub float %storemerge30226, %i.vz
  %i.wb = fmul float %i.vy, %i.wa
  %i.wc = fadd float %i.wb, 5.000000e-01
  %i.wd = tail call noundef float @llvm.floor.f32(float %i.wc)
  %i.we = fptoui float %i.wd to i32
  %i.wf = zext i32 %i.we to i64
  %i.wg = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.wg, i64 %i.wf ; 2 uses
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !1161
  %i.wj = fcmp ogt float %i.vh, %i.wi
  br i1 %i.wj, label %bb.az, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56

bb.az:                                            ; preds = %bb.ay
  store float %i.vh, ptr %i.wh, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55, %bb.ay, %bb.az
  %i.wk = fadd float %storemerge30226, %i.b       ; 2 uses
  %i.wl = fcmp ugt float %i.wk, %i.qo
  br i1 %i.wl, label %.loopexit210, label %.lr.ph227, !llvm.loop !7785

.loopexit210:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52, %.preheader213, %.preheader211, %.preheader
  %i.wm = load float, ptr %i.kx, align 4, !tbaa !1161
  %i.wn = tail call float @llvm.fabs.f32(float %i.wm)
  %i.wo = fcmp ule float %i.wn, f0x322BCC77
  br i1 %i.wo, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %.loopexit210
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !2206
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.ws = load float, ptr %i.wr, align 8, !tbaa !7789
  %i.wt = fcmp ogt float %i.wq, %i.ws
  %i.wu = extractelement <4 x float> %i.ke, i64 2 ; 2 uses
  %i.wv = extractelement <4 x float> %i.ke, i64 3 ; 2 uses
  %i.ww = fcmp olt float %i.wu, %i.wv
  %.sroa.speculated156 = select i1 %i.ww, float %i.wv, float %i.wu ; 3 uses
  %i.wx = extractelement <4 x float> %i.ia, i64 0 ; 3 uses
  %i.wy = fcmp ugt float %.sroa.speculated156, %i.wx ; 2 uses
  br i1 %i.wt, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.wy, label %.loopexit, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.bb, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59
  %storemerge34233 = phi float [ %i.yu, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59 ], [ %.sroa.speculated156, %bb.bb ] ; 5 uses
  %i.wz = load float, ptr %i.wr, align 8, !tbaa !1161
  %i.xa = load float, ptr %i.e, align 4, !tbaa !1161 ; 3 uses
  %i.xb = fmul float %i.xa, %i.xa
  %i.xc = load float, ptr %i.g, align 4, !tbaa !1161
  %i.xd = fsub float %storemerge34233, %i.xc      ; 2 uses
  %i.xe = fmul float %i.xd, %i.xd
  %i.xf = fsub float %i.xb, %i.xe
  %i.xg = tail call noundef float @sqrtf(float noundef %i.xf) #24
  %i.xh = fsub float %i.wz, %i.xg                 ; 3 uses
  %i.xi = load float, ptr %i.wp, align 4, !tbaa !2206
  %i.xj = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.xk = load float, ptr %i.c, align 8, !tbaa !2203
  %i.xl = fsub float %storemerge34233, %i.xk
  %i.xm = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.xn = fmul float %i.xa, %i.xm
  %i.xo = tail call float @llvm.fmuladd.f32(float %i.xj, float %i.xl, float %i.xn)
  %i.xp = load float, ptr %i.kx, align 4, !tbaa !2205
  %i.xq = fdiv float %i.xo, %i.xp
  %i.xr = fadd float %i.xi, %i.xq                 ; 3 uses
  %i.xs = tail call float @llvm.fabs.f32(float %i.xh)
  %i.xt = fcmp ueq float %i.xs, +inf
  br i1 %i.xt, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph235
  %i.xu = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.xv = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.xw = fsub float %storemerge34233, %i.xv
  %i.xx = fmul float %i.xu, %i.xw
  %i.xy = fadd float %i.xx, 5.000000e-01
  %i.xz = tail call noundef float @llvm.floor.f32(float %i.xy)
  %i.ya = fptoui float %i.xz to i32
  %i.yb = zext i32 %i.ya to i64
  %i.yc = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %i.yb ; 2 uses
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !1161
  %i.yf = fcmp olt float %i.xh, %i.ye
  br i1 %i.yf, label %bb.bd, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58

bb.bd:                                            ; preds = %bb.bc
  store float %i.xh, ptr %i.yd, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58: ; preds = %bb.bd, %bb.bc, %.lr.ph235
  %i.yg = tail call float @llvm.fabs.f32(float %i.xr)
  %i.yh = fcmp ueq float %i.yg, +inf
  br i1 %i.yh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59, label %bb.be

bb.be:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58
  %i.yi = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.yj = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.yk = fsub float %storemerge34233, %i.yj
  %i.yl = fmul float %i.yi, %i.yk
  %i.ym = fadd float %i.yl, 5.000000e-01
  %i.yn = tail call noundef float @llvm.floor.f32(float %i.ym)
  %i.yo = fptoui float %i.yn to i32
  %i.yp = zext i32 %i.yo to i64
  %i.yq = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %i.yp ; 2 uses
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !1161
  %i.yt = fcmp ogt float %i.xr, %i.ys
  br i1 %i.yt, label %bb.bf, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59

bb.bf:                                            ; preds = %bb.be
  store float %i.xr, ptr %i.yr, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i58, %bb.be, %bb.bf
  %i.yu = fadd float %storemerge34233, %i.b       ; 2 uses
  %i.yv = fcmp ugt float %i.yu, %i.wx
  br i1 %i.yv, label %.loopexit, label %.lr.ph235, !llvm.loop !7786

bb.bg:                                            ; preds = %bb.ba
  br i1 %i.wy, label %.loopexit, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.bg, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62
  %storemerge33230 = phi float [ %i.aas, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62 ], [ %.sroa.speculated156, %bb.bg ] ; 5 uses
  %i.yw = load float, ptr %i.wp, align 4, !tbaa !2206
  %i.yx = load float, ptr %i.hn, align 8, !tbaa !2207
  %i.yy = load float, ptr %i.c, align 8, !tbaa !2203
  %i.yz = fsub float %storemerge33230, %i.yy
  %i.za = load float, ptr %i.e, align 4, !tbaa !3004 ; 3 uses
  %i.zb = load float, ptr %i.hr, align 8, !tbaa !3005
  %i.zc = fneg float %i.zb
  %i.zd = fmul float %i.za, %i.zc
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.yz, float %i.zd)
  %i.zf = load float, ptr %i.kx, align 4, !tbaa !2205
  %i.zg = fdiv float %i.ze, %i.zf
  %i.zh = fadd float %i.yw, %i.zg                 ; 3 uses
  %i.zi = load float, ptr %i.wr, align 8, !tbaa !1161
  %i.zj = fmul float %i.za, %i.za
  %i.zk = load float, ptr %i.g, align 4, !tbaa !1161
  %i.zl = fsub float %storemerge33230, %i.zk      ; 2 uses
  %i.zm = fmul float %i.zl, %i.zl
  %i.zn = fsub float %i.zj, %i.zm
  %i.zo = tail call noundef float @sqrtf(float noundef %i.zn) #24
  %i.zp = fadd float %i.zi, %i.zo                 ; 3 uses
  %i.zq = tail call float @llvm.fabs.f32(float %i.zh)
  %i.zr = fcmp ueq float %i.zq, +inf
  br i1 %i.zr, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph232
  %i.zs = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.zt = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.zu = fsub float %storemerge33230, %i.zt
  %i.zv = fmul float %i.zs, %i.zu
  %i.zw = fadd float %i.zv, 5.000000e-01
  %i.zx = tail call noundef float @llvm.floor.f32(float %i.zw)
  %i.zy = fptoui float %i.zx to i32
  %i.zz = zext i32 %i.zy to i64
  %i.aaa = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.zz ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !1161
  %i.aad = fcmp olt float %i.zh, %i.aac
  br i1 %i.aad, label %bb.bi, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61

bb.bi:                                            ; preds = %bb.bh
  store float %i.zh, ptr %i.aab, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61: ; preds = %bb.bi, %bb.bh, %.lr.ph232
  %i.aae = tail call float @llvm.fabs.f32(float %i.zp)
  %i.aaf = fcmp ueq float %i.aae, +inf
  br i1 %i.aaf, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62, label %bb.bj

bb.bj:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61
  %i.aag = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.aah = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.aai = fsub float %storemerge33230, %i.aah
  %i.aaj = fmul float %i.aag, %i.aai
  %i.aak = fadd float %i.aaj, 5.000000e-01
  %i.aal = tail call noundef float @llvm.floor.f32(float %i.aak)
  %i.aam = fptoui float %i.aal to i32
  %i.aan = zext i32 %i.aam to i64
  %i.aao = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aao, i64 %i.aan ; 2 uses
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !1161
  %i.aar = fcmp ogt float %i.zp, %i.aaq
  br i1 %i.aar, label %bb.bk, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62

bb.bk:                                            ; preds = %bb.bj
  store float %i.zp, ptr %i.aap, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i61, %bb.bj, %bb.bk
  %i.aas = fadd float %storemerge33230, %i.b      ; 2 uses
  %i.aat = fcmp ugt float %i.aas, %i.wx
  br i1 %i.aat, label %.loopexit, label %.lr.ph232, !llvm.loop !7787

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit62, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit59, %bb.bg, %bb.bb, %.loopexit210
  %i.aau = extractelement <4 x float> %i.ke, i64 0 ; 2 uses
  %i.aav = fcmp ugt float %i.aau, %i.j
  br i1 %i.aav, label %._crit_edge239, label %.lr.ph238

.lr.ph238:                                        ; preds = %.loopexit
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 360
  br label %bb.bt

._crit_edge239:                                   ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87, %.loopexit
  tail call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE20intersectWithXYStripEv(ptr noundef nonnull align 8 dereferenceable(520) %0)
  %13 = load <4 x float>, ptr %i.e, align 4
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.aay = load float, ptr %i.aax, align 8, !tbaa !1161 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !1161 ; 2 uses
  %i.abb = fmul float %i.aba, %i.aba
  %i.abc = tail call float @llvm.fmuladd.f32(float %i.aay, float %i.aay, float %i.abb)
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.abe = load float, ptr %i.abd, align 8, !tbaa !1161 ; 2 uses
  %i.abf = tail call noundef float @llvm.fmuladd.f32(float %i.abe, float %i.abe, float %i.abc) ; 2 uses
  %i.abg = tail call float @llvm.fabs.f32(float %i.abf)
  %i.abh = fcmp ule float %i.abg, f0x322BCC77
  br i1 %i.abh, label %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge239
  %sqrt.i.i63 = tail call float @llvm.sqrt.f32(float %i.abf)
  %.sroa.0.0.copyload4.i.i.i64 = load <2 x float>, ptr %i.aax, align 8
  %i.abi = insertelement <2 x float> poison, float %sqrt.i.i63, i64 0
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abk = fdiv <2 x float> %.sroa.0.0.copyload4.i.i.i64, %i.abj
  br label %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69

_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69: ; preds = %bb.bl, %._crit_edge239
  %.sroa.0.0.i.i70 = phi <2 x float> [ %i.abk, %bb.bl ], [ <float 1.000000e+00, float 0.000000e+00>, %._crit_edge239 ]
  %i.abl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.sroa.0.0.copyload4.i.i73 = load <2 x float>, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 260
  %.sroa.0.0.copyload4.i21.i76 = load <2 x float>, ptr %i.abm, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.abn = shufflevector <4 x float> %13, <4 x float> poison, <2 x i32> zeroinitializer
  %i.abo = fmul <2 x float> %i.abn, %.sroa.0.0.i.i70 ; 2 uses
  %i.abp = fsub <2 x float> %.sroa.0.0.copyload4.i.i73, %i.abo ; 2 uses
  store <2 x float> %i.abp, ptr %2, align 8, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.abq = fadd <2 x float> %i.abo, %.sroa.0.0.copyload4.i21.i76
  store <2 x float> %i.abq, ptr %3, align 8, !tbaa !1161
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !1791 ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !1161
  %i.abv = load <2 x float>, ptr %i.abs, align 4, !tbaa !1161
  %i.abw = fneg <2 x float> %i.abv                ; 2 uses
  %i.abx = extractelement <2 x float> %i.abw, i64 0
  %i.aby = fsub float %i.abx, %i.abu              ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !1161
  %i.acb = extractelement <2 x float> %i.abw, i64 1
  %i.acc = fsub float %i.acb, %i.aca              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.acd = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !1791 ; 4 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 4
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !1161 ; 3 uses
  %i.ach = fneg float %i.acg                      ; 3 uses
  %i.aci = load float, ptr %i.ace, align 4, !tbaa !1161 ; 4 uses
  store float %i.ach, ptr %4, align 4, !tbaa !1161
  %i.acj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.aci, ptr %i.acj, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ace, i64 12
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ace, i64 16
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !1161 ; 3 uses
  %i.acn = fneg float %i.acm                      ; 3 uses
  %i.aco = load float, ptr %i.ack, align 4, !tbaa !1161 ; 4 uses
  store float %i.acn, ptr %5, align 4, !tbaa !1161
  %i.acp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  store float %i.aco, ptr %i.acp, align 4, !tbaa !1161
  %i.acq = fmul float %i.acc, %i.aci
  %i.acr = tail call noundef float @llvm.fmuladd.f32(float %i.ach, float %i.aby, float %i.acq)
  %i.acs = fcmp ogt float %i.acr, 0.000000e+00
  br i1 %i.acs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69
  store float %i.acg, ptr %4, align 4, !tbaa !1161
  %i.act = fneg float %i.aci                      ; 2 uses
  store float %i.act, ptr %i.acj, align 4, !tbaa !1161
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69
  %i.acu = phi float [ %i.act, %bb.bm ], [ %i.aci, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69 ] ; 3 uses
  %i.acv = phi float [ %i.acg, %bb.bm ], [ %i.ach, %_ZNK7openvdb5v13_04math4Vec3IfE8unitSafeEv.exit.i69 ] ; 3 uses
  %i.acw = fmul float %i.acc, %i.aco
  %i.acx = tail call noundef float @llvm.fmuladd.f32(float %i.acn, float %i.aby, float %i.acw)
  %i.acy = fcmp ogt float %i.acx, 0.000000e+00
  br i1 %i.acy, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store float %i.acm, ptr %5, align 4, !tbaa !1161
  %i.acz = fneg float %i.aco                      ; 2 uses
  store float %i.acz, ptr %i.acp, align 4, !tbaa !1161
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ada = phi float [ %i.acz, %bb.bo ], [ %i.aco, %bb.bn ] ; 3 uses
  %i.adb = phi float [ %i.acm, %bb.bo ], [ %i.acn, %bb.bn ] ; 3 uses
  %i.adc = fmul float %i.acu, %i.acu
  %i.add = tail call noundef float @llvm.fmuladd.f32(float %i.acv, float %i.acv, float %i.adc)
  %i.ade = tail call float @llvm.fabs.f32(float %i.add)
  %i.adf = fcmp ule float %i.ade, f0x322BCC77
  br i1 %i.adf, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.adg = load <2 x float>, ptr %3, align 8
  %i.adh = fsub <2 x float> %i.adg, %i.abp        ; 2 uses
  %i.adi = extractelement <2 x float> %i.adh, i64 1
  %i.adj = fmul float %i.acu, %i.adi
  %i.adk = extractelement <2 x float> %i.adh, i64 0
  %i.adl = tail call noundef float @llvm.fmuladd.f32(float %i.acv, float %i.adk, float %i.adj)
  %i.adm = fcmp olt float %i.adl, 0.000000e+00
  %..i81 = select i1 %i.adm, ptr %2, ptr %3
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IfEESN_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %..i81)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.adn = fmul float %i.ada, %i.ada
  %i.ado = call noundef float @llvm.fmuladd.f32(float %i.adb, float %i.adb, float %i.adn)
  %i.adp = call float @llvm.fabs.f32(float %i.ado)
  %i.adq = fcmp ule float %i.adp, f0x322BCC77
  br i1 %i.adq, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit85, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.adr = load <2 x float>, ptr %3, align 8
  %i.ads = load <2 x float>, ptr %2, align 8, !tbaa !1161
  %i.adt = fsub <2 x float> %i.adr, %i.ads        ; 2 uses
  %i.adu = extractelement <2 x float> %i.adt, i64 1
  %i.adv = fmul float %i.ada, %i.adu
  %i.adw = extractelement <2 x float> %i.adt, i64 0
  %i.adx = call noundef float @llvm.fmuladd.f32(float %i.adb, float %i.adw, float %i.adv)
  %i.ady = fcmp olt float %i.adx, 0.000000e+00
  %.1.i84 = select i1 %i.ady, ptr %2, ptr %3
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IfEESN_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %.1.i84)
  br label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit85

_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit85: ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit

bb.bt:                                            ; preds = %.lr.ph238, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87
  %storemerge35236 = phi float [ %i.aau, %.lr.ph238 ], [ %i.afl, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87 ] ; 4 uses
  %i.adz = load float, ptr %i.aaw, align 8, !tbaa !1161 ; 2 uses
  %i.aea = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.aeb = fmul float %i.aea, %i.aea
  %i.aec = load float, ptr %i.g, align 4, !tbaa !1161
  %i.aed = fsub float %storemerge35236, %i.aec    ; 2 uses
  %i.aee = fmul float %i.aed, %i.aed
  %i.aef = fsub float %i.aeb, %i.aee
  %i.aeg = tail call noundef float @sqrtf(float noundef %i.aef) #24 ; 2 uses
  %i.aeh = fsub float %i.adz, %i.aeg              ; 3 uses
  %i.aei = fadd float %i.adz, %i.aeg              ; 3 uses
  %i.aej = tail call float @llvm.fabs.f32(float %i.aeh)
  %i.aek = fcmp ueq float %i.aej, +inf
  br i1 %i.aek, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ael = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.aem = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.aen = fsub float %storemerge35236, %i.aem
  %i.aeo = fmul float %i.ael, %i.aen
  %i.aep = fadd float %i.aeo, 5.000000e-01
  %i.aeq = tail call noundef float @llvm.floor.f32(float %i.aep)
  %i.aer = fptoui float %i.aeq to i32
  %i.aes = zext i32 %i.aer to i64
  %i.aet = load ptr, ptr %i.kp, align 8, !tbaa !1857
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.aet, i64 %i.aes ; 2 uses
  %i.aev = load float, ptr %i.aeu, align 4, !tbaa !1161
  %i.aew = fcmp olt float %i.aeh, %i.aev
  br i1 %i.aew, label %bb.bv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86

bb.bv:                                            ; preds = %bb.bu
  store float %i.aeh, ptr %i.aeu, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86: ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.aex = tail call float @llvm.fabs.f32(float %i.aei)
  %i.aey = fcmp ueq float %i.aex, +inf
  br i1 %i.aey, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87, label %bb.bw

bb.bw:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86
  %i.aez = load float, ptr %i.kb, align 8, !tbaa !3016
  %i.afa = load float, ptr %i.kf, align 4, !tbaa !3017
  %i.afb = fsub float %storemerge35236, %i.afa
  %i.afc = fmul float %i.aez, %i.afb
  %i.afd = fadd float %i.afc, 5.000000e-01
  %i.afe = tail call noundef float @llvm.floor.f32(float %i.afd)
  %i.aff = fptoui float %i.afe to i32
  %i.afg = zext i32 %i.aff to i64
  %i.afh = load ptr, ptr %i.kr, align 8, !tbaa !1857
  %i.afi = getelementptr inbounds nuw [4 x i8], ptr %i.afh, i64 %i.afg ; 2 uses
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !1161
  %i.afk = fcmp ogt float %i.aei, %i.afj
  br i1 %i.afk, label %bb.bx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87

bb.bx:                                            ; preds = %bb.bw
  store float %i.aei, ptr %i.afi, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit87: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i86, %bb.bw, %bb.bx
  %i.afl = fadd float %storemerge35236, %i.b      ; 2 uses
  %i.afm = fcmp ugt float %i.afl, %i.j
  br i1 %i.afm, label %._crit_edge239, label %bb.bt, !llvm.loop !7788

_ZNSt6vectorIfSaIfEE14_M_fill_assignEmRKf.exit:   ; preds = %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit85, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE20intersectWithXYStripEv(ptr noundef nonnull align 8 dereferenceable(520) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec2", align 8 ; 4 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec2", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3006, !range !788, !noundef !789
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1791 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_12start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINSC_4GridINSC_4tree4TreeINSH_8RootNodeINSH_12InternalNodeINSK_INSH_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNSC_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  store i8 %i.lb, ptr %i.kw, align 4, !tbaa !2015
  store i8 0, ptr %i.bf, align 64, !tbaa !3149
  %i.lc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 152, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !8122 ; 8 uses
  %i.ld = load ptr, ptr %i.bb, align 32, !tbaa !2031
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !2021
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i32 2, ptr %i.le, align 8, !tbaa !2022
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lg = load i64, ptr %4, align 8, !tbaa !2017
  store i64 %i.lg, ptr %i.lf, align 8, !tbaa !2017
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  store i8 0, ptr %i.lh, align 8, !tbaa !2033
  %i.li = getelementptr inbounds nuw i8, ptr %i.lc, i64 136
  store ptr %i.kq, ptr %i.li, align 8, !tbaa !3108
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  store i8 0, ptr %i.lj, align 8, !tbaa !3152
  store ptr %i.lc, ptr %i.bb, align 32, !tbaa !3148
  store ptr %i.lc, ptr %i.kr, align 32, !tbaa !3148
  %i.lk = load ptr, ptr %3, align 8, !tbaa !2034
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(129) %i.kl, ptr noundef nonnull align 8 dereferenceable(128) %i.lk), !inline_history !8122
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ll = add i8 %i.kg, -1
  %i.lm = add nuw nsw i8 %i.bg, 1
  %i.ln = and i8 %i.lm, 7
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.aa:                                            ; preds = %bb.z
  %i.lo = zext i8 %i.js to i64                    ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !768
  %i.lr = icmp ult i8 %i.lq, %i.ke
  br i1 %i.lr, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.aa
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.lo ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !1781
  %i.lv = load i64, ptr %i.ls, align 8, !tbaa !1779
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !1780
  %i.ly = sub i64 %i.lv, %i.lx
  %i.lz = icmp ult i64 %i.lu, %i.ly
  br i1 %i.lz, label %thread-pre-split38, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.aa, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.ma = phi i8 [ %i.kc, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.js, %bb.aa ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mb = phi i8 [ %i.kd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.jr, %bb.aa ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre80, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.lo, %bb.aa ], [ %i.lo, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mc = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %.pre-phi ; 2 uses
  %i.md = load ptr, ptr %i.bc, align 8, !tbaa !3147 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1820 ; 3 uses
  %.not.i.i.i.i.i.i.i.i15 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i.i.i.i15, label %bb.ac, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !743
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = call noundef zeroext i1 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, i32 noundef -1), !inline_history !8123
  br i1 %i.mj, label %.noexc28, label %bb.ac

.noexc28:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16
  %i.mk = call noundef ptr @_ZN3tbb6detail2r115current_contextEv() ; 4 uses
  %.not.i2.i.i.i.i.i.i.i25 = icmp eq ptr %i.mk, null
  br i1 %.not.i2.i.i.i.i.i.i.i25, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ab

bb.ab:                                            ; preds = %.noexc28
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 15
  %i.mm = load atomic i8, ptr %i.ml monotonic, align 1
  %i.mn = icmp eq i8 %i.mm, -1
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8
  %.0.i.i.i.i.i.i.i.i.i.i26 = select i1 %i.mn, ptr %i.mp, ptr %i.mk
  %i.mq = call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i.i.i.i26) ; 0 uses
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i.i.i.i.i.i.i16, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.ms = load i64, ptr %i.mr, align 8, !tbaa !1780 ; 2 uses
  %i.mt = load i64, ptr %i.mc, align 8, !tbaa !1779 ; 2 uses
  %i.mu = icmp ult i64 %i.ms, %i.mt
  br i1 %i.mu, label %.lr.ph11.i.i.i.i.i.i17, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31

.lr.ph11.i.i.i.i.i.i17:                           ; preds = %bb.ac
  %i.mv = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i.i.i.i.i19, %.lr.ph11.i.i.i.i.i.i17
  %.09.i.i.i.i.i.i18 = phi i64 [ %i.ms, %.lr.ph11.i.i.i.i.i.i17 ], [ %i.nj, %._crit_edge.i.i.i.i.i.i19 ] ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1756 ; 2 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !1971, !noalias !8128 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !1971, !noalias !8128
  %i.na = getelementptr [4 x i8], ptr %i.mz, i64 %.09.i.i.i.i.i.i18 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !741, !noalias !8128 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.na, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !741, !noalias !8128 ; 2 uses
  %i.ne = zext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.ne
  %i.ng = icmp ult i32 %i.nb, %i.nd
  br i1 %i.ng, label %.lr.ph.preheader.i.i.i.i.i.i20, label %._crit_edge.i.i.i.i.i.i19

.lr.ph.preheader.i.i.i.i.i.i20:                   ; preds = %bb.ad
  %i.nh = zext i32 %i.nb to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.nh
  br label %.lr.ph.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i19:                        ; preds = %.lr.ph.i.i.i.i.i.i21, %bb.ad
  %i.nj = add i64 %.09.i.i.i.i.i.i18, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.nj, %i.mt
  br i1 %exitcond.not, label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31, label %bb.ad, !llvm.loop !8120

.lr.ph.i.i.i.i.i.i21:                             ; preds = %.lr.ph.i.i.i.i.i.i21, %.lr.ph.preheader.i.i.i.i.i.i20
  %.sroa.5.08.i.i.i.i.i.i22 = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i21 ], [ %i.ni, %.lr.ph.preheader.i.i.i.i.i.i20 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nk = load i32, ptr %.sroa.5.08.i.i.i.i.i.i22, align 4, !tbaa !741
  %i.nl = zext i32 %i.nk to i64
  store i64 %i.nl, ptr %i.a, align 8, !tbaa !1112
  call void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %i.md, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.nm = getelementptr inbounds nuw i8, ptr %.sroa.5.08.i.i.i.i.i.i22, i64 4 ; 2 uses
  %i.nn = icmp ult ptr %i.nm, %i.nf
  br i1 %i.nn, label %.lr.ph.i.i.i.i.i.i21, label %._crit_edge.i.i.i.i.i.i19, !llvm.loop !8121

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31: ; preds = %._crit_edge.i.i.i.i.i.i19, %bb.ab, %bb.ac, %.noexc28
  %i.no = add i8 %i.mb, -1
  %i.np = add i8 %i.ma, 7
  %i.nq = and i8 %i.np, 7
  br label %thread-pre-split38

thread-pre-split38:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31
  %i.nr = phi i8 [ %i.no, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.jr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ns = phi i8 [ %i.nq, %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit31 ], [ %i.js, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.nt = icmp eq i8 %i.nr, 0
  br i1 %i.nt, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %.noexc, %thread-pre-split38
  %i.nu = phi i8 [ %i.ln, %.noexc ], [ %i.bg, %thread-pre-split38 ]
  %i.nv = phi i8 [ %i.ll, %.noexc ], [ %i.nr, %thread-pre-split38 ]
  %i.nw = phi i8 [ %i.kh, %.noexc ], [ %i.ns, %thread-pre-split38 ]
  %i.nx = load ptr, ptr %3, align 8, !tbaa !2034  ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 15
  %i.nz = load atomic i8, ptr %i.ny monotonic, align 1
  %i.oa = icmp eq i8 %i.nz, -1
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %.0.i.i = select i1 %i.oa, ptr %i.oc, ptr %i.nx
  %i.od = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.od, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37, label %bb.i, !llvm.loop !8126

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37: ; preds = %thread-pre-split38, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d112start_reduceINS1_13blocked_rangeImEEN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS6_4GridINS6_4tree4TreeINSB_8RootNodeINSB_12InternalNodeINSE_INSB_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS6_4util15NullInterrupterELb1EEEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.f, %bb.e, %bb.d, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit37
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE16voxelizeTriangleERKm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"class.openvdb::v13_0::math::Vec3.198"], align 4 ; 6 uses
  %3 = alloca %"class.std::vector.1027", align 8  ; 12 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 12 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1957   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.f = load i64, ptr %1, align 8, !tbaa !1112
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !1829
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.f ; 5 uses
  %.sroa.03.0.copyload.i = load i32, ptr %i.h, align 4, !noalias !8132
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !noalias !8132
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 4, !noalias !8132
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !1956, !noalias !8132, !nonnull !789, !align !844
  %i.j = zext i32 %.sroa.03.0.copyload.i to i64
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !1791, !noalias !8132 ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.l, i64 12, i1 false), !noalias !8132
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.n = zext i32 %.sroa.5.0.copyload.i to i64
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !8132
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = zext i32 %.sroa.6.0.copyload.i to i64
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.k, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false), !noalias !8132
  %i.s = tail call noalias noundef nonnull dereferenceable(36) ptr @_Znwm(i64 noundef 36) #30, !noalias !8132 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.s, ptr noundef nonnull align 4 dereferenceable(36) %2, i64 36, i1 false), !noalias !8132
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.t, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %6 = load <4 x float>, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %7 = shufflevector <4 x float> %6, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0.0.copyload4.i12.i = load <2 x float>, ptr %i.u, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0.copyload.i14.i = load float, ptr %.sroa.6.0..sroa_idx.i13.i, align 4
  %i.w = load <2 x float>, ptr %i.s, align 4, !tbaa !1161 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.w ; 2 uses
  %i.x = extractelement <2 x float> %foldExtExtBinop, i64 0
  %8 = load <4 x float>, ptr %i.v, align 4
  %i.y = shufflevector <2 x float> %.sroa.0.0.copyload4.i12.i, <2 x float> %.sroa.0.0.copyload4.i.i, <2 x i32> <i32 0, i32 3>
  %i.z = fsub <2 x float> %i.y, %i.w              ; 3 uses
  %foldExtExtBinop65 = fsub <2 x float> %.sroa.0.0.copyload4.i12.i, %i.w ; 2 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop65, i64 1
  %i.ab = insertelement <2 x float> %7, float %.sroa.6.0.copyload.i14.i, i64 1
  %i.ac = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fsub <2 x float> %i.ab, %i.ac           ; 3 uses
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> %foldExtExtBinop65, <2 x i32> <i32 3, i32 1>
  %i.af = fneg <2 x float> %i.ae
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.ah, <2 x i32> <i32 0, i32 3>
  %i.aj = fmul <2 x float> %i.ai, %i.ag
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ad, <2 x float> %i.aj)
  %i.al = extractelement <2 x float> %i.z, i64 0
  %i.am = fneg float %i.al
  %i.an = extractelement <2 x float> %i.z, i64 1
  %i.ao = fmul float %i.an, %i.am
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.x, float %i.aa, float %i.ao)
  %i.aq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ak)
  %i.ar = fcmp ogt <2 x float> %i.aq, splat (float f0x322BCC77) ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %or.cond.not.i = select i1 %i.at, i1 true, i1 %i.as
  %i.au = tail call float @llvm.fabs.f32(float %i.ap)
  %i.av = fcmp ogt float %i.au, f0x322BCC77
  %i.aw = select i1 %or.cond.not.i, i1 true, i1 %i.av
  br i1 %i.aw, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7openvdb5v13_05tools6lvlset20DilatedMeshVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEfNS0_4util15NullInterrupterELb1EE15voxelizeCapsuleERKNS0_4math4Vec3IfEESN_SN_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u)
          to label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit23

bb.d:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8133 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = invoke noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_SP_RKSM_(ptr noundef nonnull align 8 dereferenceable(680) %i.az, ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.ba)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  br i1 %i.bb, label %bb.e, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit

bb.e:                                             ; preds = %.noexc
  invoke void @_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset28OpenTriangularPrismVoxelizerISE_NS0_4util15NullInterrupterEEESI_E7iterateEv(ptr noundef nonnull align 8 dereferenceable(680) %i.az)
          to label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit unwind label %bb.c

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit: ; preds = %.noexc, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !741
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %0, align 8, !tbaa !1957
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !813
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.split.thread, label %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split

.split.thread:                                    ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.split:                                           ; preds = %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %.pre50 = load ptr, ptr %3, align 8, !tbaa !1953 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %.not.i.i.i = icmp eq ptr %.pre50, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %.split
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1954
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %.pre50 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %.pre50, i64 noundef %i.bm) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %.split.thread, %.split, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZNSt6vectorIN7openvdb5v13_04math4Vec3IfEESaIS4_EED2Ev.exit

_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split: ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit
  %storemerge.fr48 = phi i32 [ %i.ls, %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit ], [ 0, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit ] ; 3 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !1957  ; 2 uses
  %i.bo = zext nneg i32 %storemerge.fr48 to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !741 ; 2 uses
  %i.br = add nuw nsw i32 %storemerge.fr48, 1
  %.cmp.not = icmp eq i32 %storemerge.fr48, 2
  %i.bs = select i1 %.cmp.not, i32 0, i32 %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !741 ; 2 uses
  %.sroa.speculated5.i.i = call i32 @llvm.umin.i32(i32 %i.bv, i32 %i.bq) ; 4 uses
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.bv) ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !813 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 48 ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not11.i.i.i.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.bx, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.by, %_ZN7openvdb5v13_05tools6lvlset28OpenTriangularPrismVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_SP_RKSM_.exit.split ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !1946 ; 2 uses
  %i.cb = icmp ult i32 %i.ca, %.sroa.speculated5.i.i
  br i1 %i.cb, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cc = icmp eq i32 %i.ca, %.sroa.speculated5.i.i
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 36
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !1947
  %i.cf = icmp ult i32 %i.ce, %.sroa.speculated.i.i
  br i1 %i.cf, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.g ], [ %.013.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i.i ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.cg, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !152

_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.ch = icmp eq ptr %.19.i.i.i.i, %i.by
  br i1 %i.ch, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8_Rb_treeIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt4pairIKS6_St6vectorIjSaIjEEESt10_Select1stISC_ESt4lessIS6_ESaISC_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISC_EPKSt18_Rb_tree_node_baseRS8_.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !1946 ; 2 uses
  %i.ck = icmp ult i32 %.sroa.speculated5.i.i, %i.cj
  br i1 %i.ck, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cl = icmp eq i32 %.sroa.speculated5.i.i, %i.cj
  br i1 %i.cl, label %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i: ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !1947
  %.not.i = icmp ult i32 %.sroa.speculated.i.i, %i.cn
  br i1 %.not.i, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit, label %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i

_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeEEclERKS6_S9_.exit.i.i.i, %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit unwind label %bb.x ; 0 uses

_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit: ; preds = %_ZNKSt3mapIN7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE4EdgeESt6vectorIjSaIjEESt4lessIS6_ESaISt4pairIKS6_S9_EEE4findERSD_.exit.i
  %i.cq = load ptr, ptr %3, align 8, !tbaa !1953  ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !741 ; 2 uses
  %i.cs = zext i32 %i.cr to i64                   ; 5 uses
  %i.ct = load i64, ptr %1, align 8, !tbaa !1112
  %i.cu = icmp eq i64 %i.ct, %i.cs
  br i1 %i.cu, label %bb.j, label %_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEEclIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_SP_SP_.exit

bb.j:                                             ; preds = %_ZNK7openvdb5v13_05tools6lvlset28TriangleMeshEdgeConnectivityIfE16getAdjacentCellsERKjS6_RSt6vectorIjSaIjEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 %i.cr, ptr %i.b, align 4, !tbaa !741
  %i.cv = load ptr, ptr %i.bc, align 8, !tbaa !1955
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cq to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = ashr exact i64 %i.cy, 2                 ; 2 uses
  switch i64 %i.cz, label %bb.t [
    i64 1, label %bb.k
    i64 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.da = load ptr, ptr %0, align 8, !tbaa !1957  ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1944, !nonnull !789, !align !844
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1829
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.dd, i64 %i.cs ; 3 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !741 ; 4 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !741
  %i.dj = load ptr, ptr %i.da, align 8, !tbaa !1956, !nonnull !789, !align !844
  %i.dk = zext i32 %i.di to i64
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !1791 ; 3 uses
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.dl, i64 %i.dk ; 4 uses
  %i.dn = add i32 %i.df, 1
end_hunk_3
begin_hunk_4_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_:bb.a
  store <4 x i32> %i.an, ptr %i.ah, align 8, !tbaa !741
  br i1 %.not24, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.ao, i8 -1, i64 512, i1 false), !tbaa !1112
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load double, ptr %i.ag, align 8, !tbaa !1192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.aq, align 8, !tbaa !768
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.at, align 8, !tbaa !768
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.aw, align 8, !tbaa !768
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.az, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.ba = icmp eq i64 %index.next.3, 4096
  br i1 %i.ba, label %.critedge, label %vector.body, !llvm.loop !8234

.critedge:                                        ; preds = %vector.body
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !1112
  %i.bc = or i64 %i.bb, %i.u
  store i64 %i.bc, ptr %i.q, align 8, !tbaa !1112
  %i.bd = xor i64 %i.u, -1
  %i.be = load i64, ptr %i.x, align 8, !tbaa !1112
  %i.bf = and i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.x, align 8, !tbaa !1112
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !768
  %.pre26 = load i32, ptr %1, align 4, !tbaa !741
  %.pre27 = load i32, ptr %i.d, align 4, !tbaa !741
  %.pre28 = load i32, ptr %i.i, align 4, !tbaa !741
  br label %.critedge23

.critedge23:                                      ; preds = %..critedge23_crit_edge, %.critedge
  %i.bg = phi i32 [ %i.j, %..critedge23_crit_edge ], [ %.pre28, %.critedge ]
  %i.bh = phi i32 [ %i.e, %..critedge23_crit_edge ], [ %.pre27, %.critedge ]
  %i.bi = phi i32 [ %i.a, %..critedge23_crit_edge ], [ %.pre26, %.critedge ]
  %i.bj = phi ptr [ %.pre, %..critedge23_crit_edge ], [ %i.af, %.critedge ] ; 2 uses
  %i.bk = and i32 %i.bi, -128
  %i.bl = and i32 %i.bh, -128
  %i.bm = and i32 %i.bg, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !768
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !1599
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bj, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE19setValueOffAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !741
  %i.c = load i32, ptr %i.a, align 8, !tbaa !741
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !741
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !741
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !741
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !741
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !813  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !741  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !741  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !741
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !741 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !741 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !1192
  %i.au = load double, ptr %2, align 8, !tbaa !1192
  %i.av = fcmp oeq double %i.at, %i.au
  br i1 %i.av, label %bb.u, label %vector.ph67

vector.ph67:                                      ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.j, align 4, !tbaa !741
  %i.az = load <2 x i32>, ptr %1, align 4, !tbaa !741
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !741
  %5 = load <2 x double>, ptr %i.as, align 8
  %broadcast.splat69 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next72.3, %vector.body70 ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index71 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x double> %broadcast.splat69, ptr %i.be, align 8, !tbaa !768
  store <2 x double> %broadcast.splat69, ptr %i.bf, align 8, !tbaa !768
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index71 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  store <2 x double> %broadcast.splat69, ptr %i.bh, align 8, !tbaa !768
  store <2 x double> %broadcast.splat69, ptr %i.bi, align 8, !tbaa !768
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index71 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  store <2 x double> %broadcast.splat69, ptr %i.bk, align 8, !tbaa !768
  store <2 x double> %broadcast.splat69, ptr %i.bl, align 8, !tbaa !768
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index71 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  store <2 x double> %broadcast.splat69, ptr %i.bn, align 8, !tbaa !768
  store <2 x double> %broadcast.splat69, ptr %i.bo, align 8, !tbaa !768
  %index.next72.3 = add nuw nsw i64 %index71, 16  ; 2 uses
  %i.bp = icmp eq i64 %index.next72.3, 32768
  br i1 %i.bp, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body70, !llvm.loop !8235

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body70
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i21 = icmp eq ptr %i.bq, null
  br i1 %.not12.i.i.i.i21, label %.critedge.i, label %.lr.ph.i.i.i.i22

.lr.ph.i.i.i.i22:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %.014.i.i.i.i23 = phi ptr [ %.1.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.bq, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i24 = phi ptr [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.br = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 32
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !741 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %i.o
  br i1 %i.bt, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i22
  %i.bu = icmp sgt i32 %i.bs, %i.o
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !741 ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.p
  br i1 %i.bx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = icmp sgt i32 %i.bw, %i.p
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 40
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !741
  %i.cb = icmp slt i32 %i.ca, %i.q
  br i1 %i.cb, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.j, %.lr.ph.i.i.i.i22
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25, %bb.k, %bb.i
  %.sink.i.i.i.i27 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ]
  %.19.i.i.i.i28 = phi ptr [ %.0813.i.i.i.i24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i31 ], [ %.014.i.i.i.i23, %bb.k ], [ %.014.i.i.i.i23, %bb.i ], [ %.014.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i25 ] ; 9 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i23, i64 %.sink.i.i.i.i27
  %.1.i.i.i.i29 = load ptr, ptr %i.cc, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %.1.i.i.i.i29, null
  br i1 %.not.i.i.i.i30, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i22, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i26
  %i.cd = icmp eq ptr %.19.i.i.i.i28, %i.t
  br i1 %i.cd, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 32
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !741 ; 2 uses
  %i.cg = icmp slt i32 %i.o, %i.cf
  br i1 %i.cg, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = icmp sgt i32 %i.o, %i.cf
  br i1 %i.ch, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 36
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !741 ; 2 uses
  %i.ck = icmp slt i32 %i.p, %i.cj
  br i1 %i.ck, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = icmp sgt i32 %i.p, %i.cj
  br i1 %i.cl, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i28, i64 40
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !741
  %i.co = icmp slt i32 %i.q, %i.cn
  br i1 %i.co, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i28, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i28, %bb.l ], [ %.19.i.i.i.i28, %bb.n ]
  %i.cp = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 4 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !964 ; 2 uses
  %.not = icmp eq ptr %i.cr, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 8, !range !788
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !1192
  %i.cx = load double, ptr %2, align 8, !tbaa !1192
  %i.cy = fcmp oeq double %i.cw, %i.cx
  br i1 %i.cy, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cz = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !964
  %i.dc = icmp eq ptr %i.db, null
  %i.dd = load i8, ptr %i.cs, align 8, !range !788
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = select i1 %i.dc, i1 %i.de, i1 false
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cz, i8 0, i64 270336, i1 false)
  %i.dh = load i32, ptr %i.j, align 4, !tbaa !741
  %i.di = load <2 x i32>, ptr %1, align 4, !tbaa !741
  %i.dj = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.dh, i64 2
  %i.dk = shufflevector <2 x i32> %i.di, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x i32> %i.dk, <4 x i32> %i.dj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dm = and <4 x i32> %i.dl, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dm, ptr %i.dg, align 8, !tbaa !741
  br i1 %i.df, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dn, i8 -1, i64 4096, i1 false), !tbaa !1112
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i32 = load double, ptr %i.da, align 8, !tbaa !1192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i32, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !768
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !768
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  store <2 x double> %broadcast.splat, ptr %i.du, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !768
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dx, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dy, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dz = icmp eq i64 %index.next.3, 32768
  br i1 %i.dz, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, label %vector.body, !llvm.loop !8236

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36: ; preds = %vector.body
  %i.ea = load ptr, ptr %i.cq, align 8, !tbaa !964 ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.ea) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 270352) #31
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit36, %bb.t
  store ptr %i.cz, ptr %i.cq, align 8, !tbaa !964
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.cr, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cz, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit ], [ %i.aw, %bb.m ], [ %i.aw, %bb.o ], [ %i.aw, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.aw, %.critedge.i ] ; 2 uses
  %i.ec = load i32, ptr %1, align 4, !tbaa !741
  %i.ed = and i32 %i.ec, -4096
  %i.ee = load i32, ptr %i.e, align 4, !tbaa !741
  %i.ef = and i32 %i.ee, -4096
end_hunk_4
begin_hunk_5_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_:bb.a
  %i.ak = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = and <4 x i32> %i.al, <i32 -128, i32 -128, i32 -128, i32 0>
  store <4 x i32> %i.am, ptr %i.ag, align 8, !tbaa !741
  br i1 %.not23, label %vector.ph, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 33280
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(512) %i.an, i8 -1, i64 512, i1 false), !tbaa !1112
  br label %vector.ph

vector.ph:                                        ; preds = %._crit_edge, %bb.d
  %.pre.i = load double, ptr %i.af, align 8, !tbaa !1192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %broadcast.splat, ptr %i.ao, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ap, align 8, !tbaa !768
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store <2 x double> %broadcast.splat, ptr %i.ar, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.as, align 8, !tbaa !768
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store <2 x double> %broadcast.splat, ptr %i.au, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.av, align 8, !tbaa !768
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 112
  store <2 x double> %broadcast.splat, ptr %i.ax, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ay, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.az = icmp eq i64 %index.next.3, 4096
  br i1 %i.az, label %.critedge, label %vector.body, !llvm.loop !8246

.critedge:                                        ; preds = %vector.body
  %i.ba = load i64, ptr %i.q, align 8, !tbaa !1112
  %i.bb = or i64 %i.ba, %i.u
  store i64 %i.bb, ptr %i.q, align 8, !tbaa !1112
  %i.bc = xor i64 %i.u, -1
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !1112
  %i.be = and i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.x, align 8, !tbaa !1112
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !768
  %.pre25 = load i32, ptr %1, align 4, !tbaa !741
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !741
  %.pre27 = load i32, ptr %i.i, align 4, !tbaa !741
  br label %.critedge22

.critedge22:                                      ; preds = %..critedge22_crit_edge, %.critedge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %..critedge22_crit_edge ], [ %.pre28, %.critedge ]
  %i.bf = phi i32 [ %i.j, %..critedge22_crit_edge ], [ %.pre27, %.critedge ]
  %i.bg = phi i32 [ %i.e, %..critedge22_crit_edge ], [ %.pre26, %.critedge ]
  %i.bh = phi i32 [ %i.a, %..critedge22_crit_edge ], [ %.pre25, %.critedge ]
  %i.bi = phi ptr [ %.pre, %..critedge22_crit_edge ], [ %i.ae, %.critedge ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.bk = and i32 %i.bh, -128
  %i.bl = and i32 %i.bg, -128
  %i.bm = and i32 %i.bf, -128
  %.sroa.2.0.insert.ext.i = zext i32 %i.bl to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.bk to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bn, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.bm, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !768
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.bi, ptr %i.bo, align 8, !tbaa !1599
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !768
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeINS2_IS5_Lj5EEEEEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(33808) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE16setValueAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvRKNS0_4math5CoordERKdRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(96) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %1, align 4, !tbaa !741
  %i.c = load i32, ptr %i.a, align 8, !tbaa !741
  %i.d = sub nsw i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !741
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load i32, ptr %i.g, align 4, !tbaa !741
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !741
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i32, ptr %i.l, align 8, !tbaa !741
  %i.n = sub nsw i32 %i.k, %i.m
  %i.o = and i32 %i.d, -4096                      ; 9 uses
  %i.p = and i32 %i.i, -4096                      ; 9 uses
  %i.q = and i32 %i.n, -4096                      ; 5 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.p to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.q, ptr %.sroa.2.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !813  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.s, %bb.a ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !741  ; 2 uses
  %i.w = icmp slt i32 %i.v, %i.o
  br i1 %i.w, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = icmp sgt i32 %i.v, %i.o
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !741  ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.p
  br i1 %i.aa, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp sgt i32 %i.z, %i.p
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !741
  %i.ae = icmp slt i32 %i.ad, %i.q
  br i1 %i.ae, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %bb.b
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.d ], [ 16, %bb.b ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.d ], [ %.014.i.i.i.i, %bb.b ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ag, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !741 ; 2 uses
  %i.aj = icmp slt i32 %i.o, %i.ai
  br i1 %i.aj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i32 %i.o, %i.ai
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.am = load i32, ptr %i.al, align 4, !tbaa !741 ; 2 uses
  %i.an = icmp slt i32 %i.p, %i.am
  br i1 %i.an, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i32 %i.p, %i.am
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !741
  %i.ar = icmp slt i32 %i.q, %i.aq
  br i1 %i.ar, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.g, %bb.e, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %bb.a
  %i.as = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 11 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.as, i8 0, i64 270336, i1 false)
  %i.au = load i32, ptr %i.j, align 4, !tbaa !741
  %i.av = load <2 x i32>, ptr %1, align 4, !tbaa !741
  %i.aw = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.au, i64 2
  %i.ax = shufflevector <2 x i32> %i.av, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x i32> %i.ax, <4 x i32> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.az = and <4 x i32> %i.ay, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.az, ptr %i.at, align 8, !tbaa !741
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <2 x double>, ptr %i.ba, align 8
  %broadcast.splat68 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index70 = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next71.3, %vector.body69 ] ; 5 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index70 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x double> %broadcast.splat68, ptr %i.bb, align 8, !tbaa !768
  store <2 x double> %broadcast.splat68, ptr %i.bc, align 8, !tbaa !768
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index70 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %broadcast.splat68, ptr %i.be, align 8, !tbaa !768
  store <2 x double> %broadcast.splat68, ptr %i.bf, align 8, !tbaa !768
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index70 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  store <2 x double> %broadcast.splat68, ptr %i.bh, align 8, !tbaa !768
  store <2 x double> %broadcast.splat68, ptr %i.bi, align 8, !tbaa !768
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index70 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  store <2 x double> %broadcast.splat68, ptr %i.bk, align 8, !tbaa !768
  store <2 x double> %broadcast.splat68, ptr %i.bl, align 8, !tbaa !768
  %index.next71.3 = add nuw nsw i64 %index70, 16  ; 2 uses
  %i.bm = icmp eq i64 %index.next71.3, 32768
  br i1 %i.bm, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body69, !llvm.loop !8247

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body69
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i20 = icmp eq ptr %i.bn, null
  br i1 %.not12.i.i.i.i20, label %.critedge.i, label %.lr.ph.i.i.i.i21

.lr.ph.i.i.i.i21:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %.014.i.i.i.i22 = phi ptr [ %.1.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.bn, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i23 = phi ptr [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !741 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.o
  br i1 %i.bq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i21
  %i.br = icmp sgt i32 %i.bp, %i.o
  br i1 %i.br, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !741 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !741
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.j, %.lr.ph.i.i.i.i21
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24, %bb.k, %bb.i
  %.sink.i.i.i.i26 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ 16, %bb.k ], [ 16, %bb.i ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ]
  %.19.i.i.i.i27 = phi ptr [ %.0813.i.i.i.i23, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i30 ], [ %.014.i.i.i.i22, %bb.k ], [ %.014.i.i.i.i22, %bb.i ], [ %.014.i.i.i.i22, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i24 ] ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i22, i64 %.sink.i.i.i.i26
  %.1.i.i.i.i28 = load ptr, ptr %i.bz, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i29 = icmp eq ptr %.1.i.i.i.i28, null
  br i1 %.not.i.i.i.i29, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i21, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i25
  %i.ca = icmp eq ptr %.19.i.i.i.i27, %i.t
  br i1 %i.ca, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 32
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !741 ; 2 uses
  %i.cd = icmp slt i32 %i.o, %i.cc
  br i1 %i.cd, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = icmp sgt i32 %i.o, %i.cc
  br i1 %i.ce, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !741 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i27, i64 40
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !741
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.n, %bb.l, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i27, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i27, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i27, %bb.l ], [ %.19.i.i.i.i27, %bb.n ]
  %i.cm = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(270352) %i.as) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 4 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !964 ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %bb.p, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.p:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 8, !range !788
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !1192
  %i.cu = load double, ptr %2, align 8, !tbaa !1192
  %i.cv = fcmp oeq double %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !964
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = load i8, ptr %i.cp, align 8, !range !788
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = select i1 %i.cz, i1 %i.db, i1 false
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cw, i8 0, i64 270336, i1 false)
  %i.de = load i32, ptr %i.j, align 4, !tbaa !741
  %i.df = load <2 x i32>, ptr %1, align 4, !tbaa !741
  %i.dg = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.de, i64 2
  %i.dh = shufflevector <2 x i32> %i.df, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = and <4 x i32> %i.di, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.dj, ptr %i.dd, align 8, !tbaa !741
  br i1 %i.dc, label %bb.s, label %vector.ph

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 266240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.dk, i8 -1, i64 4096, i1 false), !tbaa !1112
  br label %vector.ph

vector.ph:                                        ; preds = %bb.r, %bb.s
  %.pre.i31 = load double, ptr %i.cx, align 8, !tbaa !1192
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.pre.i31, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %broadcast.splat, ptr %i.dl, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dm, align 8, !tbaa !768
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x double> %broadcast.splat, ptr %i.do, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dp, align 8, !tbaa !768
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dr, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ds, align 8, !tbaa !768
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x double> %broadcast.splat, ptr %i.du, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dv, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.dw = icmp eq i64 %index.next.3, 32768
  br i1 %i.dw, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, label %vector.body, !llvm.loop !8248

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35: ; preds = %vector.body
  %i.dx = load ptr, ptr %i.cn, align 8, !tbaa !964 ; 3 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit, label %bb.t

bb.t:                                             ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.dx) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef 270352) #31
  br label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit35, %bb.t
  store ptr %i.cw, ptr %i.cn, align 8, !tbaa !964
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %.critedge.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %.0.ph = phi ptr [ %i.co, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit ], [ %i.cw, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8setChildERKSt17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEERS7_.exit ], [ %i.as, %bb.m ], [ %i.as, %bb.o ], [ %i.as, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %i.as, %.critedge.i ] ; 2 uses
  %i.dz = load i32, ptr %1, align 4, !tbaa !741
  %i.ea = and i32 %i.dz, -4096
  %i.eb = load i32, ptr %i.e, align 4, !tbaa !741
  %i.ec = and i32 %i.eb, -4096
end_hunk_5
begin_hunk_6_@_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EE4nextEj:bb.a

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph
  %i.s = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.d
  %.016.lcssa.i.i.i.i = phi i32 [ %i.f, %bb.d ], [ %i.s, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.p, %bb.d ], [ %i.r, %.critedge.loopexit.i.i.i.i ]
  %i.t = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.b, %bb.c, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ 32768, %bb.b ], [ %i.e, %bb.c ], [ %i.w, %.critedge.i.i.i.i ], [ 32768, %.lr.ph.i.i.i.i.preheader ], [ 32768, %.lr.ph.i.i.i.i ] ; 2 uses
  store i32 %.118.i.i.i.i, ptr %i.a, align 8, !tbaa !2364
  %i.x = icmp ne i32 %.118.i.i.i.i, 32768
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !3304
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 5 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !3305 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %i.ac) #32 ; 2 uses
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !3305
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.promoted.i.i.i.i = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 2 uses
  %.not2.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i, %i.ab
  br i1 %.not2.i.i.i.i, label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %bb.g, %bb.h
  %i.ae = phi ptr [ %i.ah, %bb.h ], [ %.promoted.i.i.i.i, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !964
  %.not1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not1.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i2
  %i.ah = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %i.ae) #32 ; 3 uses
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !3305
  %.not.i.i.i.i3 = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i3, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i2, !llvm.loop !309

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i2
  %i.ai = phi ptr [ %i.ab, %bb.h ], [ %i.ae, %.lr.ph.i.i.i.i2 ]
  %i.aj = icmp ne ptr %i.ai, %i.ab
  br label %_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit

_ZN7openvdb5v13_04tree12IterListItemINS2_INS2_INS2_INS1_16LeafIteratorBaseINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS6_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEENSB_9ChildIterISB_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENSB_10NodeStructEEENSB_11ChildOnPredESA_EEE8PrevItemENS0_8TypeListIJS8_S9_SA_SB_EEELm4ELj0EEENSQ_IJS9_SA_SB_EEELm3ELj1EEENSQ_IJSA_SB_EEELm2ELj2EEENSQ_IJSB_EEELm1ELj3EE4nextEj.exit: ; preds = %bb.a, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i, %bb.g, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit
  %i.ak = phi i1 [ %i.x, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj5EEEEENS1_12InternalNodeINS8_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4nextEv.exit ], [ false, %bb.a ], [ %i.aj, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE8BaseIterIS8_St17_Rb_tree_iteratorISt4pairIKNS0_4math5CoordENS8_10NodeStructEEENS8_11ChildOnPredEE9incrementEv.exit.loopexit.i.i ], [ false, %bb.g ]
  ret i1 %i.ak
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %6 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !741
  %i.d = load i32, ptr %i.b, align 8, !tbaa !741
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !741
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !741
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !741
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !741
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !813  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !741  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !741 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !741
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !741 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !741 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !741
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not37 = icmp eq i32 %1, 3
  br i1 %.not37, label %.lr.ph.i.i.i.i51, label %vector.ph113

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not3788 = icmp eq i32 %1, 3
  br i1 %.not3788, label %.thread, label %vector.ph113

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !1192
  store double %i.au, ptr %6, align 8, !tbaa !1202
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !1203
  br label %.critedge.i66

vector.ph113:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %i.k, align 4, !tbaa !741
  %i.az = load <2 x i32>, ptr %2, align 4, !tbaa !741
  %i.ba = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ay, i64 2
  %i.bb = shufflevector <2 x i32> %i.az, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bc = shufflevector <4 x i32> %i.bb, <4 x i32> %i.ba, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bd = and <4 x i32> %i.bc, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.bd, ptr %i.ax, align 8, !tbaa !741
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %7 = load <2 x double>, ptr %i.be, align 8
  %broadcast.splat115 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph113
  %index117 = phi i64 [ 0, %vector.ph113 ], [ %index.next118.3, %vector.body116 ] ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %broadcast.splat115, ptr %i.bf, align 8, !tbaa !768
  store <2 x double> %broadcast.splat115, ptr %i.bg, align 8, !tbaa !768
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store <2 x double> %broadcast.splat115, ptr %i.bi, align 8, !tbaa !768
  store <2 x double> %broadcast.splat115, ptr %i.bj, align 8, !tbaa !768
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 80
  store <2 x double> %broadcast.splat115, ptr %i.bl, align 8, !tbaa !768
  store <2 x double> %broadcast.splat115, ptr %i.bm, align 8, !tbaa !768
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index117 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 96
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  store <2 x double> %broadcast.splat115, ptr %i.bo, align 8, !tbaa !768
  store <2 x double> %broadcast.splat115, ptr %i.bp, align 8, !tbaa !768
  %index.next118.3 = add nuw nsw i64 %index117, 16 ; 2 uses
  %i.bq = icmp eq i64 %index.next118.3, 32768
  br i1 %i.bq, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body116, !llvm.loop !8395

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body116
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i39 = icmp eq ptr %i.br, null
  br i1 %.not12.i.i.i.i39, label %.critedge.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %.014.i.i.i.i41 = phi ptr [ %.1.i.i.i.i47, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.br, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i42 = phi ptr [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !741 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.p
  br i1 %i.bu, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i40
  %i.bv = icmp sgt i32 %i.bt, %i.p
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !741 ; 2 uses
  %i.by = icmp slt i32 %i.bx, %i.q
  br i1 %i.by, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = icmp sgt i32 %i.bx, %i.q
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43: ; preds = %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 40
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !741
  %i.cc = icmp slt i32 %i.cb, %i.r
  br i1 %i.cc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.k, %.lr.ph.i.i.i.i40
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43, %bb.l, %bb.j
  %.sink.i.i.i.i45 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ]
  %.19.i.i.i.i46 = phi ptr [ %.0813.i.i.i.i42, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i49 ], [ %.014.i.i.i.i41, %bb.l ], [ %.014.i.i.i.i41, %bb.j ], [ %.014.i.i.i.i41, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i43 ] ; 9 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i41, i64 %.sink.i.i.i.i45
  %.1.i.i.i.i47 = load ptr, ptr %i.cd, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %.1.i.i.i.i47, null
  br i1 %.not.i.i.i.i48, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i40, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i44
  %i.ce = icmp eq ptr %.19.i.i.i.i46, %i.u
  br i1 %i.ce, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 32
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !741 ; 2 uses
  %i.ch = icmp slt i32 %i.p, %i.cg
  br i1 %i.ch, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = icmp sgt i32 %i.p, %i.cg
  br i1 %i.ci, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 36
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !741 ; 2 uses
  %i.cl = icmp slt i32 %i.q, %i.ck
  br i1 %i.cl, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp sgt i32 %i.q, %i.ck
  br i1 %i.cm, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i46, i64 40
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !741
  %i.cp = icmp slt i32 %i.r, %i.co
  br i1 %i.cp, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i46, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i46, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i46, %bb.m ], [ %.19.i.i.i.i46, %bb.o ]
  %i.cq = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE7addTileEjRKNS0_4math5CoordERKdb(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4)
  br label %bb.ae

.lr.ph.i.i.i.i51:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.cr = zext i1 %4 to i8
  %i.cs = load double, ptr %3, align 8, !tbaa !1192
  store double %i.cs, ptr %6, align 8, !tbaa !1202
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %i.cr, ptr %i.ct, align 8, !tbaa !1203
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, %.lr.ph.i.i.i.i51
  %.014.i.i.i.i52 = phi ptr [ %i.t, %.lr.ph.i.i.i.i51 ], [ %.1.i.i.i.i58, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ] ; 7 uses
  %.0813.i.i.i.i53 = phi ptr [ %i.u, %.lr.ph.i.i.i.i51 ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 32
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !741 ; 2 uses
  %i.cw = icmp slt i32 %i.cv, %i.p
  br i1 %i.cw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = icmp sgt i32 %i.cv, %i.p
  br i1 %i.cx, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 36
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !741 ; 2 uses
  %i.da = icmp slt i32 %i.cz, %i.q
  br i1 %i.da, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = icmp sgt i32 %i.cz, %i.q
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54: ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 40
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !741
  %i.de = icmp slt i32 %i.dd, %i.r
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54, %bb.t, %bb.r
  %.sink.i.i.i.i56 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ]
  %.19.i.i.i.i57 = phi ptr [ %.0813.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i68 ], [ %.014.i.i.i.i52, %bb.t ], [ %.014.i.i.i.i52, %bb.r ], [ %.014.i.i.i.i52, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i54 ] ; 9 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i52, i64 %.sink.i.i.i.i56
  %.1.i.i.i.i58 = load ptr, ptr %i.df, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i59 = icmp eq ptr %.1.i.i.i.i58, null
  br i1 %.not.i.i.i.i59, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60, label %bb.q, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i55
  %i.dg = icmp eq ptr %.19.i.i.i.i57, %i.u
  br i1 %i.dg, label %.critedge.i66, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %i.dh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 32
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !741 ; 2 uses
  %i.dj = icmp slt i32 %i.p, %i.di
  br i1 %i.dj, label %.critedge.i66, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp sgt i32 %i.p, %i.di
  br i1 %i.dk, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 36
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !741 ; 2 uses
  %i.dn = icmp slt i32 %i.q, %i.dm
  br i1 %i.dn, label %.critedge.i66, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = icmp sgt i32 %i.q, %i.dm
  br i1 %i.do, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61: ; preds = %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i57, i64 40
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !741
  %i.dr = icmp slt i32 %i.r, %i.dq
  br i1 %i.dr, label %.critedge.i66, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i66:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60
  %.08.lcssa.i.i.i20.i67 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i57, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61 ], [ %.19.i.i.i.i57, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i60 ], [ %.19.i.i.i.i57, %bb.u ], [ %.19.i.i.i.i57, %bb.w ]
  %i.ds = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i67, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(9) %6) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.v, %bb.x, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i61, %.critedge.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.ae

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.i, %bb.g, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 5 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !964 ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE12readTopologyERSib:bb.a
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #33
  unreachable

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.sroa.01.05.i = phi ptr [ %i.t, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !966  ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  tail call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EED2Ev(ptr noundef nonnull align 8 dead_on_return(270352) dereferenceable(270352) %i.r) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 270352) #31
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.t = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.01.05.i) #32 ; 2 uses
  %.not.i = icmp eq ptr %i.t, %i.l
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !302

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit: ; preds = %._crit_edge.i
  store ptr null, ptr %i.m, align 8, !tbaa !813
  store ptr %i.l, ptr %i.j, align 8, !tbaa !814
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.l, ptr %i.u, align 8, !tbaa !815
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !816
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef 8) ; 0 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !743
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa
  tail call void @_ZN7openvdb5v13_02io25setGridBackgroundValuePtrERSt8ios_basePKv(ptr noundef nonnull align 8 dereferenceable(216) %i.ab, ptr noundef nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !741
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 4) ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 4) ; 0 uses
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !741
  %i.af = icmp ne i32 %i.ae, 0                    ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond.not = select i1 %i.af, i1 true, i1 %i.ah ; 2 uses
  br i1 %or.cond.not, label %bb.e, label %bb.u

bb.e:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  br i1 %i.af, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.preheader.loopexit:                              ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !741
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %i.an = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.ag, %bb.e ]
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %vector.ph

bb.f:                                             ; preds = %.lr.ph, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02345 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.as = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.at = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 8) ; 0 uses
  %i.au = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.av = load i32, ptr %i.c, align 8, !tbaa !741 ; 5 uses
  store i32 %i.av, ptr %3, align 4, !tbaa !741
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !741 ; 5 uses
  store i32 %i.aw, ptr %i.ai, align 4, !tbaa !741
  %i.ax = load i32, ptr %i.al, align 8, !tbaa !741 ; 3 uses
  store i32 %i.ax, ptr %i.ak, align 4, !tbaa !741
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ay = load i8, ptr %i.e, align 1, !tbaa !807, !range !788, !noundef !789
  %i.az = load double, ptr %i.d, align 8, !tbaa !1192
  store double %i.az, ptr %4, align 8, !tbaa !1202
  store i8 %i.ay, ptr %i.am, align 8, !tbaa !1203
  %i.ba = load ptr, ptr %i.m, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not12.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.ba, %bb.f ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.l, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !741 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.av
  br i1 %i.bd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.be = icmp sgt i32 %i.bc, %i.av
  br i1 %i.be, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !741 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %i.aw
  br i1 %i.bh, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = icmp sgt i32 %i.bg, %i.aw
  br i1 %i.bi, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !741
  %i.bl = icmp slt i32 %i.bk, %i.ax
  br i1 %i.bl, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.bn = icmp eq ptr %.19.i.i.i.i, %i.l
  br i1 %i.bn, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !741 ; 2 uses
  %i.bq = icmp slt i32 %i.av, %i.bp
  br i1 %i.bq, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = icmp sgt i32 %i.av, %i.bp
  br i1 %i.br, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !741 ; 2 uses
  %i.bu = icmp slt i32 %i.aw, %i.bt
  br i1 %i.bu, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp sgt i32 %i.aw, %i.bt
  br i1 %i.bv, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !741
  %i.by = icmp slt i32 %i.ax, %i.bx
  br i1 %i.by, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.l, %bb.j, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %bb.f
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.l, %bb.f ], [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i, %bb.j ], [ %.19.i.i.i.i, %bb.l ]
  %i.bz = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_NSD_4TileEEEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(9) %4) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.k, %bb.m, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ca = add nuw i32 %.02345, 1                  ; 2 uses
  %i.cb = load i32, ptr %i.a, align 4, !tbaa !741
  %i.cc = icmp ult i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.f, label %.preheader.loopexit, !llvm.loop !9052

._crit_edge:                                      ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.u

vector.ph:                                        ; preds = %.lr.ph47, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit
  %.02446 = phi i32 [ 0, %.lr.ph47 ], [ %i.eb, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit ]
  %i.cd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 12) ; 0 uses
  %i.ce = load i32, ptr %i.ap, align 8, !tbaa !741
  %i.cf = load <2 x i32>, ptr %i.c, align 8, !tbaa !741
  %i.cg = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cg, i8 0, i64 270336, i1 false)
  %i.ci = insertelement <4 x i32> <i32 poison, i32 poison, i32 poison, i32 -1>, i32 %i.ce, i64 2
  %i.cj = shufflevector <2 x i32> %i.cf, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x i32> %i.cj, <4 x i32> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cl = and <4 x i32> %i.ck, <i32 -4096, i32 -4096, i32 -4096, i32 0>
  store <4 x i32> %i.cl, ptr %i.ch, align 8, !tbaa !741
  %6 = load <2 x double>, ptr %i.w, align 8
  %broadcast.splat = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cm, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.cn, align 8, !tbaa !768
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  store <2 x double> %broadcast.splat, ptr %i.cp, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.cq, align 8, !tbaa !768
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  store <2 x double> %broadcast.splat, ptr %i.cs, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.ct, align 8, !tbaa !768
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 96
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  store <2 x double> %broadcast.splat, ptr %i.cv, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.cw, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.cx = icmp eq i64 %index.next.3, 32768
  br i1 %i.cx, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !9053

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.cy = load i32, ptr %i.c, align 8, !tbaa !741 ; 5 uses
  store i32 %i.cy, ptr %5, align 4, !tbaa !741
  %i.cz = load i32, ptr %i.ao, align 4, !tbaa !741 ; 5 uses
  store i32 %i.cz, ptr %i.aq, align 4, !tbaa !741
  %i.da = load i32, ptr %i.ap, align 8, !tbaa !741 ; 3 uses
  store i32 %i.da, ptr %i.ar, align 4, !tbaa !741
  %i.db = load ptr, ptr %i.m, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i26 = icmp eq ptr %i.db, null
  br i1 %.not12.i.i.i.i26, label %.critedge.i42, label %.lr.ph.i.i.i.i27

.lr.ph.i.i.i.i27:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %.014.i.i.i.i28 = phi ptr [ %.1.i.i.i.i34, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.db, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i29 = phi ptr [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31 ], [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 32
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !741 ; 2 uses
  %i.de = icmp slt i32 %i.dd, %i.cy
  br i1 %i.de, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i27
  %i.df = icmp sgt i32 %i.dd, %i.cy
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 36
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !741 ; 2 uses
  %i.di = icmp slt i32 %i.dh, %i.cz
  br i1 %i.di, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = icmp sgt i32 %i.dh, %i.cz
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30: ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 40
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !741
  %i.dm = icmp slt i32 %i.dl, %i.da
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.o, %.lr.ph.i.i.i.i27
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30, %bb.p, %bb.n
  %.sink.i.i.i.i32 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ]
  %.19.i.i.i.i33 = phi ptr [ %.0813.i.i.i.i29, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i44 ], [ %.014.i.i.i.i28, %bb.p ], [ %.014.i.i.i.i28, %bb.n ], [ %.014.i.i.i.i28, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i30 ] ; 9 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i28, i64 %.sink.i.i.i.i32
  %.1.i.i.i.i34 = load ptr, ptr %i.dn, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i35 = icmp eq ptr %.1.i.i.i.i34, null
  br i1 %.not.i.i.i.i35, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, label %.lr.ph.i.i.i.i27, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i31
  %i.do = icmp eq ptr %.19.i.i.i.i33, %i.l
  br i1 %i.do, label %.critedge.i42, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 32
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !741 ; 2 uses
  %i.dr = icmp slt i32 %i.cy, %i.dq
  br i1 %i.dr, label %.critedge.i42, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ds = icmp sgt i32 %i.cy, %i.dq
  br i1 %i.ds, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dt = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 36
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !741 ; 2 uses
  %i.dv = icmp slt i32 %i.cz, %i.du
  br i1 %i.dv, label %.critedge.i42, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = icmp sgt i32 %i.cz, %i.du
  br i1 %i.dw, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37: ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i33, i64 40
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !741
  %i.dz = icmp slt i32 %i.da, %i.dy
  br i1 %i.dz, label %.critedge.i42, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i42:                                    ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i43 = phi ptr [ %i.l, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ENS0_13PartialCreateERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i33, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37 ], [ %.19.i.i.i.i33, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i36 ], [ %.19.i.i.i.i33, %bb.q ], [ %.19.i.i.i.i33, %bb.s ]
  %i.ea = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJS3_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i43, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(270352) %i.cg) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.r, %bb.t, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i37, %.critedge.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.eb = add nuw i32 %.02446, 1                  ; 2 uses
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !741
  %i.ed = icmp ult i32 %i.eb, %i.ec
  br i1 %i.ed, label %vector.ph, label %._crit_edge, !llvm.loop !9054

bb.u:                                             ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE5clearEv.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i1 %or.cond.not
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE12readTopologyERSib(ptr noundef nonnull align 8 dereferenceable(270352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>::ChildIter", align 8 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !743
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c
  tail call void @_ZN7openvdb5v13_02io18checkFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.d)
  %i.e = load ptr, ptr %1, align 8, !tbaa !743
  %i.f = getelementptr i8, ptr %i.e, i64 -24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.h)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !743
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = tail call noundef ptr @_ZN7openvdb5v13_02io25getGridBackgroundValuePtrERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.m)
  %i.o = load double, ptr %i.n, align 8, !tbaa !1192
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.p = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 262144 ; 10 uses
  %i.r = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.q, i64 noundef 4096) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 266240 ; 2 uses
  %i.t = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i64 noundef 4096) ; 0 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !743
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = tail call noundef i32 @_ZN7openvdb5v13_02io16getFormatVersionERSt8ios_base(ptr noundef nonnull align 8 dereferenceable(216) %i.x)
  %i.z = icmp ult i32 %i.y, 222                   ; 2 uses
  br i1 %i.z, label %vector.body, label %bb.d

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.ag, %vector.body ], [ zeroinitializer, %bb.c ]
  %vec.phi201 = phi <2 x i32> [ %i.ah, %vector.body ], [ zeroinitializer, %bb.c ]
  %i.aa = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.q, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !1112
  %wide.load202 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !1112
  %i.ac = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.ad = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load202)
  %i.ae = trunc nuw nsw <2 x i64> %i.ac to <2 x i32>
  %i.af = trunc nuw nsw <2 x i64> %i.ad to <2 x i32>
  %i.ag = add <2 x i32> %vec.phi, %i.ae           ; 2 uses
  %i.ah = add <2 x i32> %vec.phi201, %i.af        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, 512
  br i1 %i.ai, label %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit, label %vector.body, !llvm.loop !9055

_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit: ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  %i.ak = sub i32 32768, %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit
  %i.al = phi i32 [ %i.ak, %_ZNK7openvdb5v13_04util8NodeMaskILj5EE8countOffEv.exit ], [ 32768, %bb.c ] ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.an) #30 ; 5 uses
  invoke void @_ZN7openvdb5v13_02io20readCompressedValuesIdNS0_4util8NodeMaskILj5EEEEEvRSiPT_jRKT0_b(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ao, i32 noundef %i.al, ptr noundef nonnull align 8 dereferenceable(4096) %i.s, i1 noundef zeroext %2)
          to label %bb.e unwind label %_ZNSt10unique_ptrIA_dSt14default_deleteIS0_EED2Ev.exit56

end_hunk_7
begin_hunk_8_@_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE4fillERKNS0_4math9CoordBBoxERKdb:bb.a
  %i.y = phi i32 [ %i.ai, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 6 uses
  %i.z = phi i32 [ %i.aj, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 2 uses
  %i.aa = phi i32 [ %i.ak, %._crit_edge144 ], [ %i.m, %.lr.ph148.split.preheader ] ; 3 uses
  %i.ab = phi i32 [ %i.al, %._crit_edge144 ], [ %i.m, %.lr.ph148.split.preheader ] ; 3 uses
  %i.ac = phi i32 [ %i.am, %._crit_edge144 ], [ %i.h, %.lr.ph148.split.preheader ] ; 2 uses
  %.0147 = phi i32 [ %i.an, %._crit_edge144 ], [ %i.a, %.lr.ph148.split.preheader ] ; 9 uses
  %.sroa.097.0146 = phi i64 [ %.sroa.097.1.lcssa, %._crit_edge144 ], [ 0, %.lr.ph148.split.preheader ] ; 4 uses
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !741 ; 2 uses
  %.not42139 = icmp sgt i32 %i.ad, %i.ac
  br i1 %.not42139, label %._crit_edge144, label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph148.split
  %i.ae = and i32 %.0147, -4096                   ; 2 uses
  %i.af = load i32, ptr %i.j, align 4, !tbaa !741
  %i.ag = icmp sgt i32 %i.af, %i.ab
  br i1 %i.ag, label %.lr.ph143.split.us, label %.lr.ph143.split.preheader

.lr.ph143.split.preheader:                        ; preds = %.lr.ph143
  %.sroa.0.0.insert.ext.i12.i.i = zext i32 %.0147 to i64
  br label %.lr.ph143.split

.lr.ph143.split.us:                               ; preds = %.lr.ph143
  %.sroa.097.4.extract.shift.us = lshr i64 %.sroa.097.0146, 32
  %.sroa.097.4.extract.trunc.us = trunc nuw i64 %.sroa.097.4.extract.shift.us to i32
  %.not42.us.not = icmp sle i32 %i.y, %.sroa.097.4.extract.trunc.us
  call void @llvm.assume(i1 %.not42.us.not)
  br label %._crit_edge144

._crit_edge144.loopexit:                          ; preds = %bb.c
  %.pre158 = load i32, ptr %i.b, align 4, !tbaa !741
  br label %._crit_edge144

._crit_edge144:                                   ; preds = %.lr.ph143.split.us, %._crit_edge144.loopexit, %.lr.ph148.split
  %i.ah = phi i32 [ %i.x, %.lr.ph148.split ], [ %i.x, %.lr.ph143.split.us ], [ %.pre158, %._crit_edge144.loopexit ] ; 2 uses
  %i.ai = phi i32 [ %i.y, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.at, %._crit_edge144.loopexit ]
  %i.aj = phi i32 [ %i.z, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.au, %._crit_edge144.loopexit ]
  %i.ak = phi i32 [ %i.aa, %.lr.ph148.split ], [ %i.aa, %.lr.ph143.split.us ], [ %i.av, %._crit_edge144.loopexit ]
  %i.al = phi i32 [ %i.ab, %.lr.ph148.split ], [ %i.ab, %.lr.ph143.split.us ], [ %i.av, %._crit_edge144.loopexit ]
  %i.am = phi i32 [ %i.ac, %.lr.ph148.split ], [ %i.y, %.lr.ph143.split.us ], [ %i.au, %._crit_edge144.loopexit ]
  %.sroa.097.1.lcssa = phi i64 [ %.sroa.097.0146, %.lr.ph148.split ], [ %.sroa.097.0146, %.lr.ph143.split.us ], [ %.sroa.097.2.lcssa, %._crit_edge144.loopexit ] ; 2 uses
  %.sroa.097.0.extract.trunc = trunc i64 %.sroa.097.1.lcssa to i32 ; 2 uses
  %i.an = add nsw i32 %.sroa.097.0.extract.trunc, 1
  %.not.not = icmp sgt i32 %i.ah, %.sroa.097.0.extract.trunc
  br i1 %.not.not, label %.lr.ph148.split, label %_ZNK7openvdb5v13_04math9CoordBBox5emptyEv.exit.thread, !llvm.loop !9187

.lr.ph143.split:                                  ; preds = %.lr.ph143.split.preheader, %bb.c
  %i.ao = phi i32 [ %i.at, %bb.c ], [ %i.y, %.lr.ph143.split.preheader ]
  %i.ap = phi i32 [ %i.au, %bb.c ], [ %i.z, %.lr.ph143.split.preheader ]
  %i.aq = phi i32 [ %i.av, %bb.c ], [ %i.aa, %.lr.ph143.split.preheader ] ; 3 uses
  %.037141 = phi i32 [ %i.aw, %bb.c ], [ %i.ad, %.lr.ph143.split.preheader ] ; 8 uses
  %.sroa.097.1140 = phi i64 [ %.sroa.097.2.lcssa, %bb.c ], [ %.sroa.097.0146, %.lr.ph143.split.preheader ]
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !741 ; 2 uses
  %.not43134 = icmp sgt i32 %i.ar, %i.aq
  br i1 %.not43134, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph143.split
  %i.as = and i32 %.037141, -4096                 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aw
  %.sroa.2.0.insert.ext.i.i.le = zext i32 %i.bi to i64
  %.sroa.2.0.insert.shift.i.i.le = shl nuw i64 %.sroa.2.0.insert.ext.i.i.le, 32
  %.sroa.0.0.insert.ext.i.i.le = zext i32 %i.bh to i64
  %.sroa.0.0.insert.insert.i.i.le = or disjoint i64 %.sroa.2.0.insert.shift.i.i.le, %.sroa.0.0.insert.ext.i.i.le
  %.pre = load i32, ptr %i.g, align 4, !tbaa !741 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.lr.ph143.split
  %i.at = phi i32 [ %.pre, %._crit_edge ], [ %i.ao, %.lr.ph143.split ] ; 2 uses
  %i.au = phi i32 [ %.pre, %._crit_edge ], [ %i.ap, %.lr.ph143.split ] ; 4 uses
  %i.av = phi i32 [ %i.ix, %._crit_edge ], [ %i.aq, %.lr.ph143.split ] ; 3 uses
  %.sroa.097.2.lcssa = phi i64 [ %.sroa.0.0.insert.insert.i.i.le, %._crit_edge ], [ %.sroa.097.1140, %.lr.ph143.split ] ; 3 uses
  %.sroa.097.4.extract.shift = lshr i64 %.sroa.097.2.lcssa, 32
  %.sroa.097.4.extract.trunc = trunc nuw i64 %.sroa.097.4.extract.shift to i32 ; 2 uses
  %i.aw = add nsw i32 %.sroa.097.4.extract.trunc, 1
  %.not42.not = icmp sgt i32 %i.au, %.sroa.097.4.extract.trunc
  br i1 %.not42.not, label %.lr.ph143.split, label %._crit_edge144.loopexit, !llvm.loop !9188

bb.d:                                             ; preds = %.lr.ph, %bb.aw
  %i.ax = phi i32 [ %i.aq, %.lr.ph ], [ %i.ix, %bb.aw ]
  %.038135 = phi i32 [ %i.ar, %.lr.ph ], [ %i.iw, %bb.aw ] ; 8 uses
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !741
  %i.az = sub nsw i32 %.0147, %i.ay               ; 2 uses
  %i.ba = load i32, ptr %i.p, align 4, !tbaa !741
  %i.bb = sub nsw i32 %.037141, %i.ba             ; 2 uses
  %i.bc = load i32, ptr %i.q, align 8, !tbaa !741
  %i.bd = sub nsw i32 %.038135, %i.bc             ; 2 uses
  %i.be = and i32 %i.az, -4096                    ; 10 uses
  %i.bf = and i32 %i.bb, -4096                    ; 10 uses
  %i.bg = and i32 %i.bd, -4096                    ; 6 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.bf to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32 ; 2 uses
  %i.bh = or i32 %i.az, 4095                      ; 3 uses
  %i.bi = or i32 %i.bb, 4095                      ; 3 uses
  %i.bj = or i32 %i.bd, 4095                      ; 4 uses
  %i.bk = icmp ne i32 %.0147, %i.be
  %i.bl = icmp ne i32 %.037141, %i.bf
  %or.cond.not128 = or i1 %i.bk, %i.bl
  %i.bm = icmp ne i32 %.038135, %i.bg
  %or.cond123 = select i1 %or.cond.not128, i1 true, i1 %i.bm
  br i1 %or.cond123, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !741
  %i.bo = icmp slt i32 %i.bn, %i.bh
  br i1 %i.bo, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !741
  %i.bq = icmp slt i32 %i.bp, %i.bi
  %i.br = icmp slt i32 %i.ax, %i.bj
  %or.cond124 = select i1 %i.bq, i1 true, i1 %i.br
  br i1 %or.cond124, label %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, label %bb.af

_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread: ; preds = %bb.e, %bb.f, %bb.d
  %i.bs = load ptr, ptr %i.s, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.bs, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !741 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %i.be
  br i1 %i.bv, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bw = icmp sgt i32 %i.bu, %i.be
  br i1 %i.bw, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !741 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.bf
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = icmp sgt i32 %i.by, %i.bf
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !741
  %i.cd = icmp slt i32 %i.cc, %i.bg
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.i, %bb.g
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.i ], [ 16, %bb.g ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.i ], [ %.014.i.i.i.i, %bb.g ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ce, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.cf, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !741 ; 2 uses
  %i.ci = icmp slt i32 %i.be, %i.ch
  br i1 %i.ci, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp sgt i32 %i.be, %i.ch
  br i1 %i.cj, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !741 ; 2 uses
  %i.cm = icmp slt i32 %i.bf, %i.cl
  br i1 %i.cm, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = icmp sgt i32 %i.bf, %i.cl
  br i1 %i.cn, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !741
  %i.cq = icmp slt i32 %i.bg, %i.cp
  br i1 %i.cq, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.l, %bb.j, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, %_ZNK7openvdb5v13_04math5CoordneERKS2_.exit.thread
  %i.cr = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 15 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.cr, i8 0, i64 270336, i1 false)
  %i.ct = and i32 %.038135, -4096
  store i32 %i.ae, ptr %i.cs, align 8, !tbaa !741
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 270340
  store i32 %i.as, ptr %i.cu, align 4, !tbaa !741
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 270344
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !741
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cr, i64 270348
  store i32 0, ptr %i.cw, align 4, !tbaa !3240
  %5 = load <2 x double>, ptr %i.r, align 8
  %broadcast.splat = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %index = phi i64 [ 0, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread ], [ %index.next.3, %vector.body ] ; 5 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x double> %broadcast.splat, ptr %i.cx, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.cy, align 8, !tbaa !768
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store <2 x double> %broadcast.splat, ptr %i.da, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.db, align 8, !tbaa !768
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  store <2 x double> %broadcast.splat, ptr %i.dd, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.de, align 8, !tbaa !768
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 112
  store <2 x double> %broadcast.splat, ptr %i.dg, align 8, !tbaa !768
  store <2 x double> %broadcast.splat, ptr %i.dh, align 8, !tbaa !768
  %index.next.3 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.di = icmp eq i64 %index.next.3, 32768
  br i1 %i.di, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body, !llvm.loop !9189

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body
  %i.dj = load ptr, ptr %i.s, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i46 = icmp eq ptr %i.dj, null
  br i1 %.not12.i.i.i.i46, label %.critedge.i, label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %.014.i.i.i.i48 = phi ptr [ %.1.i.i.i.i54, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.dj, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i49 = phi ptr [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51 ], [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 32
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !741 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, %i.be
  br i1 %i.dm, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.dn = icmp sgt i32 %i.dl, %i.be
  br i1 %i.dn, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 36
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !741 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %i.bf
  br i1 %i.dq, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = icmp sgt i32 %i.dp, %i.bf
  br i1 %i.dr, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50: ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 40
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !741
  %i.du = icmp slt i32 %i.dt, %i.bg
  br i1 %i.du, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.o, %.lr.ph.i.i.i.i47
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50, %bb.p, %bb.n
  %.sink.i.i.i.i52 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ 16, %bb.p ], [ 16, %bb.n ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ]
  %.19.i.i.i.i53 = phi ptr [ %.0813.i.i.i.i49, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i56 ], [ %.014.i.i.i.i48, %bb.p ], [ %.014.i.i.i.i48, %bb.n ], [ %.014.i.i.i.i48, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i50 ] ; 9 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i48, i64 %.sink.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %i.dv, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i47, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i51
  %i.dw = icmp eq ptr %.19.i.i.i.i53, %i.t
  br i1 %i.dw, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !741 ; 2 uses
  %i.dz = icmp slt i32 %i.be, %i.dy
  br i1 %i.dz, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = icmp sgt i32 %i.be, %i.dy
  br i1 %i.ea, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !741 ; 2 uses
  %i.ed = icmp slt i32 %i.bf, %i.ec
  br i1 %i.ed, label %.critedge.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ee = icmp sgt i32 %i.bf, %i.ec
  br i1 %i.ee, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 40
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !741
  %i.eh = icmp slt i32 %i.bg, %i.eg
  br i1 %i.eh, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.s, %bb.q, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.t, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i53, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i53, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i53, %bb.q ], [ %.19.i.i.i.i53, %bb.s ]
  %i.ei = call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #30 ; 9 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 3 uses
  %.sroa.080.sroa.0.0.insert.ext = zext i32 %i.be to i64
  %.sroa.080.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.080.sroa.0.0.insert.ext
  store i64 %.sroa.080.sroa.0.0.insert.insert, ptr %i.ej, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 40 ; 2 uses
  store i32 %i.bg, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !768
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store ptr %i.cr, ptr %i.ek, align 8, !tbaa !964
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 56
  store double 0.000000e+00, ptr %i.el, align 8, !tbaa !1202
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store i8 0, ptr %i.em, align 8, !tbaa !1203
  %i.en = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISF_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ej)
          to label %bb.u unwind label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ; 2 uses

bb.u:                                             ; preds = %.critedge.i
  %i.eo = extractvalue { ptr, ptr } %i.en, 1      ; 6 uses
  %.not.i = icmp eq ptr %i.eo, null
  br i1 %.not.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ep = extractvalue { ptr, ptr } %i.en, 0
  %.not.i.i.i = icmp ne ptr %i.ep, null
  %i.eq = icmp eq ptr %i.eo, %i.t
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.eq
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.es = load i32, ptr %i.ej, align 8, !tbaa !741 ; 2 uses
  %i.et = load i32, ptr %i.er, align 4, !tbaa !741 ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = icmp sgt i32 %i.es, %i.et
  br i1 %i.ev, label %.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 36
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !741 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 36
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !741 ; 2 uses
  %i.fa = icmp slt i32 %i.ex, %i.ez
  br i1 %i.fa, label %.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = icmp sgt i32 %i.ex, %i.ez
  br i1 %i.fb, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = load i32, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !741
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !741
  %i.ff = icmp slt i32 %i.fc, %i.fe
  br label %.thread.i

.thread.i:                                        ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.fg = phi i1 [ false, %bb.z ], [ true, %bb.v ], [ true, %bb.w ], [ false, %bb.x ], [ true, %bb.y ], [ %i.ff, %bb.aa ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.fg, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.eo, ptr noundef nonnull align 8 dereferenceable(32) %i.t) #24
  %i.fh = load i64, ptr %i.u, align 8, !tbaa !816
  %i.fi = add i64 %i.fh, 1
  store i64 %i.fi, ptr %i.u, align 8, !tbaa !816
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

common.resume:                                    ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i
  %.lcssa.sink = phi ptr [ %i.hp, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64 ], [ %i.ei, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.iq, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i64 ], [ %i.fj, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa.sink, i64 noundef 72) #31
  resume { ptr, i32 } %common.resume.op

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE10_Auto_nodeD2Ev.exit.i: ; preds = %.critedge.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.ab:                                            ; preds = %bb.u
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef 72) #31
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit: ; preds = %bb.m, %bb.k, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 48 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !964 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.ac, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRS3_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

bb.ac:                                            ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 56
  %i.fo = call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 12 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 64
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !1203, !range !788, !noundef !789
  %i.fr = trunc nuw i8 %i.fq to i1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 270336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.fo, i8 0, i64 270336, i1 false)
  %i.ft = and i32 %.038135, -4096
  store i32 %i.ae, ptr %i.fs, align 8, !tbaa !741
end_hunk_8
begin_hunk_9_@_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_:bb.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 63
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit, label %.lr.ph, !llvm.loop !171

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i67 = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cv, %.lr.ph.i.i.i.i.i.preheader ]
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i67, 1 ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i.i.i.i.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !1112 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !171

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph
  %i.df = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.u
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.cs, %bb.u ], [ %i.df, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.dc, %bb.u ], [ %i.de, %.critedge.loopexit.i.i.i.i.i ]
  %i.dg = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.dh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.di = trunc nuw nsw i64 %i.dh to i32
  %i.dj = or disjoint i32 %i.dg, %i.di
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.t
  %.118.i.i.i.i.i = phi i32 [ %i.dj, %.critedge.i.i.i.i.i ], [ %i.cr, %bb.t ] ; 2 uses
  %.not.i52 = icmp eq i32 %.118.i.i.i.i.i, 4096
  br i1 %.not.i52, label %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit, label %.lr.ph.i

_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit: ; preds = %bb.s, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj4EEEEENS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i, %bb.l
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 33808) #31
  %.pre = load i64, ptr %i.r, align 8, !tbaa !1112
  br label %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit53

_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit53: ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit, %bb.k
  %i.dk = phi i64 [ %.pre, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EED2Ev.exit ], [ %i.s, %bb.k ]
  %i.dl = xor i64 %i.v, -1                        ; 2 uses
  %i.dm = and i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.r, align 8, !tbaa !1112
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 266240
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.q ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !1112 ; 2 uses
  %i.dq = or i64 %i.dp, %i.v
  %i.dr = and i64 %i.dp, %i.dl
  %.sink = select i1 %4, i64 %i.dq, i64 %i.dr
  store i64 %.sink, ptr %i.do, align 8, !tbaa !1112
  %i.ds = load double, ptr %3, align 8, !tbaa !1192
  store double %i.ds, ptr %i.bw, align 8, !tbaa !768
  br label %bb.v

bb.v:                                             ; preds = %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit, %_ZN7openvdb5v13_04tree12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEC2ERKNS0_4math5CoordERKdb.exit, %_ZN7openvdb5v13_04util8NodeMaskILj5EE3setEjb.exit53, %bb.j, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeIS8_EELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.openvdb::v13_0::math::Coord", align 8 ; 6 uses
  %7 = alloca %"struct.openvdb::v13_0::tree::RootNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::InternalNode<openvdb::v13_0::tree::LeafNode<double, 3>, 4>, 5>>::Tile", align 8 ; 8 uses
  %i.a = icmp ult i32 %1, 4
  br i1 %i.a, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %2, align 4, !tbaa !741    ; 2 uses
  %i.d = load i32, ptr %i.b, align 8, !tbaa !741
  %i.e = sub nsw i32 %i.c, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !741  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !741
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !741  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = load i32, ptr %i.m, align 8, !tbaa !741
  %i.o = sub nsw i32 %i.l, %i.n
  %i.p = and i32 %i.e, -4096                      ; 13 uses
  %i.q = and i32 %i.j, -4096                      ; 13 uses
  %i.r = and i32 %i.o, -4096                      ; 7 uses
  %.sroa.2.0.insert.ext.i10.i = zext i32 %i.q to i64
  %.sroa.2.0.insert.shift.i11.i = shl nuw i64 %.sroa.2.0.insert.ext.i10.i, 32
  %.sroa.0.0.insert.ext.i12.i = zext i32 %i.p to i64
  %.sroa.0.0.insert.insert.i13.i = or disjoint i64 %.sroa.2.0.insert.shift.i11.i, %.sroa.0.0.insert.ext.i12.i
  store i64 %.sroa.0.0.insert.insert.i13.i, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.r, ptr %.sroa.2.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !813  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %.not12.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not12.i.i.i.i, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  %.0813.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i ], [ %i.u, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !741  ; 2 uses
  %i.x = icmp slt i32 %i.w, %i.p
  br i1 %i.x, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.y = icmp sgt i32 %i.w, %i.p
  br i1 %i.y, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !741 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, %i.q
  br i1 %i.ab, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.aa, %i.q
  br i1 %i.ac, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !741
  %i.af = icmp slt i32 %i.ae, %i.r
  br i1 %i.af, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i, %bb.e, %bb.c
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ 16, %bb.e ], [ 16, %bb.c ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0813.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i ], [ %.014.i.i.i.i, %bb.e ], [ %.014.i.i.i.i, %bb.c ], [ %.014.i.i.i.i, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i ] ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !44

_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i
  %i.ah = icmp eq ptr %.19.i.i.i.i, %i.u
  br i1 %i.ah, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !741 ; 2 uses
  %i.ak = icmp slt i32 %i.p, %i.aj
  br i1 %i.ak, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = icmp sgt i32 %i.p, %i.aj
  br i1 %i.al, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !741 ; 2 uses
  %i.ao = icmp slt i32 %i.q, %i.an
  br i1 %i.ao, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp sgt i32 %i.q, %i.an
  br i1 %i.ap, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i: ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !741
  %i.as = icmp slt i32 %i.r, %i.ar
  br i1 %i.as, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread, label %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread: ; preds = %bb.h, %bb.f, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i, %_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE14_M_lower_boundEPSt13_Rb_tree_nodeISF_EPSt18_Rb_tree_node_baseRS5_.exit.i.i.i
  %.not50 = icmp eq i32 %1, 3
  br i1 %.not50, label %.lr.ph.i.i.i.i72, label %vector.ph146

_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread: ; preds = %bb.b
  %.not50121 = icmp eq i32 %1, 3
  br i1 %.not50121, label %.thread, label %vector.ph146

.thread:                                          ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.at = zext i1 %4 to i8
  %i.au = load double, ptr %3, align 8, !tbaa !1192
  store double %i.au, ptr %7, align 8, !tbaa !1202
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.at, ptr %i.av, align 8, !tbaa !1203
  br label %.critedge.i87

vector.ph146:                                     ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread.thread, %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  %i.aw = tail call noalias noundef nonnull dereferenceable(270352) ptr @_Znwm(i64 noundef 270352) #30 ; 12 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 270336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i8 0, i64 270336, i1 false)
  %i.ay = load i32, ptr %2, align 4, !tbaa !741
  %i.az = and i32 %i.ay, -4096                    ; 2 uses
  %i.ba = load i32, ptr %i.f, align 4, !tbaa !741
  %i.bb = and i32 %i.ba, -4096                    ; 2 uses
  %i.bc = load i32, ptr %i.k, align 4, !tbaa !741
  %i.bd = and i32 %i.bc, -4096                    ; 2 uses
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !741
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 270340
  store i32 %i.bb, ptr %i.be, align 4, !tbaa !741
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 270344
  store i32 %i.bd, ptr %i.bf, align 8, !tbaa !741
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 270348
  store i32 0, ptr %i.bg, align 4, !tbaa !3240
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %8 = load <2 x double>, ptr %i.bh, align 8
  %broadcast.splat148 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer ; 8 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index150 = phi i64 [ 0, %vector.ph146 ], [ %index.next151.3, %vector.body149 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index150 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <2 x double> %broadcast.splat148, ptr %i.bi, align 8, !tbaa !768
  store <2 x double> %broadcast.splat148, ptr %i.bj, align 8, !tbaa !768
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index150 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store <2 x double> %broadcast.splat148, ptr %i.bl, align 8, !tbaa !768
  store <2 x double> %broadcast.splat148, ptr %i.bm, align 8, !tbaa !768
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index150 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store <2 x double> %broadcast.splat148, ptr %i.bo, align 8, !tbaa !768
  store <2 x double> %broadcast.splat148, ptr %i.bp, align 8, !tbaa !768
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index150 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 112
  store <2 x double> %broadcast.splat148, ptr %i.br, align 8, !tbaa !768
  store <2 x double> %broadcast.splat148, ptr %i.bs, align 8, !tbaa !768
  %index.next151.3 = add nuw nsw i64 %index150, 16 ; 2 uses
  %i.bt = icmp eq i64 %index.next151.3, 32768
  br i1 %i.bt, label %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, label %vector.body149, !llvm.loop !9462

_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit: ; preds = %vector.body149
  %.sroa.2.0.insert.ext.i = zext i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.az to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bu, align 8
  %.sroa.4.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.bd, ptr %.sroa.4.0..sroa_idx.i57, align 8, !tbaa !768
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.aw, ptr %i.bv, align 8, !tbaa !1193
  %i.bw = load ptr, ptr %i.s, align 8, !tbaa !813 ; 2 uses
  %.not12.i.i.i.i58 = icmp eq ptr %i.bw, null
  br i1 %.not12.i.i.i.i58, label %.critedge.i, label %.lr.ph.i.i.i.i59

.lr.ph.i.i.i.i59:                                 ; preds = %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %.014.i.i.i.i60 = phi ptr [ %.1.i.i.i.i66, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.bw, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ] ; 7 uses
  %.0813.i.i.i.i61 = phi ptr [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63 ], [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !741 ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.p
  br i1 %i.bz, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i59
  %i.ca = icmp sgt i32 %i.by, %i.p
  br i1 %i.ca, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !741 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.q
  br i1 %i.cd, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = icmp sgt i32 %i.cc, %i.q
  br i1 %i.ce, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62: ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 40
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !741
  %i.ch = icmp slt i32 %i.cg, %i.r
  br i1 %i.ch, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.k, %.lr.ph.i.i.i.i59
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62, %bb.l, %bb.j
  %.sink.i.i.i.i64 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ 16, %bb.l ], [ 16, %bb.j ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ]
  %.19.i.i.i.i65 = phi ptr [ %.0813.i.i.i.i61, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i70 ], [ %.014.i.i.i.i60, %bb.l ], [ %.014.i.i.i.i60, %bb.j ], [ %.014.i.i.i.i60, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i62 ] ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i60, i64 %.sink.i.i.i.i64
  %.1.i.i.i.i66 = load ptr, ptr %i.ci, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %.1.i.i.i.i66, null
  br i1 %.not.i.i.i.i67, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, label %.lr.ph.i.i.i.i59, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i63
  %i.cj = icmp eq ptr %.19.i.i.i.i65, %i.u
  br i1 %i.cj, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 32
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !741 ; 2 uses
  %i.cm = icmp slt i32 %i.p, %i.cl
  br i1 %i.cm, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = icmp sgt i32 %i.p, %i.cl
  br i1 %i.cn, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !741 ; 2 uses
  %i.cq = icmp slt i32 %i.q, %i.cp
  br i1 %i.cq, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp sgt i32 %i.q, %i.cp
  br i1 %i.cr, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i: ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i65, i64 40
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !741
  %i.cu = icmp slt i32 %i.r, %i.ct
  br i1 %i.cu, label %.critedge.i, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %bb.o, %bb.m, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.u, %_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EEC2ERKNS0_4math5CoordERKdb.exit ], [ %.19.i.i.i.i65, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i ], [ %.19.i.i.i.i65, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i ], [ %.19.i.i.i.i65, %bb.m ], [ %.19.i.i.i.i65, %bb.o ]
  %i.cv = call ptr @_ZNSt8_Rb_treeIN7openvdb5v13_04math5CoordESt4pairIKS3_NS1_4tree8RootNodeINS6_12InternalNodeINS8_INS6_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructEESt10_Select1stISF_ESt4lessIS3_ESaISF_EE22_M_emplace_hint_uniqueIJRS5_RSC_EEESt17_Rb_tree_iteratorISF_ESt23_Rb_tree_const_iteratorISF_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20.i, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(270352) %i.aw) ; 0 uses
  br label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_RSA_EEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit: ; preds = %bb.n, %bb.p, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i, %.critedge.i
  call void @_ZN7openvdb5v13_04tree12InternalNodeINS2_INS1_8LeafNodeIdLj3EEELj4EEELj5EE15addTileAndCacheINS1_17ValueAccessorImplINS1_4TreeINS1_8RootNodeIS6_EEEELb1EvNS0_14index_sequenceIJLm0ELm1ELm2EEEEEEEEvjRKNS0_4math5CoordERKdbRT_(ptr noundef nonnull align 8 dereferenceable(270352) %i.aw, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(96) %5)
  br label %bb.ae

.lr.ph.i.i.i.i72:                                 ; preds = %_ZN7openvdb5v13_04tree8RootNodeINS1_12InternalNodeINS3_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEE7findKeyERKNS0_4math5CoordE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.cw = zext i1 %4 to i8
  %i.cx = load double, ptr %3, align 8, !tbaa !1192
  store double %i.cx, ptr %7, align 8, !tbaa !1202
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 %i.cw, ptr %i.cy, align 8, !tbaa !1203
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, %.lr.ph.i.i.i.i72
  %.014.i.i.i.i73 = phi ptr [ %i.t, %.lr.ph.i.i.i.i72 ], [ %.1.i.i.i.i79, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ] ; 7 uses
  %.0813.i.i.i.i74 = phi ptr [ %i.u, %.lr.ph.i.i.i.i72 ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76 ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 32
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !741 ; 2 uses
  %i.db = icmp slt i32 %i.da, %i.p
  br i1 %i.db, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = icmp sgt i32 %i.da, %i.p
  br i1 %i.dc, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 36
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !741 ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.q
  br i1 %i.df, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dg = icmp sgt i32 %i.de, %i.q
  br i1 %i.dg, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75: ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 40
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !741
  %i.dj = icmp slt i32 %i.di, %i.r
  br i1 %i.dj, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.s, %bb.q
  br label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75, %bb.t, %bb.r
  %.sink.i.i.i.i77 = phi i64 [ 24, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ 16, %bb.t ], [ 16, %bb.r ], [ 16, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ]
  %.19.i.i.i.i78 = phi ptr [ %.0813.i.i.i.i74, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread.i.i.i.i89 ], [ %.014.i.i.i.i73, %bb.t ], [ %.014.i.i.i.i73, %bb.r ], [ %.014.i.i.i.i73, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i.i.i.i75 ] ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i73, i64 %.sink.i.i.i.i77
  %.1.i.i.i.i79 = load ptr, ptr %i.dk, align 8, !tbaa !902 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.1.i.i.i.i79, null
  br i1 %.not.i.i.i.i80, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81, label %bb.q, !llvm.loop !44

_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81: ; preds = %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.thread11.i.i.i.i76
  %i.dl = icmp eq ptr %.19.i.i.i.i78, %i.u
  br i1 %i.dl, label %.critedge.i87, label %bb.u

bb.u:                                             ; preds = %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %i.dm = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 32
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !741 ; 2 uses
  %i.do = icmp slt i32 %i.p, %i.dn
  br i1 %i.do, label %.critedge.i87, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = icmp sgt i32 %i.p, %i.dn
  br i1 %i.dp, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !741 ; 2 uses
  %i.ds = icmp slt i32 %i.q, %i.dr
  br i1 %i.ds, label %.critedge.i87, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dt = icmp sgt i32 %i.q, %i.dr
  br i1 %i.dt, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit, label %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82

_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82: ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i78, i64 40
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !741
  %i.dw = icmp slt i32 %i.r, %i.dv
  br i1 %i.dw, label %.critedge.i87, label %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE7emplaceIJRSG_NSB_4TileEEEESF_ISt17_Rb_tree_iteratorISH_EbEDpOT_.exit

.critedge.i87:                                    ; preds = %.thread, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82, %bb.w, %bb.u, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81
  %.08.lcssa.i.i.i20.i88 = phi ptr [ %i.u, %.thread ], [ %.19.i.i.i.i78, %_ZNKSt4lessIN7openvdb5v13_04math5CoordEEclERKS3_S6_.exit.i82 ], [ %.19.i.i.i.i78, %_ZNSt3mapIN7openvdb5v13_04math5CoordENS1_4tree8RootNodeINS4_12InternalNodeINS6_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEE10NodeStructESt4lessIS3_ESaISt4pairIKS3_SC_EEE11lower_boundERSG_.exit.i81 ], [ %.19.i.i.i.i78, %bb.u ], [ %.19.i.i.i.i78, %bb.w ]
end_hunk_9
begin_hunk_10_@_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43
  %i.jb = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.jc = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.jd = fsub double %storemerge196, %i.jc
  %i.je = fmul double %i.jb, %i.jd
  %i.jf = fadd double %i.je, 5.000000e-01
  %i.jg = tail call noundef double @llvm.floor.f64(double %i.jf)
  %i.jh = fptoui double %i.jg to i32
  %i.ji = zext i32 %i.jh to i64
  %i.jj = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.ji ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !1192
  %i.jm = fcmp ogt double %i.ik, %i.jl
  br i1 %i.jm, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store double %i.ik, ptr %i.jk, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, %bb.t, %bb.u
  %i.jn = fadd double %storemerge196, %i.b        ; 2 uses
  %i.jo = fcmp ugt double %i.jn, %i.et
  br i1 %i.jo, label %._crit_edge, label %bb.q, !llvm.loop !9618

bb.v:                                             ; preds = %._crit_edge
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.jq = load double, ptr %i.jp, align 8, !tbaa !9627
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.js = load double, ptr %i.jr, align 8, !tbaa !9628
  %i.jt = fcmp ogt double %i.jq, %i.js
  %i.ju = fcmp olt double %i.ev, %i.eu
  %.sroa.speculated153 = select i1 %i.ju, double %i.ev, double %i.eu ; 3 uses
  %i.jv = extractelement <4 x double> %i.hf, i64 1 ; 3 uses
  %i.jw = fcmp ugt double %i.jv, %.sroa.speculated153 ; 2 uses
  br i1 %i.jt, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47
  %storemerge29199 = phi double [ %i.lq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47 ], [ %i.jv, %.preheader192 ] ; 4 uses
  %i.jx = load double, ptr %i.jp, align 8, !tbaa !9627 ; 2 uses
  %i.jy = load double, ptr %i.el, align 8, !tbaa !3858
  %i.jz = load double, ptr %i.c, align 8, !tbaa !3143
  %i.ka = fsub double %storemerge29199, %i.jz     ; 3 uses
  %i.kb = load double, ptr %i.e, align 8, !tbaa !3844 ; 3 uses
  %i.kc = load double, ptr %i.ep, align 8, !tbaa !3845
  %i.kd = fneg double %i.kc
  %i.ke = fmul double %i.kb, %i.kd
  %i.kf = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.ka, double %i.ke)
  %i.kg = load double, ptr %i.hx, align 8, !tbaa !9629
  %i.kh = fdiv double %i.kf, %i.kg
  %i.ki = fadd double %i.jx, %i.kh                ; 3 uses
  %i.kj = fmul double %i.kb, %i.kb
  %i.kk = fmul double %i.ka, %i.ka
  %i.kl = fsub double %i.kj, %i.kk
  %i.km = tail call noundef double @sqrt(double noundef %i.kl) #24
  %i.kn = fadd double %i.jx, %i.km                ; 3 uses
  %i.ko = tail call double @llvm.fabs.f64(double %i.ki)
  %i.kp = fcmp ueq double %i.ko, +inf
  br i1 %i.kp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kq = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.kr = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.ks = fsub double %storemerge29199, %i.kr
  %i.kt = fmul double %i.kq, %i.ks
  %i.ku = fadd double %i.kt, 5.000000e-01
  %i.kv = tail call noundef double @llvm.floor.f64(double %i.ku)
  %i.kw = fptoui double %i.kv to i32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = load double, ptr %i.kz, align 8, !tbaa !1192
  %i.lb = fcmp olt double %i.ki, %i.la
  br i1 %i.lb, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

bb.x:                                             ; preds = %bb.w
  store double %i.ki, ptr %i.kz, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46: ; preds = %bb.x, %bb.w, %.lr.ph200
  %i.lc = tail call double @llvm.fabs.f64(double %i.kn)
  %i.ld = fcmp ueq double %i.lc, +inf
  br i1 %i.ld, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46
  %i.le = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.lf = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.lg = fsub double %storemerge29199, %i.lf
  %i.lh = fmul double %i.le, %i.lg
  %i.li = fadd double %i.lh, 5.000000e-01
  %i.lj = tail call noundef double @llvm.floor.f64(double %i.li)
  %i.lk = fptoui double %i.lj to i32
  %i.ll = zext i32 %i.lk to i64
  %i.lm = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ll ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !1192
  %i.lp = fcmp ogt double %i.kn, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

bb.z:                                             ; preds = %bb.y
  store double %i.kn, ptr %i.ln, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, %bb.y, %bb.z
  %i.lq = fadd double %storemerge29199, %i.b      ; 2 uses
  %i.lr = fcmp ugt double %i.lq, %.sroa.speculated153
  br i1 %i.lr, label %.loopexit193, label %.lr.ph200, !llvm.loop !9619

.lr.ph198:                                        ; preds = %.preheader194, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50
  %storemerge28197 = phi double [ %i.nk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50 ], [ %i.jv, %.preheader194 ] ; 4 uses
  %i.ls = load double, ptr %i.jp, align 8, !tbaa !1192 ; 2 uses
  %i.lt = load double, ptr %i.e, align 8, !tbaa !1192 ; 3 uses
  %i.lu = fmul double %i.lt, %i.lt
  %i.lv = load double, ptr %i.c, align 8, !tbaa !1192
  %i.lw = fsub double %storemerge28197, %i.lv     ; 3 uses
  %i.lx = fmul double %i.lw, %i.lw
  %i.ly = fsub double %i.lu, %i.lx
  %i.lz = tail call noundef double @sqrt(double noundef %i.ly) #24
  %i.ma = fsub double %i.ls, %i.lz                ; 3 uses
  %i.mb = load double, ptr %i.el, align 8, !tbaa !3858
  %i.mc = load double, ptr %i.ep, align 8, !tbaa !3845
  %i.md = fmul double %i.lt, %i.mc
  %i.me = tail call double @llvm.fmuladd.f64(double %i.mb, double %i.lw, double %i.md)
  %i.mf = load double, ptr %i.hx, align 8, !tbaa !9629
  %i.mg = fdiv double %i.me, %i.mf
  %i.mh = fadd double %i.ls, %i.mg                ; 3 uses
  %i.mi = tail call double @llvm.fabs.f64(double %i.ma)
  %i.mj = fcmp ueq double %i.mi, +inf
  br i1 %i.mj, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph198
  %i.mk = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.ml = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.mm = fsub double %storemerge28197, %i.ml
  %i.mn = fmul double %i.mk, %i.mm
  %i.mo = fadd double %i.mn, 5.000000e-01
  %i.mp = tail call noundef double @llvm.floor.f64(double %i.mo)
  %i.mq = fptoui double %i.mp to i32
  %i.mr = zext i32 %i.mq to i64
  %i.ms = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mr ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !1192
  %i.mv = fcmp olt double %i.ma, %i.mu
  br i1 %i.mv, label %bb.ab, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

bb.ab:                                            ; preds = %bb.aa
  store double %i.ma, ptr %i.mt, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49: ; preds = %bb.ab, %bb.aa, %.lr.ph198
  %i.mw = tail call double @llvm.fabs.f64(double %i.mh)
  %i.mx = fcmp ueq double %i.mw, +inf
  br i1 %i.mx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49
  %i.my = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.mz = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.na = fsub double %storemerge28197, %i.mz
  %i.nb = fmul double %i.my, %i.na
  %i.nc = fadd double %i.nb, 5.000000e-01
  %i.nd = tail call noundef double @llvm.floor.f64(double %i.nc)
  %i.ne = fptoui double %i.nd to i32
  %i.nf = zext i32 %i.ne to i64
  %i.ng = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.ng, i64 %i.nf ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !1192
  %i.nj = fcmp ogt double %i.mh, %i.ni
  br i1 %i.nj, label %bb.ad, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

bb.ad:                                            ; preds = %bb.ac
  store double %i.mh, ptr %i.nh, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, %bb.ac, %bb.ad
  %i.nk = fadd double %storemerge28197, %i.b      ; 2 uses
  %i.nl = fcmp ugt double %i.nk, %.sroa.speculated153
  br i1 %i.nl, label %.loopexit193, label %.lr.ph198, !llvm.loop !9620

.loopexit193:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, %.preheader194, %.preheader192, %._crit_edge
  %i.nm = fcmp olt double %i.eu, %i.ev
  br i1 %i.nm, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %.loopexit193
  %i.nn = extractelement <4 x double> %i.hf, i64 2 ; 2 uses
  %i.no = fcmp ugt double %i.nn, %i.ev
  br i1 %i.no, label %.loopexit187, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52
  %storemerge32205 = phi double [ %i.nn, %.lr.ph206 ], [ %i.pl, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52 ] ; 4 uses
  %i.nq = load double, ptr %i.np, align 8, !tbaa !9627 ; 2 uses
  %2 = load <2 x double>, ptr %i.el, align 8
  %i.nr = load double, ptr %i.c, align 8, !tbaa !3143
  %i.ns = fsub double %storemerge32205, %i.nr
  %3 = load <2 x double>, ptr %i.e, align 8
  %i.nt = load double, ptr %i.ep, align 8, !tbaa !3845 ; 2 uses
  %i.nu = fneg double %i.nt
  %4 = load <2 x double>, ptr %i.hx, align 8
  %i.nv = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nw = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.nt, i64 1
  %i.ny = fmul <2 x double> %i.nv, %i.nx
  %i.nz = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oa = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.ob = shufflevector <2 x double> %i.oa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.ob, <2 x double> %i.ny)
  %i.od = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fdiv <2 x double> %i.oc, %i.od          ; 2 uses
  %i.of = extractelement <2 x double> %i.oe, i64 0
  %i.og = fadd double %i.nq, %i.of                ; 3 uses
  %i.oh = extractelement <2 x double> %i.oe, i64 1
  %i.oi = fadd double %i.nq, %i.oh                ; 3 uses
  %i.oj = tail call double @llvm.fabs.f64(double %i.og)
  %i.ok = fcmp ueq double %i.oj, +inf
  br i1 %i.ok, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ol = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.om = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.on = fsub double %storemerge32205, %i.om
  %i.oo = fmul double %i.ol, %i.on
  %i.op = fadd double %i.oo, 5.000000e-01
  %i.oq = tail call noundef double @llvm.floor.f64(double %i.op)
  %i.or = fptoui double %i.oq to i32
  %i.os = zext i32 %i.or to i64
  %i.ot = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.ot, i64 %i.os ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !1192
  %i.ow = fcmp olt double %i.og, %i.ov
  br i1 %i.ow, label %bb.ag, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

bb.ag:                                            ; preds = %bb.af
  store double %i.og, ptr %i.ou, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.ox = tail call double @llvm.fabs.f64(double %i.oi)
  %i.oy = fcmp ueq double %i.ox, +inf
  br i1 %i.oy, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52, label %bb.ah

bb.ah:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51
  %i.oz = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.pa = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.pb = fsub double %storemerge32205, %i.pa
  %i.pc = fmul double %i.oz, %i.pb
  %i.pd = fadd double %i.pc, 5.000000e-01
  %i.pe = tail call noundef double @llvm.floor.f64(double %i.pd)
  %i.pf = fptoui double %i.pe to i32
  %i.pg = zext i32 %i.pf to i64
  %i.ph = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pg ; 2 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !1192
  %i.pk = fcmp ogt double %i.oi, %i.pj
  br i1 %i.pk, label %bb.ai, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

bb.ai:                                            ; preds = %bb.ah
  store double %i.oi, ptr %i.pi, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, %bb.ah, %bb.ai
  %i.pl = fadd double %storemerge32205, %i.b      ; 2 uses
  %i.pm = fcmp ugt double %i.pl, %i.ev
  br i1 %i.pm, label %.loopexit187, label %bb.ae, !llvm.loop !9621

bb.aj:                                            ; preds = %.loopexit193
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !9628
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !9627
  %i.pr = fcmp ugt double %i.po, %i.pq
  %i.ps = extractelement <4 x double> %i.hf, i64 3 ; 3 uses
  %i.pt = fcmp ugt double %i.ps, %i.eu            ; 2 uses
  br i1 %i.pr, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.aj
  br i1 %i.pt, label %.loopexit187, label %.lr.ph202

.preheader188:                                    ; preds = %bb.aj
  br i1 %i.pt, label %.loopexit187, label %.lr.ph204

.lr.ph202:                                        ; preds = %.preheader190, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54
  %storemerge31201 = phi double [ %i.rm, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54 ], [ %i.ps, %.preheader190 ] ; 5 uses
  %i.pu = load double, ptr %i.pn, align 8, !tbaa !1192
  %i.pv = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.pw = fmul double %i.pv, %i.pv                ; 2 uses
  %i.px = load double, ptr %i.h, align 8, !tbaa !1192
  %i.py = fsub double %storemerge31201, %i.px     ; 2 uses
  %i.pz = fmul double %i.py, %i.py
  %i.qa = fsub double %i.pw, %i.pz
  %i.qb = tail call noundef double @sqrt(double noundef %i.qa) #24
  %i.qc = fsub double %i.pu, %i.qb                ; 3 uses
  %i.qd = load double, ptr %i.pp, align 8, !tbaa !1192
  %i.qe = load double, ptr %i.c, align 8, !tbaa !1192
  %i.qf = fsub double %storemerge31201, %i.qe     ; 2 uses
  %i.qg = fmul double %i.qf, %i.qf
  %i.qh = fsub double %i.pw, %i.qg
  %i.qi = tail call noundef double @sqrt(double noundef %i.qh) #24
  %i.qj = fadd double %i.qd, %i.qi                ; 3 uses
  %i.qk = tail call double @llvm.fabs.f64(double %i.qc)
  %i.ql = fcmp ueq double %i.qk, +inf
  br i1 %i.ql, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph202
  %i.qm = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.qn = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.qo = fsub double %storemerge31201, %i.qn
  %i.qp = fmul double %i.qm, %i.qo
  %i.qq = fadd double %i.qp, 5.000000e-01
  %i.qr = tail call noundef double @llvm.floor.f64(double %i.qq)
  %i.qs = fptoui double %i.qr to i32
  %i.qt = zext i32 %i.qs to i64
  %i.qu = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.qu, i64 %i.qt ; 2 uses
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !1192
  %i.qx = fcmp olt double %i.qc, %i.qw
  br i1 %i.qx, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

bb.al:                                            ; preds = %bb.ak
  store double %i.qc, ptr %i.qv, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53: ; preds = %bb.al, %bb.ak, %.lr.ph202
  %i.qy = tail call double @llvm.fabs.f64(double %i.qj)
  %i.qz = fcmp ueq double %i.qy, +inf
  br i1 %i.qz, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54, label %bb.am

bb.am:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53
  %i.ra = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.rb = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.rc = fsub double %storemerge31201, %i.rb
  %i.rd = fmul double %i.ra, %i.rc
  %i.re = fadd double %i.rd, 5.000000e-01
  %i.rf = tail call noundef double @llvm.floor.f64(double %i.re)
  %i.rg = fptoui double %i.rf to i32
  %i.rh = zext i32 %i.rg to i64
  %i.ri = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rh ; 2 uses
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !1192
  %i.rl = fcmp ogt double %i.qj, %i.rk
  br i1 %i.rl, label %bb.an, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

bb.an:                                            ; preds = %bb.am
  store double %i.qj, ptr %i.rj, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, %bb.am, %bb.an
  %i.rm = fadd double %storemerge31201, %i.b      ; 2 uses
  %i.rn = fcmp ugt double %i.rm, %i.eu
  br i1 %i.rn, label %.loopexit187, label %.lr.ph202, !llvm.loop !9622

.lr.ph204:                                        ; preds = %.preheader188, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56
  %storemerge30203 = phi double [ %i.tg, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56 ], [ %i.ps, %.preheader188 ] ; 5 uses
  %i.ro = load double, ptr %i.pp, align 8, !tbaa !1192
  %i.rp = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.rq = fmul double %i.rp, %i.rp                ; 2 uses
  %i.rr = load double, ptr %i.c, align 8, !tbaa !1192
  %i.rs = fsub double %storemerge30203, %i.rr     ; 2 uses
  %i.rt = fmul double %i.rs, %i.rs
  %i.ru = fsub double %i.rq, %i.rt
  %i.rv = tail call noundef double @sqrt(double noundef %i.ru) #24
  %i.rw = fsub double %i.ro, %i.rv                ; 3 uses
  %i.rx = load double, ptr %i.pn, align 8, !tbaa !1192
  %i.ry = load double, ptr %i.h, align 8, !tbaa !1192
  %i.rz = fsub double %storemerge30203, %i.ry     ; 2 uses
  %i.sa = fmul double %i.rz, %i.rz
  %i.sb = fsub double %i.rq, %i.sa
  %i.sc = tail call noundef double @sqrt(double noundef %i.sb) #24
  %i.sd = fadd double %i.rx, %i.sc                ; 3 uses
  %i.se = tail call double @llvm.fabs.f64(double %i.rw)
  %i.sf = fcmp ueq double %i.se, +inf
  br i1 %i.sf, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph204
  %i.sg = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.sh = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.si = fsub double %storemerge30203, %i.sh
  %i.sj = fmul double %i.sg, %i.si
  %i.sk = fadd double %i.sj, 5.000000e-01
  %i.sl = tail call noundef double @llvm.floor.f64(double %i.sk)
  %i.sm = fptoui double %i.sl to i32
  %i.sn = zext i32 %i.sm to i64
  %i.so = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.sn ; 2 uses
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !1192
  %i.sr = fcmp olt double %i.rw, %i.sq
  br i1 %i.sr, label %bb.ap, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

bb.ap:                                            ; preds = %bb.ao
  store double %i.rw, ptr %i.sp, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55: ; preds = %bb.ap, %bb.ao, %.lr.ph204
  %i.ss = tail call double @llvm.fabs.f64(double %i.sd)
  %i.st = fcmp ueq double %i.ss, +inf
  br i1 %i.st, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55
  %i.su = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.sv = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.sw = fsub double %storemerge30203, %i.sv
  %i.sx = fmul double %i.su, %i.sw
  %i.sy = fadd double %i.sx, 5.000000e-01
  %i.sz = tail call noundef double @llvm.floor.f64(double %i.sy)
  %i.ta = fptoui double %i.sz to i32
  %i.tb = zext i32 %i.ta to i64
  %i.tc = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.tc, i64 %i.tb ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a
bb.av:                                            ; preds = %bb.au
  store double %i.uc, ptr %i.uy, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i58

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i58: ; preds = %bb.av, %bb.au, %.lr.ph212
  %i.vb = tail call double @llvm.fabs.f64(double %i.um)
  %i.vc = fcmp ueq double %i.vb, +inf
  br i1 %i.vc, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit59, label %bb.aw

bb.aw:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i58
  %i.vd = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.ve = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.vf = fsub double %storemerge34210, %i.ve
  %i.vg = fmul double %i.vd, %i.vf
  %i.vh = fadd double %i.vg, 5.000000e-01
  %i.vi = tail call noundef double @llvm.floor.f64(double %i.vh)
  %i.vj = fptoui double %i.vi to i32
  %i.vk = zext i32 %i.vj to i64
  %i.vl = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.vl, i64 %i.vk ; 2 uses
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !1192
  %i.vo = fcmp ogt double %i.um, %i.vn
  br i1 %i.vo, label %bb.ax, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit59

bb.ax:                                            ; preds = %bb.aw
  store double %i.um, ptr %i.vm, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit59

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit59: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i58, %bb.aw, %bb.ax
  %i.vp = fadd double %storemerge34210, %i.b      ; 2 uses
  %i.vq = fcmp ugt double %i.vp, %i.ew
  br i1 %i.vq, label %.loopexit, label %.lr.ph212, !llvm.loop !9624

bb.ay:                                            ; preds = %bb.as
  br i1 %i.tt, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.ay, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62
  %storemerge33207 = phi double [ %i.xn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62 ], [ %.sroa.speculated133, %bb.ay ] ; 5 uses
  %i.vr = load double, ptr %i.tl, align 8, !tbaa !9627
  %i.vs = load double, ptr %i.el, align 8, !tbaa !3858
  %i.vt = load double, ptr %i.c, align 8, !tbaa !3143
  %i.vu = fsub double %storemerge33207, %i.vt
  %i.vv = load double, ptr %i.e, align 8, !tbaa !3844 ; 3 uses
  %i.vw = load double, ptr %i.ep, align 8, !tbaa !3845
  %i.vx = fneg double %i.vw
  %i.vy = fmul double %i.vv, %i.vx
  %i.vz = tail call double @llvm.fmuladd.f64(double %i.vs, double %i.vu, double %i.vy)
  %i.wa = load double, ptr %i.hx, align 8, !tbaa !9629
  %i.wb = fdiv double %i.vz, %i.wa
  %i.wc = fadd double %i.vr, %i.wb                ; 3 uses
  %i.wd = load double, ptr %i.tn, align 8, !tbaa !1192
  %i.we = fmul double %i.vv, %i.vv
  %i.wf = load double, ptr %i.h, align 8, !tbaa !1192
  %i.wg = fsub double %storemerge33207, %i.wf     ; 2 uses
  %i.wh = fmul double %i.wg, %i.wg
  %i.wi = fsub double %i.we, %i.wh
  %i.wj = tail call noundef double @sqrt(double noundef %i.wi) #24
  %i.wk = fadd double %i.wd, %i.wj                ; 3 uses
  %i.wl = tail call double @llvm.fabs.f64(double %i.wc)
  %i.wm = fcmp ueq double %i.wl, +inf
  br i1 %i.wm, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61, label %bb.az

bb.az:                                            ; preds = %.lr.ph209
  %i.wn = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.wo = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.wp = fsub double %storemerge33207, %i.wo
  %i.wq = fmul double %i.wn, %i.wp
  %i.wr = fadd double %i.wq, 5.000000e-01
  %i.ws = tail call noundef double @llvm.floor.f64(double %i.wr)
  %i.wt = fptoui double %i.ws to i32
  %i.wu = zext i32 %i.wt to i64
  %i.wv = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.wu ; 2 uses
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !1192
  %i.wy = fcmp olt double %i.wc, %i.wx
  br i1 %i.wy, label %bb.ba, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61

bb.ba:                                            ; preds = %bb.az
  store double %i.wc, ptr %i.ww, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61: ; preds = %bb.ba, %bb.az, %.lr.ph209
  %i.wz = tail call double @llvm.fabs.f64(double %i.wk)
  %i.xa = fcmp ueq double %i.wz, +inf
  br i1 %i.xa, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62, label %bb.bb

bb.bb:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61
  %i.xb = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.xc = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.xd = fsub double %storemerge33207, %i.xc
  %i.xe = fmul double %i.xb, %i.xd
  %i.xf = fadd double %i.xe, 5.000000e-01
  %i.xg = tail call noundef double @llvm.floor.f64(double %i.xf)
  %i.xh = fptoui double %i.xg to i32
  %i.xi = zext i32 %i.xh to i64
  %i.xj = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xi ; 2 uses
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !1192
  %i.xm = fcmp ogt double %i.wk, %i.xl
  br i1 %i.xm, label %bb.bc, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62

bb.bc:                                            ; preds = %bb.bb
  store double %i.wk, ptr %i.xk, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i61, %bb.bb, %bb.bc
  %i.xn = fadd double %storemerge33207, %i.b      ; 2 uses
  %i.xo = fcmp ugt double %i.xn, %i.ew
  br i1 %i.xo, label %.loopexit, label %.lr.ph209, !llvm.loop !9625

.loopexit:                                        ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit62, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit59, %bb.ay, %bb.at, %.loopexit187
  %i.xp = extractelement <4 x double> %i.hf, i64 0 ; 2 uses
  %i.xq = fcmp ugt double %i.xp, %i.j
  br i1 %i.xq, label %._crit_edge216, label %.lr.ph215

.lr.ph215:                                        ; preds = %.loopexit
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 496
  br label %bb.bd

._crit_edge216:                                   ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64, %.loopexit
  tail call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE20intersectWithXYStripEv(ptr noundef nonnull align 8 dereferenceable(664) %0)
  tail call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv(ptr noundef nonnull align 8 dereferenceable(664) %0)
  br label %_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit

bb.bd:                                            ; preds = %.lr.ph215, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64
  %storemerge35213 = phi double [ %i.xp, %.lr.ph215 ], [ %i.ze, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64 ] ; 4 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !1192 ; 2 uses
  %i.xt = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.xu = fmul double %i.xt, %i.xt
  %i.xv = load double, ptr %i.h, align 8, !tbaa !1192
  %i.xw = fsub double %storemerge35213, %i.xv     ; 2 uses
  %i.xx = fmul double %i.xw, %i.xw
  %i.xy = fsub double %i.xu, %i.xx
  %i.xz = tail call noundef double @sqrt(double noundef %i.xy) #24 ; 2 uses
  %i.ya = fsub double %i.xs, %i.xz                ; 3 uses
  %i.yb = fadd double %i.xs, %i.xz                ; 3 uses
  %i.yc = tail call double @llvm.fabs.f64(double %i.ya)
  %i.yd = fcmp ueq double %i.yc, +inf
  br i1 %i.yd, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ye = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.yf = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.yg = fsub double %storemerge35213, %i.yf
  %i.yh = fmul double %i.ye, %i.yg
  %i.yi = fadd double %i.yh, 5.000000e-01
  %i.yj = tail call noundef double @llvm.floor.f64(double %i.yi)
  %i.yk = fptoui double %i.yj to i32
  %i.yl = zext i32 %i.yk to i64
  %i.ym = load ptr, ptr %i.hq, align 8, !tbaa !3116
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yl ; 2 uses
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !1192
  %i.yp = fcmp olt double %i.ya, %i.yo
  br i1 %i.yp, label %bb.bf, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63

bb.bf:                                            ; preds = %bb.be
  store double %i.ya, ptr %i.yn, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63: ; preds = %bb.bf, %bb.be, %bb.bd
  %i.yq = tail call double @llvm.fabs.f64(double %i.yb)
  %i.yr = fcmp ueq double %i.yq, +inf
  br i1 %i.yr, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64, label %bb.bg

bb.bg:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63
  %i.ys = load double, ptr %i.hc, align 8, !tbaa !3856
  %i.yt = load double, ptr %i.hg, align 8, !tbaa !3857
  %i.yu = fsub double %storemerge35213, %i.yt
  %i.yv = fmul double %i.ys, %i.yu
  %i.yw = fadd double %i.yv, 5.000000e-01
  %i.yx = tail call noundef double @llvm.floor.f64(double %i.yw)
  %i.yy = fptoui double %i.yx to i32
  %i.yz = zext i32 %i.yy to i64
  %i.za = load ptr, ptr %i.hs, align 8, !tbaa !3116
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %i.za, i64 %i.yz ; 2 uses
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !1192
  %i.zd = fcmp ogt double %i.yb, %i.zc
  br i1 %i.zd, label %bb.bh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64

bb.bh:                                            ; preds = %bb.bg
  store double %i.yb, ptr %i.zb, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit64: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i63, %bb.bg, %bb.bh
  %i.ze = fadd double %storemerge35213, %i.b      ; 2 uses
  %i.zf = fcmp ugt double %i.ze, %i.j
  br i1 %i.zf, label %._crit_edge216, label %bb.bd, !llvm.loop !9626

_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd.exit:   ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset25OpenCapsuleWedgeVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData5clearEv.exit, %._crit_edge216, %._crit_edge219
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25intersectWithXYWedgeLinesEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #3 comdat align 2 {
_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:
  %1 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 6 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 6 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 6 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %5 = load <2 x double>, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load double, ptr %i.c, align 8, !tbaa !1192, !noalias !9632 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.g = load <2 x double>, ptr %i.b, align 8, !tbaa !1192, !noalias !9632 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.g, %i.g
  %i.h = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.i = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.h)
  %i.k = tail call noundef double @llvm.fmuladd.f64(double %i.d, double %i.d, double %i.j) ; 2 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp ule double %i.l, 1.000000e-15
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.k)
  %i.n = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fdiv <2 x double> %i.g, %i.o
  %i.q = insertelement <2 x i1> poison, i1 %i.m, i64 0
  %i.r = shufflevector <2 x i1> %i.q, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.p
  %i.t = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.t, %i.s             ; 2 uses
  %i.v = load <2 x double>, ptr %i.e, align 8
  %i.w = fsub <2 x double> %i.v, %i.u             ; 2 uses
  store <2 x double> %i.w, ptr %1, align 16, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.x = load <2 x double>, ptr %i.f, align 8
  %i.y = fadd <2 x double> %i.x, %i.u             ; 2 uses
  store <2 x double> %i.y, ptr %2, align 16, !tbaa !1192
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3113 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !1192
  %i.ad = load <2 x double>, ptr %i.aa, align 8, !tbaa !1192
  %i.ae = fneg <2 x double> %i.ad                 ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fsub double %i.af, %i.ac                ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !1192
  %i.aj = extractelement <2 x double> %i.ae, i64 1
  %i.ak = fsub double %i.aj, %i.ai                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3113 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !1192 ; 3 uses
  %i.ap = fneg double %i.ao                       ; 3 uses
  %i.aq = load double, ptr %i.am, align 8, !tbaa !1192 ; 4 uses
  store double %i.ap, ptr %3, align 8, !tbaa !1192
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store double %i.aq, ptr %i.ar, align 8, !tbaa !1192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.au = load double, ptr %i.at, align 8, !tbaa !1192 ; 3 uses
  %i.av = fneg double %i.au                       ; 3 uses
  %i.aw = load double, ptr %i.as, align 8, !tbaa !1192 ; 4 uses
  store double %i.av, ptr %4, align 8, !tbaa !1192
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store double %i.aw, ptr %i.ax, align 8, !tbaa !1192
  %i.ay = fmul double %i.ak, %i.aq
  %i.az = tail call noundef double @llvm.fmuladd.f64(double %i.ap, double %i.ag, double %i.ay)
  %i.ba = fcmp ogt double %i.az, 0.000000e+00
  br i1 %i.ba, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  store double %i.ao, ptr %3, align 8, !tbaa !1192
  %i.bb = fneg double %i.aq                       ; 2 uses
  store double %i.bb, ptr %i.ar, align 8, !tbaa !1192
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.bc = phi double [ %i.bb, %bb.a ], [ %i.aq, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit ] ; 3 uses
  %i.bd = phi double [ %i.ao, %bb.a ], [ %i.ap, %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit ] ; 3 uses
  %i.be = fmul double %i.ak, %i.aw
  %i.bf = tail call noundef double @llvm.fmuladd.f64(double %i.av, double %i.ag, double %i.be)
  %i.bg = fcmp ogt double %i.bf, 0.000000e+00
  br i1 %i.bg, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double %i.au, ptr %4, align 8, !tbaa !1192
  %i.bh = fneg double %i.aw                       ; 2 uses
  store double %i.bh, ptr %i.ax, align 8, !tbaa !1192
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bi = phi double [ %i.bh, %bb.c ], [ %i.aw, %bb.b ] ; 3 uses
  %i.bj = phi double [ %i.au, %bb.c ], [ %i.av, %bb.b ] ; 3 uses
  %i.bk = fmul double %i.bc, %i.bc
  %i.bl = tail call noundef double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bk)
  %i.bm = tail call double @llvm.fabs.f64(double %i.bl)
  %i.bn = fcmp ule double %i.bm, 1.000000e-15
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = fsub <2 x double> %i.y, %i.w            ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %i.bq = fmul double %i.bp, %i.bc
  %i.br = extractelement <2 x double> %i.bo, i64 0
  %i.bs = tail call noundef double @llvm.fmuladd.f64(double %i.bd, double %i.br, double %i.bq)
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  %. = select i1 %i.bt, ptr %1, ptr %2
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %.)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bu = fmul double %i.bi, %i.bi
  %i.bv = call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.bj, double %i.bu)
  %i.bw = call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ule double %i.bw, 1.000000e-15
  br i1 %i.bx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load <2 x double>, ptr %2, align 16
  %i.bz = load <2 x double>, ptr %1, align 16, !tbaa !1192
  %i.ca = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 1
  %i.cc = fmul double %i.bi, %i.cb
  %i.cd = extractelement <2 x double> %i.ca, i64 0
  %i.ce = call noundef double @llvm.fmuladd.f64(double %i.bj, double %i.cd, double %i.cc)
  %i.cf = fcmp olt double %i.ce, 0.000000e+00
  %.1 = select i1 %i.cf, ptr %1, ptr %2
  call void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24intersectWithXYHalfSpaceERKNS0_4math4Vec2IdEESN_(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset25OpenCapsuleWedgeVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE20intersectWithXYStripEv(ptr noundef nonnull align 8 dereferenceable(664) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %2 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %3 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %4 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %5 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 16 ; 4 uses
  %8 = alloca %"class.openvdb::v13_0::math::Vec2.869", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i8, ptr %i.a, align 8, !tbaa !3846, !range !788, !noundef !789
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:  ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3113 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !1192 ; 7 uses
  %i.j = fneg double %i.i                         ; 2 uses
  %i.k = load double, ptr %i.g, align 8, !tbaa !1192 ; 4 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.p = load double, ptr %i.o, align 8, !tbaa !3844 ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.l) ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp ule double %i.r, 1.000000e-15
  %i.t = insertelement <2 x double> poison, double %i.q, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = fadd <2 x double> %i.u, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.w = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.v) ; 3 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fdiv <2 x double> %i.n, %i.x
  %i.z = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %i.aa = shufflevector <2 x i1> %i.z, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.y ; 12 uses
  %i.ac = extractelement <2 x double> %i.v, i64 1
  %i.ad = tail call double @llvm.fabs.f64(double %i.ac)
  %i.ae = fcmp ule double %i.ad, 1.000000e-15     ; 2 uses
  %i.af = extractelement <2 x double> %i.w, i64 1
  %i.ag = fdiv double %i.k, %i.af
  %.sroa.795.0 = select i1 %i.ae, double 0.000000e+00, double %i.ag
  %i.ah = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.j, i64 0
  %i.ai = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = fdiv <2 x double> %i.ah, %i.ai
  %i.ak = insertelement <2 x i1> poison, i1 %i.ae, i64 0
  %i.al = shufflevector <2 x i1> %i.ak, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.am = select <2 x i1> %i.al, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.aj
  %i.an = fmul double %i.p, %.sroa.795.0          ; 3 uses
  %i.ao = insertelement <2 x double> poison, double %i.p, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ap, %i.am          ; 3 uses
  %i.ar = tail call double @llvm.fabs.f64(double %i.i)
  %i.as = fcmp ule double %i.ar, 1.000000e-15
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.an)
  br label %bb.e

bb.c:                                             ; preds = %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit
  %i.au = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.au, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = fneg double %i.an
  %i.aw = fneg <2 x double> %i.aq
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.9.0 = phi double [ %i.at, %bb.b ], [ %i.av, %bb.d ], [ %i.an, %bb.c ] ; 2 uses
  %i.ax = phi <2 x double> [ %i.aq, %bb.b ], [ %i.aw, %bb.d ], [ %i.aq, %bb.c ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.az = load <2 x double>, ptr %i.ay, align 8   ; 6 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0 ; 7 uses
  %.sroa.891.0.copyload = load double, ptr %.sroa.891.0..sroa_idx, align 8 ; 6 uses
  %.sroa.1392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %.sroa.1392.0.copyload = load double, ptr %.sroa.1392.0..sroa_idx, align 8 ; 6 uses
  %foldExtExtBinop = fsub <2 x double> %i.az, %i.ax ; 2 uses
  %i.bb = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bc = fsub double %.sroa.891.0.copyload, %.sroa.9.0 ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a
  %i.jb = fsub float %storemerge196, %i.ja
  %i.jc = fmul float %i.iz, %i.jb
  %i.jd = fadd float %i.jc, 5.000000e-01
  %i.je = tail call noundef float @llvm.floor.f32(float %i.jd)
  %i.jf = fptoui float %i.je to i32
  %i.jg = zext i32 %i.jf to i64
  %i.jh = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jg ; 2 uses
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !1161
  %i.jk = fcmp ogt float %i.ii, %i.jj
  br i1 %i.jk, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store float %i.ii, ptr %i.ji, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i43, %bb.t, %bb.u
  %i.jl = fadd float %storemerge196, %i.b         ; 2 uses
  %i.jm = fcmp ugt float %i.jl, %i.hs
  br i1 %i.jm, label %._crit_edge, label %bb.q, !llvm.loop !13010

bb.v:                                             ; preds = %._crit_edge
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !1908
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !1910
  %i.jr = fcmp ogt float %i.jo, %i.jq
  %i.js = extractelement <4 x float> %i.ex, i64 2 ; 2 uses
  %i.jt = extractelement <4 x float> %i.ey, i64 3 ; 2 uses
  %i.ju = fcmp olt float %i.jt, %i.js
  %.sroa.speculated153 = select i1 %i.ju, float %i.jt, float %i.js ; 3 uses
  %i.jv = extractelement <4 x float> %i.hc, i64 1 ; 3 uses
  %i.jw = fcmp ugt float %i.jv, %.sroa.speculated153 ; 2 uses
  br i1 %i.jr, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jw, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47
  %storemerge29199 = phi float [ %i.lq, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47 ], [ %i.jv, %.preheader192 ] ; 4 uses
  %i.jx = load float, ptr %i.jn, align 4, !tbaa !1908 ; 2 uses
  %i.jy = load float, ptr %i.ek, align 8, !tbaa !1912
  %i.jz = load float, ptr %i.c, align 8, !tbaa !1907
  %i.ka = fsub float %storemerge29199, %i.jz      ; 3 uses
  %i.kb = load float, ptr %i.e, align 4, !tbaa !1902 ; 3 uses
  %i.kc = load float, ptr %i.eo, align 8, !tbaa !1915
  %i.kd = fneg float %i.kc
  %i.ke = fmul float %i.kb, %i.kd
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.ka, float %i.ke)
  %i.kg = load float, ptr %i.hv, align 4, !tbaa !1911
  %i.kh = fdiv float %i.kf, %i.kg
  %i.ki = fadd float %i.jx, %i.kh                 ; 3 uses
  %i.kj = fmul float %i.kb, %i.kb
  %i.kk = fmul float %i.ka, %i.ka
  %i.kl = fsub float %i.kj, %i.kk
  %i.km = tail call noundef float @sqrtf(float noundef %i.kl) #24
  %i.kn = fadd float %i.jx, %i.km                 ; 3 uses
  %i.ko = tail call float @llvm.fabs.f32(float %i.ki)
  %i.kp = fcmp ueq float %i.ko, +inf
  br i1 %i.kp, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kq = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.kr = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.ks = fsub float %storemerge29199, %i.kr
  %i.kt = fmul float %i.kq, %i.ks
  %i.ku = fadd float %i.kt, 5.000000e-01
  %i.kv = tail call noundef float @llvm.floor.f32(float %i.ku)
  %i.kw = fptoui float %i.kv to i32
  %i.kx = zext i32 %i.kw to i64
  %i.ky = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !1161
  %i.lb = fcmp olt float %i.ki, %i.la
  br i1 %i.lb, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

bb.x:                                             ; preds = %bb.w
  store float %i.ki, ptr %i.kz, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46: ; preds = %bb.x, %bb.w, %.lr.ph200
  %i.lc = tail call float @llvm.fabs.f32(float %i.kn)
  %i.ld = fcmp ueq float %i.lc, +inf
  br i1 %i.ld, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46
  %i.le = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.lf = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.lg = fsub float %storemerge29199, %i.lf
  %i.lh = fmul float %i.le, %i.lg
  %i.li = fadd float %i.lh, 5.000000e-01
  %i.lj = tail call noundef float @llvm.floor.f32(float %i.li)
  %i.lk = fptoui float %i.lj to i32
  %i.ll = zext i32 %i.lk to i64
  %i.lm = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lm, i64 %i.ll ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !1161
  %i.lp = fcmp ogt float %i.kn, %i.lo
  br i1 %i.lp, label %bb.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

bb.z:                                             ; preds = %bb.y
  store float %i.kn, ptr %i.ln, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i46, %bb.y, %bb.z
  %i.lq = fadd float %storemerge29199, %i.b       ; 2 uses
  %i.lr = fcmp ugt float %i.lq, %.sroa.speculated153
  br i1 %i.lr, label %.loopexit193, label %.lr.ph200, !llvm.loop !13011

.lr.ph198:                                        ; preds = %.preheader194, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50
  %storemerge28197 = phi float [ %i.nk, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50 ], [ %i.jv, %.preheader194 ] ; 4 uses
  %i.ls = load float, ptr %i.jn, align 4, !tbaa !1161 ; 2 uses
  %i.lt = load float, ptr %i.e, align 4, !tbaa !1161 ; 3 uses
  %i.lu = fmul float %i.lt, %i.lt
  %i.lv = load float, ptr %i.c, align 8, !tbaa !1161
  %i.lw = fsub float %storemerge28197, %i.lv      ; 3 uses
  %i.lx = fmul float %i.lw, %i.lw
  %i.ly = fsub float %i.lu, %i.lx
  %i.lz = tail call noundef float @sqrtf(float noundef %i.ly) #24
  %i.ma = fsub float %i.ls, %i.lz                 ; 3 uses
  %i.mb = load float, ptr %i.ek, align 8, !tbaa !1912
  %i.mc = load float, ptr %i.eo, align 8, !tbaa !1915
  %i.md = fmul float %i.lt, %i.mc
  %i.me = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.lw, float %i.md)
  %i.mf = load float, ptr %i.hv, align 4, !tbaa !1911
  %i.mg = fdiv float %i.me, %i.mf
  %i.mh = fadd float %i.ls, %i.mg                 ; 3 uses
  %i.mi = tail call float @llvm.fabs.f32(float %i.ma)
  %i.mj = fcmp ueq float %i.mi, +inf
  br i1 %i.mj, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph198
  %i.mk = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.ml = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.mm = fsub float %storemerge28197, %i.ml
  %i.mn = fmul float %i.mk, %i.mm
  %i.mo = fadd float %i.mn, 5.000000e-01
  %i.mp = tail call noundef float @llvm.floor.f32(float %i.mo)
  %i.mq = fptoui float %i.mp to i32
  %i.mr = zext i32 %i.mq to i64
  %i.ms = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.mr ; 2 uses
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !1161
  %i.mv = fcmp olt float %i.ma, %i.mu
  br i1 %i.mv, label %bb.ab, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

bb.ab:                                            ; preds = %bb.aa
  store float %i.ma, ptr %i.mt, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49: ; preds = %bb.ab, %bb.aa, %.lr.ph198
  %i.mw = tail call float @llvm.fabs.f32(float %i.mh)
  %i.mx = fcmp ueq float %i.mw, +inf
  br i1 %i.mx, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49
  %i.my = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.mz = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.na = fsub float %storemerge28197, %i.mz
  %i.nb = fmul float %i.my, %i.na
  %i.nc = fadd float %i.nb, 5.000000e-01
  %i.nd = tail call noundef float @llvm.floor.f32(float %i.nc)
  %i.ne = fptoui float %i.nd to i32
  %i.nf = zext i32 %i.ne to i64
  %i.ng = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.nf ; 2 uses
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !1161
  %i.nj = fcmp ogt float %i.mh, %i.ni
  br i1 %i.nj, label %bb.ad, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

bb.ad:                                            ; preds = %bb.ac
  store float %i.mh, ptr %i.nh, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i49, %bb.ac, %bb.ad
  %i.nk = fadd float %storemerge28197, %i.b       ; 2 uses
  %i.nl = fcmp ugt float %i.nk, %.sroa.speculated153
  br i1 %i.nl, label %.loopexit193, label %.lr.ph198, !llvm.loop !13012

.loopexit193:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit47, %.preheader194, %.preheader192, %._crit_edge
  %i.nm = extractelement <4 x float> %i.ex, i64 2 ; 4 uses
  %i.nn = extractelement <4 x float> %i.ey, i64 3 ; 3 uses
  %i.no = fcmp olt float %i.nm, %i.nn
  br i1 %i.no, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %.loopexit193
  %i.np = extractelement <4 x float> %i.hc, i64 2 ; 2 uses
  %i.nq = fcmp ugt float %i.np, %i.nn
  br i1 %i.nq, label %.loopexit187, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 348
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52
  %storemerge32205 = phi float [ %i.np, %.lr.ph206 ], [ %i.pn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52 ] ; 4 uses
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !1908 ; 2 uses
  %2 = load <4 x float>, ptr %i.ek, align 8
  %i.nt = load float, ptr %i.c, align 8, !tbaa !1907
  %i.nu = fsub float %storemerge32205, %i.nt
  %3 = load <4 x float>, ptr %i.e, align 4
  %i.nv = load float, ptr %i.eo, align 8, !tbaa !1915 ; 2 uses
  %i.nw = fneg float %i.nv
  %4 = load <4 x float>, ptr %i.hv, align 4
  %i.nx = shufflevector <4 x float> %3, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ny = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.nz = insertelement <2 x float> %i.ny, float %i.nv, i64 1
  %i.oa = fmul <2 x float> %i.nx, %i.nz
  %i.ob = shufflevector <4 x float> %2, <4 x float> poison, <2 x i32> zeroinitializer
  %i.oc = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ob, <2 x float> %i.od, <2 x float> %i.oa)
  %i.of = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %i.og = fdiv <2 x float> %i.oe, %i.of           ; 2 uses
  %i.oh = extractelement <2 x float> %i.og, i64 0
  %i.oi = fadd float %i.ns, %i.oh                 ; 3 uses
  %i.oj = extractelement <2 x float> %i.og, i64 1
  %i.ok = fadd float %i.ns, %i.oj                 ; 3 uses
  %i.ol = tail call float @llvm.fabs.f32(float %i.oi)
  %i.om = fcmp ueq float %i.ol, +inf
  br i1 %i.om, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.on = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.oo = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.op = fsub float %storemerge32205, %i.oo
  %i.oq = fmul float %i.on, %i.op
  %i.or = fadd float %i.oq, 5.000000e-01
  %i.os = tail call noundef float @llvm.floor.f32(float %i.or)
  %i.ot = fptoui float %i.os to i32
  %i.ou = zext i32 %i.ot to i64
  %i.ov = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.ou ; 2 uses
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !1161
  %i.oy = fcmp olt float %i.oi, %i.ox
  br i1 %i.oy, label %bb.ag, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

bb.ag:                                            ; preds = %bb.af
  store float %i.oi, ptr %i.ow, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.oz = tail call float @llvm.fabs.f32(float %i.ok)
  %i.pa = fcmp ueq float %i.oz, +inf
  br i1 %i.pa, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52, label %bb.ah

bb.ah:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51
  %i.pb = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.pc = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.pd = fsub float %storemerge32205, %i.pc
  %i.pe = fmul float %i.pb, %i.pd
  %i.pf = fadd float %i.pe, 5.000000e-01
  %i.pg = tail call noundef float @llvm.floor.f32(float %i.pf)
  %i.ph = fptoui float %i.pg to i32
  %i.pi = zext i32 %i.ph to i64
  %i.pj = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.pi ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !1161
  %i.pm = fcmp ogt float %i.ok, %i.pl
  br i1 %i.pm, label %bb.ai, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

bb.ai:                                            ; preds = %bb.ah
  store float %i.ok, ptr %i.pk, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i51, %bb.ah, %bb.ai
  %i.pn = fadd float %storemerge32205, %i.b       ; 2 uses
  %i.po = fcmp ugt float %i.pn, %i.nn
  br i1 %i.po, label %.loopexit187, label %bb.ae, !llvm.loop !13013

bb.aj:                                            ; preds = %.loopexit193
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.pq = load float, ptr %i.pp, align 8, !tbaa !1910
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 3 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !1908
  %i.pt = fcmp ugt float %i.pq, %i.ps
  %i.pu = extractelement <4 x float> %i.hc, i64 3 ; 3 uses
  %i.pv = fcmp ugt float %i.pu, %i.nm             ; 2 uses
  br i1 %i.pt, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.aj
  br i1 %i.pv, label %.loopexit187, label %.lr.ph202

.preheader188:                                    ; preds = %bb.aj
  br i1 %i.pv, label %.loopexit187, label %.lr.ph204

.lr.ph202:                                        ; preds = %.preheader190, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54
  %storemerge31201 = phi float [ %i.ro, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54 ], [ %i.pu, %.preheader190 ] ; 5 uses
  %i.pw = load float, ptr %i.pp, align 8, !tbaa !1161
  %i.px = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.py = fmul float %i.px, %i.px                 ; 2 uses
  %i.pz = load float, ptr %i.g, align 4, !tbaa !1161
  %i.qa = fsub float %storemerge31201, %i.pz      ; 2 uses
  %i.qb = fmul float %i.qa, %i.qa
  %i.qc = fsub float %i.py, %i.qb
  %i.qd = tail call noundef float @sqrtf(float noundef %i.qc) #24
  %i.qe = fsub float %i.pw, %i.qd                 ; 3 uses
  %i.qf = load float, ptr %i.pr, align 4, !tbaa !1161
  %i.qg = load float, ptr %i.c, align 8, !tbaa !1161
  %i.qh = fsub float %storemerge31201, %i.qg      ; 2 uses
  %i.qi = fmul float %i.qh, %i.qh
  %i.qj = fsub float %i.py, %i.qi
  %i.qk = tail call noundef float @sqrtf(float noundef %i.qj) #24
  %i.ql = fadd float %i.qf, %i.qk                 ; 3 uses
  %i.qm = tail call float @llvm.fabs.f32(float %i.qe)
  %i.qn = fcmp ueq float %i.qm, +inf
  br i1 %i.qn, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph202
  %i.qo = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.qp = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.qq = fsub float %storemerge31201, %i.qp
  %i.qr = fmul float %i.qo, %i.qq
  %i.qs = fadd float %i.qr, 5.000000e-01
  %i.qt = tail call noundef float @llvm.floor.f32(float %i.qs)
  %i.qu = fptoui float %i.qt to i32
  %i.qv = zext i32 %i.qu to i64
  %i.qw = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %i.qv ; 2 uses
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !1161
  %i.qz = fcmp olt float %i.qe, %i.qy
  br i1 %i.qz, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

bb.al:                                            ; preds = %bb.ak
  store float %i.qe, ptr %i.qx, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53: ; preds = %bb.al, %bb.ak, %.lr.ph202
  %i.ra = tail call float @llvm.fabs.f32(float %i.ql)
  %i.rb = fcmp ueq float %i.ra, +inf
  br i1 %i.rb, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54, label %bb.am

bb.am:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53
  %i.rc = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.rd = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.re = fsub float %storemerge31201, %i.rd
  %i.rf = fmul float %i.rc, %i.re
  %i.rg = fadd float %i.rf, 5.000000e-01
  %i.rh = tail call noundef float @llvm.floor.f32(float %i.rg)
  %i.ri = fptoui float %i.rh to i32
  %i.rj = zext i32 %i.ri to i64
  %i.rk = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.rj ; 2 uses
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !1161
  %i.rn = fcmp ogt float %i.ql, %i.rm
  br i1 %i.rn, label %bb.an, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

bb.an:                                            ; preds = %bb.am
  store float %i.ql, ptr %i.rl, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i53, %bb.am, %bb.an
  %i.ro = fadd float %storemerge31201, %i.b       ; 2 uses
  %i.rp = fcmp ugt float %i.ro, %i.nm
  br i1 %i.rp, label %.loopexit187, label %.lr.ph202, !llvm.loop !13014

.lr.ph204:                                        ; preds = %.preheader188, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56
  %storemerge30203 = phi float [ %i.ti, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56 ], [ %i.pu, %.preheader188 ] ; 5 uses
  %i.rq = load float, ptr %i.pr, align 4, !tbaa !1161
  %i.rr = load float, ptr %i.e, align 4, !tbaa !1161 ; 2 uses
  %i.rs = fmul float %i.rr, %i.rr                 ; 2 uses
  %i.rt = load float, ptr %i.c, align 8, !tbaa !1161
  %i.ru = fsub float %storemerge30203, %i.rt      ; 2 uses
  %i.rv = fmul float %i.ru, %i.ru
  %i.rw = fsub float %i.rs, %i.rv
  %i.rx = tail call noundef float @sqrtf(float noundef %i.rw) #24
  %i.ry = fsub float %i.rq, %i.rx                 ; 3 uses
  %i.rz = load float, ptr %i.pp, align 8, !tbaa !1161
  %i.sa = load float, ptr %i.g, align 4, !tbaa !1161
  %i.sb = fsub float %storemerge30203, %i.sa      ; 2 uses
  %i.sc = fmul float %i.sb, %i.sb
  %i.sd = fsub float %i.rs, %i.sc
  %i.se = tail call noundef float @sqrtf(float noundef %i.sd) #24
  %i.sf = fadd float %i.rz, %i.se                 ; 3 uses
  %i.sg = tail call float @llvm.fabs.f32(float %i.ry)
  %i.sh = fcmp ueq float %i.sg, +inf
  br i1 %i.sh, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph204
  %i.si = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.sj = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.sk = fsub float %storemerge30203, %i.sj
  %i.sl = fmul float %i.si, %i.sk
  %i.sm = fadd float %i.sl, 5.000000e-01
  %i.sn = tail call noundef float @llvm.floor.f32(float %i.sm)
  %i.so = fptoui float %i.sn to i32
  %i.sp = zext i32 %i.so to i64
  %i.sq = load ptr, ptr %i.hn, align 8, !tbaa !1857
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sq, i64 %i.sp ; 2 uses
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !1161
  %i.st = fcmp olt float %i.ry, %i.ss
  br i1 %i.st, label %bb.ap, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

bb.ap:                                            ; preds = %bb.ao
  store float %i.ry, ptr %i.sr, align 4, !tbaa !1161
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55: ; preds = %bb.ap, %bb.ao, %.lr.ph204
  %i.su = tail call float @llvm.fabs.f32(float %i.sf)
  %i.sv = fcmp ueq float %i.su, +inf
  br i1 %i.sv, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKfSN_SN_.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKfSN_.exit.i55
  %i.sw = load float, ptr %i.gy, align 8, !tbaa !13019
  %i.sx = load float, ptr %i.hd, align 4, !tbaa !5098
  %i.sy = fsub float %storemerge30203, %i.sx
  %i.sz = fmul float %i.sw, %i.sy
  %i.ta = fadd float %i.sz, 5.000000e-01
  %i.tb = tail call noundef float @llvm.floor.f32(float %i.ta)
  %i.tc = fptoui float %i.tb to i32
  %i.td = zext i32 %i.tc to i64
  %i.te = load ptr, ptr %i.hp, align 8, !tbaa !1857
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %i.td ; 2 uses
end_hunk_12
begin_hunk_13_@_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE14setXYRangeDataERKj:bb.a

bb.t:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43
  %i.jc = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.jd = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.je = fsub double %storemerge196, %i.jd
  %i.jf = fmul double %i.jc, %i.je
  %i.jg = fadd double %i.jf, 5.000000e-01
  %i.jh = tail call noundef double @llvm.floor.f64(double %i.jg)
  %i.ji = fptoui double %i.jh to i32
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.jj ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !1192
  %i.jn = fcmp ogt double %i.il, %i.jm
  br i1 %i.jn, label %bb.u, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

bb.u:                                             ; preds = %bb.t
  store double %i.il, ptr %i.jl, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit44: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i43, %bb.t, %bb.u
  %i.jo = fadd double %storemerge196, %i.b        ; 2 uses
  %i.jp = fcmp ugt double %i.jo, %i.et
  br i1 %i.jp, label %._crit_edge, label %bb.q, !llvm.loop !13213

bb.v:                                             ; preds = %._crit_edge
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !5150
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.jt = load double, ptr %i.js, align 8, !tbaa !5151
  %i.ju = fcmp ogt double %i.jr, %i.jt
  %i.jv = fcmp olt double %i.ev, %i.eu
  %.sroa.speculated153 = select i1 %i.jv, double %i.ev, double %i.eu ; 3 uses
  %i.jw = extractelement <4 x double> %i.hg, i64 1 ; 3 uses
  %i.jx = fcmp ugt double %i.jw, %.sroa.speculated153 ; 2 uses
  br i1 %i.ju, label %.preheader192, label %.preheader194

.preheader194:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph198

.preheader192:                                    ; preds = %bb.v
  br i1 %i.jx, label %.loopexit193, label %.lr.ph200

.lr.ph200:                                        ; preds = %.preheader192, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47
  %storemerge29199 = phi double [ %i.lr, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47 ], [ %i.jw, %.preheader192 ] ; 4 uses
  %i.jy = load double, ptr %i.jq, align 8, !tbaa !5150 ; 2 uses
  %i.jz = load double, ptr %i.el, align 8, !tbaa !5153
  %i.ka = load double, ptr %i.c, align 8, !tbaa !5145
  %i.kb = fsub double %storemerge29199, %i.ka     ; 3 uses
  %i.kc = load double, ptr %i.e, align 8, !tbaa !5149 ; 3 uses
  %i.kd = load double, ptr %i.ep, align 8, !tbaa !5154
  %i.ke = fneg double %i.kd
  %i.kf = fmul double %i.kc, %i.ke
  %i.kg = tail call double @llvm.fmuladd.f64(double %i.jz, double %i.kb, double %i.kf)
  %i.kh = load double, ptr %i.hy, align 8, !tbaa !5152
  %i.ki = fdiv double %i.kg, %i.kh
  %i.kj = fadd double %i.jy, %i.ki                ; 3 uses
  %i.kk = fmul double %i.kc, %i.kc
  %i.kl = fmul double %i.kb, %i.kb
  %i.km = fsub double %i.kk, %i.kl
  %i.kn = tail call noundef double @sqrt(double noundef %i.km) #24
  %i.ko = fadd double %i.jy, %i.kn                ; 3 uses
  %i.kp = tail call double @llvm.fabs.f64(double %i.kj)
  %i.kq = fcmp ueq double %i.kp, +inf
  br i1 %i.kq, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, label %bb.w

bb.w:                                             ; preds = %.lr.ph200
  %i.kr = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.ks = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.kt = fsub double %storemerge29199, %i.ks
  %i.ku = fmul double %i.kr, %i.kt
  %i.kv = fadd double %i.ku, 5.000000e-01
  %i.kw = tail call noundef double @llvm.floor.f64(double %i.kv)
  %i.kx = fptoui double %i.kw to i32
  %i.ky = zext i32 %i.kx to i64
  %i.kz = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %i.ky ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !1192
  %i.lc = fcmp olt double %i.kj, %i.lb
  br i1 %i.lc, label %bb.x, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

bb.x:                                             ; preds = %bb.w
  store double %i.kj, ptr %i.la, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46: ; preds = %bb.x, %bb.w, %.lr.ph200
  %i.ld = tail call double @llvm.fabs.f64(double %i.ko)
  %i.le = fcmp ueq double %i.ld, +inf
  br i1 %i.le, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, label %bb.y

bb.y:                                             ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46
  %i.lf = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.lg = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.lh = fsub double %storemerge29199, %i.lg
  %i.li = fmul double %i.lf, %i.lh
  %i.lj = fadd double %i.li, 5.000000e-01
  %i.lk = tail call noundef double @llvm.floor.f64(double %i.lj)
  %i.ll = fptoui double %i.lk to i32
  %i.lm = zext i32 %i.ll to i64
  %i.ln = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm ; 2 uses
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !1192
  %i.lq = fcmp ogt double %i.ko, %i.lp
  br i1 %i.lq, label %bb.z, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

bb.z:                                             ; preds = %bb.y
  store double %i.ko, ptr %i.lo, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i46, %bb.y, %bb.z
  %i.lr = fadd double %storemerge29199, %i.b      ; 2 uses
  %i.ls = fcmp ugt double %i.lr, %.sroa.speculated153
  br i1 %i.ls, label %.loopexit193, label %.lr.ph200, !llvm.loop !13214

.lr.ph198:                                        ; preds = %.preheader194, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50
  %storemerge28197 = phi double [ %i.nl, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50 ], [ %i.jw, %.preheader194 ] ; 4 uses
  %i.lt = load double, ptr %i.jq, align 8, !tbaa !1192 ; 2 uses
  %i.lu = load double, ptr %i.e, align 8, !tbaa !1192 ; 3 uses
  %i.lv = fmul double %i.lu, %i.lu
  %i.lw = load double, ptr %i.c, align 8, !tbaa !1192
  %i.lx = fsub double %storemerge28197, %i.lw     ; 3 uses
  %i.ly = fmul double %i.lx, %i.lx
  %i.lz = fsub double %i.lv, %i.ly
  %i.ma = tail call noundef double @sqrt(double noundef %i.lz) #24
  %i.mb = fsub double %i.lt, %i.ma                ; 3 uses
  %i.mc = load double, ptr %i.el, align 8, !tbaa !5153
  %i.md = load double, ptr %i.ep, align 8, !tbaa !5154
  %i.me = fmul double %i.lu, %i.md
  %i.mf = tail call double @llvm.fmuladd.f64(double %i.mc, double %i.lx, double %i.me)
  %i.mg = load double, ptr %i.hy, align 8, !tbaa !5152
  %i.mh = fdiv double %i.mf, %i.mg
  %i.mi = fadd double %i.lt, %i.mh                ; 3 uses
  %i.mj = tail call double @llvm.fabs.f64(double %i.mb)
  %i.mk = fcmp ueq double %i.mj, +inf
  br i1 %i.mk, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph198
  %i.ml = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.mm = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.mn = fsub double %storemerge28197, %i.mm
  %i.mo = fmul double %i.ml, %i.mn
  %i.mp = fadd double %i.mo, 5.000000e-01
  %i.mq = tail call noundef double @llvm.floor.f64(double %i.mp)
  %i.mr = fptoui double %i.mq to i32
  %i.ms = zext i32 %i.mr to i64
  %i.mt = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %i.ms ; 2 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !1192
  %i.mw = fcmp olt double %i.mb, %i.mv
  br i1 %i.mw, label %bb.ab, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

bb.ab:                                            ; preds = %bb.aa
  store double %i.mb, ptr %i.mu, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49: ; preds = %bb.ab, %bb.aa, %.lr.ph198
  %i.mx = tail call double @llvm.fabs.f64(double %i.mi)
  %i.my = fcmp ueq double %i.mx, +inf
  br i1 %i.my, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, label %bb.ac

bb.ac:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49
  %i.mz = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.na = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.nb = fsub double %storemerge28197, %i.na
  %i.nc = fmul double %i.mz, %i.nb
  %i.nd = fadd double %i.nc, 5.000000e-01
  %i.ne = tail call noundef double @llvm.floor.f64(double %i.nd)
  %i.nf = fptoui double %i.ne to i32
  %i.ng = zext i32 %i.nf to i64
  %i.nh = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.ng ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !1192
  %i.nk = fcmp ogt double %i.mi, %i.nj
  br i1 %i.nk, label %bb.ad, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

bb.ad:                                            ; preds = %bb.ac
  store double %i.mi, ptr %i.ni, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i49, %bb.ac, %bb.ad
  %i.nl = fadd double %storemerge28197, %i.b      ; 2 uses
  %i.nm = fcmp ugt double %i.nl, %.sroa.speculated153
  br i1 %i.nm, label %.loopexit193, label %.lr.ph198, !llvm.loop !13215

.loopexit193:                                     ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit50, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit47, %.preheader194, %.preheader192, %._crit_edge
  %i.nn = fcmp olt double %i.eu, %i.ev
  br i1 %i.nn, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %.loopexit193
  %i.no = extractelement <4 x double> %i.hg, i64 2 ; 2 uses
  %i.np = fcmp ugt double %i.no, %i.ev
  br i1 %i.np, label %.loopexit187, label %.lr.ph206

.lr.ph206:                                        ; preds = %.preheader
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph206, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52
  %storemerge32205 = phi double [ %i.no, %.lr.ph206 ], [ %i.pm, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52 ] ; 4 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !5150 ; 2 uses
  %2 = load <2 x double>, ptr %i.el, align 8
  %i.ns = load double, ptr %i.c, align 8, !tbaa !5145
  %i.nt = fsub double %storemerge32205, %i.ns
  %3 = load <2 x double>, ptr %i.e, align 8
  %i.nu = load double, ptr %i.ep, align 8, !tbaa !5154 ; 2 uses
  %i.nv = fneg double %i.nu
  %4 = load <2 x double>, ptr %i.hy, align 8
  %i.nw = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nx = insertelement <2 x double> poison, double %i.nv, i64 0
  %i.ny = insertelement <2 x double> %i.nx, double %i.nu, i64 1
  %i.nz = fmul <2 x double> %i.nw, %i.ny
  %i.oa = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.oc = shufflevector <2 x double> %i.ob, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.oc, <2 x double> %i.nz)
  %i.oe = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %i.of = fdiv <2 x double> %i.od, %i.oe          ; 2 uses
  %i.og = extractelement <2 x double> %i.of, i64 0
  %i.oh = fadd double %i.nr, %i.og                ; 3 uses
  %i.oi = extractelement <2 x double> %i.of, i64 1
  %i.oj = fadd double %i.nr, %i.oi                ; 3 uses
  %i.ok = tail call double @llvm.fabs.f64(double %i.oh)
  %i.ol = fcmp ueq double %i.ok, +inf
  br i1 %i.ol, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.om = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.on = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.oo = fsub double %storemerge32205, %i.on
  %i.op = fmul double %i.om, %i.oo
  %i.oq = fadd double %i.op, 5.000000e-01
  %i.or = tail call noundef double @llvm.floor.f64(double %i.oq)
  %i.os = fptoui double %i.or to i32
  %i.ot = zext i32 %i.os to i64
  %i.ou = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %i.ot ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !1192
  %i.ox = fcmp olt double %i.oh, %i.ow
  br i1 %i.ox, label %bb.ag, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

bb.ag:                                            ; preds = %bb.af
  store double %i.oh, ptr %i.ov, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51: ; preds = %bb.ag, %bb.af, %bb.ae
  %i.oy = tail call double @llvm.fabs.f64(double %i.oj)
  %i.oz = fcmp ueq double %i.oy, +inf
  br i1 %i.oz, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52, label %bb.ah

bb.ah:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51
  %i.pa = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.pb = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.pc = fsub double %storemerge32205, %i.pb
  %i.pd = fmul double %i.pa, %i.pc
  %i.pe = fadd double %i.pd, 5.000000e-01
  %i.pf = tail call noundef double @llvm.floor.f64(double %i.pe)
  %i.pg = fptoui double %i.pf to i32
  %i.ph = zext i32 %i.pg to i64
  %i.pi = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.ph ; 2 uses
  %i.pk = load double, ptr %i.pj, align 8, !tbaa !1192
  %i.pl = fcmp ogt double %i.oj, %i.pk
  br i1 %i.pl, label %bb.ai, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

bb.ai:                                            ; preds = %bb.ah
  store double %i.oj, ptr %i.pj, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit52: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i51, %bb.ah, %bb.ai
  %i.pm = fadd double %storemerge32205, %i.b      ; 2 uses
  %i.pn = fcmp ugt double %i.pm, %i.ev
  br i1 %i.pn, label %.loopexit187, label %bb.ae, !llvm.loop !13216

bb.aj:                                            ; preds = %.loopexit193
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 3 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !5151
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !5150
  %i.ps = fcmp ugt double %i.pp, %i.pr
  %i.pt = extractelement <4 x double> %i.hg, i64 3 ; 3 uses
  %i.pu = fcmp ugt double %i.pt, %i.eu            ; 2 uses
  br i1 %i.ps, label %.preheader188, label %.preheader190

.preheader190:                                    ; preds = %bb.aj
  br i1 %i.pu, label %.loopexit187, label %.lr.ph202

.preheader188:                                    ; preds = %bb.aj
  br i1 %i.pu, label %.loopexit187, label %.lr.ph204

.lr.ph202:                                        ; preds = %.preheader190, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54
  %storemerge31201 = phi double [ %i.rn, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54 ], [ %i.pt, %.preheader190 ] ; 5 uses
  %i.pv = load double, ptr %i.po, align 8, !tbaa !1192
  %i.pw = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.px = fmul double %i.pw, %i.pw                ; 2 uses
  %i.py = load double, ptr %i.h, align 8, !tbaa !1192
  %i.pz = fsub double %storemerge31201, %i.py     ; 2 uses
  %i.qa = fmul double %i.pz, %i.pz
  %i.qb = fsub double %i.px, %i.qa
  %i.qc = tail call noundef double @sqrt(double noundef %i.qb) #24
  %i.qd = fsub double %i.pv, %i.qc                ; 3 uses
  %i.qe = load double, ptr %i.pq, align 8, !tbaa !1192
  %i.qf = load double, ptr %i.c, align 8, !tbaa !1192
  %i.qg = fsub double %storemerge31201, %i.qf     ; 2 uses
  %i.qh = fmul double %i.qg, %i.qg
  %i.qi = fsub double %i.px, %i.qh
  %i.qj = tail call noundef double @sqrt(double noundef %i.qi) #24
  %i.qk = fadd double %i.qe, %i.qj                ; 3 uses
  %i.ql = tail call double @llvm.fabs.f64(double %i.qd)
  %i.qm = fcmp ueq double %i.ql, +inf
  br i1 %i.qm, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph202
  %i.qn = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.qo = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.qp = fsub double %storemerge31201, %i.qo
  %i.qq = fmul double %i.qn, %i.qp
  %i.qr = fadd double %i.qq, 5.000000e-01
  %i.qs = tail call noundef double @llvm.floor.f64(double %i.qr)
  %i.qt = fptoui double %i.qs to i32
  %i.qu = zext i32 %i.qt to i64
  %i.qv = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %i.qu ; 2 uses
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !1192
  %i.qy = fcmp olt double %i.qd, %i.qx
  br i1 %i.qy, label %bb.al, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

bb.al:                                            ; preds = %bb.ak
  store double %i.qd, ptr %i.qw, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53: ; preds = %bb.al, %bb.ak, %.lr.ph202
  %i.qz = tail call double @llvm.fabs.f64(double %i.qk)
  %i.ra = fcmp ueq double %i.qz, +inf
  br i1 %i.ra, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54, label %bb.am

bb.am:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53
  %i.rb = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.rc = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.rd = fsub double %storemerge31201, %i.rc
  %i.re = fmul double %i.rb, %i.rd
  %i.rf = fadd double %i.re, 5.000000e-01
  %i.rg = tail call noundef double @llvm.floor.f64(double %i.rf)
  %i.rh = fptoui double %i.rg to i32
  %i.ri = zext i32 %i.rh to i64
  %i.rj = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.ri ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !1192
  %i.rm = fcmp ogt double %i.qk, %i.rl
  br i1 %i.rm, label %bb.an, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

bb.an:                                            ; preds = %bb.am
  store double %i.qk, ptr %i.rk, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit54: ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i53, %bb.am, %bb.an
  %i.rn = fadd double %storemerge31201, %i.b      ; 2 uses
  %i.ro = fcmp ugt double %i.rn, %i.eu
  br i1 %i.ro, label %.loopexit187, label %.lr.ph202, !llvm.loop !13217

.lr.ph204:                                        ; preds = %.preheader188, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56
  %storemerge30203 = phi double [ %i.th, %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56 ], [ %i.pt, %.preheader188 ] ; 5 uses
  %i.rp = load double, ptr %i.pq, align 8, !tbaa !1192
  %i.rq = load double, ptr %i.e, align 8, !tbaa !1192 ; 2 uses
  %i.rr = fmul double %i.rq, %i.rq                ; 2 uses
  %i.rs = load double, ptr %i.c, align 8, !tbaa !1192
  %i.rt = fsub double %storemerge30203, %i.rs     ; 2 uses
  %i.ru = fmul double %i.rt, %i.rt
  %i.rv = fsub double %i.rr, %i.ru
  %i.rw = tail call noundef double @sqrt(double noundef %i.rv) #24
  %i.rx = fsub double %i.rp, %i.rw                ; 3 uses
  %i.ry = load double, ptr %i.po, align 8, !tbaa !1192
  %i.rz = load double, ptr %i.h, align 8, !tbaa !1192
  %i.sa = fsub double %storemerge30203, %i.rz     ; 2 uses
  %i.sb = fmul double %i.sa, %i.sa
  %i.sc = fsub double %i.rr, %i.sb
  %i.sd = tail call noundef double @sqrt(double noundef %i.sc) #24
  %i.se = fadd double %i.ry, %i.sd                ; 3 uses
  %i.sf = tail call double @llvm.fabs.f64(double %i.rx)
  %i.sg = fcmp ueq double %i.sf, +inf
  br i1 %i.sg, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph204
  %i.sh = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.si = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.sj = fsub double %storemerge30203, %i.si
  %i.sk = fmul double %i.sh, %i.sj
  %i.sl = fadd double %i.sk, 5.000000e-01
  %i.sm = tail call noundef double @llvm.floor.f64(double %i.sl)
  %i.sn = fptoui double %i.sm to i32
  %i.so = zext i32 %i.sn to i64
  %i.sp = load ptr, ptr %i.hr, align 8, !tbaa !3116
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %i.so ; 2 uses
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !1192
  %i.ss = fcmp olt double %i.rx, %i.sr
  br i1 %i.ss, label %bb.ap, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

bb.ap:                                            ; preds = %bb.ao
  store double %i.rx, ptr %i.sq, align 8, !tbaa !1192
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55: ; preds = %bb.ap, %bb.ao, %.lr.ph204
  %i.st = tail call double @llvm.fabs.f64(double %i.se)
  %i.su = fcmp ueq double %i.st, +inf
  br i1 %i.su, label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData12expandYRangeERKdSN_SN_.exit56, label %bb.aq

bb.aq:                                            ; preds = %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E11XYRangeData10expandYMinERKdSN_.exit.i55
  %i.sv = load double, ptr %i.hc, align 8, !tbaa !13222
  %i.sw = load double, ptr %i.hh, align 8, !tbaa !5165
  %i.sx = fsub double %storemerge30203, %i.sw
  %i.sy = fmul double %i.sv, %i.sx
  %i.sz = fadd double %i.sy, 5.000000e-01
  %i.ta = tail call noundef double @llvm.floor.f64(double %i.sz)
  %i.tb = fptoui double %i.ta to i32
  %i.tc = zext i32 %i.tb to i64
  %i.td = load ptr, ptr %i.ht, align 8, !tbaa !3116
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.td, i64 %i.tc ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE23taperedCapsuleBottomTopMUlRfSK_RKfSM_E_clESK_SK_SM_SM_:bb.a
  store float %i.el, ptr %1, align 4, !tbaa !1161
  %i.em = load float, ptr %2, align 4, !tbaa !1161 ; 2 uses
  %i.en = fcmp olt float %i.em, %i.ei
  %i.eo = select i1 %i.en, float %i.ei, float %i.em
  store float %i.eo, ptr %2, align 4, !tbaa !1161
  br label %bb.n

bb.j:                                             ; preds = %.critedge
  %i.ep = icmp eq i32 %i.dz, 2                    ; 2 uses
  %brmerge = or i1 %or.cond.not, %i.ep
  br i1 %brmerge, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.eq = load float, ptr %i.a, align 4, !tbaa !1161
  store float %i.eq, ptr %1, align 4, !tbaa !1161
  %i.er = load float, ptr %i.b, align 4, !tbaa !1161
  store float %i.er, ptr %2, align 4, !tbaa !1161
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.es = icmp eq i32 %i.dz, 0
  br i1 %i.es, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = load float, ptr %2, align 4, !tbaa !1161 ; 2 uses
  %i.eu = load float, ptr %i.a, align 4, !tbaa !1161 ; 4 uses
  %i.ev = fcmp olt float %i.et, %i.eu
  %i.ew = select i1 %i.ev, float %i.eu, float %i.et
  store float %i.ew, ptr %2, align 4, !tbaa !1161
  %i.ex = load float, ptr %1, align 4, !tbaa !1161 ; 2 uses
  %i.ey = fcmp olt float %i.eu, %i.ex
  %i.ez = select i1 %i.ey, float %i.eu, float %i.ex
  store float %i.ez, ptr %1, align 4, !tbaa !1161
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %bb.i, %bb.g, %bb.m, %bb.k
  %.3 = phi i1 [ true, %bb.m ], [ %i.ep, %bb.k ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.critedge69

.critedge69:                                      ; preds = %bb.f, %bb.e, %bb.n
  %.4 = phi i1 [ %.3, %bb.n ], [ true, %bb.e ], [ true, %bb.f ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24openConeFrustumBottomTopERfSJ_RiRKfSM_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #3 comdat align 2 {
bb.a:
  store i32 0, ptr %3, align 4, !tbaa !741
  %i.a = load float, ptr %4, align 4, !tbaa !1161
  %i.b = fpext float %i.a to double
  %i.c = load float, ptr %5, align 4, !tbaa !1161
  %i.d = fpext float %i.c to double
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load double, ptr %i.h, align 8, !tbaa !5209 ; 2 uses
  %i.j = load <3 x double>, ptr %i.f, align 8, !tbaa !1192, !noalias !13466
  %i.k = load <4 x double>, ptr %i.g, align 8, !tbaa !1192 ; 5 uses
  %i.l = load double, ptr %i.e, align 8, !tbaa !5210 ; 2 uses
  %i.m = insertelement <3 x double> poison, double %i.b, i64 0
  %i.n = insertelement <3 x double> %i.m, double %i.d, i64 1
  %i.o = shufflevector <4 x double> %i.k, <4 x double> poison, <3 x i32> <i32 poison, i32 poison, i32 3>
  %i.p = shufflevector <3 x double> %i.n, <3 x double> %i.o, <3 x i32> <i32 0, i32 1, i32 5>
  %i.q = fsub <3 x double> %i.p, %i.j             ; 6 uses
  %i.r = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.t = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 1, i32 5>
  %i.u = fmul <2 x double> %i.r, %i.t
  %i.v = shufflevector <3 x double> %i.q, <3 x double> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %i.w = shufflevector <4 x double> %i.k, <4 x double> %i.v, <2 x i32> <i32 0, i32 5>
  %i.x = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.u)
  %i.z = shufflevector <4 x double> %i.k, <4 x double> %i.s, <2 x i32> <i32 2, i32 6>
  %i.aa = shufflevector <3 x double> %i.q, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.aa, <2 x double> %i.y) ; 2 uses
  %i.ac = fneg <2 x double> %i.ab                 ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = extractelement <4 x double> %i.k, i64 2 ; 4 uses
  %i.af = fmul double %i.ae, %i.ad
  %i.ag = extractelement <3 x double> %i.q, i64 2
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ag, double %i.af) ; 6 uses
  %i.ai = extractelement <2 x double> %i.ac, i64 1
  %i.aj = fmul double %i.i, %i.ai
  %i.ak = extractelement <2 x double> %i.ab, i64 0 ; 5 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.ak, double %i.aj) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.an = load double, ptr %i.am, align 8, !tbaa !5211 ; 2 uses
  %i.ao = fcmp une double %i.an, 0.000000e+00
  br i1 %i.ao, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg double %i.an
  %i.aq = fmul double %i.al, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ah, double %i.aq) ; 2 uses
  %i.as = fcmp ult double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = tail call noundef double @sqrt(double noundef %i.ar) #24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.av = load double, ptr %i.au, align 8, !tbaa !5212 ; 2 uses
  %i.aw = fneg double %i.ah
  %i.ax = fsub double %i.at, %i.ah
  %i.ay = fmul double %i.av, %i.ax                ; 3 uses
  %i.az = fneg double %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ae, double %i.ak) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !5207 ; 2 uses
  %i.bd = fcmp ole double %i.bc, %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8         ; 2 uses
  %i.bg = fcmp ole double %i.ba, %i.bf
  %i.bh = select i1 %i.bd, i1 %i.bg, i1 false
  br i1 %i.bh, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bi = load i32, ptr %3, align 4, !tbaa !741
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %3, align 4, !tbaa !741
  %i.bk = fsub double %i.l, %i.ay
  %i.bl = fptrunc double %i.bk to float
  store float %i.bl, ptr %1, align 4, !tbaa !1161
  %.pre = load double, ptr %i.be, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = phi double [ %.pre, %bb.d ], [ %i.bf, %bb.c ]
  %i.bn = fsub double %i.aw, %i.at
  %i.bo = fmul double %i.av, %i.bn                ; 4 uses
  %i.bp = fneg double %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ae, double %i.ak) ; 2 uses
  %i.br = fcmp ole double %i.bc, %i.bq
  %i.bs = fcmp ole double %i.bq, %i.bm
  %i.bt = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %i.bt, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.bu = load i32, ptr %3, align 4, !tbaa !741
  %i.bv = add nsw i32 %i.bu, 1                    ; 2 uses
  store i32 %i.bv, ptr %3, align 4, !tbaa !741
  %i.bw = icmp eq i32 %i.bv, 2
  %i.bx = fcmp ogt double %i.ay, %i.bo
  %or.cond = and i1 %i.bx, %i.bw
  br i1 %or.cond, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = load float, ptr %1, align 4, !tbaa !1161
  store float %i.by, ptr %2, align 4, !tbaa !1161
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.bz = fcmp une double %i.ah, 0.000000e+00
  br i1 %i.bz, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ca = fneg double %i.al
  %i.cb = fmul double %i.ah, 2.000000e+00
  %i.cc = fdiv double %i.ca, %i.cb                ; 2 uses
  %i.cd = fneg double %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cd, double %i.ae, double %i.ak) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !5207
  %i.ch = fcmp ole double %i.cg, %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = fcmp ole double %i.ce, %i.cj
  %i.cl = select i1 %i.ch, i1 %i.ck, i1 false
  br i1 %i.cl, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %3, align 4, !tbaa !741
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.j
  %.sink = phi double [ %i.cc, %bb.j ], [ %i.bo, %bb.g ], [ %i.bo, %bb.f ]
  %.sink51 = phi ptr [ %1, %bb.j ], [ %1, %bb.g ], [ %2, %bb.f ]
  %i.cm = fsub double %i.l, %.sink
  %i.cn = fptrunc double %i.cm to float
  store float %i.cn, ptr %.sink51, align 4, !tbaa !1161
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.e, %bb.b, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::function.852", align 16 ; 11 uses
  %6 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 4 ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.openvdb::v13_0::math::Vec3.198", align 8 ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load float, ptr %i.c, align 8, !tbaa !1923 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 156
  %8 = load <4 x float>, ptr %i.e, align 4
  %i.f = load float, ptr %4, align 4, !tbaa !1161
  %i.g = load float, ptr %3, align 4, !tbaa !1161
  %i.h = fcmp ugt float %i.f, %i.g                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %. = select i1 %i.h, ptr %2, ptr %1             ; 2 uses
  %.223 = select i1 %i.h, ptr %1, ptr %2          ; 2 uses
  %.sroa.0186.0.copyload = load <2 x float>, ptr %., align 4
  %.sroa.4187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %., i64 8
  %.sroa.4187.0.copyload = load float, ptr %.sroa.4187.0..sroa_idx, align 4
  %i.j = insertelement <2 x float> poison, float %i.d, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fdiv <2 x float> %.sroa.0186.0.copyload, %i.k ; 8 uses
  %i.m = extractelement <2 x float> %i.l, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0
  %i.o = fdiv float %.sroa.4187.0.copyload, %i.d  ; 5 uses
  store <2 x float> %i.l, ptr %i.i, align 8
  store float %i.o, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.0184.0.copyload = load <2 x float>, ptr %.223, align 4
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.223, i64 8
  %.sroa.4185.0.copyload = load float, ptr %.sroa.4185.0..sroa_idx, align 4
  %i.p = fdiv <2 x float> %.sroa.0184.0.copyload, %i.k ; 6 uses
  %i.q = fdiv float %.sroa.4185.0.copyload, %i.d  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 228
  store <2 x float> %i.p, ptr %i.r, align 4
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 236
  store float %i.q, ptr %.sroa.430.0..sroa_idx, align 4
  %.val = load float, ptr %4, align 4
  %.val226 = load float, ptr %3, align 4
  %i.s = select i1 %i.h, float %.val, float %.val226
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.w = fdiv float %i.s, %i.d                    ; 3 uses
  store float %i.w, ptr %i.t, align 4, !tbaa !5213
  %.val227 = load float, ptr %3, align 4
  %.val228 = load float, ptr %4, align 4
  %.pn = select i1 %i.h, float %.val227, float %.val228
  %.sink = fdiv float %.pn, %i.d                  ; 3 uses
  store float %.sink, ptr %i.u, align 8, !tbaa !5214
  %i.x = shufflevector <4 x float> %8, <4 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = insertelement <2 x float> %i.y, float %.sink, i64 1
  %i.aa = fadd <2 x float> %i.x, %i.z             ; 5 uses
  %i.ab = fmul <2 x float> %i.aa, %i.aa
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.ac, ptr %i.v, align 4, !tbaa !1161
  %i.ad = extractelement <2 x float> %i.aa, i64 0 ; 3 uses
  %i.ae = fcmp ugt float %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.af = extractelement <2 x float> %i.aa, i64 1 ; 3 uses
  %i.ag = fcmp olt float %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.c, label %_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ah = load float, ptr %4, align 4, !tbaa !1161 ; 4 uses
  %i.ai = load float, ptr %3, align 4, !tbaa !1161 ; 4 uses
  %i.aj = fcmp ole float %i.ah, %i.ai             ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.ai, i64 1
  %i.am = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ah, i64 1 ; 2 uses
  %i.ao = fsub <2 x float> %i.al, %i.an
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aq = fdiv <2 x float> %i.an, %i.ap           ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = extractelement <2 x float> %i.aq, i64 1
  %i.at = select i1 %i.aj, float %i.as, float %i.ar ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.au = select i1 %i.aj, ptr %1, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %i.au, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.av = select i1 %i.aj, float %i.ai, float %i.ah
  store float %i.av, ptr %i.a, align 4, !tbaa !1161
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %1, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %i.aw = fmul float %i.at, %.sroa.6.0.copyload.i.i
  %i.ax = fsub float 1.000000e+00, %i.at          ; 2 uses
  %.sroa.0.0.copyload4.i.i124 = load <2 x float>, ptr %2, align 4
  %.sroa.6.0..sroa_idx.i.i125 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload.i.i126 = load float, ptr %.sroa.6.0..sroa_idx.i.i125, align 4
  %i.ay = fmul float %i.ax, %.sroa.6.0.copyload.i.i126
  %i.az = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul <2 x float> %i.ba, %.sroa.0.0.copyload4.i.i
  %i.bc = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fmul <2 x float> %i.bd, %.sroa.0.0.copyload4.i.i124
  %i.bf = fadd <2 x float> %i.bb, %i.be
  %i.bg = fadd float %i.aw, %i.ay
  store <2 x float> %i.bf, ptr %7, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.bg, ptr %.sroa.214.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !1161
  %i.bh = call noundef zeroext i1 @_ZN7openvdb5v13_05tools6lvlset23TaperedCapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEbRKNS0_4math4Vec3IT_EESP_RKSM_SR_(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.k

_ZNK7openvdb5v13_04math4Vec3IdE8unitSafeEv.exit:  ; preds = %bb.b
  %i.bi = fsub float %i.q, %i.o                   ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store float %i.bi, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 344
  store float %i.n, ptr %i.bm, align 8, !tbaa !5215
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 348
  store float %i.m, ptr %i.bn, align 4, !tbaa !13467
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 352
  store float %i.o, ptr %i.bo, align 8, !tbaa !5205
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 356
  store <2 x float> %i.p, ptr %i.bp, align 4, !tbaa !1161
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 364
  store float %i.q, ptr %i.bq, align 4, !tbaa !5206
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.bs = fsub <2 x float> %i.p, %i.l             ; 3 uses
  store <2 x float> %i.bs, ptr %i.br, align 4, !tbaa !1161
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 316
  store float %i.bi, ptr %i.bt, align 4, !tbaa !13468
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 252
  store <2 x float> %i.l, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 260
  store <2 x float> %i.p, ptr %i.bv, align 4
  %i.bw = fsub <2 x float> %i.p, %i.l
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 268
  store <2 x float> %i.bw, ptr %i.bx, align 4
  %i.by = fmul <2 x float> %i.bs, %i.bs
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cc = fsub float %i.w, %.sink                 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 332
  store float %i.cc, ptr %i.cd, align 4, !tbaa !5216
  %i.ce = fmul float %i.cc, %i.cc                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 336
  store float %i.ce, ptr %i.cf, align 8, !tbaa !5217
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.ch = fpext float %i.ce to double
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cj = fpext float %i.af to double
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cl = fpext float %i.ad to double             ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cn = fpext float %i.bi to double             ; 3 uses
  %i.co = fneg double %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cq = fpext <2 x float> %i.l to <2 x double>
  %i.cr = fpext float %i.o to double
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ct = fsub <2 x float> %i.p, %i.l             ; 5 uses
  store <2 x float> %i.ct, ptr %i.bj, align 8
  %foldExtExtBinop = fmul <2 x float> %i.ct, %i.ct
  %i.cu = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cv = extractelement <2 x float> %i.ct, i64 0 ; 2 uses
  %i.cw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.by) ; 4 uses
  store float %i.cw, ptr %i.bz, align 4, !tbaa !5218
  %sqrt = tail call float @llvm.sqrt.f32(float %i.cw)
  store float %sqrt, ptr %i.ca, align 8, !tbaa !13469
  %i.cx = fcmp une float %i.cw, 0.000000e+00
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.cv, float %i.cu)
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.bi, float %i.cy) ; 5 uses
  %i.da = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.db = insertelement <2 x float> %i.da, float %i.cz, i64 1
  %i.dc = fdiv <2 x float> splat (float 1.000000e+00), %i.db ; 2 uses
  %i.dd = extractelement <2 x float> %i.dc, i64 0
  %i.de = select i1 %i.cx, float %i.dd, float 1.000000e+00
  store float %i.de, ptr %i.cb, align 8, !tbaa !13470
  store float %i.cz, ptr %i.bk, align 4, !tbaa !5219
  %i.df = fcmp une float %i.cz, 0.000000e+00
  %i.dg = extractelement <2 x float> %i.dc, i64 1
  %i.dh = select i1 %i.df, float %i.dg, float 1.000000e+00
  store float %i.dh, ptr %i.bl, align 8, !tbaa !5220
  %i.di = fsub float %i.cz, %i.ce
  store float %i.di, ptr %i.cg, align 4, !tbaa !5221
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.cz) ; 2 uses
  %i.dj = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %sqrt.i, i64 1
  %i.dl = fpext <2 x float> %i.dk to <2 x double> ; 2 uses
  %i.dm = fpext float %sqrt.i to double           ; 2 uses
  %i.dn = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.do = fdiv <2 x double> %i.dl, %i.dn          ; 2 uses
  %i.dp = fmul double %i.dm, %i.dm
  %i.dq = fdiv double %i.ch, %i.dp
  %i.dr = fsub double 1.000000e+00, %i.dq         ; 2 uses
  store double %i.dr, ptr %i.ci, align 8, !tbaa !5209
  %i.ds = extractelement <2 x double> %i.do, i64 0
  %i.dt = extractelement <2 x double> %i.do, i64 1 ; 2 uses
  %i.du = fsub double %i.dt, %i.ds                ; 2 uses
  %i.dv = fmul double %i.du, %i.cj
  store double %i.dv, ptr %i.ck, align 8, !tbaa !5207
  %i.dw = fmul double %i.du, %i.cl
  store double %i.dw, ptr %i.cm, align 8, !tbaa !5208
  %i.dx = fpext <2 x float> %i.ct to <2 x double> ; 4 uses
  %foldExtExtBinop230 = fmul <2 x double> %i.dx, %i.dx
  %i.dy = extractelement <2 x double> %foldExtExtBinop230, i64 1
  %i.dz = extractelement <2 x double> %i.dx, i64 0 ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dz, double %i.dy)
  %i.eb = tail call noundef double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %i.ea) ; 2 uses
  %i.ec = tail call double @llvm.fabs.f64(double %i.eb)
  %i.ed = fcmp ule double %i.ec, 1.000000e-15     ; 2 uses
  %sqrt.i155 = tail call double @llvm.sqrt.f64(double %i.eb) ; 2 uses
  %i.ee = fneg <2 x double> %i.dx
  %i.ef = insertelement <2 x double> poison, double %sqrt.i155, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv <2 x double> %i.ee, %i.eg
  %i.ei = insertelement <2 x i1> poison, i1 %i.ed, i64 0
  %i.ej = shufflevector <2 x i1> %i.ei, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ek = select <2 x i1> %i.ej, <2 x double> <double -1.000000e+00, double -0.000000e+00>, <2 x double> %i.eh ; 2 uses
  %.neg193 = fdiv double %i.co, %sqrt.i155
  %i.el = select i1 %i.ed, double -0.000000e+00, double %.neg193 ; 4 uses
  store <2 x double> %i.ek, ptr %i.cp, align 8
  store double %i.el, ptr %.sroa.5173.0..sroa_idx, align 8
  %i.em = fmul double %i.dt, %i.cl                ; 2 uses
  %i.en = insertelement <2 x double> poison, double %i.em, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fmul <2 x double> %i.eo, %i.ek
  %i.eq = fmul double %i.em, %i.el
  %i.er = fsub <2 x double> %i.cq, %i.ep
  %i.es = fsub double %i.cr, %i.eq
  store <2 x double> %i.er, ptr %i.cs, align 8
  %.sroa.9163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.es, ptr %.sroa.9163.0..sroa_idx, align 8
  %i.et = fadd float %i.ad, %i.o                  ; 2 uses
  %i.eu = fadd float %i.af, %i.q                  ; 2 uses
  %i.ev = fcmp olt float %i.et, %i.eu
  %.sroa.speculated = select i1 %i.ev, float %i.eu, float %i.et
  %i.ew = fpext float %.sroa.speculated to double
  %i.ex = fadd double %i.ew, 2.000000e+00
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %i.ex, ptr %i.ey, align 8, !tbaa !5210
  %i.ez = fmul double %i.el, %i.el
end_hunk_14
