Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/seam_finders?download=true
inline.NumInlined: 2970
inline.NumDeleted: 1133
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv6detail12DpSeamFinder9findEdgesEv:bb.a
bb.ee:                                            ; preds = %._crit_edge.i.thread.i436
  %i.yf = icmp slt i32 %i.xi, %i.yd
  br i1 %i.yf, label %.critedge2, label %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439

_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439: ; preds = %bb.ee
  %i.yg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i438, i64 36
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !143
  %i.yi = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !143
  %i.yk = icmp slt i32 %i.yh, %i.yj
  br i1 %i.yk, label %bb.ef, label %.critedge2

bb.ef:                                            ; preds = %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439, %._crit_edge.i.thread.i436, %._crit_edge.thread.i.i449
  %.sroa.4.0.i.ph.i444 = phi ptr [ %.020.lcssa33.i.i437, %._crit_edge.i.thread.i436 ], [ %.020.lcssa33.i.i437, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439 ], [ %.020.lcssa34.i.i450, %._crit_edge.thread.i.i449 ] ; 4 uses
  %i.yl = icmp eq ptr %.sroa.4.0.i.ph.i444, %i.dt
  br i1 %i.yl, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i444, i64 32
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !142 ; 2 uses
  %i.yo = icmp slt i32 %i.xi, %i.yn
  br i1 %i.yo, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.yp = icmp slt i32 %i.yn, %i.xi
  br i1 %i.yp, label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yq = getelementptr inbounds nuw i8, ptr %.19.i.i.i321, i64 36
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !143
  %i.ys = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i444, i64 36
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !143
  %i.yu = icmp slt i32 %i.yr, %i.yt
  br label %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445

_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445: ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef
  %i.yv = phi i1 [ %i.yu, %bb.ei ], [ true, %bb.ef ], [ true, %bb.eg ], [ false, %bb.eh ]
  %i.yw = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc454 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc454:                                        ; preds = %_ZNSt8_Rb_treeISt4pairIiiES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE10_M_insert_IRKS1_NS7_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSF_OT_RT0_.exit.i445
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 32
  %i.yy = load i64, ptr %i.xh, align 4
  store i64 %i.yy, ptr %i.yx, align 4
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.yv, ptr noundef nonnull %i.yw, ptr noundef nonnull %.sroa.4.0.i.ph.i444, ptr noundef nonnull align 8 dereferenceable(32) %i.dt) #28
  %i.yz = load i64, ptr %i.dw, align 8, !tbaa !114
  %i.za = add i64 %i.yz, 1
  store i64 %i.za, ptr %i.dw, align 8, !tbaa !114
  br label %.critedge2

