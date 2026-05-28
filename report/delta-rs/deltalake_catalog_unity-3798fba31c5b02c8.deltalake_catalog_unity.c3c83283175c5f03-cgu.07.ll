inline.NumInlined: 608
inline.NumDeleted: 302
begin_hunk_0_@_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicatesB1L_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !620
  invoke void @_RNvXs_NtNtCs95DO3lnzZ3L_4moka3cht4iterINtB4_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateBL_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB28_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !626

.noexc.i:                                         ; preds = %bb.d
  %i.y = load i64, ptr %i.b, align 8, !range !284, !noalias !627, !noundef !3
  %.not.i.i = icmp eq i64 %i.y, -9223372036854775808
  br i1 %.not.i.i, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !620
  br label %.loopexit14.i

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !627
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_.exit.i.i unwind label %bb.f, !noalias !631

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %.body.i unwind label %bb.g, !noalias !631

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !631
  unreachable

_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_.exit.i.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a)
          to label %bb.h unwind label %.loopexit.i, !noalias !626

.body.i:                                          ; preds = %bb.o, %.loopexit.split-lp.i, %.loopexit.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %i.z, %bb.f ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_(ptr noalias noundef align 8 dereferenceable(64) %i.d) #25
          to label %common.resume.i unwind label %bb.w, !noalias !626

.loopexit.i:                                      ; preds = %bb.m, %_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_.exit.i.i, %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.q
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %_RNCNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB7_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0B1N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !627
  %.sroa.0.0.copyload8.i = load i64, ptr %i.u, align 8, !noalias !634 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx9.i, i64 40, i1 false), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !620
  %.not.not.i = icmp eq i64 %.sroa.0.0.copyload8.i, -9223372036854775808
  br i1 %.not.not.i, label %.loopexit14.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !620
  store i64 %.sroa.0.0.copyload8.i, ptr %i.c, align 8, !noalias !620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i, i64 40, i1 false), !noalias !620
  %i.ab = load i64, ptr %i.v, align 8, !noalias !620, !noundef !3
  %.not2.i = icmp ugt i64 %i.o, %i.ab
  br i1 %.not2.i, label %bb.m, label %bb.n

.loopexit14.i:                                    ; preds = %bb.h, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.ac = load i64, ptr %i.d, align 8, !range !284, !alias.scope !635, !noalias !620, !noundef !3
  %i.ad = icmp eq i64 %i.ac, -9223372036854775808
  br i1 %i.ad, label %_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit14.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_.exit7.sink.split.i unwind label %bb.k, !noalias !626

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume.i unwind label %bb.l, !noalias !626

bb.l:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !626
  unreachable

