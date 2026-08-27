Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaRrr?download=true
inline.NumInlined: 27716
inline.NumDeleted: 6990
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_:bb.a
  br label %"_ZZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_ENK3$_2clEibi.exit"

"_ZZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_ENK3$_2clEibi.exit": ; preds = %_ZNK3rrr10AndNetwork9FindFaninEii.exit.i94, %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit18.i, %bb.ad
  %i.ln = add nsw i32 %.252.i, -1                 ; 2 uses
  %i.lo = icmp eq i32 %i.ln, 0
  br i1 %i.lo, label %"_ZNK3rrr10AndNetwork17ForEachFanoutRidxIZNS0_6InsertEPS0_RKSt6vectorIiSaIiEERKS3_IbSaIbEES7_E3$_2EEvibRKT_.exit", label %bb.ae

bb.ae:                                            ; preds = %"_ZZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_ENK3$_2clEibi.exit", %.lr.ph.i76
  %.4.i = phi i32 [ %.252.i, %.lr.ph.i76 ], [ %i.ln, %"_ZZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_ENK3$_2clEibi.exit" ]
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.029.051.i, i64 4 ; 2 uses
  %.not44.i = icmp eq ptr %i.lp, %i.jt
  br i1 %.not44.i, label %"_ZNK3rrr10AndNetwork17ForEachFanoutRidxIZNS0_6InsertEPS0_RKSt6vectorIiSaIiEERKS3_IbSaIbEES7_E3$_2EEvibRKT_.exit", label %.lr.ph.i76

"_ZNK3rrr10AndNetwork17ForEachFanoutRidxIZNS0_6InsertEPS0_RKSt6vectorIiSaIiEERKS3_IbSaIbEES7_E3$_2EEvibRKT_.exit": ; preds = %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i66, %"_ZZN3rrr10AndNetwork6InsertEPS0_RKSt6vectorIiSaIiEERKS2_IbSaIbEES6_ENK3$_2clEibi.exit", %bb.ae, %_ZNSt14_Bit_referenceaSEb.exit, %"_ZNK3rrr10AndNetwork17ForEachFanoutRidxIZNS0_6InsertEPS0_RKSt6vectorIiSaIiEERKS3_IbSaIbEES7_E3$_1EEvibRKT_.exit", %.critedge.i
  %i.lq = load ptr, ptr %i.by, align 8, !tbaa !36
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %i.fi
  store i32 0, ptr %i.lr, align 4, !tbaa !32
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.ls = load ptr, ptr %i.b, align 8, !tbaa !138 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 104
  %.val.i35 = load ptr, ptr %i.lt, align 8, !tbaa !36 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %.val1.i36 = load ptr, ptr %i.lu, align 8, !tbaa !35
  %i.lv = ptrtoint ptr %.val1.i36 to i64
  %i.lw = ptrtoint ptr %.val.i35 to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %sext274 = shl i64 %i.lx, 30
  %i.ly = ashr i64 %sext274, 32
  %i.lz = icmp slt i64 %indvars.iv.next216, %i.ly
  br i1 %i.lz, label %bb.g, label %._crit_edge199, !llvm.loop !188

._crit_edge203:                                   ; preds = %.lr.ph202, %_ZNK3rrr10AndNetwork11TakenActionERKNS_6ActionE.exit
  store ptr %.sroa.0139.0, ptr %0, align 8, !tbaa !36, !alias.scope !189
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.ma, align 8, !tbaa !35, !alias.scope !189
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11142.0, ptr %i.mb, align 8, !tbaa !33, !alias.scope !189
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0134.0, ptr %i.mc, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.11136.0, ptr %.sroa.11136.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.17137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.17137.0, ptr %.sroa.17137.0..sroa_idx, align 8
  %i.md = load ptr, ptr %i.dg, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i.i77 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i77, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %._crit_edge203
  %i.me = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !33
  %i.mg = ptrtoint ptr %i.mf to i64
  %i.mh = ptrtoint ptr %i.md to i64
  %i.mi = sub i64 %i.mg, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef %i.mi) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.af, %._crit_edge203
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.mk = load ptr, ptr %i.mj, align 16, !tbaa !36 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.mk, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.mm = load ptr, ptr %i.ml, align 16, !tbaa !33
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mk to i64
  %i.mp = sub i64 %i.mn, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mp) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.mq = load ptr, ptr %i.de, align 8, !tbaa !36 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.mr = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !33
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mq to i64
  %i.mv = sub i64 %i.mt, %i.mu
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mv) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.mw = load ptr, ptr %i.l, align 8, !tbaa !92
  call void @_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %i.mw)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

