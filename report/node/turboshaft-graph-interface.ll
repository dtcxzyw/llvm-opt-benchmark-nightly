inline.NumInlined: 30203
inline.NumDeleted: 8013
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE18rebalance_or_splitEPNS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EE:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 11
  %i.bv = load i8, ptr %i.bu, align 1
  %.not116 = icmp eq i8 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = add i8 %i.bx, 1                         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = call noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #23 ; 9 uses
  store ptr %.082, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i8 %i.by, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  store i8 0, ptr %i.cc, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  store i8 0, ptr %i.cd, align 2
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 11
  store i8 6, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.a, align 8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5splitEiPSF_PSD_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.cf, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.bz)
  %i.cg = load ptr, ptr %i.bz, align 8
  %i.ch = load ptr, ptr %1, align 8
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  store ptr %i.ca, ptr %i.bz, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.cj = call noalias noundef nonnull dereferenceable(312) ptr @_Znwm(i64 noundef 312) #23 ; 7 uses
  store ptr %.082, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  store i8 0, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 10
  store i8 0, ptr %i.cm, align 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 11
  store i8 0, ptr %i.cn, align 1
  %i.co = load i32, ptr %i.a, align 8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5splitEiPSF_PSD_(ptr noundef nonnull align 1 dereferenceable(1) %i.bt, i32 noundef %i.co, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.bz)
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %.0 = phi ptr [ %i.ca, %bb.q ], [ %i.ca, %bb.p ], [ %i.cj, %bb.r ]
  %i.cp = load i32, ptr %i.a, align 8             ; 2 uses
  %i.cq = load ptr, ptr %1, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 10
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = icmp sgt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.cv = xor i32 %i.ct, -1
  %i.cw = add nsw i32 %i.cp, %i.cv
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.t, %bb.f, %bb.k
  %.sink127 = phi i32 [ %i.bj, %bb.k ], [ %i.ae, %bb.f ], [ %i.cw, %bb.t ]
  %.sink = phi ptr [ %i.am, %bb.k ], [ %i.k, %bb.f ], [ %.0, %bb.t ]
  store i32 %.sink127, ptr %i.a, align 8
  store ptr %.sink, ptr %1, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.j, %bb.e, %bb.s
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJRSB_EESK_IJEEEEEvhPSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = icmp ult i8 %1, %i.c
  %i.e = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %narrow = sub nuw i8 %i.c, %1
  %i.h = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = getelementptr [40 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i
  %.017.i = phi ptr [ %i.l, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.m, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 9 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.017.i, i64 -8 ; 5 uses
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds i8, ptr %.017.i, i64 -16
  store ptr %.017.i, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.v = load ptr, ptr %i.p, align 8
  store ptr %i.v, ptr %i.o, align 8
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.r, align 8
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.z = load ptr, ptr %i.y, align 8
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.t, i64 %i.ae, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.g, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.t, align 1
  store i8 %i.ah, ptr %i.q, align 8
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i: ; preds = %bb.c, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i
  %.sink16.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ 16, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink16.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8
  store ptr %i.u, ptr %i.p, align 8
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  store ptr %i.u, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  store ptr %.01416.i, ptr %i.al, align 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit, label %bb.b, !llvm.loop !526

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i
  %.pre = load i8, ptr %i.b, align 1
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit: ; preds = %bb.a, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit
  %i.am = phi i8 [ %.pre, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit ], [ %i.c, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.e ; 6 uses
  %i.ap = load i64, ptr %4, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  store i64 0, ptr %i.at, align 8
  store ptr %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.aw, ptr %i.av, align 8
  %i.ax = add i8 %i.am, 1                         ; 3 uses
  store i8 %i.ax, ptr %i.b, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1
  %.not.i20 = icmp eq i8 %i.az, 0
  br i1 %.not.i20, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.021 = phi i8 [ %i.ax, %.lr.ph ], [ %i.be, %bb.i ] ; 3 uses
  %i.be = add i8 %.021, -1                        ; 3 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = zext i8 %.021 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %.021, ptr %i.bk, align 1
  %6 = zext i8 %i.be to i32
  %7 = icmp samesign ult i32 %i.bb, %6
  br i1 %7, label %bb.i, label %.loopexit, !llvm.loop !527

.loopexit:                                        ; preds = %bb.i, %bb.h, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16clear_and_deleteEPSF_PSD_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %.not70 = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = load i8, ptr %i.c, align 1               ; 3 uses
  br i1 %.not70, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = zext i8 %i.d to i64
  %i.g = mul nuw nsw i64 %i.f, 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %.not9.i = icmp eq i8 %i.d, 0
  br i1 %.not9.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.010.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.j, %i.h
  br i1 %.not.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit.loopexit, label %.lr.ph.i, !llvm.loop !528

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load i8, ptr %i.a, align 1
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit.loopexit, %bb.b
  %i.k = phi i8 [ %.pre, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %i.l = icmp eq i8 %i.k, 0
  %i.m = select i1 %i.l, i8 6, i8 %i.k
  %i.n = zext i8 %i.m to i64
  %i.o = mul nuw nsw i64 %i.n, 40
  %i.p = add nuw nsw i64 %i.o, 16
  br label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.q = icmp eq i8 %i.d, 0
  br i1 %i.q, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04976 = phi ptr [ %i.t, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.04976, i64 256
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1
  %.not.i55 = icmp eq i8 %i.v, 0
  br i1 %.not.i55, label %.lr.ph, label %._crit_edge, !llvm.loop !529

._crit_edge:                                      ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = load ptr, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %._crit_edge
  %.147 = phi i64 [ %i.y, %._crit_edge ], [ %.147.be, %.backedge ] ; 2 uses
  %.1 = phi ptr [ %i.z, %._crit_edge ], [ %.1.be, %.backedge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.147
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.ae = load i8, ptr %i.ad, align 1
  %.not.i56 = icmp eq i8 %i.ae, 0
  br i1 %.not.i56, label %.lr.ph79, label %bb.e

.lr.ph79:                                         ; preds = %bb.d, %.lr.ph79
  %.15078 = phi ptr [ %i.ag, %.lr.ph79 ], [ %i.ac, %bb.d ]
  %i.af = getelementptr inbounds nuw i8, ptr %.15078, i64 256
  %i.ag = load ptr, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  %i.ai = load i8, ptr %i.ah, align 1
  %.not.i57 = icmp eq i8 %i.ai, 0
  br i1 %.not.i57, label %.lr.ph79, label %._crit_edge80, !llvm.loop !530

._crit_edge80:                                    ; preds = %.lr.ph79
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i64
  %i.am = load ptr, ptr %i.ag, align 8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge80, %bb.d
  %.251 = phi ptr [ %i.ag, %._crit_edge80 ], [ %i.ac, %bb.d ] ; 4 uses
  %.248 = phi i64 [ %i.al, %._crit_edge80 ], [ %.147, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.am, %._crit_edge80 ], [ %.1, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.251, i64 10
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.251, i64 16 ; 2 uses
  %i.aq = zext i8 %i.ao to i64
  %i.ar = mul nuw nsw i64 %i.aq, 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %.not9.i58 = icmp eq i8 %i.ao, 0
  br i1 %.not9.i58, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.e, %.lr.ph.i60
  %.010.i61 = phi ptr [ %i.au, %.lr.ph.i60 ], [ %i.ap, %bb.e ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.010.i61, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.010.i61, i64 40 ; 2 uses
  %.not.i62 = icmp eq ptr %i.au, %i.as
  br i1 %.not.i62, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63, label %.lr.ph.i60, !llvm.loop !528

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63: ; preds = %.lr.ph.i60, %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %.251, i64 11
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  %i.ay = select i1 %i.ax, i8 6, i8 %i.aw
  %i.az = zext i8 %i.ay to i64
  %i.ba = mul nuw nsw i64 %i.az, 40
  %i.bb = add nuw nsw i64 %i.ba, 16
  tail call void @_ZdlPvm(ptr noundef nonnull %.251, i64 noundef %i.bb) #24
  %i.bc = getelementptr inbounds nuw i8, ptr %.2, i64 10
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %.not.not = icmp samesign ult i64 %.248, %i.be
  br i1 %.not.not, label %.backedge, label %.preheader71

.backedge:                                        ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63, %bb.g
  %.147.be.in = phi i64 [ %.248, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63 ], [ %i.bs, %bb.g ]
  %.1.be = phi ptr [ %.2, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63 ], [ %i.bi, %bb.g ]
  %.147.be = add nuw nsw i64 %.147.be.in, 1
  br label %bb.d, !llvm.loop !531

.preheader71:                                     ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63, %bb.f
  %i.bf = phi i8 [ %i.br, %bb.f ], [ %i.bd, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63 ] ; 2 uses
  %.3 = phi ptr [ %i.bi, %bb.f ], [ %.2, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit63 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %i.bi = load ptr, ptr %.3, align 8              ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 16 ; 2 uses
  %i.bk = zext i8 %i.bf to i64
  %i.bl = mul nuw nsw i64 %i.bk, 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %.not9.i64 = icmp eq i8 %i.bf, 0
  br i1 %.not9.i64, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit69, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %.preheader71, %.lr.ph.i66
  %.010.i67 = phi ptr [ %i.bo, %.lr.ph.i66 ], [ %i.bj, %.preheader71 ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i67, i64 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i67, i64 40 ; 2 uses
  %.not.i68 = icmp eq ptr %i.bo, %i.bm
  br i1 %.not.i68, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit69, label %.lr.ph.i66, !llvm.loop !528

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit69: ; preds = %.lr.ph.i66, %.preheader71
  tail call void @_ZdlPvm(ptr noundef nonnull %.3, i64 noundef 312) #24
  %i.bp = icmp eq ptr %i.bi, %i.r
  br i1 %i.bp, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %.not = icmp ult i8 %i.bh, %i.br
  br i1 %.not, label %bb.g, label %.preheader71, !llvm.loop !532

bb.g:                                             ; preds = %bb.f
  %i.bs = zext i8 %i.bh to i64
  br label %.backedge

.loopexit.sink.split:                             ; preds = %bb.c, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit
  %.sink = phi i64 [ %i.p, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit ], [ 312, %bb.c ]
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef %.sink) #24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15value_destroy_nEhhPSD_.exit69, %.loopexit.sink.split
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #24
  br label %bb.c

end_hunk_0
begin_hunk_1_@_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5splitEiPSF_PSD_:bb.a
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = zext i8 %.02528 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i8 %.02528, ptr %i.bx, align 1
  store ptr %2, ptr %i.bu, align 8
  %i.by = add i8 %.02528, 1                       ; 2 uses
  %i.bz = load i8, ptr %i.k, align 1
  %.not = icmp ugt i8 %i.by, %i.bz
  br i1 %.not, label %.loopexit, label %bb.m, !llvm.loop !537

.loopexit:                                        ; preds = %bb.m, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13emplace_valueIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp ult i8 %1, %i.c
  %i.e = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %narrow = sub nuw i8 %i.c, %1
  %i.h = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = getelementptr [40 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i
  %.017.i = phi ptr [ %i.l, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.m, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 9 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.017.i, i64 -8 ; 5 uses
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds i8, ptr %.017.i, i64 -16
  store ptr %.017.i, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.v = load ptr, ptr %i.p, align 8
  store ptr %i.v, ptr %i.o, align 8
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.r, align 8
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.z = load ptr, ptr %i.y, align 8
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.t, i64 %i.ae, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.g, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.t, align 1
  store i8 %i.ah, ptr %i.q, align 8
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i: ; preds = %bb.c, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i
  %.sink16.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ 16, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink16.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8
  store ptr %i.u, ptr %i.p, align 8
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  store ptr %i.u, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  store ptr %.01416.i, ptr %i.al, align 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit, label %bb.b, !llvm.loop !526

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i, %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw [40 x i8], ptr %i.am, i64 %i.e ; 7 uses
  %i.ao = load ptr, ptr %3, align 8               ; 10 uses
  %i.ap = load i32, ptr %i.ao, align 8
  store i32 %i.ap, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 5 uses
  store ptr %i.as, ptr %i.aq, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.av, ptr %i.au, align 8
  %i.aw = icmp eq ptr %i.an, %i.ao
  br i1 %i.aw, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10value_initIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit
  %i.ax = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  %i.az = load ptr, ptr %i.ar, align 8
  store ptr %i.az, ptr %i.aq, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  store ptr %i.bb, ptr %i.at, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.ax to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 4 uses
  %i.bj = icmp sgt i64 %i.bi, 1
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.ax, i64 %i.bi, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp eq i64 %i.bi, 1
  br i1 %i.bk, label %bb.m, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bl = load i8, ptr %i.ax, align 1
  store i8 %i.bl, ptr %i.as, align 8
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i:   ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bi
  br label %bb.n

bb.n:                                             ; preds = %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i, %bb.i
  %.sink16.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i ], [ 16, %bb.i ]
  %.sink.i.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i ], [ %i.bd, %bb.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink16.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i, ptr %i.bn, align 8
  store ptr %i.ay, ptr %i.ar, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.ay, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.bp, ptr %i.bq, align 8
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10value_initIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_.exit

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10value_initIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_.exit: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit, %bb.n
  %i.br = load i8, ptr %i.b, align 1
  %i.bs = add i8 %i.br, 1                         ; 3 uses
  store i8 %i.bs, ptr %i.b, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.bu = load i8, ptr %i.bt, align 1
  %.not.i18 = icmp eq i8 %i.bu, 0
  br i1 %.not.i18, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10value_initIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_.exit
  %i.bv = zext i8 %i.bs to i32
  %i.bw = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.bv
  br i1 %i.bx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.019 = phi i8 [ %i.bs, %.lr.ph ], [ %i.bz, %bb.p ] ; 3 uses
  %i.bz = add i8 %.019, -1                        ; 3 uses
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = zext i8 %.019 to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cd
  store ptr %i.cc, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 %.019, ptr %i.cf, align 1
  %4 = zext i8 %i.bz to i32
  %5 = icmp samesign ult i32 %i.bw, %4
  br i1 %5, label %bb.p, label %.loopexit, !llvm.loop !538

.loopexit:                                        ; preds = %bb.p, %bb.o, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10value_initIJPNS0_13map_slot_typeIjS7_EEEEEvhPSD_DpOT_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE4GrowEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl i64 %i.g, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.h)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1)
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false) ; 2 uses
  %i.j = sub nuw nsw i64 64, %i.i
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = icmp eq i64 %i.i, 1
  br i1 %i.l, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.a, align 8
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #23 ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.f                       ; 4 uses
  %i.q = icmp sgt i64 %i.p, 1
  br i1 %i.q, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.b, i64 %i.p, i1 false)
  br label %_ZSt18uninitialized_moveIPhS0_ET0_T_S2_S1_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.p, 1
  br i1 %i.r, label %bb.f, label %_ZSt18uninitialized_moveIPhS0_ET0_T_S2_S1_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.b, align 1
  store i8 %i.s, ptr %i.n, align 1
  br label %_ZSt18uninitialized_moveIPhS0_ET0_T_S2_S1_.exit

_ZSt18uninitialized_moveIPhS0_ET0_T_S2_S1_.exit:  ; preds = %bb.d, %bb.e, %bb.f
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr %i.n, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  store ptr %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store ptr %i.u, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13insert_uniqueIjJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEESA_INS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.716") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.absl::container_internal::btree_iterator.718", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %class.anon.750, align 8            ; 4 uses
  %8 = alloca %class.anon.751, align 8            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 5 uses
  store ptr %i.e, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.e, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = load i32, ptr %2, align 4                ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.0.in.i = phi ptr [ %1, %bb.c ], [ %i.u, %bb.f ]
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 10
  %i.j = load i8, ptr %i.i, align 1               ; 5 uses
  %i.k = zext i8 %i.j to i64                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %.not.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %bb.e
  %.07.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ 0, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %.07.i.i.i.i
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp ult i32 %i.n, %i.h
  br i1 %i.o, label %bb.e, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.p = add nuw nsw i64 %.07.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i.i.i.i, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !523

_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i: ; preds = %bb.e, %.lr.ph.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.07.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 11
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.f, label %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit

bb.f:                                             ; preds = %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 256
  %i.t = and i64 %.0.lcssa.i.i.i.i, 255
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  br label %bb.d

_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit: ; preds = %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i
  %i.v = trunc i64 %.0.lcssa.i.i.i.i to i32       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit
  %.sroa.7.0.i = phi i32 [ %i.v, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit ], [ %i.ac, %bb.h ] ; 3 uses
  %.sroa.0.0.i18 = phi ptr [ %.sroa.0.0.i, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit ], [ %i.ad, %bb.h ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 10
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = icmp eq i32 %.sroa.7.0.i, %i.y
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 8
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load ptr, ptr %.sroa.0.0.i18, align 8   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 11
  %i.af = load i8, ptr %i.ae, align 1
  %.not.i21 = icmp eq i8 %i.af, 0
  br i1 %.not.i21, label %bb.g, label %.loopexit, !llvm.loop !524

bb.i:                                             ; preds = %bb.g
  %i.ag = sext i32 %.sroa.7.0.i to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i18, i64 16
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp ult i32 %i.h, %i.aj
  br i1 %i.ak, label %.loopexit, label %.critedge

.loopexit:                                        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %.sroa.0.0.i, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i32 %i.v, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.am, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.a, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %6, ptr %8, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %7, ptr %i.ao, align 8
  %i.ap = icmp eq i8 %i.j, %i.r
  br i1 %i.ap, label %bb.j, label %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_.exit

bb.j:                                             ; preds = %.loopexit
  %i.aq = icmp ult i8 %i.j, 6
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ar = shl nuw nsw i8 %i.j, 1
  %i.as = call i8 @llvm.umin.i8(i8 %i.ar, i8 6)
  call void @_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_ENKUlhE_clEh(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 noundef zeroext %i.as)
  br label %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  call void @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE18rebalance_or_splitEPNS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %6)
  br label %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_.exit

_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_.exit: ; preds = %.loopexit, %bb.k, %bb.l
  %i.at = load ptr, ptr %6, align 8
  %i.au = load i32, ptr %i.al, align 8
  %i.av = trunc i32 %i.au to i8
  %i.aw = load ptr, ptr %i.a, align 8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEEvhPSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %i.at, i8 noundef zeroext %i.av, ptr noundef %i.aw, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.ax = load i64, ptr %i.b, align 8
  %i.ay = add i64 %i.ax, 1
end_hunk_1
begin_hunk_2_@_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_ENKUlhE_clEh:bb.a
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.v)
  %i.ae = load ptr, ptr %i.w, align 8
  store ptr %i.ae, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  store ptr %i.ag, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ac to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 1 %i.ac, i64 %i.an, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = icmp eq i64 %i.an, 1
  br i1 %i.ap, label %bb.g, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load i8, ptr %i.ac, align 1
  store i8 %i.aq, ptr %i.x, align 8
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.an
  br label %bb.h

bb.h:                                             ; preds = %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sink16.i.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i ], [ 16, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.ai, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sink16.i.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i.i, ptr %i.as, align 8
  store ptr %i.ad, ptr %i.w, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 16
  store ptr %i.ad, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 24
  store ptr %i.au, ptr %i.av, align 8
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i.i

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  %i.aw = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aw, %i.s
  br i1 %.not.i.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !525

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit.i: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i.i
  %.pre.i = load i8, ptr %i.o, align 1
  br label %_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_ENKUlPSQ_SX_E_clESX_SX_.exit

_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEST_DpOT_ENKUlPSQ_SX_E_clESX_SX_.exit: ; preds = %bb.a, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit.i
  %i.ax = phi i8 [ %.pre.i, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE10transfer_nEmmmPSF_PSD_.exit.loopexit.i ], [ 0, %bb.a ]
  store i8 %i.ax, ptr %i.k, align 2
  store i8 0, ptr %i.o, align 1
  %i.ay = load ptr, ptr %i.n, align 8, !nonnull !11, !align !19
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16clear_and_deleteEPSF_PSD_(ptr noundef nonnull %i.d, ptr noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.ba, align 8
  store ptr %i.h, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13emplace_valueIJRKSt21piecewise_construct_tSt5tupleIJOjEESK_IJEEEEEvhPSD_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = zext i8 %1 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = icmp ult i8 %1, %i.c
  %i.e = zext i8 %1 to i64                        ; 2 uses
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %narrow = sub nuw i8 %i.c, %1
  %i.h = zext i8 %narrow to i64                   ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.h, 40
  %i.i = getelementptr i8, ptr %i.g, i64 40
  %i.j = getelementptr [40 x i8], ptr %i.i, i64 %i.h
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i
  %.017.i = phi ptr [ %i.l, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.j, %.lr.ph.preheader.i ] ; 6 uses
  %.01416.i = phi ptr [ %i.m, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i ], [ %i.k, %.lr.ph.preheader.i ] ; 9 uses
  %i.l = getelementptr inbounds i8, ptr %.017.i, i64 -40 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.01416.i, i64 -40 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds i8, ptr %.017.i, i64 -32 ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.01416.i, i64 -32 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %.017.i, i64 -8 ; 5 uses
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds i8, ptr %.017.i, i64 -24 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds i8, ptr %.017.i, i64 -16
  store ptr %.017.i, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.01416.i, i64 -8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
  %i.v = load ptr, ptr %i.p, align 8
  store ptr %i.v, ptr %i.o, align 8
  %i.w = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.x = load ptr, ptr %i.w, align 8
  store ptr %i.x, ptr %i.r, align 8
  %i.y = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  %i.z = load ptr, ptr %i.y, align 8
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 1 %i.t, i64 %i.ae, i1 false)
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.ae, 1
  br i1 %i.ag, label %bb.g, label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.t, align 1
  store i8 %i.ah, ptr %i.q, align 8
  br label %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i

_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i: ; preds = %bb.c, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i
  %.sink16.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ 16, %bb.c ]
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt4moveIPhS0_ET0_T_S2_S1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.z, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink16.i.i.i.i.i.i.i.i.i
  store ptr %.sink.i.i.i.i.i.i.i.i.i, ptr %i.aj, align 8
  store ptr %i.u, ptr %i.p, align 8
  %i.ak = getelementptr inbounds i8, ptr %.01416.i, i64 -24
  store ptr %i.u, ptr %i.ak, align 8
  %i.al = getelementptr inbounds i8, ptr %.01416.i, i64 -16
  store ptr %.01416.i, ptr %i.al, align 8
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorIhLm8ESaIhEE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %.not.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i, label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit, label %bb.b, !llvm.loop !526

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit: ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE8transferEPNS0_13map_slot_typeIjS7_EESI_PSD_.exit.i
  %.pre = load i8, ptr %i.b, align 1
  br label %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit

_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit: ; preds = %bb.a, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit
  %i.am = phi i8 [ %.pre, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit.loopexit ], [ %i.c, %bb.a ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %i.an, i64 %i.e ; 6 uses
  %i.ap = load i64, ptr %4, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load i32, ptr %i.aq, align 4
  store i32 %i.ar, ptr %i.ao, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  store i64 0, ptr %i.at, align 8
  store ptr %i.at, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.at, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.aw, ptr %i.av, align 8
  %i.ax = add i8 %i.am, 1                         ; 3 uses
  store i8 %i.ax, ptr %i.b, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.az = load i8, ptr %i.ay, align 1
  %.not.i20 = icmp eq i8 %i.az, 0
  br i1 %.not.i20, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit
  %i.ba = zext i8 %i.ax to i32
  %i.bb = add nuw nsw i32 %i.a, 1                 ; 2 uses
  %i.bc = icmp samesign ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %.021 = phi i8 [ %i.ax, %.lr.ph ], [ %i.be, %bb.i ] ; 3 uses
  %i.be = add i8 %.021, -1                        ; 3 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = zext i8 %.021 to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  store ptr %i.bh, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %.021, ptr %i.bk, align 1
  %6 = zext i8 %i.be to i32
  %7 = icmp samesign ult i32 %i.bb, %6
  br i1 %7, label %bb.i, label %.loopexit, !llvm.loop !539

.loopexit:                                        ; preds = %bb.i, %bb.h, %_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE19transfer_n_backwardEmmmPSF_PSD_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11erase_rangeENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EESL_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.754") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"class.absl::container_internal::btree_iterator.718", align 8 ; 4 uses
  store ptr %4, ptr %6, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 %5, ptr %i.a, align 8
  %i.b = call noundef i64 @_ZNK4absl18container_internal14btree_iteratorINS0_10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS8_EELi256ELb0EEEEERSD_PSD_EmiENS1_IKSG_RKSD_PSL_EE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr %2, i32 %3) ; 9 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit, label %bb.c

_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit: ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE16clear_and_deleteEPSF_PSD_(ptr noundef %i.g, ptr noundef nonnull %i.h)
  store ptr @_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %i.h, align 8
  store ptr @_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, ptr %1, align 8
  store i64 0, ptr %i.d, align 8
  br label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8
  %i.j = icmp eq ptr %2, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i32 %3 to i8
  %i.l = load i32, ptr %i.a, align 8
  %i.m = sub nsw i32 %i.l, %3
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13remove_valuesEhhPSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 noundef zeroext %i.k, i8 noundef zeroext %i.n, ptr noundef nonnull %i.o)
  %i.p = load i64, ptr %i.d, align 8
  %i.q = sub i64 %i.p, %i.b
  store i64 %i.q, ptr %i.d, align 8
  %i.r = call { ptr, i32 } @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE22rebalance_after_deleteENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %2, i32 %3) ; 2 uses
  %.fca.0.extract17 = extractvalue { ptr, i32 } %i.r, 0
  %.fca.1.extract18 = extractvalue { ptr, i32 } %i.r, 1
  br label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.s = sub i64 %i.e, %i.b                       ; 2 uses
  %.not66 = icmp ult i64 %i.e, %i.b
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %i.u = phi i64 [ %i.e, %.lr.ph ], [ %i.ak, %bb.i ]
  %.sroa.13.060 = phi i32 [ %3, %.lr.ph ], [ %.sroa.13.1, %bb.i ] ; 4 uses
  %.sroa.046.059 = phi ptr [ %2, %.lr.ph ], [ %.sroa.046.1, %bb.i ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.046.059, i64 11
  %i.w = load i8, ptr %i.v, align 1
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = sub i64 %i.u, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.046.059, i64 10
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %i.aa, %.sroa.13.060
  %i.ac = sext i32 %i.ab to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.ac) ; 2 uses
  %i.ad = trunc i64 %.sroa.speculated to i8
  %i.ae = trunc i32 %.sroa.13.060 to i8
  call void @_ZN4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE13remove_valuesEhhPSD_(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.046.059, i8 noundef zeroext %i.ae, i8 noundef zeroext %i.ad, ptr noundef nonnull %i.t)
  %i.af = and i64 %.sroa.speculated, 255
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = sub i64 %i.ag, %i.af
  store i64 %i.ah, ptr %i.d, align 8
  %i.ai = call { ptr, i32 } @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE22rebalance_after_deleteENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.046.059, i32 %.sroa.13.060)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = call { ptr, i32 } @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5eraseENS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %.sroa.046.059, i32 %.sroa.13.060)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.sroa.13.1 = extractvalue { ptr, i32 } %.pn, 1 ; 2 uses
  %.sroa.046.1 = extractvalue { ptr, i32 } %.pn, 0 ; 2 uses
  %i.ak = load i64, ptr %i.d, align 8             ; 2 uses
  %i.al = icmp ugt i64 %i.ak, %i.s
  br i1 %i.al, label %bb.f, label %._crit_edge, !llvm.loop !540

