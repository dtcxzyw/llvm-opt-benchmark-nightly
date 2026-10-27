Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.06?download=true
inline.NumInlined: 248
inline.NumDeleted: 126
begin_hunk_0_@_RINvXst_Csi1wr4QBDb3z_8smallvecINtB6_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_EINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendBJ_E6extendINtNtNtB1G_8adapters3map3MapINtNtNtB1I_3ops5range5RangejENCNvMse_NtBN_8internedNtB3G_13RevisionQueue3new0EEBN_:bb.a
  %.sink.i15 = phi i64 [ %i.r, %bb.e ], [ 3, %_RINvCsi1wr4QBDb3z_8smallvec10infallibleuECsC8CapfvpQ1_5salsa.exit ] ; 4 uses
  %i.v = load i64, ptr %.sink10.i, align 8, !noundef !5 ; 6 uses
  %i.w = icmp ult i64 %i.v, %.sink.i15
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %1) ; 2 uses
  %i.x = xor i64 %i.v, -1
  %i.y = add i64 %.sink.i15, %i.x
  %i.z = sub i64 %umax, %1
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  %i.ab = add i64 %i.aa, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 5
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.ph

.lr.ph.preheader74:                               ; preds = %vector.body, %.lr.ph.preheader
  %.sroa.0.052.ph = phi i64 [ %1, %.lr.ph.preheader ], [ %i.af, %vector.body ]
  %.sroa.7.051.ph = phi i64 [ %i.v, %.lr.ph.preheader ], [ %i.ag, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.ac = and i64 %i.ab, 3                        ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = select i1 %i.ad, i64 4, i64 %i.ac
  %n.vec = sub i64 %i.ab, %i.ae                   ; 3 uses
  %i.af = add i64 %1, %n.vec
  %i.ag = add i64 %i.v, %n.vec
  %i.ah = getelementptr [8 x i8], ptr %.sink11.i, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <2 x i64> splat (i64 1), ptr %i.ai, align 8
  store <2 x i64> splat (i64 1), ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %.lr.ph.preheader74, label %vector.body, !llvm.loop !63

._crit_edge:                                      ; preds = %bb.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit
  %.sroa.7.0.lcssa = phi i64 [ %i.v, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit ], [ %.sink.i15, %bb.i ]
  %.sroa.0.0.lcssa = phi i64 [ %1, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit ], [ %i.ay, %bb.i ] ; 2 uses
  store i64 %.sroa.7.0.lcssa, ptr %.sink10.i, align 8
  %i.al = icmp ult i64 %.sroa.0.0.lcssa, %2
  br i1 %i.al, label %.lr.ph56, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17

.lr.ph56:                                         ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.f

.lr.ph:                                           ; preds = %.lr.ph.preheader74, %bb.i
  %.sroa.0.052 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.0.052.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.ba, %bb.i ], [ %.sroa.7.051.ph, %.lr.ph.preheader74 ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.0.052, %umax
  br i1 %exitcond.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit, label %bb.i

bb.f:                                             ; preds = %.lr.ph56, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit
  %.sroa.034.054 = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph56 ], [ %i.an, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit ]
  %i.an = add i64 %.sroa.034.054, 1               ; 2 uses
  %i.ao = load i64, ptr %i.a, align 8, !alias.scope !75, !noundef !5 ; 3 uses
  %i.ap = icmp ugt i64 %i.ao, 3
  br i1 %i.ap, label %bb.g, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %i.am, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  %.pre62 = load i64, ptr %i.d, align 8, !alias.scope !76
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i: ; preds = %bb.f, %bb.g
  %i.ar = phi i64 [ %.pre62, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %.sink11.i.i = phi ptr [ %i.aq, %bb.g ], [ %i.d, %bb.f ]
  %.sink10.i.i = phi ptr [ %i.d, %bb.g ], [ %i.a, %bb.f ]
  %.sink.i.i18 = phi i64 [ %i.ao, %bb.g ], [ 3, %bb.f ]
  %i.as = icmp eq i64 %i.ar, %.sink.i.i18
  br i1 %i.as, label %bb.h, label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit, !prof !8

bb.h:                                             ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i
  tail call fastcc void @_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E21reserve_one_uncheckedBM_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  %i.at = load ptr, ptr %i.am, align 8, !alias.scope !76, !nonnull !5, !noundef !5
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !76
  br label %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit

_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i, %bb.h
  %i.au = phi i64 [ %.pre.i, %bb.h ], [ %i.ar, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ]
  %.sroa.04.0.i = phi ptr [ %i.d, %bb.h ], [ %.sink10.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ] ; 2 uses
  %.sroa.08.0.i = phi ptr [ %i.at, %bb.h ], [ %.sink11.i.i, %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E10triple_mutBM_.exit.i ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.08.0.i, i64 %i.au
  store i64 1, ptr %i.av, align 8
  %i.aw = load i64, ptr %.sroa.04.0.i, align 8, !alias.scope !76, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %.sroa.04.0.i, align 8, !alias.scope !76
  %exitcond60.not = icmp eq i64 %i.an, %2
  br i1 %exitcond60.not, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17, label %bb.f

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17: ; preds = %_RNvMsd_Csi1wr4QBDb3z_8smallvecINtB5_8SmallVecANtNtCsC8CapfvpQ1_5salsa8revision14AtomicRevisionj3_E4pushBM_.exit, %._crit_edge, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit
  ret void

bb.i:                                             ; preds = %.lr.ph
  %i.ay = add i64 %.sroa.0.052, 1                 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %.sroa.7.051
  store i64 1, ptr %i.az, align 8
  %i.ba = add i64 %.sroa.7.051, 1                 ; 2 uses
  %exitcond59.not = icmp eq i64 %i.ba, %.sink.i15
  br i1 %exitcond59.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit: ; preds = %.lr.ph
  store i64 %.sroa.7.051, ptr %.sink10.i, align 8
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvMse_NtCsC8CapfvpQ1_5salsa8internedNtB1w_13RevisionQueue3new0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit17
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !137
  %i.f = load i8, ptr %i.b, align 8, !range !138, !noalias !136, !noundef !5 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not17.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.812.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.l ] ; 4 uses
  %.sroa.59.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !136 ; 2 uses
  %.sroa.711.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !136 ; 10 uses
  %.sroa.812.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !136 ; 10 uses
  %.sroa.913.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !136 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !136 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !140
  %i.h = load i8, ptr %i.a, align 8, !range !138, !noalias !139, !noundef !5 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !139 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !139 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !139 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !139 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !139 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.h, 5
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
  %i.p = select i1 %i.m, i64 %i.o, i64 0
  %i.q = icmp eq i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  switch i64 %i.l, label %bb.l [
    i64 0, label %bb.e
    i64 4, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.g, %i.h
  br i1 %i.r, label %bb.f, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  switch i8 %i.g, label %default.unreachable42.i.i.i.i.i.i.i.i.i.i.i.i [
    i8 0, label %bb.g
    i8 1, label %bb.h
    i8 2, label %.split26.i.i.i.i.i.i.i.i
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %.split32.i.i.i.i.i.i.i.i
  ]

default.unreachable42.i.i.i.i.i.i.i.i.i.i.i.i:    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.s = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.s, label %.split30.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split30.i.i.i.i.i.i.i.i:                         ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !141, !noalias !142
  %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = icmp eq i32 %bcmp.i.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.u, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !143, !noalias !142
  %i.v = icmp eq i32 %bcmp.i.i26.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.w = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %.split28.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split26.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  %i.x = icmp eq i8 %.sroa.59.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr27.i.i.i.i.i.i.i.i = freeze i1 %i.x
  br i1 %cond.fr27.i.i.i.i.i.i.i.i, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.y = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.y, label %.split.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !144, !noalias !142
  %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i29.i.i.i.i.i.i.i.i.i.i.i.i
  %i.z = icmp eq i32 %bcmp.i.i29.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.z, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.j:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.aa, label %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit33.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit33.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !145, !noalias !142
  %i.ab = icmp eq i32 %bcmp.i.i32.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ac = icmp eq i64 %.sroa.10.0.copyload.i.i.i.i.i.i, %.sroa.910.0.copyload.i.i.i.i.i.i.i.i
  %or.cond6.i.i.i.i.i.i.i.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond6.i.i.i.i.i.i.i.i.i, label %.split34.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split32.i.i.i.i.i.i.i.i:                         ; preds = %bb.f
  %i.ad = icmp eq i8 %.sroa.59.0.copyload.i.i.i.i.i.i, %.sroa.45.0.copyload.i.i.i.i.i.i.i.i
  %cond.fr33.i.i.i.i.i.i.i.i = freeze i1 %i.ad
  br i1 %cond.fr33.i.i.i.i.i.i.i.i, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split28.i.i.i.i.i.i.i.i:                         ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.913.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.913.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !146, !noalias !142
  %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i35.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i32 %bcmp.i.i35.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ae, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

.split34.i.i.i.i.i.i.i.i:                         ; preds = %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit33.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.89.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.913.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.913.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.89.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.10.0.copyload.i.i.i.i.i.i), !alias.scope !147, !noalias !142
  %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i38.i.i.i.i.i.i.i.i.i.i.i.i
  %i.af = icmp eq i32 %bcmp.i.i38.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %.sroa.812.0.copyload.i.i.i.i.i.i, %.sroa.78.0.copyload.i.i.i.i.i.i.i.i
  br i1 %i.ag, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.67.0.copyload.i.i.i.i.i.i.i.i), "nonnull"(ptr %.sroa.711.0.copyload.i.i.i.i.i.i) ]
  %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.sroa.711.0.copyload.i.i.i.i.i.i, ptr nonnull readonly %.sroa.67.0.copyload.i.i.i.i.i.i.i.i, i64 %.sroa.812.0.copyload.i.i.i.i.i.i), !alias.scope !148, !noalias !149
  %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i = freeze i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ah = icmp eq i32 %bcmp.i.i.i.i.i.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %bb.l, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i

