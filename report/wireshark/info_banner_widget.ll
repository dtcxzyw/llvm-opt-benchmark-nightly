Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/info_banner_widget?download=true
inline.NumInlined: 2736
inline.NumDeleted: 1108
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN16InfoBannerWidget18buildSlideSequenceEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.s = load i32, ptr %.sroa.0170.0198, align 4  ; 6 uses
  store i32 %i.s, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 1, ptr %i.c, align 1
  %i.t = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16       ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not10.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.v, %bb.e ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %bb.e ]
  %i.x = getelementptr i8, ptr %.012.i.i.i.i, i64 32
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp slt i32 %i.y, %i.s                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.z, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.z, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !75

_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aa = icmp eq ptr %.19.i.i.i.i, %i.w
  br i1 %i.aa, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d, %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_bESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.ab = getelementptr i8, ptr %.19.i.i.i.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp slt i32 %i.s, %i.ac
  %i.ae = getelementptr i8, ptr %.19.i.i.i.i, i64 36
  %spec.select.i = select i1 %i.ad, ptr %i.c, ptr %i.ae
  %.1.in.i.pre = load i8, ptr %spec.select.i, align 1, !range !16
  %i.af = trunc nuw i8 %.1.in.i.pre to i1
  %i.ag = icmp eq i32 %i.s, 3
  %.not38 = select i1 %i.af, i1 true, i1 %i.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not38, label %bb.g, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ah = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not.i46 = icmp eq ptr %i.ah, null
  br i1 %.not.i46, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %.not10.i.i.i.i47 = icmp eq ptr %i.aj, null
  br i1 %.not10.i.i.i.i47, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread, label %.lr.ph.i.i.i.i48

.lr.ph.i.i.i.i48:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i48
  %.012.i.i.i.i49 = phi ptr [ %.1.i.i.i.i54, %.lr.ph.i.i.i.i48 ], [ %i.aj, %bb.h ] ; 3 uses
  %.0811.i.i.i.i50 = phi ptr [ %.19.i.i.i.i51, %.lr.ph.i.i.i.i48 ], [ %i.ak, %bb.h ]
  %i.al = getelementptr i8, ptr %.012.i.i.i.i49, i64 32
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp slt i32 %i.am, %i.s                ; 2 uses
  %.19.i.i.i.i51 = select i1 %i.an, ptr %.0811.i.i.i.i50, ptr %.012.i.i.i.i49 ; 3 uses
  %.1.in.v.i.i.i.i52 = select i1 %i.an, i64 24, i64 16
  %.1.in.i.i.i.i53 = getelementptr i8, ptr %.012.i.i.i.i49, i64 %.1.in.v.i.i.i.i52
  %.1.i.i.i.i54 = load ptr, ptr %.1.in.i.i.i.i53, align 8 ; 2 uses
  %.not.i.i.i.i55 = icmp eq ptr %.1.i.i.i.i54, null
  br i1 %.not.i.i.i.i55, label %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_5QListI11BannerSlideEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %.lr.ph.i.i.i.i48, !llvm.loop !1

_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_5QListI11BannerSlideEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i48
  %i.ao = icmp eq ptr %.19.i.i.i.i51, %i.ak
  br i1 %i.ao, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit

_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit: ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_5QListI11BannerSlideEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.ap = getelementptr i8, ptr %.19.i.i.i.i51, i64 32
  %i.aq = load i32, ptr %i.ap, align 4
  %.not188 = icmp slt i32 %i.s, %i.aq
  br i1 %.not188, label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit
  %i.ar = invoke noundef align 8 dereferenceable(24) ptr @_ZN4QMapI15BannerSlideType5QListI11BannerSlideEEixERKS0_(ptr noundef align 8 dereferenceable_or_null(8) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.j unwind label %bb.k       ; 2 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %1, i8 0, i64 24, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %.idx = mul i64 %i.av, 248                      ; 2 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 %.idx
  %.not189193 = icmp eq i64 %.idx, 0
  br i1 %.not189193, label %_ZN5QListI11BannerSlideE6appendERKS1_.exit, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5QListI11BannerSlideE6appendERKS0_.exit
  %.pre = load i64, ptr %i.m, align 8             ; 5 uses
  %i.ax = icmp eq i64 %.pre, 0
  br i1 %i.ax, label %_ZN5QListI11BannerSlideE6appendERKS1_.exit, label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph:                                           ; preds = %bb.j, %_ZN5QListI11BannerSlideE6appendERKS0_.exit
  %.sroa.0167.0194 = phi ptr [ %i.bn, %_ZN5QListI11BannerSlideE6appendERKS0_.exit ], [ %i.at, %bb.j ] ; 4 uses
  %i.az = load i8, ptr %i.l, align 4, !range !16, !noundef !17
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0167.0194, i64 232
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = add i64 %i.bc, 784350574879
  %spec.select.i56 = icmp ult i64 %i.bd, 1568704592244
  %i.be = icmp slt i64 %i.f, %i.bc
  %or.cond = select i1 %spec.select.i56, i1 %i.be, i1 false
  br i1 %or.cond, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0167.0194, i64 240
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %i.bh = add i64 %i.bg, 784350574879
  %spec.select.i57 = icmp ult i64 %i.bh, 1568704592244
  %i.bi = icmp sgt i64 %i.f, %i.bg
  %or.cond186 = select i1 %spec.select.i57, i1 %i.bi, i1 false
  br i1 %or.cond186, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph
  %i.bj = load i64, ptr %i.m, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i64 noundef %i.bj, ptr noundef align 8 dereferenceable(248) %.sroa.0167.0194)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.n
  %i.bk = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.bl = load atomic i32, ptr %i.bk monotonic, align 4
  %i.bm = icmp sgt i32 %i.bl, 1
  br i1 %i.bm, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI11BannerSlideE6appendERKS0_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5QListI11BannerSlideE6appendERKS0_.exit:       ; preds = %bb.m, %bb.l, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i
  %i.bn = getelementptr i8, ptr %.sroa.0167.0194, i64 248 ; 2 uses
  %.not189 = icmp eq ptr %i.bn, %i.aw
  br i1 %.not189, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %._crit_edge
  %i.bo = load ptr, ptr %i.n, align 8, !noalias !80 ; 3 uses
  %.not.i59 = icmp eq ptr %i.bo, null
  br i1 %.not.i59, label %_ZN15SlideTypeConfigD2Ev.exit74.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !80 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  %.not10.i.i.i.i60 = icmp eq ptr %i.bq, null
  br i1 %.not10.i.i.i.i60, label %_ZN15SlideTypeConfigD2Ev.exit74.thread, label %.lr.ph.i.i.i.i61

.lr.ph.i.i.i.i61:                                 ; preds = %bb.p
  %i.bs = load i32, ptr %i.b, align 4, !noalias !80 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i61
  %.012.i.i.i.i62 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i61 ], [ %.1.i.i.i.i67, %bb.q ] ; 3 uses
  %.0811.i.i.i.i63 = phi ptr [ %i.br, %.lr.ph.i.i.i.i61 ], [ %.19.i.i.i.i64, %bb.q ]
  %i.bt = getelementptr i8, ptr %.012.i.i.i.i62, i64 32
  %i.bu = load i32, ptr %i.bt, align 4, !noalias !80
  %i.bv = icmp slt i32 %i.bu, %i.bs               ; 2 uses
  %.19.i.i.i.i64 = select i1 %i.bv, ptr %.0811.i.i.i.i63, ptr %.012.i.i.i.i62 ; 5 uses
  %.1.in.v.i.i.i.i65 = select i1 %i.bv, i64 24, i64 16
  %.1.in.i.i.i.i66 = getelementptr i8, ptr %.012.i.i.i.i62, i64 %.1.in.v.i.i.i.i65
  %.1.i.i.i.i67 = load ptr, ptr %.1.in.i.i.i.i66, align 8, !noalias !80 ; 2 uses
  %.not.i.i.i.i68 = icmp eq ptr %.1.i.i.i.i67, null
  br i1 %.not.i.i.i.i68, label %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %bb.q, !llvm.loop !0

_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %bb.q
  %i.bw = icmp eq ptr %.19.i.i.i.i64, %i.br
  br i1 %i.bw, label %_ZN15SlideTypeConfigD2Ev.exit74.thread, label %_ZNKSt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i

