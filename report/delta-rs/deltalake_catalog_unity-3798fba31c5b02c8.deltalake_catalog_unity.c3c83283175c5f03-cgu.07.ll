inline.NumInlined: 608
inline.NumDeleted: 302
begin_hunk_0_@_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB29_NCNvMsd_NtNtB9_6future10base_cacheINtB5S_5InnerB1M_B3d_B4u_E21skip_updated_entry_wo0NCINvMs_NtB7_7segmentINtB7e_7HashMapB1e_B29_E17get_key_value_andB29_B5K_NCINvB7b_3getB5K_E0E0EB3h_:bb.a
  store ptr %i.r, ptr %i.b, align 8
  invoke fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB3i_(ptr %.val17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %.sroa.07.0)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4x_E0E0B2W_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq ptr %i.e, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2072 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  store atomic i64 0, ptr %i.x release, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 2080
  %i.z = load i64, ptr %i.y, align 8, !noundef !3
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.r

bb.n:                                             ; preds = %bb.f
  %.not15 = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not15, ptr %.sroa.07.0, ptr %i.m
  br label %bb.d

bb.o:                                             ; preds = %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE21skip_updated_entry_wo0NCINvB4_3getB4x_E0E0B2W_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq ptr %i.r, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB29_NCNvMsd_NtNtB9_6future10base_cacheINtB5S_5InnerB1M_B3d_B4u_E5admit0NCINvMs_NtB7_7segmentINtB6X_7HashMapB1e_B29_E17get_key_value_andB29_B5K_NCINvB6U_3getB5K_E0E0EB3h_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call fastcc noundef ptr @_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity() ; 7 uses
  store ptr %i.e, ptr %i.c, align 8
  %.val17 = load ptr, ptr %0, align 8             ; 2 uses
  %i.f = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getB3i_(ptr %.val17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit: ; preds = %.thread.loopexit, %.thread.loopexit.split-lp, %bb.o, %bb.p, %bb.b
  %.pn = phi { ptr, i32 } [ %i.g, %bb.b ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %lpad.thr_comm.split-lp, %bb.p ], [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.e) #25
          to label %bb.r unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !4
  br label %bb.d

bb.d:                                             ; preds = %bb.n, %bb.c
  %.sroa.07.0 = phi ptr [ %i.f, %bb.c ], [ %spec.select, %bb.n ] ; 4 uses
  %i.j = invoke { i64, i64 } @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3getQNCNvMsd_NtNtBc_6future10base_cacheINtB4x_5InnerB1B_B32_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0EB36_(ptr noundef nonnull align 8 %.sroa.07.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %.thread.loopexit ; 2 uses

.thread.loopexit:                                 ; preds = %bb.d, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit

.thread.loopexit.split-lp:                        ; preds = %bb.g, %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_(ptr noundef nonnull align 8 %.sroa.07.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i8 noundef 0)
          to label %bb.n unwind label %.thread.loopexit ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.n = extractvalue { i64, i64 } %i.j, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.n, ptr %i.a, align 8
  %i.o = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.h unwind label %.thread.loopexit.split-lp ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4x_E0E0B2W_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = invoke noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB23_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4x_E0E0B2W_.exit unwind label %.thread.loopexit.split-lp

_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4x_E0E0B2W_.exit: ; preds = %bb.i, %bb.h
  %i.r = phi ptr [ null, %bb.h ], [ %i.q, %bb.i ] ; 3 uses
  store ptr %i.r, ptr %i.b, align 8
  invoke fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB3i_(ptr %.val17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef nonnull align 8 %i.f, ptr noundef nonnull align 8 %.sroa.07.0)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4x_E0E0B2W_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = icmp eq ptr %i.e, null
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2072 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !3 ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8
  %i.w = icmp eq i64 %i.u, 1
  br i1 %i.w, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  store atomic i64 0, ptr %i.x release, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 2080
  %i.z = load i64, ptr %i.y, align 8, !noundef !3
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.m:                                             ; preds = %bb.l
  call void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.r

bb.n:                                             ; preds = %bb.f
  %.not15 = icmp eq ptr %i.m, null
  %spec.select = select i1 %.not15, ptr %.sroa.07.0, ptr %i.m
  br label %bb.d

bb.o:                                             ; preds = %_RNCINvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB7_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringEINtNtNtNtBb_6common10concurrent3arc7MiniArcINtB1T_10ValueEntryB1s_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE17get_key_value_andB1O_NCNvMsd_NtNtBb_6future10base_cacheINtB4F_5InnerB1s_B2S_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5admit0NCINvB4_3getB4x_E0E0B2W_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = icmp eq ptr %i.r, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arc7MiniArcINtB17_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2Y_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenTINtNtB2g_5entry5EntryB1M_B3d_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB2e_6ReadOpB1M_B3d_EENtNtNtB2g_4time7instant7InstantENCINvMsb_NtNtB9_6future10base_cacheINtB7Q_5InnerB1M_B3d_B4u_E22get_key_value_and_thenB1M_NCNCINvMs2_B7Q_INtB7Q_9BaseCacheB1M_B3d_E13get_with_hashB1M_FG_RL0_B3d_EbE00B5G_E0B98_EB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 14 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [256 x i8], align 8               ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [272 x i8], align 8               ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.6 = alloca [264 x i8], align 8           ; 4 uses
  %i.q = alloca [296 x i8], align 8               ; 11 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.t = tail call fastcc noundef ptr @_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity() ; 7 uses
  store ptr %i.t, ptr %i.r, align 8
  %.val19 = load ptr, ptr %1, align 8             ; 2 uses
  %i.u = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getB3i_(ptr %.val19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body.thread:                                     ; preds = %.body.thread40.loopexit, %.body.thread40.loopexit.split-lp, %bb.bb, %bb.ax, %bb.aw, %bb.av, %bb.z, %bb.y, %bb.x, %bb.bj, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bj ], [ %i.gm, %bb.aw ], [ %i.v, %bb.b ], [ %i.gv, %bb.bb ], [ %lpad.phi.i, %bb.y ], [ %lpad.phi.i, %bb.z ], [ %lpad.phi.i, %bb.x ], [ %i.gm, %bb.ax ], [ %i.gm, %bb.av ], [ %lpad.loopexit, %.body.thread40.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread40.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.t) #25
          to label %bb.bl unwind label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !align !4
  br label %bb.d

bb.d:                                             ; preds = %bb.bi, %bb.c
  %.sroa.09.0 = phi ptr [ %i.u, %bb.c ], [ %spec.select, %bb.bi ] ; 4 uses
  %i.y = invoke { i64, i64 } @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3getQNCINvMsb_NtNtBc_6future10base_cacheINtB4y_5InnerB1B_B32_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1B_NCNCINvMs2_B4y_INtB4y_9BaseCacheB1B_B32_E13get_with_hashB1B_FG_RL0_B32_EbE00TINtNtB25_5entry5EntryB1B_B32_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB23_6ReadOpB1B_B32_EENtNtNtB25_4time7instant7InstantEE0EB36_(ptr noundef nonnull align 8 %.sroa.09.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %.body.thread40.loopexit ; 2 uses

.body.thread40.loopexit:                          ; preds = %bb.d, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread40.loopexit.split-lp:                 ; preds = %bb.w, %bb.q, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i, %bb.l, %bb.k, %bb.j, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %bb.d
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_(ptr noundef nonnull align 8 %.sroa.09.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i8 noundef 0)
          to label %bb.bi unwind label %.body.thread40.loopexit ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.ac = extractvalue { i64, i64 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.ac, ptr %i.p, align 8
  %i.ad = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.h unwind label %.body.thread40.loopexit.split-lp ; 4 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.bc, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.033.0.copyload = load ptr, ptr %4, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.836.0.copyload = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 25
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %.not.i = icmp eq ptr %.sroa.033.0.copyload, null
  %.pre.i = load ptr, ptr %i.ae, align 8, !alias.scope !63, !noalias !65 ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.val.i = load ptr, ptr %.sroa.033.0.copyload, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.ag = invoke noundef zeroext i1 %.val.i(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.af)
          to label %.noexc unwind label %.body.thread40.loopexit.split-lp, !inline_history !69

.noexc:                                           ; preds = %bb.j
  br i1 %i.ag, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0.copyload) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.836.0.copyload, i64 64 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !68, !nonnull !3, !noundef !3 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !68
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.am = load i32, ptr %i.al, align 8, !range !70, !noalias !68, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ao = load i64, ptr %i.an, align 8, !noalias !68
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !range !70, !noalias !68, !noundef !3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 568
  %i.as = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ar)
          to label %.noexc21 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %bb.k
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 264 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !68 ; 2 uses
  %i.ba = and i64 %i.az, -4096
  %i.bb = icmp ult i64 %i.az, -4096
  %i.bc = icmp ule i64 %i.ba, %.sroa.4.0.copyload
  %or.cond.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc21
  %i.bd = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.be)
          to label %.noexc22 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %bb.l
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %bb.m, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i

bb.m:                                             ; preds = %.noexc22
  %i.bj = trunc nuw i64 %i.at to i1
  %i.bk = icmp ult i64 %i.bh, %i.au
  %or.cond.i.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !68
  store i64 %i.bh, ptr %i.k, align 8, !noalias !68
  %.not.i.i = icmp eq i32 %i.am, 1000000000
  br i1 %.not.i.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !68
  br label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i: ; preds = %bb.n
  %i.bl = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef %i.ak, i32 noundef %i.am)
          to label %.noexc23 unwind label %.body.thread40.loopexit.split-lp