._crit_edge:                                      ; preds = %bb.i, %bb.e, %bb.a, %bb.d, %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit
  %.sink = phi i64 [ 0, %bb.a ], [ %i.b, %bb.d ], [ %i.b, %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit ], [ %i.b, %bb.e ], [ %i.b, %bb.i ]
  %.sroa.046.0.lcssa.sink = phi ptr [ %2, %bb.a ], [ %.fca.0.extract17, %bb.d ], [ @_ZZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE9EmptyNodeEvE10empty_node, %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit ], [ %2, %bb.e ], [ %.sroa.046.1, %bb.i ]
  %.sroa.13.0.lcssa.sink = phi i32 [ %3, %bb.a ], [ %.fca.1.extract18, %bb.d ], [ 0, %_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE5clearEv.exit ], [ %3, %bb.e ], [ %.sroa.13.1, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.046.0.lcssa.sink, ptr %i.am, align 8
  %.sroa.13.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.13.0.lcssa.sink, ptr %.sroa.13.0..sroa_idx51, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11equal_rangeIjEESA_INS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EESM_ERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.752") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !noalias !541 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.0.0.in.i.i.i = phi ptr [ %1, %bb.a ], [ %i.n, %bb.d ]
  %.sroa.0.0.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i, align 8, !noalias !541 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 10
  %i.c = load i8, ptr %i.b, align 1, !noalias !541 ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %bb.c
  %.07.i.i.i.i.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %.07.i.i.i.i.i.i
  %i.g = load i32, ptr %i.f, align 4, !noalias !541
  %i.h = icmp ult i32 %i.g, %i.a
  br i1 %i.h, label %bb.c, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.i = add nuw nsw i64 %.07.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.i, %i.d
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !523

_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i, %bb.b
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 11
  %i.k = load i8, ptr %i.j, align 1, !noalias !541
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i

bb.d:                                             ; preds = %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 256
  %i.m = and i64 %.0.lcssa.i.i.i.i.i.i, 255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  br label %bb.b

_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i: ; preds = %_ZNK4absl18container_internal10btree_nodeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE11lower_boundIjEENS0_12SearchResultImLb0EEERKT_RKNS0_19key_compare_adapterIS9_jE15checked_compareE.exit.i.i.i
  %i.o = trunc i64 %.0.lcssa.i.i.i.i.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i
  %.sroa.7.0.i.i.i = phi i32 [ %i.o, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i ], [ %i.v, %bb.f ] ; 13 uses
  %.sroa.0.0.i8.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE15internal_locateIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i.i ], [ %i.w, %bb.f ] ; 18 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i, i64 10
  %i.q = load i8, ptr %i.p, align 1, !noalias !541 ; 2 uses
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %.sroa.7.0.i.i.i, %i.r
  br i1 %i.s, label %bb.f, label %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE20internal_lower_boundIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.i.i, i64 8
  %i.u = load i8, ptr %i.t, align 1, !noalias !541
  %i.v = zext i8 %i.u to i32
  %i.w = load ptr, ptr %.sroa.0.0.i8.i.i, align 8, !noalias !541 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.y = load i8, ptr %i.x, align 1, !noalias !541
  %.not.i11.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i11.i.i, label %bb.e, label %.critedge.i.i.i.thread, !llvm.loop !524

.critedge.i.i.i.thread:                           ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !541 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !541
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  br label %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE17lower_bound_equalIjEESA_INS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EEbERKT_.exit.thread

_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE20internal_lower_boundIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i: ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !541 ; 3 uses
  %.not.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i, label %bb.g, label %.critedge.i.i.i, !prof !544

bb.g:                                             ; preds = %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE20internal_lower_boundIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i
  tail call void @llvm.trap()
  unreachable

.critedge.i.i.i:                                  ; preds = %_ZNK4absl18container_internal5btreeINS0_10map_paramsIjN2v84base11SmallVectorIhLm8ESaIhEEESt4lessIjESaISt4pairIKjS7_EELi256ELb0EEEE20internal_lower_boundIjEENS0_12SearchResultINS0_14btree_iteratorINS0_10btree_nodeISE_EERSC_PSC_EELb0EEERKT_.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 10
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !541
  %.pre38 = zext i8 %.pre to i32
  %i.ae = icmp ne ptr %.sroa.0.0.i8.i.i, %.pre.i
  %i.af = icmp ne i32 %.sroa.7.0.i.i.i, %.pre38
end_hunk_2