_ZNKSt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i: ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.bx = getelementptr i8, ptr %.19.i.i.i.i64, i64 32
  %i.by = load i32, ptr %i.bx, align 4, !noalias !80
  %i.bz = icmp slt i32 %i.bs, %i.by
  br i1 %i.bz, label %_ZN15SlideTypeConfigD2Ev.exit74.thread, label %bb.r

bb.r:                                             ; preds = %_ZNKSt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i
  %.sroa.8160.0..sroa_idx = getelementptr i8, ptr %.19.i.i.i.i64, i64 44
  %.sroa.8160.0.copyload = load i32, ptr %.sroa.8160.0..sroa_idx, align 4 ; 3 uses
  %i.ca = getelementptr i8, ptr %.19.i.i.i.i64, i64 88
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !80 ; 4 uses
  %.not.i.i.i.i4.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i4.i, label %_ZN15SlideTypeConfigD2Ev.exit74.a, label %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i: ; preds = %bb.r
  %i.cc = atomicrmw add ptr %i.cb, i32 1 acq_rel, align 4, !noalias !80 ; 0 uses
  %i.cd = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %.not.i.i.i70 = icmp eq i32 %i.cd, 1
  br i1 %.not.i.i.i70, label %bb.s, label %_ZN15SlideTypeConfigD2Ev.exit74.a

bb.s:                                             ; preds = %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.cb, i64 noundef 16, i64 noundef 8) #28
  br label %_ZN15SlideTypeConfigD2Ev.exit74.a

_ZN15SlideTypeConfigD2Ev.exit74.a:                ; preds = %bb.r, %bb.s, %_ZN17QArrayDataPointerI6QColorE5derefEv.exit.i.i.i
  %2 = icmp sgt i32 %.sroa.8160.0.copyload, 0
  %.pre205 = load i64, ptr %i.m, align 8          ; 4 uses
  %i.ce = zext nneg i32 %.sroa.8160.0.copyload to i64
  %.not = icmp sgt i64 %.pre205, %i.ce
  %or.cond224 = select i1 %2, i1 %.not, i1 false
  br i1 %or.cond224, label %bb.t, label %_ZN15SlideTypeConfigD2Ev.exit74.thread

bb.t:                                             ; preds = %_ZN15SlideTypeConfigD2Ev.exit74.a
  %i.cf = load i8, ptr %i.l, align 4, !range !16, !noundef !17
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %_ZN15SlideTypeConfigD2Ev.exit74.thread, label %bb.u

_ZN15SlideTypeConfigD2Ev.exit74.thread:           ; preds = %bb.o, %_ZNKSt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i, %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.p, %bb.t, %_ZN15SlideTypeConfigD2Ev.exit74.a
  %3 = phi i64 [ %.pre, %bb.o ], [ %.pre, %_ZNKSt3mapI15BannerSlideType15SlideTypeConfigSt4lessIS0_ESaISt4pairIKS0_S1_EEE4findERS5_.exit.i ], [ %.pre, %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_15SlideTypeConfigESt10_Select1stIS4_ESt4lessIS0_ESaIS4_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS4_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i ], [ %.pre, %bb.p ], [ %.pre205, %bb.t ], [ %.pre205, %_ZN15SlideTypeConfigD2Ev.exit74.a ]
  %i.ch = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ci = getelementptr [248 x i8], ptr %i.ch, i64 %3
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI11BannerSlideE10growAppendEPKS1_S4_(ptr noundef align 8 dereferenceable_or_null(24) %i.e, ptr noundef %i.ch, ptr noundef %i.ci)
          to label %_ZN5QListI11BannerSlideE6appendERKS1_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.cj = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not.i80 = icmp eq ptr %i.cj, null
  br i1 %.not.i80, label %.lr.ph197.preheader, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cj, i64 16     ; 2 uses
  %.not10.i.i.i.i81 = icmp eq ptr %i.cl, null
  br i1 %.not10.i.i.i.i81, label %.lr.ph197.preheader, label %.lr.ph.i.i.i.i82