.noexc23:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i
  %.not80.i = icmp ugt i64 %i.bl, %.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !68
  br i1 %.not80.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i: ; preds = %.noexc23, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i, %.noexc22
  %i.bm = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc24 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1      ; 2 uses
  %i.br = trunc nuw i64 %i.bp to i1
  br i1 %i.br, label %bb.o, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i

bb.o:                                             ; preds = %.noexc24
  %i.bs = trunc nuw i64 %i.at to i1
  %i.bt = icmp ult i64 %i.bq, %i.au
  %or.cond.i37.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i37.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !68
  store i64 %i.bq, ptr %i.j, align 8, !noalias !68
  %.not.i38.i = icmp eq i32 %i.aq, 1000000000
  br i1 %.not.i38.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68
  br label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i: ; preds = %bb.p
  %i.bu = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i64 noundef %i.ao, i32 noundef %i.aq)
          to label %.noexc25 unwind label %.body.thread40.loopexit.split-lp

.noexc25:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i
  %.not81.i = icmp ugt i64 %i.bu, %.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !68
  br i1 %.not81.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i: ; preds = %.noexc25, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i, %.noexc24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 648 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !68, !noundef !3
  %.not18.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i
  %i.bx = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicatesB1L_(ptr noundef nonnull align 8 %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #28
          to label %.noexc26 unwind label %.body.thread40.loopexit.split-lp

.noexc26:                                         ; preds = %bb.q
  br i1 %i.bx, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, label %bb.r

bb.r:                                             ; preds = %.noexc26, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !68
  %i.by = load ptr, ptr %i.ah, align 8, !noalias !68, !nonnull !3, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !68, !noundef !3 ; 3 uses
  %.not19.i = icmp eq ptr %i.ca, null
  br i1 %.not19.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !68, !nonnull !3, !align !4, !noundef !3
  %i.cd = atomicrmw add ptr %i.ca, i64 1 monotonic, align 8, !noalias !68
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.ca, ptr %i.o, align 8, !noalias !68
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cf, align 8, !noalias !68
  %i.cg = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ch)
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc53.i:                                       ; preds = %bb.ap, %.invoke.i, %bb.ao
  %.sroa.07.0.i.i = phi i8 [ 1, %.invoke.i ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !68
  %.pr.i = load ptr, ptr %i.o, align 8, !alias.scope !71, !noalias !68 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.cj = icmp eq ptr %.pr.i, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i, label %bb.v

bb.v:                                             ; preds = %.noexc53.i
  %i.ck = atomicrmw sub ptr %.pr.i, i64 1 release, align 8, !noalias !74
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i unwind label %.body.thread40.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i: ; preds = %bb.w, %bb.v, %.noexc53.i, %bb.r
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload, %bb.r ], [ %.sroa.0.0.i41.i, %.noexc53.i ], [ %.sroa.0.0.i41.i, %bb.v ], [ %.sroa.0.0.i41.i, %bb.w ] ; 2 uses
  %.sroa.03.079.i = phi i8 [ 0, %bb.r ], [ %.sroa.07.0.i.i, %.noexc53.i ], [ %.sroa.07.0.i.i, %bb.v ], [ %.sroa.07.0.i.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !68
  %i.cm = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant11set_instant(ptr noundef nonnull align 8 %i.cn, i64 noundef %.sroa.4.0)
          to label %.noexc28 unwind label %.body.thread40.loopexit.split-lp

.noexc28:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i
  %i.co = trunc nuw i8 %.sroa.10.0.copyload to i1
  br i1 %i.co, label %bb.as, label %bb.at

.loopexit.i:                                      ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.aq, %.invoke.i, %bb.am, %.noexc50.i, %.loopexit.i.i, %bb.al, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.u
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.cp = load ptr, ptr %i.o, align 8, !alias.scope !79, !noalias !68, !noundef !3 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.body.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !82
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %.body.thread

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #27
          to label %.body.thread unwind label %bb.ar, !noalias !68

bb.aa:                                            ; preds = %bb.u
  %i.ct = extractvalue { i64, i64 } %i.ci, 0
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ad, label %bb.ab, !prof !87

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
          to label %bb.ac unwind label %.loopexit.split-lp.i, !noalias !68

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = extractvalue { i64, i64 } %i.ci, 1      ; 2 uses
  %.sroa.0.0.i41.i = call noundef i64 @llvm.umax.i64(i64 %i.cv, i64 %.sroa.4.0.copyload) ; 5 uses
  %i.cw = load ptr, ptr %i.ah, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.cy = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i64 noundef %i.cv)
          to label %bb.ae unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cz = extractvalue { i64, i32 } %i.cy, 0
  %i.da = extractvalue { i64, i32 } %i.cy, 1
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !68, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.ah, align 8, !noalias !68, !nonnull !3, !noundef !3 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !68
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.dj = load i32, ptr %i.di, align 8, !range !70, !noalias !68, !noundef !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 136
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !68
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.dn = load i32, ptr %i.dm, align 8, !range !70, !noalias !68, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 88 ; 2 uses
  %.val32.i = load ptr, ptr %i.o, align 8, !noalias !68 ; 2 uses
  %.val33.i = load ptr, ptr %i.cf, align 8, !noalias !68 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !68
  store i64 %.sroa.0.0.i41.i, ptr %i.i, align 8, !noalias !91
  %i.dp = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, i64 noundef %.sroa.0.0.i41.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc44.i:                                       ; preds = %bb.ae
  %i.dq = extractvalue { i64, i32 } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { i64, i32 } %i.dp, 1      ; 2 uses
  %i.ds = load ptr, ptr %i.aw, align 8, !alias.scope !88, !noalias !94, !nonnull !3, !noundef !3 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load atomic i64, ptr %i.dt acquire, align 8, !noalias !95 ; 2 uses
  %i.dv = and i64 %i.du, -4096
  %i.dw = icmp ult i64 %i.du, -4096               ; 3 uses
  %.sroa.040.0.i.i = zext i1 %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !91
  %.not.i42.i = icmp eq i32 %i.dj, 1000000000
  br i1 %.not.i42.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc44.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dy = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.dx)
          to label %.noexc45.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc45.i:                                       ; preds = %bb.af
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc46.i, %.noexc45.i, %.noexc44.i
  %i.eb = phi i64 [ 0, %.noexc44.i ], [ 1, %.noexc46.i ], [ 0, %.noexc45.i ] ; 2 uses
  %.sroa.612.0.i.i = phi i64 [ undef, %.noexc44.i ], [ %i.ed, %.noexc46.i ], [ undef, %.noexc45.i ]
  %.not114.i.i = icmp eq i32 %i.dn, 1000000000
  br i1 %.not114.i.i, label %.split.preheader.i.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %.noexc45.i
  %i.ec = extractvalue { i64, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !91
  store i64 %i.ec, ptr %i.g, align 8, !noalias !91
  %i.ed = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.dh, i32 noundef range(i32 0, 1000000001) %i.dj)
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !68

.noexc46.i:                                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !91
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.ef = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ee)
          to label %.noexc47.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc47.i:                                       ; preds = %bb.ai
  %i.eg = extractvalue { i64, i64 } %i.ef, 0
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.al, label %.split.preheader.i.i.i.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %.noexc49.i, %.noexc47.i, %bb.ag
  %i.ei = phi i64 [ 0, %bb.ag ], [ 1, %.noexc49.i ], [ 0, %.noexc47.i ] ; 2 uses
  %.sroa.614.0.i.i = phi i64 [ undef, %bb.ag ], [ %i.fg, %.noexc49.i ], [ undef, %.noexc47.i ]
  store i64 1, ptr %i.h, align 8, !noalias !91
  %.sroa.087.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %.sroa.040.0.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.dv, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %i.eb, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.612.0.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store i64 %i.ei, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.087.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.614.0.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.488.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 2, ptr %.sroa.488.0..sroa_idx.i.i, align 8, !noalias !91
  %.sroa.690.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 2, ptr %.sroa.690.0..sroa_idx.i.i, align 8, !noalias !91
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  br i1 %i.dw, label %bb.aj, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.split.preheader.i.i.i.i.i
  %i.ej = trunc nuw i64 %i.eb to i1
  br i1 %i.ej, label %bb.aj, label %.split.i.i.i.1.i.i

.split.i.i.i.1.i.i:                               ; preds = %.split.i.i.i.i.i
  %i.ek = trunc nuw i64 %i.ei to i1
  br i1 %i.ek, label %bb.aj, label %.split.i.i.i.2.i.i

.split.i.i.i.2.i.i:                               ; preds = %.split.i.i.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !91
  br label %bb.am