.lr.ph202:                                        ; preds = %_ZNK3rrr10AndNetwork11TakenActionERKNS_6ActionE.exit, %.lr.ph202
  %.sroa.0119.0201 = phi ptr [ %i.my, %.lr.ph202 ], [ %i.dr, %_ZNK3rrr10AndNetwork11TakenActionERKNS_6ActionE.exit ] ; 2 uses
  %i.mx = load i32, ptr %.sroa.0119.0201, align 4, !tbaa !32
  call void @_ZN3rrr10AndNetwork12RemoveUnusedEibb(ptr noundef nonnull align 8 dereferenceable(264) %1, i32 noundef %i.mx, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.0119.0201, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.my, %i.dt
  br i1 %.not, label %._crit_edge203, label %.lr.ph202
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(5) ptr @_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !32     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !32
  %i.g = icmp slt i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEE11lower_boundERS4_.exit, label %bb.b, !llvm.loop !192

_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEE11lower_boundERS4_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEE11lower_boundERS4_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32
  %i.k = icmp slt i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEE11lower_boundERS4_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIiSt4pairIibESt4lessIiESaIS0_IKiS1_EEE11lower_boundERS4_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #29 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 4, !tbaa !193
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i8 0, ptr %i.p, align 4, !tbaa !175
  %i.q = tail call { ptr, ptr } @_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.r, null
  %i.t = icmp eq ptr %i.s, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.t
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.v = load i32, ptr %i.m, align 4, !tbaa !32
  %i.w = load i32, ptr %i.u, align 4, !tbaa !32
  %i.x = icmp slt i32 %i.v, %i.w
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.y = phi i1 [ %i.x, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.y, ptr noundef nonnull %i.l, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #26
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !105
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !105
  br label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #28
  br label %_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit

_ZNSt8_Rb_treeIiSt4pairIKiS0_IibEESt10_Select1stIS3_ESt4lessIiESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOiEESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.r, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 36
  ret ptr %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3rrr10AndNetwork9PropagateEi(ptr noundef nonnull align 8 dereferenceable(264) initializes((176, 177)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
.lr.ph.us.i.peel.begin:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.c, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.f, align 8      ; 2 uses
  %i.g = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.a, label %.lr.ph.us.i.split

bb.a:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.i = icmp eq ptr %.promoted.i, %i.e
  br i1 %i.i, label %.lr.ph.us.i.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.a, %bb.b, %.lr.ph.us.i.peel.begin
  %.lcssa33 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.e, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %.lcssa32 = phi i32 [ %i.g, %.lr.ph.us.i.peel.begin ], [ 1, %bb.b ], [ 1, %bb.a ]
  store i32 %.lcssa32, ptr %i.c, align 4, !tbaa !53
  %i.j = load i32, ptr %0, align 8, !tbaa !88
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = ptrtoint ptr %.lcssa33 to i64
  %i.m = ptrtoint ptr %i.e to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 2                   ; 3 uses
  %i.p = icmp ult i64 %i.o, %i.k
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.i.split
  %i.q = sub nuw nsw i64 %i.k, %i.o
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.q)
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.r = icmp ugt i64 %i.o, %i.k
  br i1 %i.r, label %bb.e, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa33, %i.s
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.f, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.t = icmp eq i32 %1, -1
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.u = ptrtoint ptr %0 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.x, align 8
  store i64 %i.u, ptr %2, align 8, !tbaa !138
  store ptr @"_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork9PropagateEiE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.w, align 8, !tbaa !85
  store ptr @"_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork9PropagateEiE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", ptr %i.v, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %.sroa.04.07.i = load ptr, ptr %i.y, align 8, !tbaa !42 ; 3 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.y
  br i1 %.not8.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i

thread-pre-split:                                 ; preds = %_ZNKSt8functionIFviEEclEi.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 16
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i = icmp eq ptr %.pr22, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZNKSt8functionIFviEEclEi.exit.i

bb.h:                                             ; preds = %thread-pre-split
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i:                 ; preds = %.lr.ph.i.preheader, %thread-pre-split
  %.sroa.04.09.i27 = phi ptr [ %.sroa.04.07.i, %.lr.ph.i.preheader ], [ %.sroa.04.0.i, %thread-pre-split ]
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !85
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i27, align 8, !tbaa !42 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %i.y
  %.pr22 = load ptr, ptr %i.v, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit, label %thread-pre-split

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i
  %.not.i7 = icmp eq ptr %.pr22, null
  br i1 %.not.i7, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread: ; preds = %bb.g, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit
  %i.ae = phi ptr [ %.pr22, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit ], [ @"_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork9PropagateEiE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation", %bb.g ]
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZNSt14_Function_baseD2Ev.exit
  %.sroa.013.0.in = phi ptr [ %i.y, %_ZNSt14_Function_baseD2Ev.exit ], [ %.sroa.013.0, %bb.i ]
  %.sroa.013.0 = load ptr, ptr %.sroa.013.0.in, align 8, !tbaa !42 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 16
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %.not = icmp ne i32 %i.am, %i.ah
  %i.an = icmp ne ptr %.sroa.013.0, %i.y
  %or.cond = and i1 %i.an, %.not
  br i1 %or.cond, label %bb.i, label %.critedge, !llvm.loop !195

bb.j:                                             ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ao = load i32, ptr %i.c, align 4, !tbaa !53
  %i.ap = sext i32 %1 to i64
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  store i32 %i.ao, ptr %i.ar, align 4, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !42 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.at, %i.as
  br i1 %.not5.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %bb.k
  %.sroa.03.06.i.i.i = phi ptr [ %i.ax, %bb.k ], [ %i.at, %bb.j ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32
  %i.aw = icmp eq i32 %i.av, %1
  br i1 %i.aw, label %.critedge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.ax = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ax, %i.as
  br i1 %.not.i.i.i8, label %.critedge, label %.lr.ph.i.i.i, !llvm.loop !45

.critedge:                                        ; preds = %bb.k, %.lr.ph.i.i.i, %bb.i, %bb.j
  %.sroa.013.1 = phi ptr [ %i.at, %bb.j ], [ %.sroa.013.0, %bb.i ], [ %.sroa.03.06.i.i.i, %.lr.ph.i.i.i ], [ %i.ax, %bb.k ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store i8 1, ptr %i.ay, align 8, !tbaa !123
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not2428 = icmp eq ptr %.sroa.013.1, %i.az
  br i1 %.not2428, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.013.229 = phi ptr [ %.sroa.013.1, %.lr.ph ], [ %.sroa.013.3, %bb.r ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.229, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32 ; 3 uses
  %i.be = sext i32 %i.bd to i64                   ; 2 uses
  %i.bf = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.bi = load i32, ptr %i.c, align 4, !tbaa !53
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.be ; 2 uses
  %.val.i = load ptr, ptr %i.bl, align 8, !tbaa !36
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %.val1.i = load ptr, ptr %i.bm, align 8, !tbaa !35
  %i.bn = ptrtoint ptr %.val1.i to i64
  %i.bo = ptrtoint ptr %.val.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = and i64 %i.bp, 17179869180
  %i.br = icmp eq i64 %i.bq, 4
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN3rrr10AndNetwork12RemoveBufferEi(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %i.bd)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @_ZN3rrr10AndNetwork11RemoveConstEi(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %i.bd)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = load ptr, ptr %.sroa.013.229, align 8, !tbaa !42
  %i.bt = load i64, ptr %i.bb, align 8, !tbaa !46
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.bb, align 8, !tbaa !46
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.229) #26
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.013.229, i64 noundef 24) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bv = load ptr, ptr %.sroa.013.229, align 8, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_0
begin_hunk_1_@_ZZN3rrr11BddAnalyzerINS_10AndNetworkEE8SimulateEvENKUliE_clEi:bb.a
  tail call void @_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE12SimulateNodeEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(304) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !1068 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 216
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1322 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1322
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = lshr i32 %i.p, 1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.aj ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i10 = icmp eq i16 %i.al, -1
  br i1 %.not.i.i10, label %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %i.ak, align 2, !tbaa !1323
  br label %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit

_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit: ; preds = %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6IncRefEi.exit, %bb.f, %bb.g, %bb.h
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.c
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = icmp eq i32 %i.p, %i.ap
  br i1 %i.aq, label %_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !1175 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.c
  %i.av = load i32, ptr %i.au, align 4, !tbaa !32 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !42 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not10.i.i.i.i.i, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.ba, %bb.j ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.bb, %bb.j ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = icmp slt i32 %i.bd, %1                  ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.be, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.be, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !97 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !153

_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.bf = icmp eq ptr %.19.i.i.i.i.i, %i.bb
  br i1 %i.bf, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.i

_ZNK3rrr10AndNetwork5IsIntEi.exit.i:              ; preds = %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %.not.i11 = icmp slt i32 %1, %i.bh
  br i1 %.not.i11, label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZNK3rrr10AndNetwork5IsIntEi.exit.i
  %.not5.i.i.i.i = icmp eq ptr %i.ay, %i.ax
  br i1 %.not5.i.i.i.i, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %bb.l
  %.sroa.03.06.i.i.i.i = phi ptr [ %i.bl, %bb.l ], [ %i.ay, %bb.k ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i.i, i64 16
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %i.bk = icmp eq i32 %i.bj, %1
  br i1 %i.bk, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bl = load ptr, ptr %.sroa.03.06.i.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.ax
  br i1 %.not.i.i.i.i, label %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !155

_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i: ; preds = %bb.l, %.lr.ph.i.i.i.i, %bb.k
  %.sroa.03.0.lcssa.i.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.bl, %bb.l ], [ %.sroa.03.06.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.bm = load ptr, ptr %.sroa.03.0.lcssa.i.i.i.i, align 8, !tbaa !42
  br label %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i

_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i:       ; preds = %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i, %_ZNK3rrr10AndNetwork5IsIntEi.exit.i, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i, %bb.j
  %.sroa.033.0.i = phi ptr [ %i.bm, %_ZSt4findISt20_List_const_iteratorIiEiET_S2_S2_RKT0_.exit.i ], [ %i.ay, %_ZNK3rrr10AndNetwork5IsIntEi.exit.i ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNKSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPKSt13_Rb_tree_nodeIiEPKSt18_Rb_tree_node_baseRKi.exit.i.i.i.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  br label %bb.m

bb.m:                                             ; preds = %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i
  %.01948.i = phi i32 [ %i.av, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i ], [ %.1.i, %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i ] ; 3 uses
  %.sroa.033.147.i = phi ptr [ %.sroa.033.0.i, %_ZNK3rrr10AndNetwork5IsIntEi.exit.thread.i ], [ %i.ct, %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i ] ; 3 uses
  %.not43.i = icmp eq ptr %.sroa.033.147.i, %i.ax
  br i1 %.not43.i, label %_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.033.147.i, i64 16
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !32 ; 2 uses
  %i.br = sext i32 %i.bq to i64                   ; 3 uses
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.br ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bu, align 8, !tbaa !35
  %i.bv = ptrtoint ptr %.val1.i.i.i to i64
  %i.bw = ptrtoint ptr %.val.i.i.i to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = lshr exact i64 %i.bx, 2                 ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader.i.i, label %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %wide.trip.count.i.i = and i64 %i.by, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.o ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i, i64 %indvars.iv.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = ashr i32 %i.cc, 1
  %i.ce = icmp eq i32 %i.cd, %1
  br i1 %i.ce, label %_ZNK3rrr10AndNetwork9FindFaninEii.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !156

_ZNK3rrr10AndNetwork9FindFaninEii.exit.i:         ; preds = %.lr.ph.i.i
  %i.cf = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.cg = sdiv i32 %i.bq, 64
  %.sext.i.i = sext i32 %i.cg to i64              ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %.sext.i.i
  %i.ci = and i64 %i.br, -9223372036854775745
  %i.cj = icmp ugt i64 %i.ci, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %i.cj, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ch, i64 %storemerge.idx.i.i.i.i.i.i.i ; 2 uses
  %i.ck = and i64 %i.br, 63
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %i.cm = load i64, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !184
  %i.cn = or i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %storemerge.i.i.i.i.i.i.i, align 8, !tbaa !184
  %i.co = load ptr, ptr %i.bo, align 8, !tbaa !181
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.co, i64 %.sext.i.i
  %storemerge.i.i.i.i.i3.i.i = getelementptr inbounds i8, ptr %i.cp, i64 %storemerge.idx.i.i.i.i.i.i.i ; 2 uses
  %i.cq = load i64, ptr %storemerge.i.i.i.i.i3.i.i, align 8, !tbaa !184
  %i.cr = or i64 %i.cq, %i.cl
  store i64 %i.cr, ptr %storemerge.i.i.i.i.i3.i.i, align 8, !tbaa !184
  %i.cs = add nsw i32 %.01948.i, -1
  br label %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i

_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i:  ; preds = %bb.o, %_ZNK3rrr10AndNetwork9FindFaninEii.exit.i, %bb.n
  %.1.i = phi i32 [ %i.cs, %_ZNK3rrr10AndNetwork9FindFaninEii.exit.i ], [ %.01948.i, %bb.n ], [ %.01948.i, %bb.o ] ; 2 uses
  %i.ct = load ptr, ptr %.sroa.033.147.i, align 8, !tbaa !42
  %.not42.i = icmp eq i32 %.1.i, 0
  br i1 %.not42.i, label %_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit, label %bb.m, !llvm.loop !1811

_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit: ; preds = %_ZNK3rrr10AndNetwork9FindFaninEii.exit.thread.i, %bb.m, %bb.i, %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6DecRefEi.exit
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.sext
  %storemerge.i.i.i.i.i13 = getelementptr inbounds i8, ptr %i.cv, i64 %storemerge.idx.i.i.i.i.i ; 2 uses
  %i.cw = xor i64 %i.j, -1
  %i.cx = load i64, ptr %storemerge.i.i.i.i.i13, align 8, !tbaa !184
  %i.cy = and i64 %i.cx, %i.cw
  store i64 %i.cy, ptr %storemerge.i.i.i.i.i13, align 8, !tbaa !184
  br label %bb.p

bb.p:                                             ; preds = %_ZNK3rrr10AndNetwork13ForEachFanoutIZZNS_11BddAnalyzerIS0_E8SimulateEvENKUliE_clEiEUliE_EEvibRKT_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork17ForEachTfoReverseEibRKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i8 1, ptr %i.i, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.j, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.m, align 8      ; 2 uses
  %i.n = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.p = icmp eq ptr %.promoted.i, %i.l
  br i1 %i.p, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.m, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa79 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.l, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.lcssa78 = phi i32 [ %i.n, %.lr.ph.us.i.peel.begin ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  store i32 %.lcssa78, ptr %i.j, align 4, !tbaa !53
  %i.q = load i32, ptr %0, align 8, !tbaa !88
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = ptrtoint ptr %.lcssa79 to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.x = sub nuw nsw i64 %i.r, %i.v
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.x)
  %.pre = load i32, ptr %i.j, align 4, !tbaa !53
  %.pre81 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.y = icmp ugt i64 %i.v, %i.r
  br i1 %i.y, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa79, %i.z
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.m, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.aa = phi ptr [ %.pre81, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ] ; 5 uses
  %i.ab = phi i32 [ %.pre, %bb.d ], [ %.lcssa78, %bb.e ], [ %.lcssa78, %bb.f ], [ %.lcssa78, %bb.g ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.d
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %bb.h
  %.sroa.03.06.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ], [ %.sroa.03.06.i.i.i, %.lr.ph.i.i.i ], [ %i.ai, %bb.h ]
  %.sroa.046.062 = load ptr, ptr %.sroa.03.0.lcssa.i.i.i, align 8, !tbaa !42 ; 2 uses
  %.not5163 = icmp eq ptr %.sroa.046.062, %i.ad
  br i1 %.not5163, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit56
  %.sroa.046.064 = phi ptr [ %.sroa.046.062, %.lr.ph ], [ %.sroa.046.0, %.loopexit56 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.046.064, i64 16
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %.not5460 = icmp eq ptr %i.ap, %i.ar
  br i1 %.not5460, label %.loopexit56, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.i
  %i.as = load i32, ptr %i.j, align 4, !tbaa !53  ; 2 uses
  br label %.critedge

bb.j:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.040.061, i64 4 ; 2 uses
  %.not54 = icmp eq ptr %i.at, %i.ar
  br i1 %.not54, label %.loopexit56, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.j
  %.sroa.040.061 = phi ptr [ %i.ap, %.critedge.lr.ph ], [ %i.at, %bb.j ] ; 2 uses
  %i.au = load i32, ptr %.sroa.040.061, align 4, !tbaa !32
  %i.av = ashr i32 %i.au, 1
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %.not19 = icmp eq i32 %i.ay, %i.as
  br i1 %.not19, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.critedge
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.an
  store i32 %i.as, ptr %i.az, align 4, !tbaa !32
  br label %.loopexit56

.loopexit56:                                      ; preds = %bb.j, %bb.i, %bb.k
  %.sroa.046.0 = load ptr, ptr %.sroa.046.064, align 8, !tbaa !42 ; 2 uses
  %.not51 = icmp eq ptr %.sroa.046.0, %i.ad
  br i1 %.not51, label %._crit_edge, label %bb.i, !llvm.loop !1812

._crit_edge:                                      ; preds = %.loopexit56, %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  br i1 %2, label %bb.l, label %.loopexit55.sink.split

bb.l:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30 ; 3 uses
  %.not5265 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not5265, label %.loopexit55.sink.split, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph68, %bb.o
  %.sroa.036.066 = phi ptr [ %i.bb, %.lr.ph68 ], [ %i.bs, %bb.o ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.036.066, align 4, !tbaa !32
  %i.bh = sext i32 %i.bg to i64                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %i.bl = ashr i32 %i.bk, 1
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32 ; 2 uses
  %i.bp = load i32, ptr %i.j, align 4, !tbaa !53
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bh
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.036.066, i64 4 ; 2 uses
  %.not52 = icmp eq ptr %i.bs, %i.bd
  br i1 %.not52, label %._crit_edge69, label %bb.m

._crit_edge69:                                    ; preds = %bb.o
  store i8 0, ptr %i.i, align 8, !tbaa !121
  %i.bt = load i32, ptr %i.j, align 4, !tbaa !53  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge69, %bb.s
  %i.bw = phi ptr [ %i.bb, %._crit_edge69 ], [ %i.cg, %bb.s ]
  %.sroa.032.071 = phi ptr [ %i.bd, %._crit_edge69 ], [ %i.bx, %bb.s ]
  %i.bx = getelementptr inbounds i8, ptr %.sroa.032.071, i64 -4 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = icmp eq i32 %i.cc, %i.bt
  br i1 %i.cd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.by, ptr %i.b, align 4, !tbaa !32
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i, label %bb.r, label %_ZNKSt8functionIFviEEclEi.exit

bb.r:                                             ; preds = %bb.q
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit:                   ; preds = %bb.q
  %i.cf = load ptr, ptr %i.bv, align 8, !tbaa !85
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre82 = load ptr, ptr %i.ba, align 8, !tbaa !30, !noalias !1813
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %_ZNKSt8functionIFviEEclEi.exit
  %i.cg = phi ptr [ %i.bw, %bb.p ], [ %.pre82, %_ZNKSt8functionIFviEEclEi.exit ] ; 2 uses
  %.not53 = icmp eq ptr %i.bx, %i.cg
  br i1 %.not53, label %.loopexit55, label %bb.p, !llvm.loop !1816

end_hunk_1
begin_hunk_2_@_ZN3rrr9PrintNextIPKcJS2_dEEEvRSoT_DpT0_:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1298
  %i.q = or i32 %i.p, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.n, i32 noundef %i.q) #26
  br label %_ZN3rrr9PrintNextIPKcJdEEEvRSoT_DpT0_.exit

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.r = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #26
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %2, i64 noundef %i.r) #26 ; 0 uses
  br label %_ZN3rrr9PrintNextIPKcJdEEEvRSoT_DpT0_.exit

_ZN3rrr9PrintNextIPKcJdEEEvRSoT_DpT0_.exit:       ; preds = %bb.d, %bb.e
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.58, i64 noundef 1) #26 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !204
  %i.v = getelementptr i8, ptr %i.u, i64 -24      ; 3 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1410
  %i.aa = and i32 %i.z, -261
  %i.ab = or disjoint i32 %i.aa, 4
  store i32 %i.ab, ptr %i.y, align 8, !tbaa !1411
  %i.ac = load i64, ptr %i.v, align 8
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 2, ptr %i.ae, align 8, !tbaa !1843
  %i.af = load i64, ptr %i.v, align 8
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 8, ptr %i.ah, align 8, !tbaa !1309
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, double noundef %3) #26 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E9_M_invokeERKSt9_Any_dataOi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  tail call void @_ZZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEilENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFviEZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEilEUliE_, ptr %0, align 8, !tbaa !302
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !139
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !1172
  store i64 %i.a, ptr %0, align 8, !tbaa !1172
  br label %_ZNSt14_Function_base13_Base_managerIZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3rrr9OptimizerINS1_10AndNetworkENS1_11BddAnalyzerIS3_EEE3RunEilEUliE_E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE3RunEilENKUliE_clEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 10 uses
  %3 = alloca %"class.std::vector", align 16      ; 5 uses
  %4 = alloca %"class.std::vector", align 16      ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1844   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1063 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1039
  call void @_ZN3rrr10AndNetwork12GetNeighborsEibi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(264) %i.d, i32 noundef %1, i1 noundef zeroext true, i32 noundef %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load <2 x ptr>, ptr %3, align 16, !tbaa !30
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !33
  store ptr %i.h, ptr %i.e, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1039 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35, !noalias !1846 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !36, !noalias !1846 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %.not.i.i.i.i.i2 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i.i.i.i2, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ugt i64 %i.p, 9223372036854775804
  br i1 %i.q, label %bb.d, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !110

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27, !noalias !1846
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29, !noalias !1846
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !30, !noalias !1846 ; 2 uses
  %.pre5.i = load ptr, ptr %i.k, align 8, !tbaa !30, !noalias !1846
  %.pre6.i = ptrtoint ptr %.pre5.i to i64
  %.pre7.i = ptrtoint ptr %.pre.i to i64
  br label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.b
  %.pre-phi8.i = phi i64 [ %.pre7.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.o, %bb.b ]
  %.pre-phi.i = phi i64 [ %.pre6.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.n, %bb.b ]
  %i.s = phi ptr [ %.pre.i, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.m, %bb.b ] ; 2 uses
  %i.t = phi ptr [ %i.r, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.b ] ; 5 uses
  store ptr %i.t, ptr %4, align 16, !tbaa !36, !alias.scope !1846
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.u, ptr %i.v, align 16, !tbaa !33, !alias.scope !1846
  %i.w = sub i64 %.pre-phi.i, %.pre-phi8.i        ; 4 uses
  %i.x = icmp sgt i64 %i.w, 4
  br i1 %i.x, label %bb.e, label %bb.f, !prof !111

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %i.s, i64 %i.w, i1 false), !noalias !1846
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.i.i
  %i.y = icmp eq i64 %i.w, 4
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIiSaIiEED2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.s, align 4, !tbaa !32, !noalias !1846
  store i32 %i.z, ptr %i.t, align 4, !tbaa !32, !noalias !1846
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit6

_ZNSt6vectorIiSaIiEED2Ev.exit6:                   ; preds = %bb.e, %bb.f, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds i8, ptr %i.t, i64 %i.w ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !35, !alias.scope !1846
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42, !noalias !1846
  call void @_ZNSt6vectorIiSaIiEE15_M_range_insertISt20_List_const_iteratorIiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ab, ptr %i.ad, ptr nonnull %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.af = load <2 x ptr>, ptr %4, align 16, !tbaa !30
  store <2 x ptr> %i.af, ptr %2, align 16, !tbaa !30
  %i.ag = load ptr, ptr %i.v, align 16, !tbaa !33
  store ptr %i.ag, ptr %i.ae, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit6, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZN3rrr9OptimizerINS_10AndNetworkENS_11BddAnalyzerIS1_EEE11SingleResubEiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(5688) %i.a, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.ah = load ptr, ptr %2, align 16, !tbaa !36   ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !33
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit8

_ZNSt6vectorIiSaIiEED2Ev.exit8:                   ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork12GetNeighborsEibi(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(264) %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #2 comdat align 2 {
.lr.ph.us.i.peel.begin:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::function.35", align 8  ; 10 uses
  %6 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  store i8 1, ptr %i.d, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 180 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.e, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.h, align 8      ; 2 uses
  %i.i = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.a, label %.lr.ph.us.i.split

bb.a:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.k = icmp eq ptr %.promoted.i, %i.g
  br i1 %i.k, label %.lr.ph.us.i.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.a, %bb.b, %.lr.ph.us.i.peel.begin
  %.lcssa115 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.lcssa114 = phi i32 [ %i.i, %.lr.ph.us.i.peel.begin ], [ 1, %bb.b ], [ 1, %bb.a ] ; 4 uses
  store i32 %.lcssa114, ptr %i.e, align 4, !tbaa !53
  %i.l = load i32, ptr %1, align 8, !tbaa !88
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = ptrtoint ptr %.lcssa115 to i64
  %i.o = ptrtoint ptr %i.g to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.m
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.i.split
  %i.s = sub nuw nsw i64 %i.m, %i.q
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.s)
  %.pre = load i32, ptr %i.e, align 4, !tbaa !53
  %.pre117 = load ptr, ptr %i.f, align 8, !tbaa !51
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.t = icmp ugt i64 %i.q, %i.m
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa115, %i.u
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.u, ptr %i.h, align 8, !tbaa !122
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = phi ptr [ %i.g, %bb.f ], [ %i.g, %bb.e ], [ %i.g, %bb.d ], [ %.pre117, %bb.c ]
  %i.w = phi i32 [ %.lcssa114, %bb.f ], [ %.lcssa114, %bb.e ], [ %.lcssa114, %bb.d ], [ %.pre, %bb.c ]
  %i.x = sext i32 %2 to i64                       ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  store i32 %i.w, ptr %i.y, align 4, !tbaa !32
  %i.z = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #29 ; 4 uses
  store i32 %2, ptr %i.z, align 4, !tbaa !32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 3 uses
  %i.ab = icmp sgt i32 %4, 0
  br i1 %i.ab, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %.0103 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE5clearEv.exit ]
  %.sroa.13.0102 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.23.099, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %.sroa.8.0101 = phi ptr [ null, %.preheader.lr.ph ], [ %spec.select, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %.sroa.048.0100 = phi ptr [ null, %.preheader.lr.ph ], [ %.sroa.0.097, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %.sroa.23.099 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.23.1.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 2 uses
  %.sroa.12.098 = phi ptr [ %i.aa, %.preheader.lr.ph ], [ %.sroa.12.1.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 3 uses
  %.sroa.0.097 = phi ptr [ %i.z, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_ZNSt6vectorIiSaIiEE5clearEv.exit ] ; 5 uses
  %.not90 = icmp eq ptr %.sroa.0.097, %.sroa.12.098
  br i1 %.not90, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.ah = ptrtoint ptr %.sroa.23.099 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.0.0.lcssa = phi ptr [ %i.z, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0.1.lcssa, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.23.0.lcssa = phi ptr [ %i.aa, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.23.1.lcssa, %._crit_edge.loopexit ]
  %.sroa.048.0.lcssa = phi ptr [ null, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %.sroa.0.097, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.13.0.lcssa = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.ah, %._crit_edge.loopexit ]
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.x
  store i32 0, ptr %i.aj, align 4, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %3, label %bb.x, label %bb.ab

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit, %.preheader
  %spec.select = phi ptr [ %.sroa.12.098, %.preheader ], [ %.sroa.0.097, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ]
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.048.0100, %.preheader ], [ %.sroa.0.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ] ; 2 uses
  %.sroa.12.1.lcssa = phi ptr [ %.sroa.8.0101, %.preheader ], [ %.sroa.12.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ]
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.13.0102, %.preheader ], [ %.sroa.23.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ] ; 2 uses
  %i.ak = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %4
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !1849

.lr.ph:                                           ; preds = %.preheader, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit
  %.sroa.045.094 = phi ptr [ %i.dx, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ], [ %.sroa.0.097, %.preheader ] ; 2 uses
  %.sroa.23.193 = phi ptr [ %.sroa.23.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ], [ %.sroa.13.0102, %.preheader ] ; 2 uses
  %.sroa.12.192 = phi ptr [ %.sroa.12.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ], [ %.sroa.8.0101, %.preheader ] ; 2 uses
  %.sroa.0.191 = phi ptr [ %.sroa.0.11, %_ZNK3rrr10AndNetwork13ForEachFanoutIZNS0_12GetNeighborsEibiEUliE0_EEvibRKT_.exit ], [ %.sroa.048.0100, %.preheader ] ; 2 uses
  %i.al = load i32, ptr %.sroa.045.094, align 4, !tbaa !32 ; 5 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.am ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !30 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %.not8.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not8.i, label %_ZNK3rrr10AndNetwork12ForEachFaninIZNS0_12GetNeighborsEibiEUliE_EEviRKT_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph
  %.pre118 = load ptr, ptr %i.f, align 8, !tbaa !51
  %.pre119 = load i32, ptr %i.e, align 4, !tbaa !53
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i
  %i.as = phi i32 [ %i.bq, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %.pre119, %.lr.ph.i.preheader ] ; 2 uses
  %i.at = phi ptr [ %i.br, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %.pre118, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.5, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %.sroa.0.191, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.12.3 = phi ptr [ %.sroa.12.5, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %.sroa.12.192, %.lr.ph.i.preheader ] ; 5 uses
  %.sroa.23.3 = phi ptr [ %.sroa.23.5, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %.sroa.23.193, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.05.09.i = phi ptr [ %i.bs, %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i ], [ %i.ap, %.lr.ph.i.preheader ] ; 2 uses
  %i.au = load i32, ptr %.sroa.05.09.i, align 4, !tbaa !32
  %i.av = ashr i32 %i.au, 1                       ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %.not.i.i9 = icmp eq i32 %i.ay, %i.as
  br i1 %.not.i.i9, label %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %.not.i.i.i10 = icmp eq ptr %.sroa.12.3, %.sroa.23.3
  br i1 %.not.i.i.i10, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.av, ptr %.sroa.12.3, align 4, !tbaa !32
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.az = ptrtoint ptr %.sroa.12.3 to i64
  %i.ba = ptrtoint ptr %.sroa.0.3 to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 6 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775804
  br i1 %i.bc, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #27
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.i
  %i.bd = ashr exact i64 %i.bb, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 2305843009213693951)
  %i.bh = select i1 %i.bf, i64 2305843009213693951, i64 %i.bg ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #29 ; 4 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.bb ; 2 uses
  store i32 %i.av, ptr %i.bk, align 4, !tbaa !32
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bj, ptr align 4 %.sroa.0.3, i64 %i.bb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.bb) #28
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !51
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.h
  %i.bn = phi ptr [ %.pre.i.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.at, %bb.h ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.bj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.0.3, %bb.h ]
  %.pn = phi ptr [ %i.bk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.12.3, %bb.h ]
  %.sroa.23.4 = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.23.3, %bb.h ]
  %.sroa.12.4 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !53  ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.aw
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !32
  br label %_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i

_ZZN3rrr10AndNetwork12GetNeighborsEibiENKUliE_clEi.exit.i: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i, %.lr.ph.i
  %i.bq = phi i32 [ %i.as, %.lr.ph.i ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  %i.br = phi ptr [ %i.at, %.lr.ph.i ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ]
  %.sroa.0.5 = phi ptr [ %.sroa.0.3, %.lr.ph.i ], [ %.sroa.0.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.i ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN3rrr11BddAnalyzerINS_10AndNetworkEE16CheckFeasibilityEiib:bb.a
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !1336
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !1363
  %i.bk = icmp sgt i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.k, label %_ZN3rrr6NewBdd3Man2OrEjj.exit30

bb.k:                                             ; preds = %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6IncRefEi.exit
  tail call void @_ZN3rrr6NewBdd3Man7ReorderEv(ptr noundef nonnull align 8 dereferenceable(392) %.pre)
  %i.bl = load i32, ptr %i.bg, align 4, !tbaa !1336 ; 2 uses
  %.promoted.i.i26 = load i32, ptr %i.bi, align 8 ; 2 uses
  %i.bm = icmp slt i32 %.promoted.i.i26, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i27, label %_ZN3rrr6NewBdd3Man2OrEjj.exit30

.lr.ph.i.i27:                                     ; preds = %bb.k, %.lr.ph.i.i27
  %i.bn = phi i32 [ %spec.store.select.i.i28, %.lr.ph.i.i27 ], [ %.promoted.i.i26, %bb.k ]
  %i.bo = shl i32 %i.bn, 1
  %spec.store.select.i.i28 = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 2147483647) ; 3 uses
  %i.bp = icmp slt i32 %spec.store.select.i.i28, %i.bl
  br i1 %i.bp, label %.lr.ph.i.i27, label %..loopexit_crit_edge.i.i29, !llvm.loop !1364

..loopexit_crit_edge.i.i29:                       ; preds = %.lr.ph.i.i27
  store i32 %spec.store.select.i.i28, ptr %i.bi, align 8
  br label %_ZN3rrr6NewBdd3Man2OrEjj.exit30

_ZN3rrr6NewBdd3Man2OrEjj.exit30:                  ; preds = %_ZNK3rrr11BddAnalyzerINS_10AndNetworkEE6IncRefEi.exit, %bb.k, %..loopexit_crit_edge.i.i29
  %i.bq = xor i1 %3, true
  %i.br = zext i1 %i.bq to i32
  %i.bs = xor i32 %i.bf, %i.br
  %i.bt = tail call noundef i32 @_ZN3rrr6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(392) %.pre, i32 noundef %i.ar, i32 noundef %i.bs)
  br i1 %.not.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN3rrr6NewBdd3Man2OrEjj.exit30
  %i.bu = load ptr, ptr %i.v, align 8, !tbaa !1068 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 216
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1322 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 224
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1322
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = lshr i32 %i.ar, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i32 = icmp eq i16 %i.cd, -1
  br i1 %.not.i.i32, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = add i16 %i.cd, -1
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !1323
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %_ZN3rrr6NewBdd3Man2OrEjj.exit30
  %i.cf = icmp eq i32 %i.bt, 0                    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1066
  %.not25 = icmp eq i32 %i.ch, 0
  br i1 %.not25, label %bb.x, label %bb.p

.thread:                                          ; preds = %.critedge
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !1066
  %.not2541 = icmp eq i32 %i.cj, 0
  br i1 %.not2541, label %bb.x, label %.thread44

bb.p:                                             ; preds = %bb.o
  br i1 %i.cf, label %bb.q, label %.thread44

bb.q:                                             ; preds = %bb.p
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 5) #26 ; 0 uses
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1) #26 ; 3 uses
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.107, i64 noundef 7) #26 ; 0 uses
  %i.cn = select i1 %3, ptr @.str.5, ptr @.str.6
  %i.co = zext i1 %3 to i64
  %i.cp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.cn, i64 noundef %i.co) #26 ; 0 uses
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef %2) #26 ; 4 uses
  %i.cr = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.131, i64 noundef 12) #26 ; 0 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !204
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 240
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.q
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !221
  %.not.i1.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i1.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 67
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cx) #26
  %i.dc = load ptr, ptr %i.cx, align 8, !tbaa !204
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef signext i8 %i.de(ptr noundef nonnull align 8 dereferenceable(570) %i.cx, i8 noundef signext 10) #26, !inline_history !226
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.s, %bb.t
  %.0.i.i.i = phi i8 [ %i.db, %bb.s ], [ %i.df, %bb.t ]
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, i8 noundef signext %.0.i.i.i) #26
  br label %.sink.split