common.resume.i:                                  ; preds = %bb.u, %bb.k, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %bb.u ], [ %i.ae, %bb.k ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_.exit7.sink.split.i: ; preds = %bb.t, %bb.j
  %.not12.ph.i = phi i1 [ true, %bb.t ], [ false, %bb.j ]
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !626
  br label %_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit

bb.m:                                             ; preds = %bb.p, %bb.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2g_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
          to label %bb.r unwind label %.loopexit.i, !noalias !626

bb.n:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.w, align 8, !noalias !620, !nonnull !3, !noundef !3
  %i.ah = load ptr, ptr %i.x, align 8, !noalias !620, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !141, !invariant.load !3, !noalias !626
  %i.ak = add nsw i64 %i.aj, -1
  %i.al = and i64 %i.ak, -16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !invariant.load !3, !noalias !626, !nonnull !3
  %i.aq = invoke noundef zeroext i1 %i.ap(ptr noundef nonnull %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.p)
          to label %bb.p unwind label %bb.o, !noalias !626

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2g_(ptr noalias noundef align 8 dereferenceable(48) %i.c) #25
          to label %.body.i unwind label %bb.w, !noalias !626

bb.p:                                             ; preds = %bb.n
  br i1 %i.aq, label %bb.q, label %bb.m

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2g_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
          to label %bb.s unwind label %.loopexit.split-lp.i, !noalias !626

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %bb.d

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !620
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.as = load i64, ptr %i.d, align 8, !range !284, !alias.scope !642, !noalias !620, !noundef !3
  %i.at = icmp eq i64 %i.as, -9223372036854775808
  br i1 %i.at, label %_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_.exit7.sink.split.i unwind label %bb.u, !noalias !626

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume.i unwind label %bb.v, !noalias !626

bb.v:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !626
  unreachable

bb.w:                                             ; preds = %bb.o, %.body.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !626
  unreachable

_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit: ; preds = %.loopexit14.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_.exit7.sink.split.i, %bb.s
  %.not12.i = phi i1 [ false, %.loopexit14.i ], [ true, %bb.s ], [ %.not12.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs95DO3lnzZ3L_4moka3cht4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB1S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENCNvMs0_B2x_INtB2x_11InvalidatorB1S_B3d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicates0EEB3h_.exit7.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !620
  br label %bb.x

bb.x:                                             ; preds = %_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit, %bb.b, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.a ], [ %.not12.i, %_RINvMs1_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB6_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE19do_apply_predicatesINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtBa_3cht4iter4IterB16_INtB6_9PredicateB16_B1I_EENCNvMs0_B6_BN_16apply_predicates0EEB1M_.exit ], [ false, %bb.b ]
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE14maybe_key_lockB1H_(ptr dead_on_unwind noalias noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !3
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future8key_lockINtB5_10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE8key_lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden void @_RNvMs2_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyE5storeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  store atomic i64 %1, ptr %0 release, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB5_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE20do_post_insert_stepsB1H_(ptr dead_on_unwind noalias noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !noundef !3 ; 5 uses
  %.not4 = icmp eq ptr %i.f, null
  br i1 %.not4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.i = atomicrmw add ptr %i.f, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.k, align 8
  %i.l = load i16, ptr %4, align 8, !range !409
  %i.m = trunc nuw i16 %i.l to i1
  br i1 %i.m, label %.thread23, label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr = load ptr, ptr %i.b, align 8, !alias.scope !649 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit, label %.thread23

.thread23:                                        ; preds = %bb.c, %bb.e
  %i.o = phi ptr [ %.pr, %bb.e ], [ %i.f, %bb.c ]
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !652
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit

bb.f:                                             ; preds = %.thread23
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit unwind label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %2, ptr %i.a, align 8, !noalias !660
  %i.v = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u, i64 noundef %2)
          to label %.noexc8 unwind label %bb.i    ; 2 uses

.noexc8:                                          ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = extractvalue { i64, i32 } %i.v, 0
  %i.z = extractvalue { i64, i32 } %i.v, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !141, !invariant.load !3, !noalias !660
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = and i64 %i.ac, -16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !3, !noalias !660, !nonnull !3
  %i.ai = invoke { i64, i32 } %i.ah(ptr noundef nonnull %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.w, i64 noundef %i.y, i32 noundef %i.z) #28
          to label %.noexc9 unwind label %bb.i, !inline_history !663 ; 2 uses

.noexc9:                                          ; preds = %.noexc8
  %i.aj = extractvalue { i64, i32 } %i.ai, 1      ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 1000000000
  br i1 %.not.i, label %.noexc10, label %bb.h

bb.h:                                             ; preds = %.noexc9
  %i.ak = extractvalue { i64, i32 } %i.ai, 0
  %i.al = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, i64 noundef %i.ak, i32 noundef %i.aj)
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %bb.h, %.noexc9
  %.sroa.03.0.i = phi i64 [ 0, %.noexc9 ], [ 1, %bb.h ]
  %.sroa.34.0.i = phi i64 [ undef, %.noexc9 ], [ %i.al, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 264
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !657, !noalias !664, !nonnull !3, !noundef !3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = invoke noundef i32 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringE19set_expiration_timeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.ao, i64 noundef %.sroa.03.0.i, i64 %.sroa.34.0.i)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.i:                                             ; preds = %.noexc10, %bb.h, %.noexc8, %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.ar = load ptr, ptr %i.b, align 8, !alias.scope !665, !noundef !3 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !668
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13 unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13: ; preds = %bb.j, %bb.i, %bb.k, %bb.m
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.m ], [ %i.aq, %bb.k ], [ %i.aq, %bb.i ], [ %i.aq, %bb.j ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2d_(ptr noalias noundef align 8 dereferenceable(40) %4) #25
          to label %bb.n unwind label %bb.l

bb.m:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit: ; preds = %bb.a, %.thread23, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %2, ptr %i.ax, align 8
  ret void

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit13
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef i64 @_RNvMs4_NtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cellINtB5_10AtomicCellyE4loadCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getB3i_(ptr %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.h = load atomic i64, ptr %.0.val acquire, align 8
  store i64 %i.h, ptr %i.d, align 8
  %i.i = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.r       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = load i64, ptr %i.e, align 8, !range !129, !alias.scope !673, !noundef !3
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_.exit

bb.f:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.e, align 8, !range !129, !noundef !3
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.g, label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_.exit: ; preds = %bb.e, %bb.d, %bb.p
  %.sroa.0.0 = phi ptr [ %i.y, %bb.p ], [ %i.i, %bb.d ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.f, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB21_10ValueEntryB1z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE11with_lengthB34_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef 0, i64 noundef 128)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !676
  %i.o = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18, !noalias !676 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.i, label %bb.l, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #29
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1F_6string6StringEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtB2A_10ValueEntryB28_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3D_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #25
          to label %.body.thread unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  %i.s = ptrtoint ptr %i.o to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.sroa.03.0 = phi i64 [ %i.n, %bb.g ], [ %i.s, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB2p_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %.0.val, i64 noundef 0, i64 noundef %.sroa.03.0, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.t = load i64, ptr %i.c, align 8, !range !129, !noundef !3
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = load i64, ptr %i.g, align 8, !noundef !3
  store i64 1, ptr %i.e, align 8
  store i64 %i.v, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.x = load i64, ptr %i.w, align 8, !noundef !3
  store i64 %i.x, ptr %i.b, align 8
  %i.y = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 2 uses
  %.not12 = icmp eq ptr %i.y, null
  br i1 %.not12, label %bb.q, label %bb.p, !prof !8

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2O_6string6StringEINtNtNtNtB1Y_6common10concurrent3arc7MiniArcINtB3J_10ValueEntryB3h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEEB4N_.exit

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #29
  unreachable

.body.thread:                                     ; preds = %bb.r, %bb.s, %bb.j
  %eh.lpad-body3 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.r ], [ %i.q, %bb.j ], [ %lpad.thr_comm.split-lp, %bb.s ]
  resume { ptr, i32 } %eh.lpad-body3

bb.r:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !range !129, !alias.scope !679, !noundef !3
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.thread unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB3i_(ptr %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic14ensure_alignedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3U_.exit:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !3
  %.not1 = icmp ult i64 %i.g, %i.d
  br i1 %.not1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic14ensure_alignedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3U_.exit
  %i.h = ptrtoint ptr %1 to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.03 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.1, %bb.d ]
  %.sroa.02.02 = phi i64 [ %i.h, %.lr.ph ], [ %.sroa.02.1, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB2p_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3V_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %.0.val, i64 noundef %.sroa.02.02, i64 noundef %i.e, i8 noundef 3, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  %i.i = load i64, ptr %i.b, align 8, !range !129, !noundef !3
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch6atomic14ensure_alignedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3U_.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.k = load atomic i64, ptr %.0.val acquire, align 8 ; 3 uses
  store i64 %i.k, ptr %i.a, align 8
  %i.l = icmp ult i64 %i.k, 8
  br i1 %i.l, label %bb.e, label %bb.f, !prof !8

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1r_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2m_10ValueEntryB1U_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3p_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i64 noundef %.sroa.02.02)
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.02.1 = phi i64 [ %.sroa.02.02, %bb.c ], [ %i.k, %bb.f ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.03, %bb.c ], [ %i.o, %bb.f ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !3
  %.not = icmp ult i64 %i.n, %i.d
  br i1 %.not, label %bb.a, label %._crit_edge

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.o = call noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2Q_10ValueEntryB2o_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3U_
; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB21_10ValueEntryB1z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE11with_lengthB34_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB2p_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3V_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtB2R_10ValueEntryB2p_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21compare_exchange_weakINtB6_6SharedBX_EEB3V_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1r_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtB2m_10ValueEntryB1U_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3p_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE6as_refCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB16_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE11with_lengthCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_5OwnedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE21compare_exchange_weakINtB6_6SharedBX_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1r_6string6StringEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1Q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6as_refB3f_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBa_6future11invalidator9PredicateB11_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE11with_lengthB2p_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1R_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_5OwnedBX_EEB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB16_6future11invalidator9PredicateB1R_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE21compare_exchange_weakINtB6_6SharedBX_EEB3g_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateB1m_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2K_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1W_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5E_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB4_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE11with_lengthB4N_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1X_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_5OwnedBX_EEB5F_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs7_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB6_6AtomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1X_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB16_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB16_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE21compare_exchange_weakINtB6_6SharedBX_EEB5F_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i64 noundef, i64 noundef, i8 noundef range(i8 0, 5), i8 noundef range(i8 0, 5), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB2_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1s_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB58_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtB7_10entry_info9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE12push_back_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB23_(ptr noalias noundef align 8 dereferenceable(192), i8 noundef range(i8 0, 4), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE12push_back_woNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB23_(ptr noalias noundef align 8 dereferenceable(192), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i32 } @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE15take_timer_nodeB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE10descheduleCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i32 } @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE26timer_node_with_expiry_genB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE14set_timer_nodeB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE6enableCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexINtB7_8DeqNodesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE8scheduleCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull, ptr noundef nonnull, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6common11timer_wheelINtB5_10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringE10rescheduleCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32), ptr noundef nonnull, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs7_NtNtCs95DO3lnzZ3L_4moka6common10concurrentINtB5_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13unset_q_nodesB1J_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE20unlink_ao_from_dequeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB2b_(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE9unlink_woNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB1Z_(ptr noalias noundef align 8 dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6dequesINtB6_6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringE9unlink_aoNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEB1Z_(ptr noalias noundef align 8 dereferenceable(192), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock21unlock_exclusive_slow(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs95DO3lnzZ3L_4moka3cht4iterINtB4_4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB8_6future11invalidator9PredicateBL_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB28_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_5Debug3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCs2pqxYH9ZEk8_3std4pathNtB5_7PathBufNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs1gOyXocuPRE_10serde_core2deDNtB5_8ExpectedEL_NtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtCs3JXekYNd0JR_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtCseo6ZV82fEK1_3url3UrlINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(112), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCs3JXekYNd0JR_7dashmap6mapref5entryINtB5_11VacantEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB15_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EE6insertCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB2_5Guard5flush(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBR_6marker4SyncNtB3m_4SendEL_E9drop_slowB1Y_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_E9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_E9drop_slowBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsl_NtCsbvkFyIu7lgC_4core3fmtPINtNtNtCs95DO3lnzZ3L_4moka6common5deque7DeqNodeINtNtBA_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtB5_7Pointer3fmtCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind }
attributes #19 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { noinline }
attributes #28 = { inlinehint }
attributes #29 = { noreturn }
attributes #30 = { noinline noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{}
!4 = !{i64 8}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMs1_NtNtBb_6future11invalidatorINtB4J_11InvalidatorB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE10invalidate00NCB4B_s_0NCINvB4_9remove_ifB4z_B6E_E0E0B2W_: argument 0"}
!7 = distinct !{!7, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMs1_NtNtBb_6future11invalidatorINtB4J_11InvalidatorB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE10invalidate00NCB4B_s_0NCINvB4_9remove_ifB4z_B6E_E0E0B2W_"}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!11 = distinct !{!11, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!12 = !{i64 2}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert00NCB4B_s_0NCINvB4_9remove_ifB4z_B6z_E0E0B2W_: argument 0"}
!15 = distinct !{!15, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert00NCB4B_s_0NCINvB4_9remove_ifB4z_B6z_E0E0B2W_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!18 = distinct !{!18, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s3_0NCB4B_s4_0NCINvB4_9remove_ifB4z_B6C_E0E0B2W_: argument 0"}
!21 = distinct !{!21, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s3_0NCB4B_s4_0NCINvB4_9remove_ifB4z_B6C_E0E0B2W_"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!24 = distinct !{!24, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17evict_lru_entries0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_: argument 0"}
!27 = distinct !{!27, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17evict_lru_entries0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!30 = distinct !{!30, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_: argument 0"}
!33 = distinct !{!33, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_ao0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!36 = distinct !{!36, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_: argument 0"}
!39 = distinct !{!39, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE17remove_expired_wo0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6F_E0E0B2W_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!42 = distinct !{!42, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6W_E0E0B2W_: argument 0"}
!45 = distinct !{!45, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andB1O_NCNCNvMsd_NtNtBb_6future10base_cacheINtB4J_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE34evict_expired_entries_using_timers0s_0NCB4B_s0_0NCINvB4_9remove_ifB4z_B6W_E0E0B2W_"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_: argument 0"}
!48 = distinct !{!48, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andTBU_B1O_ENCNCNvMsd_NtNtBb_6future10base_cacheINtB4O_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s0_0NCB4G_s1_0NCB4G_s2_0E0B2W_: argument 0"}
!51 = distinct !{!51, !"_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE19remove_entry_if_andTBU_B1O_ENCNCNvMsd_NtNtBb_6future10base_cacheINtB4O_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s0_0NCB4G_s1_0NCB4G_s2_0E0B2W_"}
!52 = !{!53, !50}
!53 = distinct !{!53, !54, !"_RNCNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s2_0B1H_: argument 0"}
!54 = distinct !{!54, !"_RNCNCNvMsd_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB9_5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE13handle_upsert0s2_0B1H_"}
!55 = !{!56, !58, !53, !50}
!56 = distinct !{!56, !57, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!57 = distinct !{!57, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!58 = distinct !{!58, !59, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!59 = distinct !{!59, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_: argument 2"}
!62 = distinct !{!62, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_: argument 3"}
!65 = !{!66, !67, !61}
!66 = distinct !{!66, !62, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_: argument 0"}
!67 = distinct !{!67, !62, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_: argument 1"}
!68 = !{!66, !67, !61, !64}
!69 = distinct !{null}
!70 = !{i32 0, i32 1000000001}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_: argument 0"}
!73 = distinct !{!73, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_"}
!74 = !{!75, !77, !72, !66, !67, !61, !64}
!75 = distinct !{!75, !76, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_: argument 0"}
!76 = distinct !{!76, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_"}
!77 = distinct !{!77, !78, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_: argument 0"}
!78 = distinct !{!78, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_"}
!82 = !{!83, !85, !80, !66, !67, !61, !64}
!83 = distinct !{!83, !84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_: argument 0"}
!84 = distinct !{!84, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_ENtNtNtB2Y_3ops4drop4Drop4dropB1I_"}
!85 = distinct !{!85, !86, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_: argument 0"}
!86 = distinct !{!86, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3u_4SendEL_EEB2g_"}
!87 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNCINvMs2_B6_BM_13get_with_hashB12_FG_RL0_B1E_EbE000EB1I_: argument 1"}
!90 = distinct !{!90, !"_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNCINvMs2_B6_BM_13get_with_hashB12_FG_RL0_B1E_EbE000EB1I_"}
!91 = !{!92, !89, !93, !66, !67, !61, !64}
!92 = distinct !{!92, !90, !"_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNCINvMs2_B6_BM_13get_with_hashB12_FG_RL0_B1E_EbE000EB1I_: argument 0"}
!93 = distinct !{!93, !90, !"_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNCINvMs2_B6_BM_13get_with_hashB12_FG_RL0_B1E_EbE000EB1I_: argument 2"}
!94 = !{!92, !93, !66, !67, !61, !64}
!95 = !{!92, !89, !66, !67, !61, !64}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2P_6min_by4foldB1P_NvYB1P_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!98 = distinct !{!98, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB2P_6min_by4foldB1P_NvYB1P_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!99 = !{!100, !102, !104, !106, !108, !97}
!100 = distinct !{!100, !101, !"_RNvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE4nextCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!101 = distinct !{!101, !"_RNvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE4nextCsgO8S5jLFugx_23deltalake_catalog_unity"}
!102 = distinct !{!102, !103, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterINtNtB9_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!103 = distinct !{!103, !"_RNvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB5_8IntoIterINtNtB9_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity"}
!104 = distinct !{!104, !105, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EEINtB5_8FuseImplBY_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!105 = distinct !{!105, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EEINtB5_8FuseImplBY_E4nextCsgO8S5jLFugx_23deltalake_catalog_unity"}
!106 = distinct !{!106, !107, !"_RNvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!107 = distinct !{!107, !"_RNvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EINtB1I_8IntoIterB21_EENtNtNtB9_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity"}
!108 = distinct !{!108, !109, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtB9_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!109 = distinct !{!109, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlattenINtNtNtBb_5array4iter8IntoIterINtNtBb_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtB9_6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity"}
!110 = !{!111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!111 = distinct !{!111, !112, !"_RINvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EINtB1J_8IntoIterB22_EENtNtNtBa_6traits8iterator8Iterator4foldB22_NCINvNvB3n_6min_by4foldB22_NvYB22_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!112 = distinct !{!112, !"_RINvXsI_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EINtB1J_8IntoIterB22_EENtNtNtBa_6traits8iterator8Iterator4foldB22_NCINvNvB3n_6min_by4foldB22_NvYB22_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!113 = distinct !{!113, !114, !"_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtBa_6traits8iterator8Iterator4foldB1V_NCINvNvB2V_6min_by4foldB1V_NvYB1V_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!114 = distinct !{!114, !"_RINvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlattenINtNtNtBc_5array4iter8IntoIterINtNtBc_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_EENtNtNtBa_6traits8iterator8Iterator4foldB1V_NCINvNvB2V_6min_by4foldB1V_NvYB1V_NtNtBc_3cmp3Ord3cmpE0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldB1f_NCINvNtNtB2k_8adapters7flatten11flatten_oneBT_B1f_NCINvNvB2e_6min_by4foldB1f_NvYB1f_NtNtBa_3cmp3Ord3cmpE0E0ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!117 = distinct !{!117, !"_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterINtNtBa_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEKj3_ENtNtNtNtBa_4iter6traits8iterator8Iterator4foldB1f_NCINvNtNtB2k_8adapters7flatten11flatten_oneBT_B1f_NCINvNvB2e_6min_by4foldB1f_NvYB1f_NtNtBa_3cmp3Ord3cmpE0E0ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB2Q_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtB9_6option6OptionB1O_EEE8try_foldB1O_NCINvMs0_NtB7_9try_traitINtB5f_17NeverShortCircuitB1O_E10wrap_mut_2B1O_B4q_NCINvNtNtB16_8adapters7flatten11flatten_oneB4q_B1O_NCINvNvB10_6min_by4foldB1O_NvYB1O_NtNtB9_3cmp3Ord3cmpE0E0E0B5u_E0B5u_ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!120 = distinct !{!120, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB2Q_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtB9_6option6OptionB1O_EEE8try_foldB1O_NCINvMs0_NtB7_9try_traitINtB5f_17NeverShortCircuitB1O_E10wrap_mut_2B1O_B4q_NCINvNtNtB16_8adapters7flatten11flatten_oneB4q_B1O_NCINvNvB10_6min_by4foldB1O_NvYB1O_NtNtB9_3cmp3Ord3cmpE0E0E0B5u_E0B5u_ECsgO8S5jLFugx_23deltalake_catalog_unity"}
!121 = !{!116, !111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!122 = !{!119, !123, !116, !111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!123 = distinct !{!123, !120, !"_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_foldNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB2Q_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitINtNtB9_6option6OptionB1O_EEE8try_foldB1O_NCINvMs0_NtB7_9try_traitINtB5f_17NeverShortCircuitB1O_E10wrap_mut_2B1O_B4q_NCINvNtNtB16_8adapters7flatten11flatten_oneB4q_B1O_NCINvNvB10_6min_by4foldB1O_NvYB1O_NtNtB9_3cmp3Ord3cmpE0E0E0B5u_E0B5u_ECsgO8S5jLFugx_23deltalake_catalog_unity: argument 1"}
!124 = !{!119, !116}
!125 = !{!123, !111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!128 = distinct !{!128, !"_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!129 = !{i64 0, i64 2}
!130 = !{!127, !119, !111, !113, !97, !92, !89, !66, !67, !61, !64}
!131 = !{!132, !134, !136, !127, !119, !123, !116, !111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!132 = distinct !{!132, !133, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6min_by4foldNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!133 = distinct !{!133, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator6min_by4foldNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNvYB1d_NtNtBe_3cmp3Ord3cmpE0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!134 = distinct !{!134, !135, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneINtNtBa_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEB1o_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB1o_NvYB1o_NtNtBa_3cmp3Ord3cmpE0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!135 = distinct !{!135, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten11flatten_oneINtNtBa_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEB1o_NCINvNvNtNtNtB8_6traits8iterator8Iterator6min_by4foldB1o_NvYB1o_NtNtBa_3cmp3Ord3cmpE0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!136 = distinct !{!136, !137, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuitNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantE10wrap_mut_2B18_INtNtBc_6option6OptionB18_ENCINvNtNtNtBc_4iter8adapters7flatten11flatten_oneB2i_B18_NCINvNvNtNtNtB2S_6traits8iterator8Iterator6min_by4foldB18_NvYB18_NtNtBc_3cmp3Ord3cmpE0E0E0CsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!137 = distinct !{!137, !"_RNCINvMs0_NtNtCsbvkFyIu7lgC_4core3ops9try_traitINtB8_17NeverShortCircuitNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantE10wrap_mut_2B18_INtNtBc_6option6OptionB18_ENCINvNtNtNtBc_4iter8adapters7flatten11flatten_oneB2i_B18_NCINvNvNtNtNtB2S_6traits8iterator8Iterator6min_by4foldB18_NvYB18_NtNtBc_3cmp3Ord3cmpE0E0E0CsgO8S5jLFugx_23deltalake_catalog_unity"}
!138 = !{!139, !132, !134, !136, !127, !119, !123, !116, !111, !113, !97, !92, !89, !93, !66, !67, !61, !64}
!139 = distinct !{!139, !140, !"_RINvNtCsbvkFyIu7lgC_4core3cmp6min_byNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantQNvYBy_NtB2_3Ord3cmpECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!140 = distinct !{!140, !"_RINvNtCsbvkFyIu7lgC_4core3cmp6min_byNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantQNvYBy_NtB2_3Ord3cmpECsgO8S5jLFugx_23deltalake_catalog_unity"}
!141 = !{i64 1, i64 536870913}
!142 = !{!143, !145, !92, !89, !93, !66, !67, !61, !64}
!143 = distinct !{!143, !144, !"_RNCNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBc_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB18_FG_RL0_B1K_EbE000B1O_: argument 0"}
!144 = distinct !{!144, !"_RNCNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBc_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB18_FG_RL0_B1K_EbE000B1O_"}
!145 = distinct !{!145, !144, !"_RNCNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBc_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB18_FG_RL0_B1K_EbE000B1O_: argument 1"}
!146 = distinct !{null}
!147 = !{!66, !67, !64}
!148 = !{!149, !151, !153, !66, !67, !61, !64}
!149 = distinct !{!149, !150, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!150 = distinct !{!150, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity"}
!151 = distinct !{!151, !152, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!152 = distinct !{!152, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBL_6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!153 = distinct !{!153, !154, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity: argument 0"}
!154 = distinct !{!154, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB17_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity"}
!155 = !{!67, !61, !64}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_: argument 2"}
!158 = distinct !{!158, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_: argument 3"}
!161 = !{!162, !163, !157}
!162 = distinct !{!162, !158, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_: argument 0"}
!163 = distinct !{!163, !158, !"_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_: argument 1"}
!164 = !{!162, !163, !157, !160}
!165 = !{!166, !162, !163, !157, !160}
!166 = distinct !{!166, !167, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQFG_RL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEbINtB7_5FnMutTRBV_EE8call_mutBZ_: argument 0"}
!167 = distinct !{!167, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQFG_RL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEbINtB7_5FnMutTRBV_EE8call_mutBZ_"}
end_hunk_1