bb.aj:                                            ; preds = %.split.i.i.i.1.i.i, %.split.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %.lcssa11.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i ]
  %.lcssa.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i, %.split.preheader.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i, %.split.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i, %.split.i.i.i.1.i.i ]
  store i64 %.lcssa11.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !99, !noalias !91
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !99, !noalias !91 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i, i64 64, i1 false), !noalias !91
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !121
  store ptr %i.en, ptr %i.c, align 8, !noalias !122
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 3, ptr %i.eo, align 8, !noalias !122
  %i.ep = load i64, ptr %i.d, align 8, !alias.scope !124, !noalias !125, !noundef !3 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !124, !noalias !125, !noundef !3 ; 3 uses
  %i.es = icmp ule i64 %i.ep, %i.er
  call void @llvm.assume(i1 %i.es)
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.ep, %i.er
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %5 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %6, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.eu = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ev, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ev = add nuw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.d, align 8, !alias.scope !124, !noalias !125
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ew = load i64, ptr %i.eo, align 8, !alias.scope !126, !noalias !122, !noundef !3
  %i.ex = icmp ult i64 %i.eu, %i.ew
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.eu ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !range !129, !noalias !130, !noundef !3
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %.noexc.i.i.i.i.i.i, label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !130 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !131
  store i64 %.sroa.0.08.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !138
  store i64 %i.fc, ptr %i.a, align 8, !noalias !138
  %i.fd = invoke noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2h_EE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc48.i unwind label %.loopexit.i, !noalias !68

.noexc48.i:                                       ; preds = %.noexc.i.i.i.i.i.i
  %i.fe = icmp slt i8 %i.fd, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fe, i64 %.sroa.0.08.i.i.i.i.i.i.i, i64 %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !131
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !126, !noalias !122
  br label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i

_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %.noexc48.i, %bb.ak
  %6 = phi ptr [ %5, %bb.ak ], [ %.pre.i.i.i.i.i.i.i, %.noexc48.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.ak ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc48.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ev, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.ak

bb.al:                                            ; preds = %.noexc47.i
  %i.ff = extractvalue { i64, i64 } %i.ef, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !91
  store i64 %i.ff, ptr %i.f, align 8, !noalias !91
  %i.fg = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.dl, i32 noundef range(i32 0, 1000000001) %i.dn)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i, !noalias !68

.noexc49.i:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !91
  br label %.split.preheader.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %bb.aj
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.em, %bb.aj ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !91
  %i.fh = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i)
          to label %.noexc50.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc50.i:                                       ; preds = %.loopexit.i.i
  %i.fi = extractvalue { i64, i32 } %i.fh, 0
  %i.fj = extractvalue { i64, i32 } %i.fh, 1
  store i64 %i.fi, ptr %i.e, align 8, !noalias !91
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.fj, ptr %i.fk, align 8, !noalias !91
  %i.fl = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.dq, i32 noundef %i.dr)
          to label %.noexc51.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 2 uses

.noexc51.i:                                       ; preds = %.noexc50.i
  %i.fm = extractvalue { i64, i32 } %i.fl, 0
  %i.fn = extractvalue { i64, i32 } %i.fl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !91
  br label %bb.am

bb.am:                                            ; preds = %.noexc51.i, %.split.i.i.i.2.i.i
  %.sroa.015.0.i.i = phi i64 [ %i.fm, %.noexc51.i ], [ undef, %.split.i.i.i.2.i.i ] ; 2 uses
  %.sroa.819.0.i.i = phi i32 [ %i.fn, %.noexc51.i ], [ 1000000000, %.split.i.i.i.2.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33.i) ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !141, !invariant.load !3, !noalias !142
  %i.fq = add nsw i64 %i.fp, -1
  %i.fr = and i64 %i.fq, -16
  %i.fs = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.val33.i, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !invariant.load !3, !noalias !142, !nonnull !3
  %i.fw = invoke { i64, i32 } %i.fv(ptr noundef nonnull %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.av, i64 noundef %i.dq, i32 noundef range(i32 0, 1000000000) %i.dr, i64 %.sroa.015.0.i.i, i32 noundef range(i32 0, 1000000001) %.sroa.819.0.i.i, i64 noundef %i.cz, i32 noundef %i.da) #28
          to label %.noexc52.i unwind label %.loopexit.split-lp.i, !noalias !68, !inline_history !146 ; 2 uses

.noexc52.i:                                       ; preds = %bb.am
  %i.fx = extractvalue { i64, i32 } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { i64, i32 } %i.fw, 1      ; 4 uses
  %.not115.i.i = icmp eq i32 %i.fy, 1000000000
  %.not116.i.i = icmp ne i32 %.sroa.819.0.i.i, 1000000000 ; 2 uses
  br i1 %.not115.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc52.i
  %i.fz = icmp eq i64 %i.fx, %.sroa.015.0.i.i
  %or.cond.i43.i = select i1 %.not116.i.i, i1 %i.fz, i1 false
  br i1 %or.cond.i43.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %.noexc52.i
  %brmerge.i = select i1 %.not116.i.i, i1 true, i1 %i.dw
  br i1 %brmerge.i, label %.invoke.i, label %.noexc53.i

.invoke.i:                                        ; preds = %bb.aq, %bb.ao
  %i.ga = phi i64 [ 1, %bb.aq ], [ 0, %bb.ao ]
  %i.gb = phi i64 [ %i.gg, %bb.aq ], [ undef, %bb.ao ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.gd = invoke noundef i32 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringE19set_expiration_timeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.gc, i64 noundef %i.ga, i64 %i.gb)
          to label %.noexc53.i unwind label %.loopexit.split-lp.i, !noalias !68 ; 0 uses

bb.ap:                                            ; preds = %bb.an
  %i.ge = icmp ult i32 %i.fy, 1000000000
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ult i32 %.sroa.819.0.i.i, 1000000000
  call void @llvm.assume(i1 %i.gf)
  %.not118.i.i = icmp eq i32 %i.fy, %.sroa.819.0.i.i
  br i1 %.not118.i.i, label %.noexc53.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gg = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, i64 noundef %i.fx, i32 noundef %i.fy)
          to label %.invoke.i unwind label %.loopexit.split-lp.i, !noalias !68

bb.ar:                                            ; preds = %bb.bb, %bb.ax, %bb.z
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !65
  unreachable

bb.as:                                            ; preds = %.noexc28
  %i.gi = load ptr, ptr %i.ad, align 8, !alias.scope !60, !noalias !147, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = atomicrmw add ptr %i.gi, i64 1 monotonic, align 8, !noalias !68
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc28
  %i.gl = phi ptr [ null, %.noexc28 ], [ %i.gi, %bb.as ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !68
  store ptr %i.gl, ptr %i.m, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !68
  invoke fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.av)
          to label %bb.ay unwind label %bb.av, !noalias !68

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gn = icmp eq ptr %i.gl, null
  br i1 %i.gn, label %.body.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !148
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.ax, label %.body.thread

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %.body.thread unwind label %bb.ar, !noalias !68

bb.ay:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  store ptr %i.gl, ptr %i.gq, align 8, !noalias !68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(256) %i.l, i64 256, i1 false), !noalias !68
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  store i8 0, ptr %i.gr, align 8, !noalias !68
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 265
  store i8 0, ptr %i.gs, align 1, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !68
  %i.gt = trunc nuw i8 %.sroa.11.0.copyload to i1
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gu = invoke noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB23_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.ba unwind label %bb.bb, !noalias !65

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.3.sroa.3.0.i = phi ptr [ undef, %bb.ay ], [ %i.gu, %bb.az ]
  %.sroa.05.0.i = phi i8 [ 2, %bb.ay ], [ 0, %bb.az ]
  %.sroa.0.0.copyload29 = load i64, ptr %i.n, align 8, !noalias !155
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx30, i64 264, i1 false), !noalias !155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !68
  br label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit

bb.bb:                                            ; preds = %bb.az
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5entry5EntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB25_(ptr noalias noundef align 8 dereferenceable(272) %i.n) #25
          to label %.body.thread unwind label %bb.ar, !noalias !65

bb.bc:                                            ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.q, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit, %bb.bc
  invoke fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB3i_(ptr %.val19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %.sroa.09.0)
          to label %bb.be unwind label %bb.bj