bb.l:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, %.split34.i.i.i.i.i.i.i.i, %.split28.i.i.i.i.i.i.i.i, %.split32.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i, %.split26.i.i.i.i.i.i.i.i, %.split30.i.i.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !136
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
  %i.ai = load i8, ptr %i.b, align 8, !range !138, !noalias !136, !noundef !5 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5eq_by7compareNtNtCs2AWtUsOyxgP_3std4path9ComponentB1f_NCINvYINtNtNtBc_8adapters3rev3RevNtB1h_10ComponentsEB6_2eqB20_E0E0CsC8CapfvpQ1_5salsa.exit.i.i.i.i.i.i.i.i, %bb.k, %.split34.i.i.i.i.i.i.i.i, %.split28.i.i.i.i.i.i.i.i, %.split32.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit33.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %.split.i.i.i.i.i.i.i.i, %bb.i, %.split26.i.i.i.i.i.i.i.i, %_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB7_9PartialEq2eqCsC8CapfvpQ1_5salsa.exit27.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %.split30.i.i.i.i.i.i.i.i, %bb.g, %bb.e, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  br label %_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa.exit

.loopexit.i.i.i:                                  ; preds = %bb.l, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !150
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
  %i.aj = load i8, ptr %i.c, align 8, !range !138, !noalias !150, !noundef !5
  %.not5.i.not.i.i = icmp eq i8 %i.aj, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !150
  br label %_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa.exit

_RINvXNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorINtNtNtB7_8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsEINtB3_10SpecIterEqBN_E12spec_iter_eqNCINvNvNtB3_8Iterator5eq_by7compareNtB1g_9ComponentB31_NCINvYBN_B2z_2eqBN_E0E0ECsC8CapfvpQ1_5salsa.exit: ; preds = %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i, %.loopexit.i.i.i
  %.sroa.0.0.i.i.i = phi i1 [ %.not5.i.not.i.i, %.loopexit.i.i.i ], [ false, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECsC8CapfvpQ1_5salsa.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsC8CapfvpQ1_5salsa(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.b = icmp eq i64 %4, 0                        ; 2 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !155 ; 2 uses
  %.sroa.05.0.i = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0.i, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  br i1 %i.b, label %bb.f, label %bb.c, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 4 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !157
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i.i = load ptr, ptr %i.h, align 8, !alias.scope !157
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !157
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noalias !157, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noalias !157, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  br label %bb.f

.thread.i:                                        ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !157, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !157
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !157
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !157
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.sroa.3.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.n, %bb.e ], [ undef, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.l, %bb.e ], [ 0, %bb.c ]
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.3.0.i.ph) #26
  unreachable

bb.g:                                             ; preds = %bb.a, %.thread.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsC8CapfvpQ1_5salsa(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #27
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #27 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCsC8CapfvpQ1_5salsa(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = icmp eq i64 %4, 0                        ; 3 uses
  %i.c = load i64, ptr %0, align 8                ; 3 uses
  %.sroa.05.0 = select i1 %i.b, i64 -1, i64 %i.c
  %i.d = sub i64 %.sroa.05.0, %1
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  br i1 %i.b, label %bb.h, label %bb.c, !prof !3

bb.c:                                             ; preds = %bb.b
  %i.f = add i64 %2, %1                           ; 5 uses
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !160
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load ptr, ptr %i.h, align 8, !alias.scope !160
  call fastcc void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsC8CapfvpQ1_5salsa(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.c, ptr %.val12.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !160
  %i.i = load i64, ptr %i.a, align 8, !range !6, !noalias !160, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.k, align 8, !range !7, !noalias !160, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  br label %bb.h

.thread:                                          ; preds = %bb.d
  %i.o = load ptr, ptr %i.k, align 8, !noalias !160, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !160
  store ptr %i.o, ptr %i.h, align 8, !alias.scope !160
  %i.p = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.f, ptr %0, align 8, !alias.scope !160
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %spec.select = select i1 %i.b, i64 -1, i64 %i.c
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread
  %.sroa.06.0 = phi i64 [ %spec.select, %bb.f ], [ %i.f, %.thread ]
  %i.q = sub i64 %.sroa.06.0, %1
  %i.r = icmp ule i64 %2, %i.q
  tail call void @llvm.assume(i1 %i.r)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.b, %bb.g
  %.sroa.3.0 = phi i64 [ undef, %bb.g ], [ undef, %bb.c ], [ %i.n, %bb.e ], [ undef, %bb.b ]
end_hunk_0