.thread44:                                        ; preds = %.thread, %bb.p
  %i.dh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.12, i64 noundef 5) #26 ; 0 uses
  %i.di = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %1) #26 ; 3 uses
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.107, i64 noundef 7) #26 ; 0 uses
  %i.dk = select i1 %3, ptr @.str.5, ptr @.str.6
  %i.dl = zext i1 %3 to i64
  %i.dm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull %i.dk, i64 noundef %i.dl) #26 ; 0 uses
  %i.dn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i32 noundef %2) #26 ; 4 uses
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull @.str.132, i64 noundef 16) #26 ; 0 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !204
  %i.dq = getelementptr i8, ptr %i.dp, i64 -24
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds i8, ptr %i.dn, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 240
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !206 ; 6 uses
  %.not.i.i.i35 = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i35, label %bb.u, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36

bb.u:                                             ; preds = %.thread44
  tail call void @_ZSt16__throw_bad_castv() #27
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36: ; preds = %.thread44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 56
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !221
  %.not.i1.i.i37 = icmp eq i8 %i.dw, 0
  br i1 %.not.i1.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 67
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !15
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

bb.w:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i36
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.du) #26
  %i.dz = load ptr, ptr %i.du, align 8, !tbaa !204
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call noundef signext i8 %i.eb(ptr noundef nonnull align 8 dereferenceable(570) %i.du, i8 noundef signext 10) #26, !inline_history !226
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39: ; preds = %bb.v, %bb.w
  %.0.i.i.i38 = phi i8 [ %i.dy, %bb.v ], [ %i.ec, %bb.w ]
  %i.ed = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, i8 noundef signext %.0.i.i.i38) #26
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.dg, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %i.ed, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39 ]
  %.143.ph = phi i1 [ true, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ false, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit39 ]
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) #26 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %.thread, %bb.o
  %.143 = phi i1 [ false, %.thread ], [ %i.cf, %bb.o ], [ %.143.ph, %.sink.split ]
  %i.ef = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #26
  %i.eg = sub nsw i64 %i.ef, %i.s
  %i.eh = sitofp i64 %i.eg to double
  %i.ei = fdiv double %i.eh, 1.000000e+09
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !1764
  %i.el = fadd double %i.ek, %i.ei
  store double %i.el, ptr %i.ej, align 8, !tbaa !1764
  ret i1 %.143
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork10ForEachTfoEibRKSt8functionIFviEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.r, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.j, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.m, align 8      ; 2 uses
  %i.n = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.p = icmp eq ptr %.promoted.i, %i.l
  br i1 %i.p, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.m, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa49 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.l, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.lcssa48 = phi i32 [ %i.n, %.lr.ph.us.i.peel.begin ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  store i32 %.lcssa48, ptr %i.j, align 4, !tbaa !53
  %i.q = load i32, ptr %0, align 8, !tbaa !88
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = ptrtoint ptr %.lcssa49 to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.x = sub nuw nsw i64 %i.r, %i.v
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.x)
  %.pre = load i32, ptr %i.j, align 4, !tbaa !53
  %.pre51 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.y = icmp ugt i64 %i.v, %i.r
  br i1 %i.y, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa49, %i.z
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.m, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.aa = phi ptr [ %.pre51, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ] ; 3 uses
  %i.ab = phi i32 [ %.pre, %bb.d ], [ %.lcssa48, %bb.e ], [ %.lcssa48, %bb.f ], [ %.lcssa48, %bb.g ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.d
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %bb.h
  %.sroa.03.06.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ], [ %.sroa.03.06.i.i.i, %.lr.ph.i.i.i ], [ %i.ai, %bb.h ]
  %.sroa.028.040 = load ptr, ptr %.sroa.03.0.lcssa.i.i.i, align 8, !tbaa !42 ; 2 uses
  %.not3341 = icmp eq ptr %.sroa.028.040, %i.ad
  br i1 %.not3341, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit36
  %i.am = phi ptr [ %i.aa, %.lr.ph ], [ %i.bj, %.loopexit36 ] ; 3 uses
  %.sroa.028.042 = phi ptr [ %.sroa.028.040, %.lr.ph ], [ %.sroa.028.0, %.loopexit36 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.028.042, i64 16 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !32 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !30 ; 2 uses
  %.not3538 = icmp eq ptr %i.as, %i.au
  br i1 %.not3538, label %.loopexit36, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.i
  %i.av = load i32, ptr %i.j, align 4, !tbaa !53
  br label %.critedge

bb.j:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 4 ; 2 uses
  %.not35 = icmp eq ptr %i.aw, %i.au
  br i1 %.not35, label %.loopexit36, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.j
  %.sroa.022.039 = phi ptr [ %i.as, %.critedge.lr.ph ], [ %i.aw, %bb.j ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.022.039, align 4, !tbaa !32
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.not = icmp eq i32 %i.bb, %i.av
  br i1 %.not, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !32
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt8functionIFviEEclEi.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit:                   ; preds = %bb.k
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !85
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.be = load i32, ptr %i.j, align 4, !tbaa !53
  %i.bf = load i32, ptr %i.an, align 4, !tbaa !32
  %i.bg = sext i32 %i.bf to i64
  %i.bh = load ptr, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bg
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !32
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.j, %bb.i, %_ZNKSt8functionIFviEEclEi.exit
  %i.bj = phi ptr [ %i.bh, %_ZNKSt8functionIFviEEclEi.exit ], [ %i.am, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %.sroa.028.0 = load ptr, ptr %.sroa.028.042, align 8, !tbaa !42 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.028.0, %i.ad
  br i1 %.not33, label %._crit_edge, label %bb.i, !llvm.loop !1872

._crit_edge:                                      ; preds = %.loopexit36, %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  %i.bk = phi ptr [ %i.aa, %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit ], [ %i.bj, %.loopexit36 ]
  br i1 %2, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %._crit_edge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not3443 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not3443, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre52 = load i32, ptr %i.j, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph46, %bb.q
  %i.bs = phi i32 [ %.pre52, %.lr.ph46 ], [ %i.ck, %bb.q ] ; 2 uses
  %i.bt = phi ptr [ %i.bk, %.lr.ph46 ], [ %i.cl, %bb.q ] ; 2 uses
  %.sroa.018.044 = phi ptr [ %i.bm, %.lr.ph46 ], [ %i.cm, %bb.q ] ; 2 uses
  %i.bu = load i32, ptr %.sroa.018.044, align 4, !tbaa !32 ; 2 uses
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !32
  %i.ca = ashr i32 %i.bz, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !32
  %i.ce = icmp eq i32 %i.cd, %i.bs
  br i1 %i.ce, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !32
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !21
  %.not.i.i16 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i16, label %bb.p, label %_ZNKSt8functionIFviEEclEi.exit17

bb.p:                                             ; preds = %bb.o
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit17:                 ; preds = %bb.o
  %i.cg = load ptr, ptr %i.br, align 8, !tbaa !85
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !53  ; 2 uses
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bv
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !32
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt8functionIFviEEclEi.exit17, %bb.n
  %i.ck = phi i32 [ %i.ch, %_ZNKSt8functionIFviEEclEi.exit17 ], [ %i.bs, %bb.n ]
  %i.cl = phi ptr [ %i.ci, %_ZNKSt8functionIFviEEclEi.exit17 ], [ %i.bt, %bb.n ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.018.044, i64 4 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3rrr10AndNetwork11IsReachableITtTpTyESt6vectorJiSaIiEETtTpTyESt3setJiSt4lessIiES3_EEEbRKT_IJDpT0_EERKT1_IJDpT2_EE:bb.a
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.069.0104, i64 4 ; 2 uses
  %.not91 = icmp eq ptr %i.at, %i.ai
  br i1 %.not91, label %.critedge45, label %.lr.ph106

.critedge45:                                      ; preds = %bb.h, %._crit_edge..critedge45_crit_edge
  %i.au = phi i32 [ %.pre125, %._crit_edge..critedge45_crit_edge ], [ %i.as, %bb.h ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge45
  %.sroa.061.0.in = phi ptr [ %i.av, %.critedge45 ], [ %.sroa.061.0, %bb.i ]
  %.sroa.061.0 = load ptr, ptr %.sroa.061.0.in, align 8, !tbaa !42 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.061.0, i64 16
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !32
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !32
  %.not42 = icmp ne i32 %i.ba, %i.au
  %i.bb = icmp ne ptr %.sroa.061.0, %i.av
  %or.cond89 = and i1 %i.bb, %.not42
  br i1 %or.cond89, label %bb.i, label %.critedge.preheader, !llvm.loop !2114

.critedge.preheader:                              ; preds = %bb.i
  %.not92111 = icmp eq ptr %.sroa.061.0, %i.av
  br i1 %.not92111, label %.critedge._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.critedge.preheader
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.thread78
  %.sroa.061.1112 = phi ptr [ %.sroa.061.0, %.lr.ph113 ], [ %i.bw, %.thread78 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.061.1112, i64 16
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32 ; 2 uses
  %i.bi = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !39
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !30 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !30 ; 2 uses
  %.not94107 = icmp eq ptr %i.bm, %i.bo
  br i1 %.not94107, label %.thread78, label %.lr.ph110

bb.l:                                             ; preds = %.lr.ph110
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.053.0108, i64 4 ; 2 uses
  %.not94 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not94, label %.thread78, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.k, %bb.l
  %.sroa.053.0108 = phi ptr [ %i.bp, %bb.l ], [ %i.bm, %bb.k ] ; 2 uses
  %i.bq = load i32, ptr %.sroa.053.0108, align 4, !tbaa !32
  %i.br = ashr i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !32
  %.not43 = icmp eq i32 %i.bu, %i.bi
  br i1 %.not43, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.lr.ph110
  %i.bv = icmp eq i32 %i.bh, %i.ad
  br i1 %i.bv, label %.sink.split, label %.thread81

.thread81:                                        ; preds = %bb.m
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !32
  br label %.thread78

.thread78:                                        ; preds = %bb.l, %bb.k, %.thread81, %bb.j
  %i.bw = load ptr, ptr %.sroa.061.1112, align 8, !tbaa !42 ; 2 uses
  %.not92 = icmp eq ptr %i.bw, %i.av
  br i1 %.not92, label %.critedge._crit_edge, label %bb.j, !llvm.loop !2115

.critedge._crit_edge:                             ; preds = %.thread78, %.critedge.preheader
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %.not93114 = icmp eq ptr %i.by, %i.ca
  br i1 %.not93114, label %.sink.split, label %.lr.ph117

.lr.ph117:                                        ; preds = %.critedge._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph117, %bb.r
  %.sroa.049.0115 = phi ptr [ %i.by, %.lr.ph117 ], [ %i.cs, %bb.r ] ; 2 uses
  %i.cc = load i32, ptr %.sroa.049.0115, align 4, !tbaa !32
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !32 ; 2 uses
  %i.cg = load i32, ptr %i.i, align 4, !tbaa !53  ; 3 uses
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = load ptr, ptr %i.cb, align 8, !tbaa !39
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cd
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !36
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !32
  %i.cq = icmp eq i32 %i.cp, %i.cg
  br i1 %i.cq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cr = icmp eq i32 %i.cf, %i.ad
  br i1 %i.cr, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 4 ; 2 uses
  %.not93 = icmp eq ptr %i.cs, %i.ca
  br i1 %.not93, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %.lr.ph106, %bb.m, %bb.r, %bb.p, %.critedge._crit_edge
  %.13.ph = phi i1 [ false, %.critedge._crit_edge ], [ true, %bb.p ], [ true, %bb.m ], [ false, %bb.r ], [ true, %.lr.ph106 ]
  store i8 0, ptr %i.h, align 8, !tbaa !121
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a
  %.13 = phi i1 [ false, %bb.a ], [ %.13.ph, %.sink.split ]
  ret i1 %.13
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3rrr10AndNetwork7ExtractITtTpTyESt3setJiSt4lessIiESaIiEEEEPS0_RKT_IJDpT0_EERKSt6vectorIiS5_ESG_(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.std::map.501", align 8      ; 12 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.std::function.35", align 8  ; 9 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.f = tail call noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #29 ; 4 uses
  tail call void @_ZN3rrr10AndNetworkC1Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.f) #26
  store ptr %i.f, ptr %i.b, align 8, !tbaa !138
  %.val14 = load ptr, ptr %2, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val15 = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.h = ptrtoint ptr %.val15 to i64
  %i.i = ptrtoint ptr %.val14 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 2
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val16 = load i64, ptr %i.m, align 8, !tbaa !105
  %i.n = trunc i64 %.val16 to i32
  %i.o = add nsw i32 %i.l, %i.n
  %.val = load ptr, ptr %3, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.val13 = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.q = ptrtoint ptr %.val13 to i64
  %i.r = ptrtoint ptr %.val to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %i.u = trunc i64 %i.t to i32
  %i.v = add nsw i32 %i.o, %i.u
  tail call void @_ZN3rrr10AndNetwork7ReserveEi(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.x, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.w, ptr %i.y, align 8, !tbaa !93
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.w, ptr %i.z, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.aa, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !32
  %i.ab = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixEOi(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  store i32 0, ptr %i.ab, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.ac = load ptr, ptr %2, align 8, !tbaa !30    ; 2 uses
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %.not35 = icmp eq ptr %i.ac, %i.ad
  br i1 %.not35, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.ae, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.af, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.ai, align 8     ; 2 uses
  %i.aj = add i32 %.promoted8.i, 1                ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %._crit_edge
  %i.al = icmp eq ptr %.promoted.i, %i.ah
  br i1 %i.al, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %._crit_edge
  %.lcssa48 = phi ptr [ %.promoted.i, %._crit_edge ], [ %i.ah, %bb.c ], [ %i.ah, %bb.b ] ; 2 uses
  %.lcssa47 = phi i32 [ %i.aj, %._crit_edge ], [ 1, %bb.c ], [ 1, %bb.b ]
  store i32 %.lcssa47, ptr %i.af, align 4, !tbaa !53
  %i.am = load i32, ptr %0, align 8, !tbaa !88
  %i.an = sext i32 %i.am to i64                   ; 4 uses
  %i.ao = ptrtoint ptr %.lcssa48 to i64
  %i.ap = ptrtoint ptr %i.ah to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 2                 ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.an
  br i1 %i.as, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.at = sub nuw nsw i64 %i.an, %i.ar
  call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.at)
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.au = icmp ugt i64 %i.ar, %i.an
  br i1 %i.au, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.an ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa48, %i.av
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.av, ptr %i.ai, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !93 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not3237 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not3237, label %._crit_edge40, label %.lr.ph39

.lr.ph39:                                         ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.az = load ptr, ptr %i.ag, align 8, !tbaa !51
  %.pre = load i32, ptr %i.af, align 4, !tbaa !53
  br label %bb.i

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.027.036 = phi ptr [ %i.bd, %.lr.ph ], [ %i.ac, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.ba = load i32, ptr %.sroa.027.036, align 4, !tbaa !32
  store i32 %i.ba, ptr %i.d, align 4, !tbaa !32
  %i.bb = call noundef i32 @_ZN3rrr10AndNetwork5AddPiEv(ptr noundef nonnull align 8 dereferenceable(264) %i.f)
  %i.bc = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.027.036, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.ad
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge40:                                    ; preds = %bb.i, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.bg, align 8
  %i.bh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 4 uses
  store ptr %0, ptr %i.bh, align 16, !tbaa !138
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !2116
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !176
  store ptr %i.bh, ptr %5, align 8, !tbaa !139
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork7ExtractITtTpTyESt3setJiSt4lessIiESaIiEEEEPS2_RKT_IJDpT0_EERKSt6vectorIiS7_ESI_EUliE_E9_M_invokeERKSt9_Any_dataOi, ptr %i.bf, align 8, !tbaa !85
  store ptr @_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork7ExtractITtTpTyESt3setJiSt4lessIiESaIiEEEEPS2_RKT_IJDpT0_EERKSt6vectorIiS7_ESI_EUliE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.be, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.sroa.04.07.i = load ptr, ptr %i.bi, align 8, !tbaa !42 ; 3 uses
  %.not8.i = icmp eq ptr %.sroa.04.07.i, %i.bi
  br i1 %.not8.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %._crit_edge40
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bk, ptr %i.a, align 4, !tbaa !32
  br label %_ZNKSt8functionIFviEEclEi.exit.i

thread-pre-split:                                 ; preds = %_ZNKSt8functionIFviEEclEi.exit.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 16
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !32
  %.not.i.i.i = icmp eq ptr %.pr30, null
  br i1 %.not.i.i.i, label %bb.h, label %_ZNKSt8functionIFviEEclEi.exit.i

bb.h:                                             ; preds = %thread-pre-split
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFviEEclEi.exit.i:                 ; preds = %.lr.ph.i.preheader, %thread-pre-split
  %.sroa.04.09.i41 = phi ptr [ %.sroa.04.07.i, %.lr.ph.i.preheader ], [ %.sroa.04.0.i, %thread-pre-split ]
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !85
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.04.0.i = load ptr, ptr %.sroa.04.09.i41, align 8, !tbaa !42 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.04.0.i, %i.bi
  %.pr30 = load ptr, ptr %i.be, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit, label %thread-pre-split

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit: ; preds = %_ZNKSt8functionIFviEEclEi.exit.i
  %.not.i17 = icmp eq ptr %.pr30, null
  br i1 %.not.i17, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread

_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread: ; preds = %._crit_edge40, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit
  %i.bo = phi ptr [ %.pr30, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit ], [ @_ZNSt17_Function_handlerIFviEZN3rrr10AndNetwork7ExtractITtTpTyESt3setJiSt4lessIiESaIiEEEEPS2_RKT_IJDpT0_EERKSt6vectorIiS7_ESI_EUliE_E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, %._crit_edge40 ]
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #26, !inline_history !25 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit, %_ZNK3rrr10AndNetwork10ForEachIntERKSt8functionIFviEE.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  store i8 0, ptr %i.ae, align 8, !tbaa !121
  %i.bq = load ptr, ptr %3, align 8, !tbaa !30    ; 2 uses
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !30  ; 2 uses
  %.not3342 = icmp eq ptr %i.bq, %i.br
  br i1 %.not3342, label %._crit_edge45, label %.lr.ph44

bb.i:                                             ; preds = %.lr.ph39, %bb.i
  %.sroa.023.038 = phi ptr [ %i.ax, %.lr.ph39 ], [ %i.bw, %bb.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.023.038, i64 32
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !32
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.bu
  store i32 %.pre, ptr %i.bv, align 4, !tbaa !32
  %i.bw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.023.038) #30 ; 2 uses
  %.not32 = icmp eq ptr %i.bw, %i.ay
  br i1 %.not32, label %._crit_edge40, label %bb.i

._crit_edge45:                                    ; preds = %.lr.ph44, %_ZNSt14_Function_baseD2Ev.exit
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !92
  call void @_ZNSt8_Rb_treeIiSt4pairIKiiESt10_Select1stIS2_ESt4lessIiESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret ptr %i.bx

.lr.ph44:                                         ; preds = %_ZNSt14_Function_baseD2Ev.exit, %.lr.ph44
  %.sroa.018.043 = phi ptr [ %i.ce, %.lr.ph44 ], [ %i.bq, %_ZNSt14_Function_baseD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.bz = load i32, ptr %.sroa.018.043, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.e, align 4, !tbaa !32
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !138
  %i.cb = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIiiSt4lessIiESaISt4pairIKiiEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !32
  %i.cd = call noundef i32 @_ZN3rrr10AndNetwork5AddPoEib(ptr noundef nonnull align 8 dereferenceable(264) %i.ca, i32 noundef %i.cc, i1 noundef zeroext false) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.018.043, i64 4 ; 2 uses
  %.not33 = icmp eq ptr %i.ce, %i.br
  br i1 %.not33, label %._crit_edge45, label %.lr.ph44
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3setIiSt4lessIiESaIiEEC2IN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiS2_EEEEET_SB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %i.c, align 8, !tbaa !93
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !94
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i64 0, ptr %i.e, align 8, !tbaa !105
  %.not7.i = icmp eq ptr %1, %2
  br i1 %.not7.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE22_M_insert_range_uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiS4_EEEEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESE_SE_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_insert_unique_IRiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiESt23_Rb_tree_const_iteratorIiEOT_RT0_.exit.i
  %.pr15 = phi i64 [ %.pr, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_insert_unique_IRiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiESt23_Rb_tree_const_iteratorIiEOT_RT0_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.04.08.i = phi ptr [ %i.af, %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE17_M_insert_unique_IRiNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIiESt23_Rb_tree_const_iteratorIiEOT_RT0_.exit.i ], [ %1, %bb.a ] ; 6 uses
  %.not.i4 = icmp eq i64 %.pr15, 0
  br i1 %.not.i4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !97   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !32
  %i.i = load i32, ptr %.sroa.04.08.i, align 4, !tbaa !32
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %select.unfold, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.02022.i.i = load ptr, ptr %i.b, align 8, !tbaa !97 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

end_hunk_4
begin_hunk_5_@_ZN3rrr15BddMspfAnalyzerINS_10AndNetworkEE8ComputeCEi:bb.a
  %i.im = phi i32 [ %spec.store.select.i, %.lr.ph.i ], [ %.promoted.i, %_ZN3rrr6NewBdd3Man7ReorderEv.exit ]
  %i.in = shl i32 %i.im, 1
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %i.in, i32 2147483647) ; 3 uses
  %i.io = icmp slt i32 %spec.store.select.i, %i.ik
  br i1 %i.io, label %.lr.ph.i, label %..loopexit_crit_edge.i, !llvm.loop !1364

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.i
  store i32 %spec.store.select.i, ptr %i.dt, align 8
  br label %_ZN3rrr6NewBdd3Man3AndEjj.exit

_ZN3rrr6NewBdd3Man3AndEjj.exit:                   ; preds = %bb.s, %_ZN3rrr6NewBdd3Man7ReorderEv.exit, %..loopexit_crit_edge.i
  %i.ip = tail call noundef i32 @_ZN3rrr6NewBdd3Man7And_recEjj(ptr noundef nonnull align 8 dereferenceable(392) %i.dk, i32 noundef %.07380, i32 noundef %i.dq) ; 5 uses
  %.not.i.i43 = icmp eq i32 %.07380, -1
  br i1 %.not.i.i43, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45, label %bb.ap

bb.ap:                                            ; preds = %_ZN3rrr6NewBdd3Man3AndEjj.exit
  %i.iq = load ptr, ptr %i.l, align 8, !tbaa !2302 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 216
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !1322 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 224
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !1322
  %i.iv = icmp eq ptr %i.is, %i.iu
  br i1 %i.iv, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.iw = lshr i32 %.07380, 1
  %i.ix = zext nneg i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.is, i64 %i.ix ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i.i44 = icmp eq i16 %i.iz, -1
  br i1 %.not.i.i.i44, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ja = add i16 %i.iz, -1
  store i16 %i.ja, ptr %i.iy, align 2, !tbaa !1323
  br label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45

_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45: ; preds = %bb.ar, %bb.aq, %bb.ap, %_ZN3rrr6NewBdd3Man3AndEjj.exit
  %.not.i4.i46 = icmp eq i32 %i.ip, -1
  br i1 %.not.i4.i46, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit48, label %bb.as

bb.as:                                            ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45
  %i.jb = load ptr, ptr %i.l, align 8, !tbaa !2302 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 216
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1322 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 224
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !1322
  %i.jg = icmp eq ptr %i.jd, %i.jf
  br i1 %i.jg, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit48, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jh = lshr i32 %i.ip, 1
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.jd, i64 %i.ji ; 2 uses
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i5.i47 = icmp eq i16 %i.jk, -1
  br i1 %.not.i.i5.i47, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit48, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jl = add nuw i16 %i.jk, 1
  store i16 %i.jl, ptr %i.jj, align 2, !tbaa !1323
  br label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit48

_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit48: ; preds = %bb.au, %bb.at, %bb.as, %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45, %.lr.ph
  %.1 = phi i32 [ %.07380, %.lr.ph ], [ -1, %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i45 ], [ %i.ip, %bb.as ], [ %i.ip, %bb.at ], [ %i.ip, %bb.au ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count91
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2818

bb.av:                                            ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit42
  %.not.i.i49 = icmp eq i32 %i.da, -1
  br i1 %.not.i.i49, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jm = load ptr, ptr %i.l, align 8, !tbaa !2302 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 216
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !1322 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 224
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1322
  %i.jr = icmp eq ptr %i.jo, %i.jq
  br i1 %i.jr, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.js = lshr i32 %i.da, 1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jo, i64 %i.jt ; 2 uses
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i.i50 = icmp eq i16 %i.jv, -1
  br i1 %.not.i.i.i50, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jw = add i16 %i.jv, -1
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !1323
  br label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51

_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av
  store i32 %i.bz, ptr %i.cz, align 4, !tbaa !32
  br i1 %.not.i4.i, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54, label %bb.az

bb.az:                                            ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51
  %i.jx = load ptr, ptr %i.l, align 8, !tbaa !2302 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 216
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !1322 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 224
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !1322
  %i.kc = icmp eq ptr %i.jz, %i.kb
  br i1 %i.kc, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kd = lshr i32 %i.by, 1
  %i.ke = zext nneg i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [2 x i8], ptr %i.jz, i64 %i.ke ; 2 uses
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i5.i53 = icmp eq i16 %i.kg, -1
  br i1 %.not.i.i5.i53, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kh = add nuw i16 %i.kg, 1
  store i16 %i.kh, ptr %i.kf, align 2, !tbaa !1323
  br label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54

_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54: ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit.i51, %bb.az, %bb.ba, %bb.bb
  %i.ki = load ptr, ptr %0, align 8, !tbaa !2315
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 128
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !39
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %i.kk, i64 %i.c
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !36
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %indvars.iv88
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !32
  %i.kp = ashr i32 %i.ko, 1                       ; 2 uses
  %i.kq = sext i32 %i.kp to i64                   ; 2 uses
  %i.kr = load ptr, ptr %i.u, align 8, !tbaa !181
  %i.ks = sdiv i32 %i.kp, 64
  %.sext75 = sext i32 %i.ks to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %.sext75
  %i.ku = and i64 %i.kq, -9223372036854775745
  %i.kv = icmp ugt i64 %i.ku, -9223372036854775808
  %storemerge.idx.i.i.i.i.i55 = select i1 %i.kv, i64 -8, i64 0
  %storemerge.i.i.i.i.i56 = getelementptr inbounds i8, ptr %i.kt, i64 %storemerge.idx.i.i.i.i.i55 ; 2 uses
  %i.kw = and i64 %i.kq, 63
  %i.kx = shl nuw i64 1, %i.kw
  %i.ky = load i64, ptr %storemerge.i.i.i.i.i56, align 8, !tbaa !184
  %i.kz = or i64 %i.kx, %i.ky
  store i64 %i.kz, ptr %storemerge.i.i.i.i.i56, align 8, !tbaa !184
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit54, %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6AssignERii.exit42
  br i1 %.not.i4.i, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.la = load ptr, ptr %i.l, align 8, !tbaa !2302 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 216
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1322 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 224
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !1322
  %i.lf = icmp eq ptr %i.lc, %i.le
  br i1 %i.lf, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lg = lshr i32 %i.by, 1
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %i.lh ; 2 uses
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !1323 ; 2 uses
  %.not.i.i59 = icmp eq i16 %i.lj, -1
  br i1 %.not.i.i59, label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lk = add i16 %i.lj, -1
  store i16 %i.lk, ptr %i.li, align 2, !tbaa !1323
  br label %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit

_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit: ; preds = %bb.bc, %bb.bd, %bb.be, %bb.bf
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %.loopexit, label %bb.i, !llvm.loop !2819

.loopexit:                                        ; preds = %_ZNK3rrr15BddMspfAnalyzerINS_10AndNetworkEE6DecRefEi.exit, %bb.h, %.preheader76, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork16ForEachTfoUpdateEibRKSt8functionIFbiEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.d
  %i.g = load i32, ptr %i.f, align 4, !tbaa !32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.t, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.i, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.j, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.m, align 8      ; 2 uses
  %i.n = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.p = icmp eq ptr %.promoted.i, %i.l
  br i1 %i.p, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.l, ptr %i.m, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa49 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.l, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.lcssa48 = phi i32 [ %i.n, %.lr.ph.us.i.peel.begin ], [ 1, %bb.c ], [ 1, %bb.b ] ; 4 uses
  store i32 %.lcssa48, ptr %i.j, align 4, !tbaa !53
  %i.q = load i32, ptr %0, align 8, !tbaa !88
  %i.r = sext i32 %i.q to i64                     ; 4 uses
  %i.s = ptrtoint ptr %.lcssa49 to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.r
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.x = sub nuw nsw i64 %i.r, %i.v
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.x)
  %.pre = load i32, ptr %i.j, align 4, !tbaa !53
  %.pre51 = load ptr, ptr %i.k, align 8, !tbaa !51
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.y = icmp ugt i64 %i.v, %i.r
  br i1 %i.y, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa49, %i.z
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.z, ptr %i.m, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.aa = phi ptr [ %.pre51, %bb.d ], [ %i.l, %bb.e ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  %i.ab = phi i32 [ %.pre, %bb.d ], [ %.lcssa48, %bb.e ], [ %.lcssa48, %bb.f ], [ %.lcssa48, %bb.g ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.d
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !42 ; 3 uses
  %.not5.i.i.i = icmp eq ptr %i.ae, %i.ad
  br i1 %.not5.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %bb.h
  %.sroa.03.06.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.i, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = load ptr, ptr %.sroa.03.06.i.i.i, align 8, !tbaa !42 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %.sroa.03.0.lcssa.i.i.i = phi ptr [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ], [ %.sroa.03.06.i.i.i, %.lr.ph.i.i.i ], [ %i.ai, %bb.h ]
  %.sroa.028.040 = load ptr, ptr %.sroa.03.0.lcssa.i.i.i, align 8, !tbaa !42 ; 2 uses
  %.not3341 = icmp eq ptr %.sroa.028.040, %i.ad
  br i1 %.not3341, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.loopexit36
  %.sroa.028.042 = phi ptr [ %.sroa.028.040, %.lr.ph ], [ %.sroa.028.0, %.loopexit36 ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.028.042, i64 16 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !32 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ap, i64 %i.ao ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !30 ; 2 uses
  %.not3538 = icmp eq ptr %i.ar, %i.at
  br i1 %.not3538, label %.loopexit36, label %.critedge.lr.ph

.critedge.lr.ph:                                  ; preds = %bb.i
  %i.au = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.av = load i32, ptr %i.j, align 4, !tbaa !53
  br label %.critedge

bb.j:                                             ; preds = %.critedge
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 4 ; 2 uses
  %.not35 = icmp eq ptr %i.aw, %i.at
  br i1 %.not35, label %.loopexit36, label %.critedge

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.j
  %.sroa.022.039 = phi ptr [ %i.ar, %.critedge.lr.ph ], [ %i.aw, %bb.j ] ; 2 uses
  %i.ax = load i32, ptr %.sroa.022.039, align 4, !tbaa !32
  %i.ay = ashr i32 %i.ax, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.not = icmp eq i32 %i.bb, %i.av
  br i1 %.not, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.an, ptr %i.b, align 4, !tbaa !32
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt8functionIFbiEEclEi.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit:                   ; preds = %bb.k
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !1194
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.be, label %bb.m, label %.loopexit36

bb.m:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit
  %i.bf = load i32, ptr %i.j, align 4, !tbaa !53
  %i.bg = load i32, ptr %i.am, align 4, !tbaa !32
  %i.bh = sext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bh
  store i32 %i.bf, ptr %i.bj, align 4, !tbaa !32
  br label %.loopexit36

.loopexit36:                                      ; preds = %bb.j, %bb.i, %bb.m, %_ZNKSt8functionIFbiEEclEi.exit
  %.sroa.028.0 = load ptr, ptr %.sroa.028.042, align 8, !tbaa !42 ; 2 uses
  %.not33 = icmp eq ptr %.sroa.028.0, %i.ad
  br i1 %.not33, label %._crit_edge, label %bb.i, !llvm.loop !2820

._crit_edge:                                      ; preds = %.loopexit36, %_ZSt4findISt14_List_iteratorIiEiET_S2_S2_RKT0_.exit
  br i1 %2, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !30 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %.not3443 = icmp eq ptr %i.bl, %i.bn
  br i1 %.not3443, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph46, %bb.s
  %.sroa.018.044 = phi ptr [ %i.bl, %.lr.ph46 ], [ %i.ck, %bb.s ] ; 2 uses
  %i.br = load i32, ptr %.sroa.018.044, align 4, !tbaa !32 ; 2 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !32
  %i.bx = ashr i32 %i.bw, 1
  %i.by = sext i32 %i.bx to i64
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !32
  %i.cc = load i32, ptr %i.j, align 4, !tbaa !53
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.br, ptr %i.a, align 4, !tbaa !32
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !21
  %.not.i.i16 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i16, label %bb.q, label %_ZNKSt8functionIFbiEEclEi.exit17

bb.q:                                             ; preds = %bb.p
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit17:                 ; preds = %bb.p
  %i.cf = load ptr, ptr %i.bq, align 8, !tbaa !1194
  %i.cg = call noundef zeroext i1 %i.cf(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit17
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !53
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bs
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit17, %bb.r, %bb.o
end_hunk_5
begin_hunk_6_@_ZN3rrr9SimulatorINS_10AndNetworkEEC2EOS2_:bb.a
_ZNSt3setIiSt4lessIiESaIiEEC2EOS3_.exit:          ; preds = %bb.b, %bb.c
  %.sink.i.i.i.i = phi i32 [ 0, %bb.c ], [ %i.ao, %bb.b ]
  store i32 %.sink.i.i.i.i, ptr %i.ak, align 8, !tbaa !91
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !3211
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !3211
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3258
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !3258
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bi, ptr noundef nonnull align 8 dereferenceable(12) %i.bj, i64 12, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !30
  store <2 x ptr> %i.bm, ptr %i.bk, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  store ptr %i.bp, ptr %i.bn, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !30
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !33
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr9SimulatorINS_10AndNetworkEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3224 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3225 ; 2 uses
  %.not.i.i1213 = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i1213, label %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2, %.lr.ph
  %.0.i.i14 = phi ptr [ %i.s, %.lr.ph ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit2 ] ; 2 uses
  tail call void @_ZN3rrr9SimulatorINS_10AndNetworkEED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %.0.i.i14) #26, !inline_history !3261
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 312 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i12, label %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit.loopexit, label %.lr.ph, !llvm.loop !3227

_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !3224
  br label %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit

_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit: ; preds = %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit.loopexit, %_ZNSt6vectorIiSaIiEED2Ev.exit2
  %i.t = phi ptr [ %.pre, %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit.loopexit ], [ %i.p, %_ZNSt6vectorIiSaIiEED2Ev.exit2 ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN3rrr9SimulatorINS0_10AndNetworkEEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !3258
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #28
  br label %_ZNSt12_Vector_baseIN3rrr9SimulatorINS0_10AndNetworkEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN3rrr9SimulatorINS0_10AndNetworkEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3rrr9SimulatorINS0_10AndNetworkEEEEvT_S5_.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92
  tail call void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !3216 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIySaIyEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIN3rrr9SimulatorINS0_10AndNetworkEEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !3240
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorIySaIyEED2Ev.exit

_ZNSt6vectorIySaIyEED2Ev.exit:                    ; preds = %_ZNSt12_Vector_baseIN3rrr9SimulatorINS0_10AndNetworkEEESaIS3_EED2Ev.exit, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !3216 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIySaIyEED2Ev.exit5, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3240
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorIySaIyEED2Ev.exit5

_ZNSt6vectorIySaIyEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit, %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !3216 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIySaIyEED2Ev.exit7, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit5
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !3240
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.aw) #28
  br label %_ZNSt6vectorIySaIyEED2Ev.exit7

_ZNSt6vectorIySaIyEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit5, %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3216 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIySaIyEED2Ev.exit9, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit7
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !3240
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.ay to i64
  %i.bd = sub i64 %i.bb, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bd) #28
  br label %_ZNSt6vectorIySaIyEED2Ev.exit9

_ZNSt6vectorIySaIyEED2Ev.exit9:                   ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit7, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !3216 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIySaIyEED2Ev.exit11, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3240
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #28
  br label %_ZNSt6vectorIySaIyEED2Ev.exit11

_ZNSt6vectorIySaIyEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIySaIyEED2Ev.exit9, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork17ForEachTfosUpdateITtTpTyESt3setJiSt4lessIiESaIiEEEEvRKT_IJDpT0_EEbRKSt8functionIFbiEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
.lr.ph.us.i.peel.begin:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.f, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.i, align 8      ; 2 uses
  %i.j = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.a, label %.lr.ph.us.i.split

bb.a:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.l = icmp eq ptr %.promoted.i, %i.h
  br i1 %i.l, label %.lr.ph.us.i.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.i, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.a, %bb.b, %.lr.ph.us.i.peel.begin
  %.lcssa76 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.h, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.lcssa75 = phi i32 [ %i.j, %.lr.ph.us.i.peel.begin ], [ 1, %bb.b ], [ 1, %bb.a ] ; 4 uses
  store i32 %.lcssa75, ptr %i.f, align 4, !tbaa !53
  %i.m = load i32, ptr %0, align 8, !tbaa !88
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = ptrtoint ptr %.lcssa76 to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.n
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.i.split
  %i.t = sub nuw nsw i64 %i.n, %i.r
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.t)
  %.pre78.pre = load ptr, ptr %i.g, align 8, !tbaa !51
  %.pre80.pre = load i32, ptr %i.f, align 4, !tbaa !53
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.u = icmp ugt i64 %i.r, %i.n
  br i1 %i.u, label %bb.e, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa76, %i.v
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.i, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pre80 = phi i32 [ %.pre80.pre, %bb.c ], [ %.lcssa75, %bb.d ], [ %.lcssa75, %bb.e ], [ %.lcssa75, %bb.f ] ; 2 uses
  %.pre78 = phi ptr [ %.pre78.pre, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !93   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not5763 = icmp eq ptr %i.x, %i.y
  br i1 %.not5763, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre79 = load i32, ptr %i.f, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.z = phi i32 [ %.pre79, %._crit_edge.loopexit ], [ %.pre80, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.054.064 = phi ptr [ %i.af, %.lr.ph ], [ %i.x, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.054.064, i64 32
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %i.ad
  store i32 %.pre80, ptr %i.ae, align 4, !tbaa !32
  %i.af = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.054.064) #30 ; 2 uses
  %.not57 = icmp eq ptr %i.af, %i.y
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.044.0.in = phi ptr [ %i.aa, %._crit_edge ], [ %.sroa.044.0, %bb.g ]
  %.sroa.044.0 = load ptr, ptr %.sroa.044.0.in, align 8, !tbaa !42 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 16
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !32
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %.not = icmp ne i32 %i.ak, %i.z
  %i.al = icmp ne ptr %.sroa.044.0, %i.aa
  %or.cond = and i1 %i.al, %.not
  br i1 %or.cond, label %bb.g, label %.critedge.preheader, !llvm.loop !3262

.critedge.preheader:                              ; preds = %bb.g
  %.not5867 = icmp eq ptr %.sroa.044.0, %i.aa
  br i1 %.not5867, label %.critedge._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.critedge.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph69, %.critedge
  %.sroa.044.168 = phi ptr [ %.sroa.044.0, %.lr.ph69 ], [ %i.bt, %.critedge ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.044.168, i64 16 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32 ; 3 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.aq, ptr %i.d, align 4, !tbaa !32
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFbiEEclEi.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit:                   ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ao, align 8, !tbaa !1194
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.az, label %.critedge, label %.critedge.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.ar ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !30 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !30 ; 2 uses
  %.not6065 = icmp eq ptr %i.bc, %i.be
  br i1 %.not6065, label %.critedge, label %.critedge24

bb.l:                                             ; preds = %.critedge24
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.036.066, i64 4 ; 2 uses
  %.not60 = icmp eq ptr %i.bf, %i.be
  br i1 %.not60, label %.critedge, label %.critedge24

.critedge24:                                      ; preds = %bb.k, %bb.l
  %.sroa.036.066 = phi ptr [ %i.bf, %bb.l ], [ %i.bc, %bb.k ] ; 2 uses
  %i.bg = load i32, ptr %.sroa.036.066, align 4, !tbaa !32
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !32
  %.not22 = icmp eq i32 %i.bk, %i.av
  br i1 %.not22, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.critedge24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !32
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !21
  %.not.i.i25 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i25, label %bb.n, label %_ZNKSt8functionIFbiEEclEi.exit26

bb.n:                                             ; preds = %bb.m
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit26:                 ; preds = %bb.m
  %i.bm = load ptr, ptr %i.ao, align 8, !tbaa !1194
  %i.bn = call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bn, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit26
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !53
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit, %bb.o
  %.sink = phi i32 [ %i.bo, %bb.o ], [ 0, %_ZNKSt8functionIFbiEEclEi.exit ]
  %i.bp = load i32, ptr %i.ap, align 4, !tbaa !32
  %i.bq = sext i32 %i.bp to i64
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bq
  store i32 %.sink, ptr %i.bs, align 4, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.sink.split, %bb.k, %_ZNKSt8functionIFbiEEclEi.exit26, %_ZNKSt8functionIFbiEEclEi.exit
  %i.bt = load ptr, ptr %.sroa.044.168, align 8, !tbaa !42 ; 2 uses
  %.not58 = icmp eq ptr %i.bt, %i.aa
  br i1 %.not58, label %.critedge._crit_edge, label %bb.h, !llvm.loop !3263

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  br i1 %2, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.critedge._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30 ; 2 uses
  %.not5970 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not5970, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.q

end_hunk_6
begin_hunk_7_@_ZN3rrr10AndNetwork11IsReachableITtTpTyESt3setJiSt4lessIiESaIiEETtTpTyES2_JiS4_S5_EEEbRKT_IJDpT0_EERKT1_IJDpT2_EE:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.not90101 = icmp eq ptr %i.ae, %i.af
  br i1 %.not90101, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !93 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not91103 = icmp eq ptr %i.ah, %i.ai
  br i1 %.not91103, label %._crit_edge..critedge45_crit_edge, label %.lr.ph106

._crit_edge..critedge45_crit_edge:                ; preds = %._crit_edge
  %.pre125 = load i32, ptr %i.h, align 4, !tbaa !53
  br label %.critedge45

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.073.0102 = phi ptr [ %i.an, %.lr.ph ], [ %i.ae, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.073.0102, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !32
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.al
  store i32 %i.ac, ptr %i.am, align 4, !tbaa !32
  %i.an = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.073.0102) #30 ; 2 uses
  %.not90 = icmp eq ptr %i.an, %i.af
  br i1 %.not90, label %._crit_edge, label %.lr.ph

.lr.ph106:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.069.0104 = phi ptr [ %i.au, %bb.h ], [ %i.ah, %._crit_edge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.069.0104, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  %.not = icmp eq i32 %i.as, %i.ac
  br i1 %.not, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %.lr.ph106
  %i.at = load i32, ptr %i.h, align 4, !tbaa !53  ; 2 uses
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !32
  %i.au = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.069.0104) #30 ; 2 uses
  %.not91 = icmp eq ptr %i.au, %i.ai
  br i1 %.not91, label %.critedge45, label %.lr.ph106

.critedge45:                                      ; preds = %bb.h, %._crit_edge..critedge45_crit_edge
  %i.av = phi i32 [ %.pre125, %._crit_edge..critedge45_crit_edge ], [ %i.at, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge45
  %.sroa.061.0.in = phi ptr [ %i.aw, %.critedge45 ], [ %.sroa.061.0, %bb.i ]
  %.sroa.061.0 = load ptr, ptr %.sroa.061.0.in, align 8, !tbaa !42 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.061.0, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !32
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %.not42 = icmp ne i32 %i.bb, %i.av
  %i.bc = icmp ne ptr %.sroa.061.0, %i.aw
  %or.cond89 = and i1 %i.bc, %.not42
  br i1 %or.cond89, label %bb.i, label %.critedge.preheader, !llvm.loop !4161

.critedge.preheader:                              ; preds = %bb.i
  %.not92111 = icmp eq ptr %.sroa.061.0, %i.aw
  br i1 %.not92111, label %.critedge._crit_edge, label %.lr.ph113

.lr.ph113:                                        ; preds = %.critedge.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.thread78
  %.sroa.061.1112 = phi ptr [ %.sroa.061.0, %.lr.ph113 ], [ %i.bx, %.thread78 ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.061.1112, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !32
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32 ; 2 uses
  %i.bj = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.thread78, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !39
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bg ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %.not94107 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not94107, label %.thread78, label %.lr.ph110

bb.l:                                             ; preds = %.lr.ph110
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.053.0108, i64 4 ; 2 uses
  %.not94 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not94, label %.thread78, label %.lr.ph110

.lr.ph110:                                        ; preds = %bb.k, %bb.l
  %.sroa.053.0108 = phi ptr [ %i.bq, %bb.l ], [ %i.bn, %bb.k ] ; 2 uses
  %i.br = load i32, ptr %.sroa.053.0108, align 4, !tbaa !32
  %i.bs = ashr i32 %i.br, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %.not43 = icmp eq i32 %i.bv, %i.bj
  br i1 %.not43, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.lr.ph110
  %i.bw = icmp eq i32 %i.bi, %i.ac
  br i1 %i.bw, label %.sink.split, label %.thread81

.thread81:                                        ; preds = %bb.m
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !32
  br label %.thread78

.thread78:                                        ; preds = %bb.l, %bb.k, %.thread81, %bb.j
  %i.bx = load ptr, ptr %.sroa.061.1112, align 8, !tbaa !42 ; 2 uses
  %.not92 = icmp eq ptr %i.bx, %i.aw
  br i1 %.not92, label %.critedge._crit_edge, label %bb.j, !llvm.loop !4162

.critedge._crit_edge:                             ; preds = %.thread78, %.critedge.preheader
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !30 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 2 uses
  %.not93114 = icmp eq ptr %i.bz, %i.cb
  br i1 %.not93114, label %.sink.split, label %.lr.ph117

.lr.ph117:                                        ; preds = %.critedge._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph117, %bb.r
  %.sroa.049.0115 = phi ptr [ %i.bz, %.lr.ph117 ], [ %i.ct, %bb.r ] ; 2 uses
  %i.cd = load i32, ptr %.sroa.049.0115, align 4, !tbaa !32
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = load i32, ptr %i.h, align 4, !tbaa !53  ; 3 uses
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = load ptr, ptr %i.cc, align 8, !tbaa !39
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ce
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = ashr i32 %i.cm, 1
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.pre124.pre, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !32
  %i.cr = icmp eq i32 %i.cq, %i.ch
  br i1 %i.cr, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cs = icmp eq i32 %i.cg, %i.ac
  br i1 %i.cs, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.049.0115, i64 4 ; 2 uses
  %.not93 = icmp eq ptr %i.ct, %i.cb
  br i1 %.not93, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %.lr.ph106, %bb.m, %bb.r, %bb.p, %.critedge._crit_edge
  %.13.ph = phi i1 [ false, %.critedge._crit_edge ], [ true, %bb.p ], [ true, %bb.m ], [ false, %bb.r ], [ true, %.lr.ph106 ]
  store i8 0, ptr %i.g, align 8, !tbaa !121
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.a
  %.13 = phi i1 [ false, %bb.a ], [ %.13.ph, %.sink.split ]
  ret i1 %.13
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork16ForEachTfiUpdateEibRKSt8functionIFbiEE(ptr noundef nonnull align 8 dereferenceable(264) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !39   ; 4 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val1.i = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.h = ptrtoint ptr %.val1.i to i64
  %i.i = ptrtoint ptr %.val.i to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 17179869180
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.t, label %.lr.ph.us.i.peel.begin

.lr.ph.us.i.peel.begin:                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.m, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.n, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.q, align 8      ; 2 uses
  %i.r = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.lr.ph.us.i.split

bb.b:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.t = icmp eq ptr %.promoted.i, %i.p
  br i1 %i.t, label %.lr.ph.us.i.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.q, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.b, %bb.c, %.lr.ph.us.i.peel.begin
  %.lcssa61 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.p, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.lcssa60 = phi i32 [ %i.r, %.lr.ph.us.i.peel.begin ], [ 1, %bb.c ], [ 1, %bb.b ]
  store i32 %.lcssa60, ptr %i.n, align 4, !tbaa !53
  %i.u = load i32, ptr %0, align 8, !tbaa !88
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = ptrtoint ptr %.lcssa61 to i64
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, %i.v
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.ab = sub nuw nsw i64 %i.v, %i.z
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.ab)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !39
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %.lr.ph.us.i.split
  %i.ac = icmp ugt i64 %i.z, %i.v
  br i1 %i.ac, label %bb.f, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.v ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa61, %i.ad
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.ad, ptr %i.q, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.ae = phi ptr [ %.pre, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ], [ %i.e, %bb.g ]
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.d ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30 ; 2 uses
  %.not44 = icmp eq ptr %i.ag, %i.ai
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !51
  %.pre63 = load i32, ptr %i.n, align 4, !tbaa !53
  br label %bb.i

._crit_edge:                                      ; preds = %bb.i, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42, !noalias !4163 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i, label %_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %bb.h
  %i.am = phi ptr [ %i.ao, %bb.h ], [ %i.ak, %._crit_edge ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89, !noalias !4166 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32, !noalias !4166
  %i.ar = icmp eq i32 %i.aq, %1
  br i1 %i.ar, label %_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.ao, %i.al
  br i1 %.not.i.i.i, label %_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !4173

_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %._crit_edge
  %.ptr = phi ptr [ %i.ak, %._crit_edge ], [ %i.ao, %bb.h ], [ %i.am, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.ptr, i64 8
  %.sroa.029.050 = load ptr, ptr %i.as, align 8, !tbaa !89, !noalias !158 ; 2 uses
  %.not3951 = icmp eq ptr %.sroa.029.050, %i.al
  br i1 %.not3951, label %._crit_edge54, label %.lr.ph53

.lr.ph53:                                         ; preds = %_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.035.045 = phi ptr [ %i.ag, %.lr.ph ], [ %i.az, %bb.i ] ; 2 uses
  %i.av = load i32, ptr %.sroa.035.045, align 4, !tbaa !32
  %i.aw = ashr i32 %i.av, 1
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ax
  store i32 %.pre63, ptr %i.ay, align 4, !tbaa !32
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.035.045, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ai
  br i1 %.not, label %._crit_edge, label %bb.i

bb.j:                                             ; preds = %.lr.ph53, %.loopexit42
  %.sroa.029.052 = phi ptr [ %.sroa.029.050, %.lr.ph53 ], [ %.sroa.029.0, %.loopexit42 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.029.052, i64 8 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !32
  %i.bi = load i32, ptr %i.n, align 4, !tbaa !53
  %i.bj = icmp eq i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.k, label %.loopexit42

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !32
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %bb.l, label %_ZNKSt8functionIFbiEEclEi.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit:                   ; preds = %bb.k
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !1194
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.029.0.pre65 = load ptr, ptr %i.ba, align 8, !tbaa !89 ; 3 uses
  br i1 %i.bm, label %bb.m, label %.loopexit42

bb.m:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.029.0.pre65, i64 16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.bp ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !30 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %.not4146 = icmp eq ptr %i.bs, %i.bu
  br i1 %.not4146, label %.loopexit42, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.m
  %i.bv = load ptr, ptr %i.o, align 8, !tbaa !51
  %.pre64 = load i32, ptr %i.n, align 4, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph49, %bb.n
  %.sroa.021.047 = phi ptr [ %i.bs, %.lr.ph49 ], [ %i.ca, %bb.n ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.021.047, align 4, !tbaa !32
  %i.bx = ashr i32 %i.bw, 1
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.by
  store i32 %.pre64, ptr %i.bz, align 4, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.021.047, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.ca, %i.bu
  br i1 %.not41, label %.loopexit42.loopexit, label %bb.n

.loopexit42.loopexit:                             ; preds = %bb.n
  %.sroa.029.0.pre = load ptr, ptr %i.ba, align 8, !tbaa !89, !noalias !158
  br label %.loopexit42

.loopexit42:                                      ; preds = %.loopexit42.loopexit, %bb.m, %bb.j, %_ZNKSt8functionIFbiEEclEi.exit
  %.sroa.029.0 = phi ptr [ %.sroa.029.0.pre, %.loopexit42.loopexit ], [ %.sroa.029.0.pre65, %bb.m ], [ %i.bb, %bb.j ], [ %.sroa.029.0.pre65, %_ZNKSt8functionIFbiEEclEi.exit ] ; 2 uses
  %i.cb = load ptr, ptr %i.ak, align 8, !tbaa !42, !noalias !4174
  %.not39 = icmp eq ptr %.sroa.029.0, %i.cb
  br i1 %.not39, label %._crit_edge54, label %bb.j, !llvm.loop !4177

._crit_edge54:                                    ; preds = %.loopexit42, %_ZSt4findISt16reverse_iteratorISt14_List_iteratorIiEEiET_S4_S4_RKT0_.exit
  br i1 %2, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %._crit_edge54
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30 ; 2 uses
  %.not4055 = icmp eq ptr %i.cd, %i.cf
  br i1 %.not4055, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph58, %bb.s
  %.sroa.016.056 = phi ptr [ %i.cd, %.lr.ph58 ], [ %i.cs, %bb.s ] ; 2 uses
  %i.ci = load i32, ptr %.sroa.016.056, align 4, !tbaa !32 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !51
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !32
  %i.cn = load i32, ptr %i.n, align 4, !tbaa !53
  %i.co = icmp eq i32 %i.cm, %i.cn
  br i1 %i.co, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ci, ptr %i.a, align 4, !tbaa !32
  %i.cp = load ptr, ptr %i.cg, align 8, !tbaa !21
  %.not.i.i14 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i14, label %bb.r, label %_ZNKSt8functionIFbiEEclEi.exit15

bb.r:                                             ; preds = %bb.q
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit15:                 ; preds = %bb.q
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !1194
  %i.cr = call noundef zeroext i1 %i.cq(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !1497 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s

bb.s:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit15, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.016.056, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.cs, %i.cf
  br i1 %.not40, label %.loopexit, label %bb.p

.loopexit:                                        ; preds = %bb.s, %bb.o, %._crit_edge54
  store i8 0, ptr %i.m, align 8, !tbaa !121
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork17ForEachTfosUpdateITtTpTyESt6vectorJiSaIiEEEEvRKT_IJDpT0_EEbRKSt8functionIFbiEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
.lr.ph.us.i.peel.begin:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.e, align 8, !tbaa !121
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.f, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.i, align 8      ; 2 uses
  %i.j = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.a, label %.lr.ph.us.i.split

bb.a:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.l = icmp eq ptr %.promoted.i, %i.h
  br i1 %i.l, label %.lr.ph.us.i.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.i, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.a, %bb.b, %.lr.ph.us.i.peel.begin
  %.lcssa76 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.h, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %.lcssa75 = phi i32 [ %i.j, %.lr.ph.us.i.peel.begin ], [ 1, %bb.b ], [ 1, %bb.a ] ; 4 uses
  store i32 %.lcssa75, ptr %i.f, align 4, !tbaa !53
  %i.m = load i32, ptr %0, align 8, !tbaa !88
  %i.n = sext i32 %i.m to i64                     ; 4 uses
  %i.o = ptrtoint ptr %.lcssa76 to i64
  %i.p = ptrtoint ptr %i.h to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2                   ; 3 uses
  %i.s = icmp ult i64 %i.r, %i.n
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.i.split
  %i.t = sub nuw nsw i64 %i.n, %i.r
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.t)
  %.pre78.pre = load ptr, ptr %i.g, align 8, !tbaa !51
  %.pre80.pre = load i32, ptr %i.f, align 4, !tbaa !53
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.u = icmp ugt i64 %i.r, %i.n
  br i1 %i.u, label %bb.e, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.n ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa76, %i.v
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.i, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pre80 = phi i32 [ %.pre80.pre, %bb.c ], [ %.lcssa75, %bb.d ], [ %.lcssa75, %bb.e ], [ %.lcssa75, %bb.f ] ; 2 uses
  %.pre78 = phi ptr [ %.pre78.pre, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30   ; 2 uses
  %.not5763 = icmp eq ptr %i.w, %i.y
  br i1 %.not5763, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre79 = load i32, ptr %i.f, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.z = phi i32 [ %.pre79, %._crit_edge.loopexit ], [ %.pre80, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.054.064 = phi ptr [ %i.ae, %.lr.ph ], [ %i.w, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.ab = load i32, ptr %.sroa.054.064, align 4, !tbaa !32
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %i.ac
  store i32 %.pre80, ptr %i.ad, align 4, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.054.064, i64 4 ; 2 uses
  %.not57 = icmp eq ptr %i.ae, %i.y
  br i1 %.not57, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.044.0.in = phi ptr [ %i.aa, %._crit_edge ], [ %.sroa.044.0, %bb.g ]
  %.sroa.044.0 = load ptr, ptr %.sroa.044.0.in, align 8, !tbaa !42 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.044.0, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre78, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %.not = icmp ne i32 %i.aj, %i.z
  %i.ak = icmp ne ptr %.sroa.044.0, %i.aa
  %or.cond = and i1 %i.ak, %.not
  br i1 %or.cond, label %bb.g, label %.critedge.preheader, !llvm.loop !4178

.critedge.preheader:                              ; preds = %bb.g
  %.not5867 = icmp eq ptr %.sroa.044.0, %i.aa
  br i1 %.not5867, label %.critedge._crit_edge, label %.lr.ph69

.lr.ph69:                                         ; preds = %.critedge.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph69, %.critedge
  %.sroa.044.168 = phi ptr [ %.sroa.044.0, %.lr.ph69 ], [ %i.bs, %.critedge ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.044.168, i64 16 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !32 ; 3 uses
  %i.aq = sext i32 %i.ap to i64                   ; 2 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !32
  %i.au = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 %i.ap, ptr %i.d, align 4, !tbaa !32
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFbiEEclEi.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit:                   ; preds = %bb.i
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !1194
  %i.ay = call noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.d) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ay, label %.critedge, label %.critedge.sink.split

bb.k:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.aq ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %.not6065 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not6065, label %.critedge, label %.critedge24

bb.l:                                             ; preds = %.critedge24
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.036.066, i64 4 ; 2 uses
  %.not60 = icmp eq ptr %i.be, %i.bd
  br i1 %.not60, label %.critedge, label %.critedge24

.critedge24:                                      ; preds = %bb.k, %bb.l
  %.sroa.036.066 = phi ptr [ %i.be, %bb.l ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bf = load i32, ptr %.sroa.036.066, align 4, !tbaa !32
  %i.bg = ashr i32 %i.bf, 1
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !32
  %.not22 = icmp eq i32 %i.bj, %i.au
  br i1 %.not22, label %bb.m, label %bb.l

bb.m:                                             ; preds = %.critedge24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ap, ptr %i.c, align 4, !tbaa !32
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !21
  %.not.i.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i25, label %bb.n, label %_ZNKSt8functionIFbiEEclEi.exit26

bb.n:                                             ; preds = %bb.m
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit26:                 ; preds = %bb.m
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !1194
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.bm, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit26
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !53
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit, %bb.o
  %.sink = phi i32 [ %i.bn, %bb.o ], [ 0, %_ZNKSt8functionIFbiEEclEi.exit ]
  %i.bo = load i32, ptr %i.ao, align 4, !tbaa !32
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bp
  store i32 %.sink, ptr %i.br, align 4, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.sink.split, %bb.k, %_ZNKSt8functionIFbiEEclEi.exit26, %_ZNKSt8functionIFbiEEclEi.exit
  %i.bs = load ptr, ptr %.sroa.044.168, align 8, !tbaa !42 ; 2 uses
  %.not58 = icmp eq ptr %i.bs, %i.aa
  br i1 %.not58, label %.critedge._crit_edge, label %bb.h, !llvm.loop !4179

.critedge._crit_edge:                             ; preds = %.critedge, %.critedge.preheader
  br i1 %2, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %.critedge._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !30 ; 2 uses
  %.not5970 = icmp eq ptr %i.bu, %i.bw
  br i1 %.not5970, label %.loopexit, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph73, %bb.x
  %.sroa.032.071 = phi ptr [ %i.bu, %.lr.ph73 ], [ %i.cz, %bb.x ] ; 2 uses
  %i.ca = load i32, ptr %.sroa.032.071, align 4, !tbaa !32 ; 3 uses
  %i.cb = sext i32 %i.ca to i64                   ; 3 uses
  %i.cc = load ptr, ptr %i.g, align 8, !tbaa !51  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !32
  %i.cf = load i32, ptr %i.f, align 4, !tbaa !53  ; 2 uses
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ca, ptr %i.b, align 4, !tbaa !32
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !21
  %.not.i.i28 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i28, label %bb.s, label %_ZNKSt8functionIFbiEEclEi.exit29

bb.s:                                             ; preds = %bb.r
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit29:                 ; preds = %bb.r
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !1194
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.cj, label %bb.x, label %.sink.split

bb.t:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %i.cb
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !36
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  %i.co = ashr i32 %i.cn, 1
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !32
  %i.cs = icmp eq i32 %i.cr, %i.cf
  br i1 %i.cs, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !32
  %i.ct = load ptr, ptr %i.by, align 8, !tbaa !21
  %.not.i.i30 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i30, label %bb.v, label %_ZNKSt8functionIFbiEEclEi.exit31

bb.v:                                             ; preds = %bb.u
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit31:                 ; preds = %bb.u
  %i.cu = load ptr, ptr %i.bz, align 8, !tbaa !1194
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.cv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit31
  %i.cw = load i32, ptr %i.f, align 4, !tbaa !53
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNKSt8functionIFbiEEclEi.exit29, %bb.w
  %.sink103 = phi i32 [ %i.cw, %bb.w ], [ 0, %_ZNKSt8functionIFbiEEclEi.exit29 ]
  %i.cx = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.cb
  store i32 %.sink103, ptr %i.cy, align 4, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.t, %_ZNKSt8functionIFbiEEclEi.exit31, %_ZNKSt8functionIFbiEEclEi.exit29
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.032.071, i64 4 ; 2 uses
  %.not59 = icmp eq ptr %i.cz, %i.bw
  br i1 %.not59, label %.loopexit, label %bb.q

.loopexit:                                        ; preds = %bb.x, %bb.p, %.critedge._crit_edge
  store i8 0, ptr %i.e, align 8, !tbaa !121
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3rrr10AndNetwork17ForEachTfisUpdateITtTpTyESt6vectorJiSaIiEEEEvRKT_IJDpT0_EEbRKSt8functionIFbiEE(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #2 comdat align 2 {
.lr.ph.us.i.peel.begin:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %.promoted8.i = load i32, ptr %i.d, align 4, !tbaa !53
  %.promoted.i = load ptr, ptr %i.g, align 8      ; 2 uses
  %i.h = add i32 %.promoted8.i, 1                 ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.a, label %.lr.ph.us.i.split

bb.a:                                             ; preds = %.lr.ph.us.i.peel.begin
  %i.j = icmp eq ptr %.promoted.i, %i.f
  br i1 %i.j, label %.lr.ph.us.i.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.f, ptr %i.g, align 8, !tbaa !122
  br label %.lr.ph.us.i.split

.lr.ph.us.i.split:                                ; preds = %bb.a, %bb.b, %.lr.ph.us.i.peel.begin
  %.lcssa64 = phi ptr [ %.promoted.i, %.lr.ph.us.i.peel.begin ], [ %i.f, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.lcssa63 = phi i32 [ %i.h, %.lr.ph.us.i.peel.begin ], [ 1, %bb.b ], [ 1, %bb.a ] ; 4 uses
  store i32 %.lcssa63, ptr %i.d, align 4, !tbaa !53
  %i.k = load i32, ptr %0, align 8, !tbaa !88
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = ptrtoint ptr %.lcssa64 to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ult i64 %i.p, %i.l
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.us.i.split
  %i.r = sub nuw nsw i64 %i.l, %i.p
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.r)
  %.pre66.pre = load ptr, ptr %i.e, align 8, !tbaa !51
  %.pre68.pre = load i32, ptr %i.d, align 4, !tbaa !53
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.d:                                             ; preds = %.lr.ph.us.i.split
  %i.s = icmp ugt i64 %i.p, %i.l
  br i1 %i.s, label %bb.e, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %.not.i.i4.i = icmp eq ptr %.lcssa64, %i.t
  br i1 %.not.i.i4.i, label %_ZN3rrr10AndNetwork14StartTraversalEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.t, ptr %i.g, align 8, !tbaa !122
  br label %_ZN3rrr10AndNetwork14StartTraversalEi.exit

_ZN3rrr10AndNetwork14StartTraversalEi.exit:       ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pre68.a = phi i32 [ %.pre68.pre, %bb.c ], [ %.lcssa63, %bb.d ], [ %.lcssa63, %bb.e ], [ %.lcssa63, %bb.f ] ; 2 uses
  %.pre66.a = phi ptr [ %.pre66.pre, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 2 uses
  %.not4148 = icmp eq ptr %i.u, %i.w
  br i1 %.not4148, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre67.a = load i32, ptr %i.d, align 4, !tbaa !53
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3rrr10AndNetwork14StartTraversalEi.exit
  %i.x = phi i32 [ %.pre67.a, %._crit_edge.loopexit ], [ %.pre68.a, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.pre.pre = load ptr, ptr %i.y, align 8, !tbaa !42, !noalias !158 ; 2 uses
  br label %bb.g

.lr.ph:                                           ; preds = %_ZN3rrr10AndNetwork14StartTraversalEi.exit, %.lr.ph
  %.sroa.038.049 = phi ptr [ %i.ac, %.lr.ph ], [ %i.u, %_ZN3rrr10AndNetwork14StartTraversalEi.exit ] ; 2 uses
  %i.z = load i32, ptr %.sroa.038.049, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.pre66.a, i64 %i.aa
  store i32 %.pre68.a, ptr %i.ab, align 4, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.049, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.ac, %i.w
  br i1 %.not41, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.031.0 = phi ptr [ %i.y, %._crit_edge ], [ %i.ae, %bb.g ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.031.0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !89 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !32
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre66.a, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !32
  %.not = icmp eq i32 %i.aj, %i.x
  %.not42 = icmp eq ptr %.sroa.031.0, %.pre.pre
  %or.cond = select i1 %.not, i1 true, i1 %.not42
  br i1 %or.cond, label %.critedge, label %bb.g, !llvm.loop !4180

.critedge:                                        ; preds = %bb.g
  %.not4354 = icmp eq ptr %.sroa.031.0, %.pre.pre
  br i1 %.not4354, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %.critedge
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph56, %.loopexit46
  %.sroa.031.155 = phi ptr [ %.sroa.031.0, %.lr.ph56 ], [ %i.bo, %.loopexit46 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.155, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !32 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !32
  %i.av = load i32, ptr %i.d, align 4, !tbaa !53
  %i.aw = icmp eq i32 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %.loopexit46

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.aq, ptr %i.b, align 4, !tbaa !32
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.j, label %_ZNKSt8functionIFbiEEclEi.exit

bb.j:                                             ; preds = %bb.i
  call void @_ZSt25__throw_bad_function_callv() #27
  unreachable

_ZNKSt8functionIFbiEEclEi.exit:                   ; preds = %bb.i
  %i.ay = load ptr, ptr %i.al, align 8, !tbaa !1194
  %i.az = call noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #26, !inline_history !1497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.pre71 = load ptr, ptr %i.an, align 8, !tbaa !89 ; 3 uses
  br i1 %i.az, label %bb.k, label %.loopexit46

bb.k:                                             ; preds = %_ZNKSt8functionIFbiEEclEi.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre71, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !32
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !30 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 2 uses
  %.not4550 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not4550, label %.loopexit46, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.k
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !51
  %.pre69 = load i32, ptr %i.d, align 4, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph53, %bb.l
  %.sroa.024.051 = phi ptr [ %i.bf, %.lr.ph53 ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bj = load i32, ptr %.sroa.024.051, align 4, !tbaa !32
  %i.bk = ashr i32 %i.bj, 1
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bl
  store i32 %.pre69, ptr %i.bm, align 4, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.024.051, i64 4 ; 2 uses
  %.not45 = icmp eq ptr %i.bn, %i.bh
  br i1 %.not45, label %.loopexit46.loopexit, label %bb.l

.loopexit46.loopexit:                             ; preds = %bb.l
  %.pre70 = load ptr, ptr %i.an, align 8, !tbaa !89, !noalias !4181
  br label %.loopexit46

.loopexit46:                                      ; preds = %.loopexit46.loopexit, %bb.k, %bb.h, %_ZNKSt8functionIFbiEEclEi.exit
  %i.bo = phi ptr [ %.pre70, %.loopexit46.loopexit ], [ %.pre71, %bb.k ], [ %i.ao, %bb.h ], [ %.pre71, %_ZNKSt8functionIFbiEEclEi.exit ] ; 2 uses
  %i.bp = load ptr, ptr %i.y, align 8, !tbaa !42, !noalias !4184
  %.not43 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not43, label %._crit_edge57, label %bb.h, !llvm.loop !4187

._crit_edge57:                                    ; preds = %.loopexit46, %.critedge
  br i1 %2, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %._crit_edge57
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30 ; 2 uses
  %.not4458 = icmp eq ptr %i.br, %i.bt
  br i1 %.not4458, label %.loopexit, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph61, %bb.q
  %.sroa.019.059 = phi ptr [ %i.br, %.lr.ph61 ], [ %i.cg, %bb.q ] ; 2 uses
  %i.bw = load i32, ptr %.sroa.019.059, align 4, !tbaa !32 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !32
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !53
  %i.cc = icmp eq i32 %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !32
  %i.cd = load ptr, ptr %i.bu, align 8, !tbaa !21
  %.not.i.i17 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i17, label %bb.p, label %_ZNKSt8functionIFbiEEclEi.exit18

end_hunk_7