.lr.ph.i.i.i.i82:                                 ; preds = %bb.v
  %i.cn = load i32, ptr %i.b, align 4             ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i82
  %.012.i.i.i.i83 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i82 ], [ %.1.i.i.i.i88, %bb.w ] ; 3 uses
  %.0811.i.i.i.i84 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i82 ], [ %.19.i.i.i.i85, %bb.w ]
  %i.co = getelementptr i8, ptr %.012.i.i.i.i83, i64 32
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp slt i32 %i.cp, %i.cn               ; 2 uses
  %.19.i.i.i.i85 = select i1 %i.cq, ptr %.0811.i.i.i.i84, ptr %.012.i.i.i.i83 ; 4 uses
  %.1.in.v.i.i.i.i86 = select i1 %i.cq, i64 24, i64 16
  %.1.in.i.i.i.i87 = getelementptr i8, ptr %.012.i.i.i.i83, i64 %.1.in.v.i.i.i.i86
  %.1.i.i.i.i88 = load ptr, ptr %.1.in.i.i.i.i87, align 8 ; 2 uses
  %.not.i.i.i.i89 = icmp eq ptr %.1.i.i.i.i88, null
  br i1 %.not.i.i.i.i89, label %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, label %bb.w, !llvm.loop !78

_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i: ; preds = %bb.w
  %i.cr = icmp eq ptr %.19.i.i.i.i85, %i.cm
  br i1 %i.cr, label %.lr.ph197.preheader, label %_ZNKSt3mapI15BannerSlideTypeiSt4lessIS0_ESaISt4pairIKS0_iEEE4findERS4_.exit.i

_ZNKSt3mapI15BannerSlideTypeiSt4lessIS0_ESaISt4pairIKS0_iEEE4findERS4_.exit.i: ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i
  %i.cs = getelementptr i8, ptr %.19.i.i.i.i85, i64 32
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp slt i32 %i.cn, %i.ct
  %i.cv = getelementptr i8, ptr %.19.i.i.i.i85, i64 36
  %spec.select.i90 = select i1 %i.cu, ptr %i.d, ptr %i.cv
  %.1.i92.pre = load i32, ptr %spec.select.i90, align 4
  %i.cw = sext i32 %.1.i92.pre to i64
  br label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %bb.u, %bb.v, %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %_ZNKSt3mapI15BannerSlideTypeiSt4lessIS0_ESaISt4pairIKS0_iEEE4findERS4_.exit.i
  %.1.i92 = phi i64 [ 0, %bb.u ], [ 0, %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_iESt10_Select1stIS3_ESt4lessIS0_ESaIS3_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS3_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i ], [ %i.cw, %_ZNKSt3mapI15BannerSlideTypeiSt4lessIS0_ESaISt4pairIKS0_iEEE4findERS4_.exit.i ], [ 0, %bb.v ]
  %i.cx = srem i64 %.1.i92, %.pre205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %wide.trip.count = zext nneg i32 %.sroa.8160.0.copyload to i64
  br label %.lr.ph197

.lr.ph197:                                        ; preds = %.lr.ph197.preheader, %_ZN5QListI11BannerSlideE6appendERKS0_.exit102
  %indvars.iv = phi i64 [ 0, %.lr.ph197.preheader ], [ %indvars.iv.next, %_ZN5QListI11BannerSlideE6appendERKS0_.exit102 ] ; 2 uses
  %i.cy = add i64 %indvars.iv, %i.cx
  %sext = shl i64 %i.cy, 32
  %i.cz = ashr exact i64 %sext, 32
  %i.da = load i64, ptr %i.m, align 8
  %i.db = srem i64 %i.cz, %i.da
  %i.dc = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i.i93 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i93, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i: ; preds = %.lr.ph197
  %i.dd = load atomic i32, ptr %i.dc monotonic, align 4
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