_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_FG_RL0_B1I_EbE00B1M_.exit: ; preds = %bb.ba, %.noexc, %.noexc26, %.noexc25, %bb.o, %.noexc23, %bb.m, %.noexc21
  %.sroa.9.0 = phi i64 [ undef, %.noexc ], [ %.sroa.4.0, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.832.0 = phi ptr [ undef, %.noexc ], [ %.sroa.3.sroa.3.0.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.7.0 = phi i8 [ undef, %.noexc ], [ %.sroa.03.079.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.631.0 = phi i8 [ undef, %.noexc ], [ %.sroa.05.0.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %.noexc ], [ %.sroa.0.0.copyload29, %bb.ba ], [ -9223372036854775808, %.noexc26 ], [ -9223372036854775808, %.noexc25 ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %.noexc23 ], [ -9223372036854775808, %bb.m ], [ -9223372036854775808, %.noexc21 ]
  store i64 %.sroa.0.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, i64 264, i1 false)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store i8 %.sroa.631.0, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 273
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store ptr %.sroa.832.0, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bd

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.q, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gw = icmp eq ptr %i.t, null
  br i1 %i.gw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !3 ; 2 uses
  %i.gz = add i64 %i.gy, -1
  store i64 %i.gz, ptr %i.gx, align 8
  %i.ha = icmp eq i64 %i.gy, 1
  br i1 %i.ha, label %bb.bg, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %i.t, i64 2176
  store atomic i64 0, ptr %i.hb release, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.t, i64 2080
  %i.hd = load i64, ptr %i.hc, align 8, !noundef !3
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.bh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.be, %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.bi:                                            ; preds = %bb.f
  %.not17 = icmp eq ptr %i.ab, null
  %spec.select = select i1 %.not17, ptr %.sroa.09.0, ptr %i.ab
  br label %bb.d

bb.bj:                                            ; preds = %bb.bd
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtNtCs95DO3lnzZ3L_4moka6common5entry5EntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEIBH_INtNtB18_10concurrent6ReadOpB1M_B2o_EENtNtNtB18_4time7instant7InstantEEEB2s_(ptr noalias noundef align 8 dereferenceable(296) %i.q) #25
          to label %.body.thread unwind label %bb.bk

bb.bk:                                            ; preds = %.body.thread, %bb.bj
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bl:                                            ; preds = %.body.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenTINtNtB2g_5entry5EntryB1M_B3d_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB2e_6ReadOpB1M_B3d_EENtNtNtB2g_4time7instant7InstantENCINvMsb_NtNtB9_6future10base_cacheINtB7Q_5InnerB1M_B3d_B4u_E22get_key_value_and_thenB1M_NCNCINvMs2_B7Q_INtB7Q_9BaseCacheB1M_B3d_E13get_with_hashB1M_QFG_RL0_B3d_EbE00B5G_E0B98_EB3h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([296 x i8]) align 8 captures(none) dereferenceable(296) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 14 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [256 x i8], align 8               ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [272 x i8], align 8               ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.6 = alloca [264 x i8], align 8           ; 4 uses
  %i.q = alloca [296 x i8], align 8               ; 11 uses
  %i.r = alloca [8 x i8], align 8                 ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %3, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.t = tail call fastcc noundef ptr @_RINvNtCsee2lL6QbnsJ_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity() ; 7 uses
  store ptr %i.t, ptr %i.r, align 8
  %.val19 = load ptr, ptr %1, align 8             ; 2 uses
  %i.u = invoke fastcc noundef nonnull align 8 ptr @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE3getB3i_(ptr %.val19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r)
          to label %bb.c unwind label %bb.b       ; 2 uses

.body.thread:                                     ; preds = %.body.thread40.loopexit, %.body.thread40.loopexit.split-lp, %bb.bb, %bb.ax, %bb.aw, %bb.av, %bb.z, %bb.y, %bb.x, %bb.bj, %bb.b
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.bj ], [ %i.gm, %bb.aw ], [ %i.v, %bb.b ], [ %i.gv, %bb.bb ], [ %lpad.phi.i, %bb.y ], [ %lpad.phi.i, %bb.z ], [ %lpad.phi.i, %bb.x ], [ %i.gm, %bb.ax ], [ %i.gm, %bb.av ], [ %lpad.loopexit, %.body.thread40.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread40.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %i.t) #25
          to label %bb.bl unwind label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !3, !align !4
  br label %bb.d

bb.d:                                             ; preds = %bb.bi, %bb.c
  %.sroa.09.0 = phi ptr [ %i.u, %bb.c ], [ %spec.select, %bb.bi ] ; 4 uses
  %i.y = invoke { i64, i64 } @_RINvMs0_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE3getQNCINvMsb_NtNtBc_6future10base_cacheINtB4y_5InnerB1B_B32_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenB1B_NCNCINvMs2_B4y_INtB4y_9BaseCacheB1B_B32_E13get_with_hashB1B_QFG_RL0_B32_EbE00TINtNtB25_5entry5EntryB1B_B32_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB23_6ReadOpB1B_B32_EENtNtNtB25_4time7instant7InstantEE0EB36_(ptr noundef nonnull align 8 %.sroa.09.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, i64 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.e unwind label %.body.thread40.loopexit ; 2 uses

.body.thread40.loopexit:                          ; preds = %bb.d, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread40.loopexit.split-lp:                 ; preds = %bb.w, %bb.q, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i, %bb.l, %bb.k, %bb.j, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.e:                                             ; preds = %bb.d
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = invoke noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtB23_10ValueEntryB1B_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB36_(ptr noundef nonnull align 8 %.sroa.09.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, i8 noundef 0)
          to label %bb.bi unwind label %.body.thread40.loopexit ; 2 uses

bb.g:                                             ; preds = %bb.e
  %i.ac = extractvalue { i64, i64 } %i.y, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %i.ac, ptr %i.p, align 8
  %i.ad = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6as_refB3O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.h unwind label %.body.thread40.loopexit.split-lp ; 4 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.bc, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.033.0.copyload = load ptr, ptr %4, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.836.0.copyload = load ptr, ptr %.sroa.836.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 25
  %.sroa.11.0.copyload = load i8, ptr %.sroa.11.0..sroa_idx, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %.not.i = icmp eq ptr %.sroa.033.0.copyload, null
  %.pre.i = load ptr, ptr %i.ae, align 8, !alias.scope !159, !noalias !161 ; 3 uses
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.val31.i = load ptr, ptr %.sroa.033.0.copyload, align 8, !noalias !164, !nonnull !3, !align !4, !noundef !3
  %.val.i.i = load ptr, ptr %.val31.i, align 8, !noalias !165, !nonnull !3, !noundef !3
  %i.ag = invoke noundef zeroext i1 %.val.i.i(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.af)
          to label %.noexc unwind label %.body.thread40.loopexit.split-lp, !inline_history !168

.noexc:                                           ; preds = %bb.j
  br i1 %i.ag, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.836.0.copyload) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.836.0.copyload, i64 64 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !164, !nonnull !3, !noundef !3 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !164
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.am = load i32, ptr %i.al, align 8, !range !70, !noalias !164, !noundef !3 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  %i.ao = load i64, ptr %i.an, align 8, !noalias !164
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.aq = load i32, ptr %i.ap, align 8, !range !70, !noalias !164, !noundef !3 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 568
  %i.as = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ar)
          to label %.noexc21 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc21:                                         ; preds = %bb.k
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 264 ; 7 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load atomic i64, ptr %i.ay acquire, align 8, !noalias !164 ; 2 uses
  %i.ba = and i64 %i.az, -4096
  %i.bb = icmp ult i64 %i.az, -4096
  %i.bc = icmp ule i64 %i.ba, %.sroa.4.0.copyload
  %or.cond.i = and i1 %i.bb, %i.bc
  br i1 %or.cond.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, label %bb.l

bb.l:                                             ; preds = %.noexc21
  %i.bd = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.be)
          to label %.noexc22 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc22:                                         ; preds = %bb.l
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1      ; 2 uses
  %i.bi = trunc nuw i64 %i.bg to i1
  br i1 %i.bi, label %bb.m, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i

bb.m:                                             ; preds = %.noexc22
  %i.bj = trunc nuw i64 %i.at to i1
  %i.bk = icmp ult i64 %i.bh, %i.au
  %or.cond.i.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond.i.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !164
  store i64 %i.bh, ptr %i.k, align 8, !noalias !164
  %.not.i.i = icmp eq i32 %i.am, 1000000000
  br i1 %.not.i.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !164
  br label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i: ; preds = %bb.n
  %i.bl = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k, i64 noundef %i.ak, i32 noundef %i.am)
          to label %.noexc23 unwind label %.body.thread40.loopexit.split-lp

.noexc23:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i
  %.not80.i = icmp ugt i64 %i.bl, %.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !164
  br i1 %.not80.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i: ; preds = %.noexc23, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread69.i, %.noexc22
  %i.bm = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.bn)
          to label %.noexc24 unwind label %.body.thread40.loopexit.split-lp ; 2 uses

.noexc24:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_woINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread67.i
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1      ; 2 uses
  %i.br = trunc nuw i64 %i.bp to i1
  br i1 %i.br, label %bb.o, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i

bb.o:                                             ; preds = %.noexc24
  %i.bs = trunc nuw i64 %i.at to i1
  %i.bt = icmp ult i64 %i.bq, %i.au
  %or.cond.i37.i = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond.i37.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !164
  store i64 %i.bq, ptr %i.j, align 8, !noalias !164
  %.not.i38.i = icmp eq i32 %i.aq, 1000000000
  br i1 %.not.i38.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !164
  br label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i: ; preds = %bb.p
  %i.bu = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i64 noundef %i.ao, i32 noundef %i.aq)
          to label %.noexc25 unwind label %.body.thread40.loopexit.split-lp

.noexc25:                                         ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.i
end_hunk_0
begin_hunk_1_@_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1j_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB2e_10ValueEntryB1M_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE22get_key_value_and_thenTINtNtB2g_5entry5EntryB1M_B3d_EINtNtCsbvkFyIu7lgC_4core6option6OptionINtB2e_6ReadOpB1M_B3d_EENtNtNtB2g_4time7instant7InstantENCINvMsb_NtNtB9_6future10base_cacheINtB7Q_5InnerB1M_B3d_B4u_E22get_key_value_and_thenB1M_NCNCINvMs2_B7Q_INtB7Q_9BaseCacheB1M_B3d_E13get_with_hashB1M_QFG_RL0_B3d_EbE00B5G_E0B98_EB3h_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !164
  br i1 %.not81.i, label %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit

_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i: ; preds = %.noexc25, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread74.i, %.noexc24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ai, i64 648 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !164, !noundef !3
  %.not18.i = icmp eq ptr %i.bw, null
  br i1 %.not18.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i
  %i.bx = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs95DO3lnzZ3L_4moka6future11invalidatorINtB5_11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE16apply_predicatesB1L_(ptr noundef nonnull align 8 %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae) #28
          to label %.noexc26 unwind label %.body.thread40.loopexit.split-lp

.noexc26:                                         ; preds = %bb.q
  br i1 %i.bx, label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, label %bb.r

bb.r:                                             ; preds = %.noexc26, %_RINvNtNtCs95DO3lnzZ3L_4moka6future10base_cache19is_expired_entry_aoINtNtNtNtB6_6common10concurrent3arc7MiniArcINtB18_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2J_.exit.thread72.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !164
  %i.by = load ptr, ptr %i.ah, align 8, !noalias !164, !nonnull !3, !noundef !3 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !164, !noundef !3 ; 3 uses
  %.not19.i = icmp eq ptr %i.ca, null
  br i1 %.not19.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !164, !nonnull !3, !align !4, !noundef !3
  %i.cd = atomicrmw add ptr %i.ca, i64 1 monotonic, align 8, !noalias !164
  %i.ce = icmp slt i64 %i.cd, 0
  br i1 %i.ce, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  store ptr %i.ca, ptr %i.o, align 8, !noalias !164
  %i.cf = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cf, align 8, !noalias !164
  %i.cg = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ch)
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc53.i:                                       ; preds = %bb.ap, %.invoke.i, %bb.ao
  %.sroa.07.0.i.i = phi i8 [ 1, %.invoke.i ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !164
  %.pr.i = load ptr, ptr %i.o, align 8, !alias.scope !169, !noalias !164 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.cj = icmp eq ptr %.pr.i, null
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i, label %bb.v

bb.v:                                             ; preds = %.noexc53.i
  %i.ck = atomicrmw sub ptr %.pr.i, i64 1 release, align 8, !noalias !172
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i unwind label %.body.thread40.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i: ; preds = %bb.w, %bb.v, %.noexc53.i, %bb.r
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload, %bb.r ], [ %.sroa.0.0.i41.i, %.noexc53.i ], [ %.sroa.0.0.i41.i, %bb.v ], [ %.sroa.0.0.i41.i, %bb.w ] ; 2 uses
  %.sroa.03.079.i = phi i8 [ 0, %bb.r ], [ %.sroa.07.0.i.i, %.noexc53.i ], [ %.sroa.07.0.i.i, %bb.v ], [ %.sroa.07.0.i.i, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !164
  %i.cm = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  invoke void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant11set_instant(ptr noundef nonnull align 8 %i.cn, i64 noundef %.sroa.4.0)
          to label %.noexc28 unwind label %.body.thread40.loopexit.split-lp

.noexc28:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3R_4SendEL_EEEB2D_.exit.i
  %i.co = trunc nuw i8 %.sroa.10.0.copyload to i1
  br i1 %i.co, label %bb.as, label %bb.at

.loopexit.i:                                      ; preds = %.noexc.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp.i:                             ; preds = %bb.aq, %.invoke.i, %bb.am, %.noexc50.i, %.loopexit.i.i, %bb.al, %bb.ai, %bb.ah, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.u
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.cp = load ptr, ptr %i.o, align 8, !alias.scope !177, !noalias !164, !noundef !3 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.body.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = atomicrmw sub ptr %i.cp, i64 1 release, align 8, !noalias !180
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %.body.thread

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2W_4SendEL_E9drop_slowB1I_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #27
          to label %.body.thread unwind label %bb.ar, !noalias !164

bb.aa:                                            ; preds = %bb.u
  %i.ct = extractvalue { i64, i64 } %i.ci, 0
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.ad, label %bb.ab, !prof !87

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 24, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #29
          to label %bb.ac unwind label %.loopexit.split-lp.i, !noalias !164

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.aa
  %i.cv = extractvalue { i64, i64 } %i.ci, 1      ; 2 uses
  %.sroa.0.0.i41.i = call noundef i64 @llvm.umax.i64(i64 %i.cv, i64 %.sroa.4.0.copyload) ; 5 uses
  %i.cw = load ptr, ptr %i.ah, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.cy = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cx, i64 noundef %i.cv)
          to label %bb.ae unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.cz = extractvalue { i64, i32 } %i.cy, 0
  %i.da = extractvalue { i64, i32 } %i.cy, 1
  %i.db = load ptr, ptr %i.aw, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !164, !nonnull !3, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.ah, align 8, !noalias !164, !nonnull !3, !noundef !3 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !164
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 128
  %i.dj = load i32, ptr %i.di, align 8, !range !70, !noalias !164, !noundef !3 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 136
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !164
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 144
  %i.dn = load i32, ptr %i.dm, align 8, !range !70, !noalias !164, !noundef !3 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 88 ; 2 uses
  %.val32.i = load ptr, ptr %i.o, align 8, !noalias !164 ; 2 uses
  %.val33.i = load ptr, ptr %i.cf, align 8, !noalias !164 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !164
  store i64 %.sroa.0.0.i41.i, ptr %i.i, align 8, !noalias !188
  %i.dp = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, i64 noundef %.sroa.0.0.i41.i)
          to label %.noexc44.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc44.i:                                       ; preds = %bb.ae
  %i.dq = extractvalue { i64, i32 } %i.dp, 0      ; 2 uses
  %i.dr = extractvalue { i64, i32 } %i.dp, 1      ; 2 uses
  %i.ds = load ptr, ptr %i.aw, align 8, !alias.scope !185, !noalias !191, !nonnull !3, !noundef !3 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load atomic i64, ptr %i.dt acquire, align 8, !noalias !192 ; 2 uses
  %i.dv = and i64 %i.du, -4096
  %i.dw = icmp ult i64 %i.du, -4096               ; 3 uses
  %.sroa.040.0.i.i = zext i1 %i.dw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !188
  %.not.i42.i = icmp eq i32 %i.dj, 1000000000
  br i1 %.not.i42.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.noexc44.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.dy = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.dx)
          to label %.noexc45.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc45.i:                                       ; preds = %bb.af
  %i.dz = extractvalue { i64, i64 } %i.dy, 0
  %i.ea = trunc nuw i64 %i.dz to i1
  br i1 %i.ea, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.noexc46.i, %.noexc45.i, %.noexc44.i
  %i.eb = phi i64 [ 0, %.noexc44.i ], [ 1, %.noexc46.i ], [ 0, %.noexc45.i ] ; 2 uses
  %.sroa.612.0.i.i = phi i64 [ undef, %.noexc44.i ], [ %i.ed, %.noexc46.i ], [ undef, %.noexc45.i ]
  %.not114.i.i = icmp eq i32 %i.dn, 1000000000
  br i1 %.not114.i.i, label %.split.preheader.i.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %.noexc45.i
  %i.ec = extractvalue { i64, i64 } %i.dy, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !188
  store i64 %i.ec, ptr %i.g, align 8, !noalias !188
  %i.ed = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %i.dh, i32 noundef range(i32 0, 1000000001) %i.dj)
          to label %.noexc46.i unwind label %.loopexit.split-lp.i, !noalias !164

.noexc46.i:                                       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !188
  br label %bb.ag

bb.ai:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.ef = invoke { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.ee)
          to label %.noexc47.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc47.i:                                       ; preds = %bb.ai
  %i.eg = extractvalue { i64, i64 } %i.ef, 0
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %bb.al, label %.split.preheader.i.i.i.i.i

.split.preheader.i.i.i.i.i:                       ; preds = %.noexc49.i, %.noexc47.i, %bb.ag
  %i.ei = phi i64 [ 0, %bb.ag ], [ 1, %.noexc49.i ], [ 0, %.noexc47.i ] ; 2 uses
  %.sroa.614.0.i.i = phi i64 [ undef, %bb.ag ], [ %i.fg, %.noexc49.i ], [ undef, %.noexc47.i ]
  store i64 1, ptr %i.h, align 8, !noalias !188
  %.sroa.087.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %.sroa.040.0.i.i, ptr %.sroa.087.sroa.6.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.dv, ptr %.sroa.087.sroa.7.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %i.eb, ptr %.sroa.087.sroa.8.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.612.0.i.i, ptr %.sroa.087.sroa.9.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  store i64 %i.ei, ptr %.sroa.087.sroa.10.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.087.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.614.0.i.i, ptr %.sroa.087.sroa.11.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.488.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 2, ptr %.sroa.488.0..sroa_idx.i.i, align 8, !noalias !188
  %.sroa.690.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 2, ptr %.sroa.690.0..sroa_idx.i.i, align 8, !noalias !188
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  br i1 %i.dw, label %bb.aj, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.split.preheader.i.i.i.i.i
  %i.ej = trunc nuw i64 %i.eb to i1
  br i1 %i.ej, label %bb.aj, label %.split.i.i.i.1.i.i

.split.i.i.i.1.i.i:                               ; preds = %.split.i.i.i.i.i
  %i.ek = trunc nuw i64 %i.ei to i1
  br i1 %i.ek, label %bb.aj, label %.split.i.i.i.2.i.i

.split.i.i.i.2.i.i:                               ; preds = %.split.i.i.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !188
  br label %bb.am