.critedge2:                                       ; preds = %bb.ee, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit5.i.i439, %.noexc454, %.lr.ph575.split, %bb.dz, %_ZNKSt4lessISt4pairIiiEEclERKS1_S4_.exit.i.i325, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS3_EPSt18_Rb_tree_node_baseRS2_.exit.i.i324, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit.thread, %_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEE4findERS4_.exit329
  %storemerge62 = add nuw nsw i32 %storemerge62574, 1 ; 2 uses
  %i.zb = load i32, ptr %i.f, align 8, !tbaa !109 ; 2 uses
  %i.zc = icmp slt i32 %storemerge62, %i.zb
  br i1 %i.zc, label %.lr.ph575.splitthread-pre-split, label %._crit_edge576, !llvm.loop !307

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i404, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i394, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i384, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i374, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i364, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i354, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i344, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i334, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i
  %.pn74.pn = phi { ptr, i32 } [ %i.cv, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i334 ], [ %i.tw, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i414 ], [ %i.bi, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i ], [ %i.sb, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i404 ], [ %i.px, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i394 ], [ %i.oc, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i384 ], [ %i.ly, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i374 ], [ %i.kd, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i364 ], [ %i.ib, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i354 ], [ %i.gg, %_ZNSt8_Rb_treeISt4pairIiiES0_IKS1_iESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE10_Auto_nodeD2Ev.exit.i344 ], [ %lpad.loopexit.split-lp783, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt3mapISt4pairIiiEiSt4lessIS1_ESaIS0_IKS1_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn74.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv6detail12DpSeamFinder16resolveConflictsERKNS_3MatES4_NS_6Point_IiEES6_RS2_S7_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %8 = alloca %"class.cv::Point_", align 8        ; 7 uses
  %9 = alloca %"class.std::vector.20", align 8    ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %10 = alloca %"struct.std::pair.54", align 8    ; 4 uses
  %11 = alloca %"struct.std::pair.54", align 8    ; 4 uses
  %.sroa.096.0.extract.trunc = trunc i64 %3 to i32
  %.sroa.397.0.extract.shift = lshr i64 %3, 32
  %.sroa.397.0.extract.trunc = trunc nuw i64 %.sroa.397.0.extract.shift to i32
  %.sroa.095.0.extract.trunc = trunc i64 %4 to i32
  %.sroa.3.0.extract.shift = lshr i64 %4, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !107
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2cv6detail12DpSeamFinder16computeGradientsERKNS_3MatES4_(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2040 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2024 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2032
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1968 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1716 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1736 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1840 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !112
  %.not277 = icmp eq ptr %i.u, %i.g
  br i1 %.not277, label %.split267.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !112  ; 2 uses
  %.not279413 = icmp eq ptr %i.v, %i.g
  br i1 %.not279413, label %.split267.us, label %.lr.ph

.lr.ph:                                           ; preds = %.split.preheader, %.loopexit
  %i.w = phi ptr [ %i.kt, %.loopexit ], [ %i.v, %.split.preheader ]
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !115  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0205.0253 = phi ptr [ %i.w, %.lr.ph ], [ %i.ak, %bb.f ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 32
  %i.z = load i32, ptr %i.y, align 4, !tbaa !142  ; 7 uses
  %i.aa = sext i32 %i.z to i64                    ; 12 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !137 ; 2 uses
  %i.ad = and i32 %i.ac, 4
  %.not115 = icmp eq i32 %i.ad, 0
  br i1 %.not115, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !143 ; 4 uses
  %i.ag = and i32 %i.ac, -5
  %i.ah = sext i32 %i.af to i64                   ; 8 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !137 ; 2 uses
  %.not116 = icmp eq i32 %i.ag, %i.aj
  br i1 %.not116, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0205.0253) #31 ; 2 uses
  %.not280 = icmp eq ptr %i.ak, %i.g
  br i1 %.not280, label %.split267.us, label %bb.d, !llvm.loop !310

bb.g:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0205.0253, i64 32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.aa
  %i.an = load i64, ptr %i.al, align 4            ; 3 uses
  %i.ao = add nsw i32 %i.z, 1                     ; 6 uses
  %i.ap = add nsw i32 %i.af, 1                    ; 6 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !111 ; 3 uses
  %.not11.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not11.i.i.i.i, label %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.aq, %bb.g ] ; 3 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.g, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !142
  %i.at = icmp slt i32 %i.as, %i.z                ; 2 uses
  %.sink.i.i.i.i = select i1 %i.at, i64 24, i64 16
  %.19.i.i.i.i = select i1 %i.at, ptr %.0812.i.i.i.i, ptr %.013.i.i.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i7.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

.lr.ph.i.i.i7.i:                                  ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i7.i
  %.013.i.i.i8.i = phi ptr [ %.1.i.i.i15.i, %.lr.ph.i.i.i7.i ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 3 uses
  %.0812.i.i.i9.i = phi ptr [ %spec.select32.i, %.lr.ph.i.i.i7.i ], [ %i.g, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.013.i.i.i8.i, i64 32
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !142
  %i.ax = icmp slt i32 %i.z, %i.aw                ; 2 uses
  %spec.select.i = select i1 %i.ax, i64 16, i64 24
  %spec.select32.i = select i1 %i.ax, ptr %.013.i.i.i8.i, ptr %.0812.i.i.i9.i ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i.i8.i, i64 %spec.select.i
  %.1.i.i.i15.i = load ptr, ptr %i.ay, align 8, !tbaa !144 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %.1.i.i.i15.i, null
  br i1 %.not.i.i.i16.i, label %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit, label %.lr.ph.i.i.i7.i, !llvm.loop !8

_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit: ; preds = %.lr.ph.i.i.i7.i, %bb.g
  %.08.lcssa.i.i.i31.i = phi ptr [ %i.g, %bb.g ], [ %.19.i.i.i.i, %.lr.ph.i.i.i7.i ]
  %.08.lcssa.i.i.i17.i = phi ptr [ %i.g, %bb.g ], [ %spec.select32.i, %.lr.ph.i.i.i7.i ]
  %i.az = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.08.lcssa.i.i.i31.i) #31
  %i.ba = icmp eq ptr %i.az, %.08.lcssa.i.i.i17.i
  br i1 %i.ba, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !47  ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.aa ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !139 ; 2 uses
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !47  ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.aa ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !139 ; 4 uses
  %i.bj = icmp slt i32 %i.be, %i.bi
  br i1 %i.bj, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %bb.h
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !138 ; 2 uses
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !138 ; 3 uses
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph258.split.preheader, label %._crit_edge259

.lr.ph258.split.preheader:                        ; preds = %.lr.ph258
  %i.bn = sext i32 %i.be to i64
  br label %.lr.ph258.split

._crit_edge259:                                   ; preds = %._crit_edge, %.lr.ph258, %bb.h
  %i.bo = phi i32 [ %i.bi, %bb.h ], [ %i.bi, %.lr.ph258 ], [ %i.bx, %._crit_edge ]
  %i.bp = icmp eq i32 %i.aj, 1
  %i.bq = select i1 %i.bp, i32 2, i32 1
  store i32 %i.bq, ptr %i.am, align 4, !tbaa !137
  br label %bb.u

.lr.ph258.split:                                  ; preds = %.lr.ph258.split.preheader, %._crit_edge
  %i.br = phi i32 [ %i.bi, %.lr.ph258.split.preheader ], [ %i.bx, %._crit_edge ]
  %i.bs = phi i32 [ %i.bl, %.lr.ph258.split.preheader ], [ %13, %._crit_edge ] ; 2 uses
  %i.bt = phi i32 [ %i.bl, %.lr.ph258.split.preheader ], [ %i.by, %._crit_edge ] ; 2 uses
  %12 = phi i32 [ %i.bk, %.lr.ph258.split.preheader ], [ %i.bz, %._crit_edge ] ; 3 uses
  %indvars.iv289 = phi i64 [ %i.bn, %.lr.ph258.split.preheader ], [ %indvars.iv.next290, %._crit_edge ] ; 2 uses
  %i.bu = icmp slt i32 %12, %i.bt
  br i1 %i.bu, label %.lr.ph255, label %._crit_edge

.lr.ph255:                                        ; preds = %.lr.ph258.split
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.bw = sext i32 %12 to i64
  %.pre319 = load i32, ptr %i.o, align 4, !tbaa !63
  %.pre321 = load i64, ptr %i.q, align 8
  br label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i32, ptr %i.bc, align 4, !tbaa !138
  %.pre323 = load i32, ptr %i.bh, align 4, !tbaa !139
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph258.split
  %i.bx = phi i32 [ %.pre323, %._crit_edge.loopexit ], [ %i.br, %.lr.ph258.split ] ; 3 uses
  %13 = phi i32 [ %i.ck, %._crit_edge.loopexit ], [ %i.bs, %.lr.ph258.split ]
  %i.by = phi i32 [ %i.ck, %._crit_edge.loopexit ], [ %i.bt, %.lr.ph258.split ]
  %i.bz = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %12, %.lr.ph258.split ]
  %indvars.iv.next290 = add nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.ca = sext i32 %i.bx to i64
  %i.cb = icmp slt i64 %indvars.iv.next290, %i.ca
  br i1 %i.cb, label %.lr.ph258.split, label %._crit_edge259, !llvm.loop !311

bb.i:                                             ; preds = %.lr.ph255, %bb.k
  %i.cc = phi i32 [ %i.bs, %.lr.ph255 ], [ %i.ck, %bb.k ]
  %i.cd = phi i64 [ %.pre321, %.lr.ph255 ], [ %i.cl, %bb.k ] ; 2 uses
  %i.ce = phi i32 [ %.pre319, %.lr.ph255 ], [ %i.cm, %bb.k ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph255 ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.cf = icmp slt i32 %i.ce, 2
  %i.cg = mul i64 %i.cd, %indvars.iv289
  %.sink.idx.i = select i1 %i.cf, i64 0, i64 %i.cg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sink.idx.i
  %i.ch = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %indvars.iv ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !48
  %i.cj = icmp eq i32 %i.ci, %i.ao
  br i1 %i.cj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ap, ptr %i.ch, align 4, !tbaa !48
  %.pre.a = load i32, ptr %i.o, align 4, !tbaa !63
  %.pre320 = load i64, ptr %i.q, align 8
  %.pre322 = load i32, ptr %i.bg, align 4, !tbaa !138
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ck = phi i32 [ %i.cc, %bb.i ], [ %.pre322, %bb.j ] ; 4 uses
  %i.cl = phi i64 [ %i.cd, %bb.i ], [ %.pre320, %bb.j ]
  %i.cm = phi i32 [ %i.ce, %bb.i ], [ %.pre.a, %bb.j ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cn = sext i32 %i.ck to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !312

bb.l:                                             ; preds = %_ZN2cv6detail12DpSeamFinder18hasOnlyOneNeighborEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store i32 0, ptr %7, align 8, !tbaa !138
  store i32 0, ptr %i.j, align 4, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store i32 0, ptr %8, align 8, !tbaa !138
  store i32 0, ptr %i.k, align 4, !tbaa !139
  %i.cp = call noundef zeroext i1 @_ZN2cv6detail12DpSeamFinder11getSeamTipsEiiRNS_6Point_IiEES4_(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.z, i32 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8)
  br i1 %i.cp, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.sroa.065.0.copyload = load i64, ptr %7, align 8, !tbaa !48
  %.sroa.0.0.copyload = load i64, ptr %8, align 8, !tbaa !48
  %i.cq = invoke noundef zeroext i1 @_ZN2cv6detail12DpSeamFinder12estimateSeamERKNS_3MatES4_NS_6Point_IiEES6_iS6_S6_RSt6vectorIS6_SaIS6_EERb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i64 %3, i64 %4, i32 noundef %i.z, i64 %.sroa.065.0.copyload, i64 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %i.cq, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cr = load i8, ptr %i.a, align 1, !tbaa !146, !range !147, !noundef !148
  %i.cs = trunc nuw i8 %i.cr to i1
  invoke void @_ZN2cv6detail12DpSeamFinder21updateLabelsUsingSeamEiiRKSt6vectorINS_6Point_IiEESaIS4_EEb(ptr noundef nonnull align 8 dereferenceable(2064) %0, i32 noundef %i.z, i32 noundef %i.af, ptr noundef nonnull align 8 dereferenceable(24) %9, i1 noundef zeroext %i.cs)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cu = load ptr, ptr %9, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #27
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %i.ct

bb.r:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cz = load ptr, ptr %9, align 8, !tbaa !47    ; 3 uses
  %.not.i.i.i123 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit124, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !55
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #27
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit124

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit124: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit124, %bb.l
  %i.de = load ptr, ptr %i.h, align 8, !tbaa !115 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.ah
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !137
  %i.dh = icmp eq i32 %i.dg, 1
  %i.di = select i1 %i.dh, i32 6, i32 5
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.aa
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre324 = load ptr, ptr %i.m, align 8, !tbaa !47
  %.pre325 = load ptr, ptr %i.n, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre325, i64 %i.aa
  %.phi.trans.insert326 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre327 = load i32, ptr %.phi.trans.insert326, align 4, !tbaa !139
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge259
  %i.dk = phi i32 [ %.pre327, %bb.t ], [ %i.bo, %._crit_edge259 ] ; 2 uses
  %i.dl = phi ptr [ %.pre325, %bb.t ], [ %i.bf, %._crit_edge259 ] ; 2 uses
  %i.dm = phi ptr [ %.pre324, %bb.t ], [ %i.bb, %._crit_edge259 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.aa ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !138 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.aa ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !138 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !139 ; 2 uses
  store i64 9223372034707292159, ptr %i.dn, align 4, !tbaa !48
  store i64 -9223372034707292160, ptr %i.dp, align 4, !tbaa !48
  %i.dt = load ptr, ptr %i.r, align 8, !tbaa !117 ; 2 uses
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.aa ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %.not.i.i = icmp eq ptr %i.dx, %i.dv
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit: ; preds = %bb.u, %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.dy = icmp slt i32 %i.ds, %i.dk
  %i.dz = icmp slt i32 %i.do, %i.dq
  %or.cond396 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond396, label %.preheader246.lr.ph.split, label %._crit_edge264.split

.preheader246.lr.ph.split:                        ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit
  %i.ea = sext i32 %i.do to i64
  %i.eb = sext i32 %i.ds to i64
  %wide.trip.count298 = sext i32 %i.dk to i64
  %wide.trip.count = sext i32 %i.dq to i64
  br label %.preheader246

.preheader246:                                    ; preds = %.preheader246.lr.ph.split, %._crit_edge262
  %indvars.iv295 = phi i64 [ %i.eb, %.preheader246.lr.ph.split ], [ %indvars.iv.next296, %._crit_edge262 ] ; 6 uses
  %indvars.iv.next296 = add nsw i64 %indvars.iv295, 1 ; 4 uses
  %i.ec = icmp eq i64 %indvars.iv295, 0
  %i.ed = add nsw i64 %indvars.iv295, -1
  %i.ee = trunc nsw i64 %indvars.iv295 to i32     ; 4 uses
  %i.ef = trunc nsw i64 %indvars.iv.next296 to i32
  br label %bb.ah

._crit_edge264.split.loopexit:                    ; preds = %._crit_edge262
  %.pre328 = load ptr, ptr %i.m, align 8, !tbaa !47
  %.pre329 = load ptr, ptr %i.n, align 8, !tbaa !47
  %.pre330 = load ptr, ptr %i.r, align 8, !tbaa !117
  br label %._crit_edge264.split

._crit_edge264.split:                             ; preds = %._crit_edge264.split.loopexit, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit
  %i.eg = phi ptr [ %.pre330, %._crit_edge264.split.loopexit ], [ %i.dt, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit ]
  %i.eh = phi ptr [ %.pre329, %._crit_edge264.split.loopexit ], [ %i.dl, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit ]
  %i.ei = phi ptr [ %.pre328, %._crit_edge264.split.loopexit ], [ %i.dm, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ah ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !138 ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ah ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !138 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !139 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !139 ; 2 uses
  store i64 9223372034707292159, ptr %i.ej, align 4, !tbaa !48
  store i64 -9223372034707292160, ptr %i.el, align 4, !tbaa !48
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ah ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !47 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !54
  %.not.i.i.1 = icmp eq ptr %i.eu, %i.es
  br i1 %.not.i.i.1, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit.1, label %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.1: ; preds = %._crit_edge264.split
  store ptr %i.es, ptr %i.et, align 8, !tbaa !54
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit.1

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE5clearEv.exit.1: ; preds = %_ZSt8_DestroyIPN2cv6Point_IiEES2_EvT_S4_RSaIT0_E.exit.i.i.1, %._crit_edge264.split
  %i.ev = icmp slt i32 %i.eo, %i.eq
  %i.ew = icmp slt i32 %i.ek, %i.em
end_hunk_0