_ZN5QListI11BannerSlideE6detachEv.exit.i:         ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i, %.lr.ph197
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %_ZN5QListI11BannerSlideE6detachEv.exit.i
  %.pre.i = load ptr, ptr %1, align 8             ; 2 uses
  %.not.i.i.i.i.i94 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i94, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i: ; preds = %.noexc95, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i
  %i.df = phi ptr [ %.pre.i, %.noexc95 ], [ %i.dc, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i ]
  %i.dg = load atomic i32, ptr %i.df monotonic, align 4
  %i.dh = icmp sgt i32 %i.dg, 1
  br i1 %i.dh, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, label %bb.x

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i, %.noexc95
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i
  %i.di = load ptr, ptr %i.p, align 8
  %i.dj = getelementptr [248 x i8], ptr %i.di, i64 %i.db
  %i.dk = load i64, ptr %i.q, align 8
  invoke void @_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.e, i64 noundef %i.dk, ptr noundef align 8 dereferenceable(248) %i.dj)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.x
  %i.dl = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not.i.i.i.i.i.i97 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i.i97, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i99, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i98

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i98: ; preds = %.noexc100
  %i.dm = load atomic i32, ptr %i.dl monotonic, align 4
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i99, label %_ZN5QListI11BannerSlideE6appendERKS0_.exit102

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i99: ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i98, %.noexc100
  invoke void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.e, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListI11BannerSlideE6appendERKS0_.exit102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5QListI11BannerSlideE6appendERKS0_.exit102:    ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i.i98, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN5QListI11BannerSlideE6appendERKS1_.exit, label %.lr.ph197, !llvm.loop !79

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN5QListI11BannerSlideE6detachEv.exit.i, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, %bb.x, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i99, %bb.n, %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZN15SlideTypeConfigD2Ev.exit74.thread
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5QListI11BannerSlideED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.z

_ZN5QListI11BannerSlideE6appendERKS1_.exit:       ; preds = %_ZN5QListI11BannerSlideE6appendERKS0_.exit102, %bb.j, %_ZN15SlideTypeConfigD2Ev.exit74.thread, %._crit_edge
  %i.do = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i.i.i103 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i103, label %_ZN5QListI11BannerSlideED2Ev.exit, label %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i.i

_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i.i: ; preds = %_ZN5QListI11BannerSlideE6appendERKS1_.exit
  %i.dp = atomicrmw add ptr %i.do, i32 -1 acq_rel, align 4
  %.not.i.i104 = icmp eq i32 %i.dp, 1
  br i1 %.not.i.i104, label %bb.y, label %_ZN5QListI11BannerSlideED2Ev.exit

bb.y:                                             ; preds = %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i.i
  %i.dq = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.dr = load i64, ptr %i.m, align 8
  %.idx.i.i.i = mul i64 %i.dr, 248                ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i
  %.not4.i.i.i.i.i.i = icmp eq i64 %.idx.i.i.i, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i.i ], [ %i.dq, %bb.y ] ; 2 uses
  call void @_ZN11BannerSlideD2Ev(ptr noundef align 8 dead_on_return(248) dereferenceable_or_null(248) %.05.i.i.i.i.i.i) #28
  %i.dt = getelementptr i8, ptr %.05.i.i.i.i.i.i, i64 248 ; 2 uses
  %.not.i.i.i.i.i.i105 = icmp eq ptr %i.dt, %i.ds
  br i1 %.not.i.i.i.i.i.i105, label %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.y
  %i.du = load ptr, ptr %1, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.du, i64 noundef 248, i64 noundef 8) #28
  br label %_ZN5QListI11BannerSlideED2Ev.exit

_ZN5QListI11BannerSlideED2Ev.exit:                ; preds = %_ZN5QListI11BannerSlideE6appendERKS1_.exit, %_ZN17QArrayDataPointerI11BannerSlideE5derefEv.exit.i.i, %_ZN9QtPrivate16QGenericArrayOpsI11BannerSlideE10destroyAllEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread

_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit.thread: ; preds = %_ZNKSt8_Rb_treeI15BannerSlideTypeSt4pairIKS0_5QListI11BannerSlideEESt10_Select1stIS6_ESt4lessIS0_ESaIS6_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS6_EPKSt18_Rb_tree_node_baseRS2_.exit.i.i.i, %bb.h, %bb.g, %_ZNK4QMapI15BannerSlideType5QListI11BannerSlideEE8containsERKS0_.exit, %bb.f, %_ZN5QListI11BannerSlideED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dv = getelementptr i8, ptr %.sroa.0170.0198, i64 4 ; 2 uses
  %.not187 = icmp eq ptr %i.dv, %i.i
  br i1 %.not187, label %bb.b, label %bb.d