bb.aj:                                            ; preds = %.split.i.i.i.1.i.i, %.split.i.i.i.i.i, %.split.preheader.i.i.i.i.i
  %.lcssa11.i.i = phi i64 [ 1, %.split.preheader.i.i.i.i.i ], [ 2, %.split.i.i.i.i.i ], [ 3, %.split.i.i.i.1.i.i ]
  %.lcssa.i.i = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx.i.i, %.split.preheader.i.i.i.i.i ], [ %.sroa.087.sroa.8.0..sroa_idx.i.i, %.split.i.i.i.i.i ], [ %.sroa.087.sroa.10.0..sroa_idx.i.i, %.split.i.i.i.1.i.i ]
  store i64 %.lcssa11.i.i, ptr %.sroa.087.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !196, !noalias !188
  %i.el = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 8
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !196, !noalias !188 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx.i.i, i64 64, i1 false), !noalias !188
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !218
  store ptr %i.en, ptr %i.c, align 8, !noalias !219
  %i.eo = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 3, ptr %i.eo, align 8, !noalias !219
  %i.ep = load i64, ptr %i.d, align 8, !alias.scope !221, !noalias !222, !noundef !3 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !221, !noalias !222, !noundef !3 ; 3 uses
  %i.es = icmp ule i64 %i.ep, %i.er
  call void @llvm.assume(i1 %i.es)
  %.not7.i.i.i.i.i.i.i = icmp eq i64 %i.ep, %i.er
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.ak

bb.ak:                                            ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %5 = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.i.i ], [ %6, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i.i.i = phi i64 [ %i.em, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.eu = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ev, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ev = add nuw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.d, align 8, !alias.scope !221, !noalias !222
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ew = load i64, ptr %i.eo, align 8, !alias.scope !223, !noalias !219, !noundef !3
  %i.ex = icmp ult i64 %i.eu, %i.ew
  call void @llvm.assume(i1 %i.ex)
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.eu ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !range !129, !noalias !226, !noundef !3
  %i.fa = trunc nuw i64 %i.ez to i1
  br i1 %i.fa, label %.noexc.i.i.i.i.i.i, label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !226 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !227
  store i64 %.sroa.0.08.i.i.i.i.i.i.i, ptr %i.b, align 8, !noalias !234
  store i64 %i.fc, ptr %i.a, align 8, !noalias !234
  %i.fd = invoke noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2h_EE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc48.i unwind label %.loopexit.i, !noalias !164

.noexc48.i:                                       ; preds = %.noexc.i.i.i.i.i.i
  %i.fe = icmp slt i8 %i.fd, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.fe, i64 %.sroa.0.08.i.i.i.i.i.i.i, i64 %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !223, !noalias !219
  br label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i

_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i: ; preds = %.noexc48.i, %bb.ak
  %6 = phi ptr [ %5, %bb.ak ], [ %.pre.i.i.i.i.i.i.i, %.noexc48.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.ak ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc48.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ev, %i.er
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %bb.ak

bb.al:                                            ; preds = %.noexc47.i
  %i.ff = extractvalue { i64, i64 } %i.ef, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !188
  store i64 %i.ff, ptr %i.f, align 8, !noalias !188
  %i.fg = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.dl, i32 noundef range(i32 0, 1000000001) %i.dn)
          to label %.noexc49.i unwind label %.loopexit.split-lp.i, !noalias !164

.noexc49.i:                                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !188
  br label %.split.preheader.i.i.i.i.i

.loopexit.i.i:                                    ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i, %bb.aj
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.em, %bb.aj ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !188
  %i.fh = invoke { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.do, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i.i.i)
          to label %.noexc50.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc50.i:                                       ; preds = %.loopexit.i.i
  %i.fi = extractvalue { i64, i32 } %i.fh, 0
  %i.fj = extractvalue { i64, i32 } %i.fh, 1
  store i64 %i.fi, ptr %i.e, align 8, !noalias !188
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.fj, ptr %i.fk, align 8, !noalias !188
  %i.fl = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.dq, i32 noundef %i.dr)
          to label %.noexc51.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 2 uses

.noexc51.i:                                       ; preds = %.noexc50.i
  %i.fm = extractvalue { i64, i32 } %i.fl, 0
  %i.fn = extractvalue { i64, i32 } %i.fl, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !188
  br label %bb.am

bb.am:                                            ; preds = %.noexc51.i, %.split.i.i.i.2.i.i
  %.sroa.015.0.i.i = phi i64 [ %i.fm, %.noexc51.i ], [ undef, %.split.i.i.i.2.i.i ] ; 2 uses
  %.sroa.819.0.i.i = phi i32 [ %i.fn, %.noexc51.i ], [ 1000000000, %.split.i.i.i.2.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val33.i) ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.val33.i, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !141, !invariant.load !3, !noalias !237
  %i.fq = add nsw i64 %i.fp, -1
  %i.fr = and i64 %i.fq, -16
  %i.fs = getelementptr inbounds nuw i8, ptr %.val32.i, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.val33.i, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !invariant.load !3, !noalias !237, !nonnull !3
  %i.fw = invoke { i64, i32 } %i.fv(ptr noundef nonnull %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.av, i64 noundef %i.dq, i32 noundef range(i32 0, 1000000000) %i.dr, i64 %.sroa.015.0.i.i, i32 noundef range(i32 0, 1000000001) %.sroa.819.0.i.i, i64 noundef %i.cz, i32 noundef %i.da) #28
          to label %.noexc52.i unwind label %.loopexit.split-lp.i, !noalias !164, !inline_history !241 ; 2 uses

.noexc52.i:                                       ; preds = %bb.am
  %i.fx = extractvalue { i64, i32 } %i.fw, 0      ; 2 uses
  %i.fy = extractvalue { i64, i32 } %i.fw, 1      ; 4 uses
  %.not115.i.i = icmp eq i32 %i.fy, 1000000000
  %.not116.i.i = icmp ne i32 %.sroa.819.0.i.i, 1000000000 ; 2 uses
  br i1 %.not115.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.noexc52.i
  %i.fz = icmp eq i64 %i.fx, %.sroa.015.0.i.i
  %or.cond.i43.i = select i1 %.not116.i.i, i1 %i.fz, i1 false
  br i1 %or.cond.i43.i, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %.noexc52.i
  %brmerge.i = select i1 %.not116.i.i, i1 true, i1 %i.dw
  br i1 %brmerge.i, label %.invoke.i, label %.noexc53.i

.invoke.i:                                        ; preds = %bb.aq, %bb.ao
  %i.ga = phi i64 [ 1, %bb.aq ], [ 0, %bb.ao ]
  %i.gb = phi i64 [ %i.gg, %bb.aq ], [ undef, %bb.ao ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.gd = invoke noundef i32 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringE19set_expiration_timeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.gc, i64 noundef %i.ga, i64 %i.gb)
          to label %.noexc53.i unwind label %.loopexit.split-lp.i, !noalias !164 ; 0 uses

bb.ap:                                            ; preds = %bb.an
  %i.ge = icmp ult i32 %i.fy, 1000000000
  call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp ult i32 %.sroa.819.0.i.i, 1000000000
  call void @llvm.assume(i1 %i.gf)
  %.not118.i.i = icmp eq i32 %i.fy, %.sroa.819.0.i.i
  br i1 %.not118.i.i, label %.noexc53.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.gg = invoke noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, i64 noundef %i.fx, i32 noundef %i.fy)
          to label %.invoke.i unwind label %.loopexit.split-lp.i, !noalias !164

bb.ar:                                            ; preds = %bb.bb, %bb.ax, %bb.z
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26, !noalias !161
  unreachable

bb.as:                                            ; preds = %.noexc28
  %i.gi = load ptr, ptr %i.ad, align 8, !alias.scope !156, !noalias !242, !nonnull !3, !noundef !3 ; 2 uses
  %i.gj = atomicrmw add ptr %i.gi, i64 1 monotonic, align 8, !noalias !164
  %i.gk = icmp slt i64 %i.gj, 0
  br i1 %i.gk, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as, %.noexc28
  %i.gl = phi ptr [ null, %.noexc28 ], [ %i.gi, %bb.as ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !164
  store ptr %i.gl, ptr %i.m, align 8, !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !164
  invoke fastcc void @_RNvXs13_NtCsgO8S5jLFugx_23deltalake_catalog_unity6modelsNtB6_25TemporaryTableCredentialsNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(256) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.av)
          to label %bb.ay unwind label %bb.av, !noalias !164

bb.au:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gn = icmp eq ptr %i.gl, null
  br i1 %i.gn, label %.body.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.go = atomicrmw sub ptr %i.gl, i64 1 release, align 8, !noalias !243
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.ax, label %.body.thread

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %.body.thread unwind label %bb.ar, !noalias !164

bb.ay:                                            ; preds = %bb.at
  %i.gq = getelementptr inbounds nuw i8, ptr %i.n, i64 256
  store ptr %i.gl, ptr %i.gq, align 8, !noalias !164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.n, ptr noundef nonnull align 8 dereferenceable(256) %i.l, i64 256, i1 false), !noalias !164
  %i.gr = getelementptr inbounds nuw i8, ptr %i.n, i64 264
  store i8 0, ptr %i.gr, align 8, !noalias !164
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 265
  store i8 0, ptr %i.gs, align 1, !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !164
  %i.gt = trunc nuw i8 %.sroa.11.0.copyload to i1
  br i1 %i.gt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.gu = invoke noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB23_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.ba unwind label %bb.bb, !noalias !161

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.3.sroa.3.0.i = phi ptr [ undef, %bb.ay ], [ %i.gu, %bb.az ]
  %.sroa.05.0.i = phi i8 [ 2, %bb.ay ], [ 0, %bb.az ]
  %.sroa.0.0.copyload29 = load i64, ptr %i.n, align 8, !noalias !250
  %.sroa.6.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx30, i64 264, i1 false), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !164
  br label %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit

bb.bb:                                            ; preds = %bb.az
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5entry5EntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB25_(ptr noalias noundef align 8 dereferenceable(272) %i.n) #25
          to label %.body.thread unwind label %bb.ar, !noalias !161

bb.bc:                                            ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.q, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit, %bb.bc
  invoke fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtB2f_10ValueEntryB1N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB3i_(ptr %.val19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noundef nonnull align 8 %i.u, ptr noundef nonnull align 8 %.sroa.09.0)
          to label %bb.be unwind label %bb.bj

_RNCNCINvMs2_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtBa_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE13get_with_hashB16_QFG_RL0_B1I_EbE00B1M_.exit: ; preds = %bb.ba, %.noexc, %.noexc26, %.noexc25, %bb.o, %.noexc23, %bb.m, %.noexc21
  %.sroa.9.0 = phi i64 [ undef, %.noexc ], [ %.sroa.4.0, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.832.0 = phi ptr [ undef, %.noexc ], [ %.sroa.3.sroa.3.0.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.7.0 = phi i8 [ undef, %.noexc ], [ %.sroa.03.079.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.631.0 = phi i8 [ undef, %.noexc ], [ %.sroa.05.0.i, %bb.ba ], [ undef, %.noexc26 ], [ undef, %.noexc25 ], [ undef, %bb.o ], [ undef, %.noexc23 ], [ undef, %bb.m ], [ undef, %.noexc21 ]
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %.noexc ], [ %.sroa.0.0.copyload29, %bb.ba ], [ -9223372036854775808, %.noexc26 ], [ -9223372036854775808, %.noexc25 ], [ -9223372036854775808, %bb.o ], [ -9223372036854775808, %.noexc23 ], [ -9223372036854775808, %bb.m ], [ -9223372036854775808, %.noexc21 ]
  store i64 %.sroa.0.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.6, i64 264, i1 false)
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 272
  store i8 %.sroa.631.0, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 273
  store i8 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  store ptr %.sroa.832.0, ptr %.sroa.832.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.bd

bb.be:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.q, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gw = icmp eq ptr %i.t, null
  br i1 %i.gw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gx = getelementptr inbounds nuw i8, ptr %i.t, i64 2072 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noundef !3 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvMNtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB3_14BucketArrayRefTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1k_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB9_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE25insert_if_not_present_andB2J_NCNvMs_NtB7_7segmentINtB7E_7HashMapB1e_B2J_E21insert_if_not_present0NCB7z_s_0EB50_:bb.a
  %i.x = invoke noundef align 8 ptr @_RINvMs3_NtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucketINtB6_11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB19_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBc_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBc_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE6rehashNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEB4P_(ptr noundef nonnull align 8 %.sroa.06.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q, i8 noundef 0)
          to label %bb.ab unwind label %bb.ag     ; 2 uses

bb.l:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !269, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  switch i64 %i.z, label %default.unreachable58 [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
  ]

default.unreachable58:                            ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3 ; 2 uses
  store i64 %i.ab, ptr %i.a, align 8
  %i.ac = invoke noundef align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE6as_refB5y_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.p unwind label %.thread48.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.l
  %i.ad = atomicrmw add ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  store ptr null, ptr %i.d, align 8
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.aa, align 8, !noundef !3 ; 2 uses
  %i.af = and i64 %i.ae, 2
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.invoke, label %bb.v, !prof !8

bb.p:                                             ; preds = %bb.m
  %.not25 = icmp eq ptr %i.ac, null
  br i1 %.not25, label %bb.r, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.ah = and i64 %i.ab, 2
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.t, label %.invoke, !prof !87

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
          to label %bb.s unwind label %.thread48.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ak = invoke noundef nonnull ptr @_RNvXs3_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneB2F_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %_RNCNvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB6_7HashMapTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21insert_if_not_presents_0B4E_.exit unwind label %.thread48.loopexit.split-lp

.invoke:                                          ; preds = %bb.o, %bb.q
  %i.al = phi ptr [ @2, %bb.q ], [ @4, %bb.o ]
  %i.am = phi ptr [ @3, %bb.q ], [ @5, %bb.o ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am) #29
          to label %.cont unwind label %.thread48.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCNvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB6_7HashMapTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21insert_if_not_presents_0B4E_.exit: ; preds = %bb.t
  store ptr %i.ak, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %_RNCNvMs_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB6_7HashMapTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBZ_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE21insert_if_not_presents_0B4E_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka3cht3map16bucket_array_refINtB4_14BucketArrayRefTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1l_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBa_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBa_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE5swingB51_(ptr %.val31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull align 8 %i.j, ptr noundef nonnull align 8 %.sroa.06.0)
          to label %bb.x unwind label %bb.ad

bb.v:                                             ; preds = %bb.o
  %i.an = atomicrmw add ptr %i.o, i64 1 monotonic, align 8 ; 0 uses
  invoke void @_RINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB18_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB8_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB8_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB4O_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %i.ae)
          to label %bb.w unwind label %.thread48.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.d, align 8
  br label %bb.u

bb.x:                                             ; preds = %bb.u
  %i.ao = load ptr, ptr %i.d, align 8, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ap = icmp eq ptr %i.h, null
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 2072 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %i.as = add i64 %i.ar, -1
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.z:                                             ; preds = %bb.y
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 2176
  store atomic i64 0, ptr %i.au release, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 2080
  %i.aw = load i64, ptr %i.av, align 8, !noundef !3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !8

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs6_NtCsee2lL6QbnsJ_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsee2lL6QbnsJ_15crossbeam_epoch5guard5GuardECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %i.ao

bb.ab:                                            ; preds = %bb.k
  %.not28 = icmp eq ptr %i.x, null
  %spec.select = select i1 %.not28, ptr %.sroa.06.0, ptr %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ab, %bb.ac
  %.sroa.06.0.be = phi ptr [ %spec.select, %bb.ab ], [ %spec.select29, %bb.ac ]
  br label %.backedge

bb.ac:                                            ; preds = %bb.i
  %.not = icmp eq ptr %i.v, null
  %spec.select29 = select i1 %.not, ptr %.sroa.06.0, ptr %i.v
  br label %.backedge.backedge

.thread48.loopexit:                               ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread41

.thread48.loopexit.split-lp:                      ; preds = %.invoke, %bb.t, %bb.r, %bb.m, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread41

bb.ad:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.d, align 8, !alias.scope !304, !noundef !3
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.thread41, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.thread41 unwind label %bb.af

bb.af:                                            ; preds = %bb.ak, %bb.ai, %bb.ae, %.thread41, %bb.ag
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ag:                                            ; preds = %.backedge, %bb.f, %bb.i, %bb.k
  %lpad.thr_comm.split-lp47 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket19InsertOrModifyStateTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringENtNtB4_3any6TypeIdEINtNtNtNtBP_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBP_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENCNvMs_NtBN_7segmentINtB6z_7HashMapB1I_B2X_E21insert_if_not_present0EEB5e_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #25
          to label %.thread41 unwind label %bb.af

bb.ah:                                            ; preds = %.thread41, %bb.b
  %.sroa.016.2 = phi i8 [ %.sroa.016.1, %.thread41 ], [ %.sroa.016.0, %bb.b ]
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.thread41 ], [ %i.i, %bb.b ]
  %cond = icmp eq i8 %.sroa.016.2, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.aj unwind label %bb.af

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.aj, %bb.ak, %bb.ah
  resume { ptr, i32 } %.pn.pn

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.bb = load ptr, ptr %1, align 8, !alias.scope !316, !nonnull !3, !noundef !3
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !316
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCs8VI8w5SIoU4_15datafusion_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBM_6string6StringENtNtB4_3any6TypeIdEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs5_NtNtCs95DO3lnzZ3L_4moka6future10base_cacheINtB6_9BaseCacheNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsE27expire_after_read_or_updateNCNCNvMs4_B6_BM_20do_post_update_steps00EB1I_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4, i64 %5, i32 noundef range(i32 0, 1000000001) %6, i64 noundef %7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [104 x i8], align 8               ; 16 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %7, ptr %i.i, align 8
  %i.j = tail call { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %8, i64 noundef %7) ; 2 uses
  %i.k = extractvalue { i64, i32 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i32 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = and i64 %i.p, -4096
  %i.r = icmp ult i64 %i.p, -4096                 ; 3 uses
  %.sroa.040.0 = zext i1 %i.r to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.not = icmp eq i32 %4, 1000000000
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.t = tail call { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.s) ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.w = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.612.0 = phi i64 [ undef, %bb.a ], [ %i.y, %bb.d ], [ undef, %bb.b ]
  %.not114 = icmp eq i32 %6, 1000000000
  br i1 %.not114, label %.split.preheader.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.x = extractvalue { i64, i64 } %i.t, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.x, ptr %i.g, align 8
  %i.y = call noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, i64 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.aa = call { i64, i64 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time11atomic_timeNtB4_13AtomicInstant7instant(ptr noundef nonnull align 8 %i.z) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.h, label %.split.preheader.i.i.i

.split.preheader.i.i.i:                           ; preds = %bb.c, %bb.e, %bb.h
  %i.ad = phi i64 [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.e ] ; 2 uses
  %.sroa.614.0 = phi i64 [ undef, %bb.c ], [ %i.bd, %bb.h ], [ undef, %bb.e ]
  store i64 1, ptr %i.h, align 8
  %.sroa.087.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.087.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 3, ptr %.sroa.087.sroa.5.0..sroa_idx, align 8
  %.sroa.087.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store i64 %.sroa.040.0, ptr %.sroa.087.sroa.6.0..sroa_idx, align 8
  %.sroa.087.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.q, ptr %.sroa.087.sroa.7.0..sroa_idx, align 8
  %.sroa.087.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 %i.w, ptr %.sroa.087.sroa.8.0..sroa_idx, align 8
  %.sroa.087.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %.sroa.612.0, ptr %.sroa.087.sroa.9.0..sroa_idx, align 8
  %.sroa.087.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %i.ad, ptr %.sroa.087.sroa.10.0..sroa_idx, align 8
  %.sroa.087.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 %.sroa.614.0, ptr %.sroa.087.sroa.11.0..sroa_idx, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  store i64 2, ptr %.sroa.488.0..sroa_idx, align 8
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store i64 2, ptr %.sroa.690.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  br i1 %i.r, label %bb.f, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.preheader.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.af = trunc nuw i64 %i.w to i1
  br i1 %i.af, label %bb.f, label %.split.i.i.i.1

.split.i.i.i.1:                                   ; preds = %.split.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ah = trunc nuw i64 %i.ad to i1
  br i1 %i.ah, label %bb.f, label %.split.i.i.i.2

.split.i.i.i.2:                                   ; preds = %.split.i.i.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.f:                                             ; preds = %.split.i.i.i.1, %.split.i.i.i, %.split.preheader.i.i.i
  %.lcssa126 = phi i64 [ 1, %.split.preheader.i.i.i ], [ 2, %.split.i.i.i ], [ 3, %.split.i.i.i.1 ]
  %.lcssa = phi ptr [ %.sroa.087.sroa.6.0..sroa_idx, %.split.preheader.i.i.i ], [ %i.ae, %.split.i.i.i ], [ %i.ag, %.split.i.i.i.1 ]
  store i64 %.lcssa126, ptr %.sroa.087.sroa.4.0..sroa_idx, align 8, !alias.scope !320
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !320 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !331
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.087.sroa.4.0..sroa_idx, i64 64, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !342
  store ptr %i.ak, ptr %i.c, align 8, !noalias !343
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store i64 3, ptr %i.al, align 8, !noalias !343
  %i.am = load i64, ptr %i.d, align 8, !alias.scope !345, !noalias !346, !noundef !3 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !345, !noalias !346, !noundef !3 ; 3 uses
  %i.ap = icmp ule i64 %i.am, %i.ao
  call void @llvm.assume(i1 %i.ap)
  %.not7.i.i.i.i.i = icmp eq i64 %i.am, %i.ao
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.g

bb.g:                                             ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %9 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %10, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ] ; 3 uses
  %i.ar = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i ], [ %i.as, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ] ; 3 uses
  %i.as = add nuw i64 %i.ar, 1                    ; 3 uses
  store i64 %i.as, ptr %i.d, align 8, !alias.scope !345, !noalias !346
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.at = load i64, ptr %i.al, align 8, !alias.scope !347, !noalias !343, !noundef !3
  %i.au = icmp ult i64 %i.ar, %i.at
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %i.ar ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !129, !noalias !350, !noundef !3
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %.noexc.i.i.i.i, label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noalias !350 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  store i64 %.sroa.0.08.i.i.i.i.i, ptr %i.b, align 8, !noalias !358
  store i64 %i.az, ptr %i.a, align 8, !noalias !358
  %i.ba = call noundef i8 @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNvYNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2h_EE9call_onceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !317
  %i.bb = icmp slt i8 %i.ba, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %i.bb, i64 %.sroa.0.08.i.i.i.i.i, i64 %i.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !351
  %.pre.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !347, !noalias !343
  br label %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i

_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i.i, %bb.g
  %10 = phi ptr [ %9, %bb.g ], [ %.pre.i.i.i.i.i, %.noexc.i.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.08.i.i.i.i.i, %bb.g ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.as, %i.ao
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.g

bb.h:                                             ; preds = %bb.e
  %i.bc = extractvalue { i64, i64 } %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.bc, ptr %i.f, align 8
  %i.bd = call noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, i64 noundef %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.split.preheader.i.i.i

.loopexit:                                        ; preds = %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %bb.f
  %.sroa.0.0.lcssa.i.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNCINvMs6_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitINtNtBe_6option6OptionNtNtNtNtCs95DO3lnzZ3L_4moka6common4time7instant7InstantEEE8try_foldB2j_NCINvMs0_NtNtBe_3ops9try_traitINtB3B_17NeverShortCircuitB2j_E10wrap_mut_2B2j_B1X_NCINvNtNtNtBe_4iter8adapters7flatten11flatten_oneB1X_B2j_NCINvNvNtNtNtB4U_6traits8iterator8Iterator6min_by4foldB2j_NvYB2j_NtNtBe_3cmp3Ord3cmpE0E0E0B3W_E0CsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !342
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = call { i64, i32 } @_RNvMs_NtNtNtCs95DO3lnzZ3L_4moka6common4time5clockNtB4_5Clock14to_std_instant(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %8, i64 noundef %.sroa.0.0.lcssa.i.i.i.i.i) ; 2 uses
  %i.bf = extractvalue { i64, i32 } %i.be, 0
  %i.bg = extractvalue { i64, i32 } %i.be, 1
  store i64 %i.bf, ptr %i.e, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant22checked_duration_since(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e, i64 noundef %i.k, i32 noundef %i.l) ; 2 uses
  %i.bj = extractvalue { i64, i32 } %i.bi, 0
  %i.bk = extractvalue { i64, i32 } %i.bi, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %.split.i.i.i.2, %.loopexit
  %.sroa.015.0 = phi i64 [ %i.bj, %.loopexit ], [ undef, %.split.i.i.i.2 ] ; 2 uses
  %.sroa.819.0 = phi i32 [ %i.bk, %.loopexit ], [ 1000000000, %.split.i.i.i.2 ] ; 5 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val119 = load ptr, ptr %i.bl, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val119, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !141, !invariant.load !3, !noalias !361
  %i.bo = add nsw i64 %i.bn, -1
  %i.bp = and i64 %i.bo, -16
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.val119, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !3, !noalias !361, !nonnull !3
  %i.bu = call { i64, i32 } %i.bt(ptr noundef nonnull %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %2, i64 noundef %i.k, i32 noundef range(i32 0, 1000000000) %i.l, i64 %.sroa.015.0, i32 noundef range(i32 0, 1000000001) %.sroa.819.0) #28, !inline_history !365 ; 2 uses
  %i.bv = extractvalue { i64, i32 } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { i64, i32 } %i.bu, 1      ; 4 uses
  %.not115 = icmp eq i32 %i.bw, 1000000000
  br i1 %.not115, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not117 = icmp ne i32 %.sroa.819.0, 1000000000
  %i.bx = icmp eq i64 %i.bv, %.sroa.015.0
  %or.cond = select i1 %.not117, i1 %i.bx, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.k:                                             ; preds = %bb.i
  %.not116 = icmp eq i32 %.sroa.819.0, 1000000000
  br i1 %.not116, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.r, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bz = call noundef i32 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringE19set_expiration_timeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.by, i64 noundef 0, i64 undef) ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.k, %bb.p
  %.sroa.037.0 = phi i64 [ 1, %bb.p ], [ 0, %bb.k ]
  %.sroa.338.0 = phi i64 [ %i.ce, %bb.p ], [ undef, %bb.k ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = call noundef i32 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent10entry_infoINtB2_9EntryInfoNtNtCs6Po7BT7Nknu_5alloc6string6StringE19set_expiration_timeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %i.ca, i64 noundef %.sroa.037.0, i64 %.sroa.338.0) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.cc = icmp ult i32 %i.bw, 1000000000
  call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp ult i32 %.sroa.819.0, 1000000000
  call void @llvm.assume(i1 %i.cd)
  %.not118 = icmp eq i32 %i.bw, %.sroa.819.0
  br i1 %.not118, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o
  %i.ce = call noundef i64 @_RNvMNtNtNtCs95DO3lnzZ3L_4moka6common4time7instantNtB2_7Instant14saturating_add(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, i64 noundef %i.bv, i32 noundef %i.bw)
  br label %bb.n

bb.q:                                             ; preds = %bb.l, %bb.o, %bb.m, %bb.n
  %.sroa.07.0 = phi i1 [ true, %bb.n ], [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.l ]
  ret i1 %.sroa.07.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !284, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEEB16_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !284, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEBK_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEBK_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models13GcpOauthTokenEBK_.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models17R2TempCredentialsEEB16_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !284, !noundef !3
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models17R2TempCredentialsEBK_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #25
          to label %.body4.i unwind label %bb.l
end_hunk_2