bb.z:                                             ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn42.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ay, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %.not.i.i.i106 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i106, label %_ZN5QListI15BannerSlideTypeED2Ev.exit109, label %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i.i107

_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i.i107: ; preds = %bb.z
  %i.dw = atomicrmw add ptr %i.h, i32 -1 acq_rel, align 4
  %.not.i.i108 = icmp eq i32 %i.dw, 1
  br i1 %.not.i.i108, label %bb.aa, label %_ZN5QListI15BannerSlideTypeED2Ev.exit109

bb.aa:                                            ; preds = %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i.i107
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 8) #28
  br label %_ZN5QListI15BannerSlideTypeED2Ev.exit109

_ZN5QListI15BannerSlideTypeED2Ev.exit109:         ; preds = %bb.z, %_ZN17QArrayDataPointerI15BannerSlideTypeE5derefEv.exit.i.i107, %bb.aa
  resume { ptr, i32 } %.pn42.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN16InfoBannerWidget19updateAccessibilityEv(ptr noundef align 8 dereferenceable_or_null(152) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.QChar, align 2               ; 4 uses
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %2 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %3 = alloca %"struct.QtPrivate::QStringViewArg", align 8 ; 6 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QString, align 8             ; 9 uses
  %7 = alloca %class.QString, align 8             ; 9 uses
  %8 = alloca %class.QString, align 8             ; 9 uses
  %9 = alloca %class.QString, align 8             ; 10 uses
  %10 = alloca %class.QList.29, align 8           ; 25 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  %13 = alloca %class.QString, align 8            ; 9 uses
  %14 = alloca %class.QAccessibleEvent, align 8   ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, ptr noundef align 8 dereferenceable_or_null(56) @_ZN16InfoBannerWidget16staticMetaObjectE, ptr noundef @.str.47, ptr noundef null, i32 noundef -1)
  invoke void @_ZN7QWidget17setAccessibleNameERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.g = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.g, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.h = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.h, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN7QWidget24setAccessibleDescriptionERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.i = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i33, label %_ZN7QStringD2Ev.exit36, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34:    ; preds = %bb.e
  %i.j = atomicrmw add ptr %i.i, i32 -1 acq_rel, align 4
  %.not.i.i35 = icmp eq i32 %i.j, 1
  br i1 %.not.i.i35, label %bb.f, label %_ZN7QStringD2Ev.exit36

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34
  %i.k = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit36

_ZN7QStringD2Ev.exit36:                           ; preds = %bb.e, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i34, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ax

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i37, label %_ZN7QStringD2Ev.exit40, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38:    ; preds = %bb.g
  %i.n = atomicrmw add ptr %i.m, i32 -1 acq_rel, align 4
  %.not.i.i39 = icmp eq i32 %i.n, 1
  br i1 %.not.i.i39, label %bb.h, label %_ZN7QStringD2Ev.exit40

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38
  %i.o = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.o, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit40

_ZN7QStringD2Ev.exit40:                           ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i38, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ba

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i41, label %_ZN7QStringD2Ev.exit44, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42:    ; preds = %bb.i
  %i.r = atomicrmw add ptr %i.q, i32 -1 acq_rel, align 4
  %.not.i.i43 = icmp eq i32 %i.r, 1
  br i1 %.not.i.i43, label %bb.j, label %_ZN7QStringD2Ev.exit44

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42
  %i.s = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.s, i64 noundef 2, i64 noundef 8) #28
  br label %_ZN7QStringD2Ev.exit44

_ZN7QStringD2Ev.exit44:                           ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i42, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ba

bb.k:                                             ; preds = %bb.a
  %i.t = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = sext i32 %i.u to i64
  %i.w = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i: ; preds = %bb.k
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp sgt i32 %i.x, 1
  br i1 %i.y, label %_ZN5QListI11BannerSlideE6detachEv.exit.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

_ZN5QListI11BannerSlideE6detachEv.exit.i:         ; preds = %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i, %bb.k
  tail call void @_ZN17QArrayDataPointerI11BannerSlideE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %i.b, i32 noundef 0, i64 noundef 0, ptr noundef null)
  %.pre.i = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI11BannerSlideE11needsDetachEv.exit.i.i.i.i

end_hunk_0
