inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0Bb_:bb.a
          to label %.body166.i unwind label %bb.t, !noalias !17389

bb.bx:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i159.i
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %.body160.i

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i159.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr), !noalias !17385
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ds, i64 24, i1 false), !noalias !17385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !17385
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 7, ptr %i.kt, align 8, !noalias !17385
  store i64 -9223372036854775808, ptr %i.dd, align 8, !noalias !17385
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i165.i unwind label %bb.bz, !noalias !17389

bb.bz:                                            ; preds = %bb.by
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %.body166.i unwind label %bb.ca, !noalias !17389

bb.ca:                                            ; preds = %bb.bz
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17389
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i165.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit169.i unwind label %bb.cb, !noalias !17389

.body166.i:                                       ; preds = %bb.cb, %bb.bz, %.body160.i, %bb.bf
  %.pn47.i = phi { ptr, i32 } [ %i.ku, %bb.bz ], [ %.pn41.i, %.body160.i ], [ %i.jv, %bb.bf ], [ %i.kw, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !17385
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.dx) #44
          to label %.body171.i unwind label %bb.t, !noalias !17389

bb.cb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i165.i
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %.body166.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit169.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i165.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !17385
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %bb.cd unwind label %bb.cc, !noalias !17389

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit169.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %.body171.i unwind label %bb.ce, !noalias !17389

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit169.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cf, !noalias !17389

bb.ce:                                            ; preds = %bb.cc
  %i.ky = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17389
  unreachable

.body171.i:                                       ; preds = %bb.cf, %bb.cc, %.body166.i, %bb.bc
  %.pn49.i = phi { ptr, i32 } [ %i.kx, %bb.cc ], [ %.pn47.i, %.body166.i ], [ %i.jr, %bb.bc ], [ %i.kz, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !17385
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.eb) #44
          to label %.body124.i unwind label %bb.t, !noalias !17389

bb.cf:                                            ; preds = %bb.cd
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %.body171.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !17385
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %bb.ch unwind label %bb.cg, !noalias !17389

bb.cg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %.body124.i unwind label %bb.ci, !noalias !17389

bb.ch:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit177.i unwind label %bb.cj, !noalias !17389

bb.ci:                                            ; preds = %bb.cg
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17389
  unreachable

.body124.i:                                       ; preds = %bb.cj, %bb.cg, %.body171.i, %bb.ay, %bb.au
  %.pn52.i = phi { ptr, i32 } [ %.pn15.i, %bb.au ], [ %.pn49.i, %.body171.i ], [ %i.jn, %bb.ay ], [ %i.lc, %bb.cj ], [ %i.la, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !17385
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ec)
          to label %.body.i unwind label %bb.t, !noalias !17389

bb.cj:                                            ; preds = %bb.ch, %bb.az
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body124.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit177.i: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !17385
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i unwind label %bb.ck, !noalias !17389

.body.i:                                          ; preds = %bb.ck, %.body124.i, %bb.an, %bb.al
  %.pn54.i = phi { ptr, i32 } [ %i.ld, %bb.ck ], [ %i.jd, %bb.al ], [ %.pn52.i, %.body124.i ], [ %i.jf, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !17385
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ck:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit177.i
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit177.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !17385
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit211.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit211.i: ; preds = %bb.eq, %bb.di, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i
  %i.le = phi ptr [ %i.ib, %bb.di ], [ %i.ib, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %i.my, %bb.eq ] ; 6 uses
  %i.lf = phi ptr [ %i.ic, %bb.di ], [ %i.ic, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %i.mz, %bb.eq ] ; 6 uses
  %.sroa.0124.0670 = phi ptr [ %.sroa.0124.0673, %bb.di ], [ %.sroa.0124.0673, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %.sroa.0124.0671, %bb.eq ] ; 6 uses
  %.sroa.11.0643 = phi ptr [ %.sroa.11.0646, %bb.di ], [ %.sroa.11.0646, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %.sroa.11.0644, %bb.eq ] ; 6 uses
  %.sroa.11.4.i = phi ptr [ %.sroa.11.3.i, %bb.di ], [ %.sroa.11.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %.sroa.11.6.i, %bb.eq ] ; 5 uses
  %.sroa.0.4.i = phi ptr [ %.sroa.0.3.i, %bb.di ], [ %.sroa.0.3.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit180.i ], [ %.sroa.0.6.i, %bb.eq ] ; 5 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 792 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %bb.cm unwind label %bb.cl, !noalias !17389

bb.cl:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit211.i
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %.body182.i unwind label %bb.cn, !noalias !17389

bb.cm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit211.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropBY_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.lg)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEEB1p_.exit.i unwind label %bb.s, !noalias !17389

bb.cn:                                            ; preds = %bb.cl
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17389
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !17385
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ec)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit185.i unwind label %bb.ck, !noalias !17389

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit185.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecRNtNtBL_6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ec), !noalias !17385
  br label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBb_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1B_12replay_files0s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.w, %bb.ab, %bb.ag, %bb.er, %bb.dh, %bb.da, %.body.i.i.i, %.body.i
  %i.lj = phi ptr [ %i.mt, %bb.dh ], [ %i.my, %bb.er ], [ %i.ib, %.body.i.i.i ], [ %i.ib, %.body.i ], [ %i.ib, %bb.da ], [ %i.ib, %bb.ag ], [ %i.ib, %bb.ab ], [ %i.ib, %bb.w ]
  %i.lk = phi ptr [ %i.mu, %bb.dh ], [ %i.mz, %bb.er ], [ %i.ic, %.body.i.i.i ], [ %i.ic, %.body.i ], [ %i.ic, %bb.da ], [ %i.ic, %bb.ag ], [ %i.ic, %bb.ab ], [ %i.ic, %bb.w ]
  %.sroa.0124.0681 = phi ptr [ %.sroa.0124.0691, %bb.dh ], [ %.sroa.0124.0671, %bb.er ], [ %.sroa.0124.0673, %.body.i.i.i ], [ %.sroa.0124.0673, %.body.i ], [ %.sroa.0124.0673, %bb.da ], [ %.sroa.0124.0673, %bb.ag ], [ %.sroa.0124.0673, %bb.ab ], [ %.sroa.0124.0673, %bb.w ]
  %.sroa.11.0654 = phi ptr [ %.sroa.11.0664, %bb.dh ], [ %.sroa.11.0644, %bb.er ], [ %.sroa.11.0646, %.body.i.i.i ], [ %.sroa.11.0646, %.body.i ], [ %.sroa.11.0646, %bb.da ], [ %.sroa.11.0646, %bb.ag ], [ %.sroa.11.0646, %bb.ab ], [ %.sroa.11.0646, %bb.w ]
  %.sroa.11.5.i = phi ptr [ %.sroa.11.8.i, %bb.dh ], [ %.sroa.11.6.i, %bb.er ], [ %.sroa.11.3.i, %.body.i.i.i ], [ %.sroa.11.3.i, %.body.i ], [ %.sroa.11.3.i, %bb.da ], [ %.sroa.11.3.i, %bb.ag ], [ %.sroa.11.3.i, %bb.ab ], [ %.sroa.11.3.i, %bb.w ]
  %.sroa.0.5.i = phi ptr [ %.sroa.0.8.i, %bb.dh ], [ %.sroa.0.6.i, %bb.er ], [ %.sroa.0.3.i, %.body.i.i.i ], [ %.sroa.0.3.i, %.body.i ], [ %.sroa.0.3.i, %bb.da ], [ %.sroa.0.3.i, %bb.ag ], [ %.sroa.0.3.i, %bb.ab ], [ %.sroa.0.3.i, %bb.w ]
  %.pn74.pn.i = phi { ptr, i32 } [ %.pn70.pn.pn.i, %bb.dh ], [ %i.pn, %bb.er ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %.pn54.i, %.body.i ], [ %.pn.ph.i.i.i, %bb.da ], [ %i.iq, %bb.ag ], [ %i.ig, %bb.ab ], [ %i.ia, %bb.w ]
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 792
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEEB1p_(ptr noalias noundef align 8 dereferenceable(24) %i.ll) #44
          to label %.body182.i unwind label %bb.t, !noalias !17389

bb.co:                                            ; preds = %bb.cp, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBb_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1B_12replay_files0s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit.i.i.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBb_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1B_12replay_files0s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit185.i, %bb.aj, %bb.af
  %i.ln = getelementptr i8, ptr %1, i64 800
  %.val103.i = load ptr, ptr %i.ln, align 16, !noalias !17385, !nonnull !10, !noundef !10 ; 2 uses
  %i.lo = getelementptr i8, ptr %1, i64 808
  %.val104.i = load i64, ptr %i.lo, align 8, !noalias !17385, !noundef !10
  %i.lp = getelementptr inbounds nuw [208 x i8], ptr %.val103.i, i64 %.val104.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !17465
  store i64 -9223372036854775807, ptr %i.cw, align 8, !alias.scope !17472, !noalias !17476
  %.sroa.5272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  store i64 -9223372036854775807, ptr %.sroa.5272.0..sroa_idx.i, align 8, !alias.scope !17472, !noalias !17476
  %.sroa.6274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store ptr %.val103.i, ptr %.sroa.6274.0..sroa_idx.i, align 8, !alias.scope !17472, !noalias !17476
  %.sroa.7275.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store ptr %i.lp, ptr %.sroa.7275.0..sroa_idx.i, align 8, !alias.scope !17472, !noalias !17476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !17465
  %i.lq = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i.i.i unwind label %bb.co, !noalias !17477

.noexc.i.i.i:                                     ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBb_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3L_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1B_12replay_files0s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1J_.exit.i.i.i
  %i.lr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !17465
  %i.ls = icmp eq i8 %i.lr, 2
  br i1 %i.ls, label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i.i, label %bb.cp, !prof !984

bb.cp:                                            ; preds = %.noexc.i.i.i
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #48
          to label %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i.i unwind label %bb.co, !noalias !17477

bb.cq:                                            ; preds = %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i.i: ; preds = %bb.cp, %.noexc.i.i.i
  invoke void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBT_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEE16with_capacity_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.cv, i64 noundef 0)
          to label %bb.cr unwind label %bb.cq, !noalias !17477

bb.cr:                                            ; preds = %_RNvXs2_NtCs2HSpDNxY7OE_9hashbrown6hasherNtB5_18DefaultHashBuilderNtNtCsbvkFyIu7lgC_4core7default7Default7default.exit.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  store i64 %i.lq, ptr %i.lu, align 8, !alias.scope !17478, !noalias !17465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !17481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.cu, ptr noundef nonnull align 8 dereferenceable(80) %i.cw, i64 80, i1 false), !noalias !17465
  call void @llvm.experimental.noalias.scope.decl(metadata !17488)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  %i.lw = load ptr, ptr %i.lv, align 8, !alias.scope !17488, !noalias !17491, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i187.i = icmp eq ptr %i.lw, null
  br i1 %.not.i.i.i.i.i187.i, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lx = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !17488, !noalias !17491
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1u_12replay_files0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB5h_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEuNCINvNvB3H_8for_each4callB5c_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7J_7HashMapB5d_B5P_EINtNtB3L_7collect12FromIteratorB5c_E9from_iterINtB4q_7FlatMapBX_B4Q_B3d_EE0E0E0EB1C_(ptr noundef nonnull %i.lw, ptr noundef %i.ly, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cv)
          to label %bb.cu unwind label %bb.ct, !noalias !17493

bb.ct:                                            ; preds = %bb.cs
  %i.lz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtBJ_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1m_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.cu) #44
          to label %bb.cx unwind label %bb.cw, !noalias !17494

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtBJ_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1m_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.cu)
          to label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBc_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3M_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1C_12replay_files0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB64_8for_each4callB3H_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7l_7HashMapB3I_B4k_EINtNtB68_7collect12FromIteratorB3H_E9from_iterBR_E0E0EB1K_.exit.i.i.i.i unwind label %bb.cv, !noalias !17494

bb.cv:                                            ; preds = %bb.cu
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtBJ_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1m_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.mb) #44
          to label %.body.i.i.i unwind label %bb.cw, !noalias !17494

bb.cw:                                            ; preds = %bb.cx, %bb.cv, %bb.ct
  %i.mc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17494
  unreachable

bb.cx:                                            ; preds = %bb.ct
  %i.md = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtBJ_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1m_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.md) #44
          to label %.body.i.i.i unwind label %bb.cw, !noalias !17494

_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBc_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3M_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1C_12replay_files0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB64_8for_each4callB3H_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7l_7HashMapB3I_B4k_EINtNtB68_7collect12FromIteratorB3H_E9from_iterBR_E0E0EB1K_.exit.i.i.i.i: ; preds = %bb.cu
  %i.me = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtBJ_8IntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1m_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %i.me)
          to label %bb.db unwind label %bb.cy, !noalias !17477

bb.cy:                                            ; preds = %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBc_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3M_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1C_12replay_files0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB64_8for_each4callB3H_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7l_7HashMapB3I_B4k_EINtNtB68_7collect12FromIteratorB3H_E9from_iterBR_E0E0EB1K_.exit.i.i.i.i
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cy, %bb.cx, %bb.cv
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.mf, %bb.cy ], [ %i.ma, %bb.cv ], [ %i.lz, %bb.cx ]
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lu, i64 noundef 32, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cz, !noalias !17477

bb.cz:                                            ; preds = %bb.da, %.body.i.i.i
  %i.mg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !17477
  unreachable

bb.da:                                            ; preds = %bb.cq, %bb.co
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.lm, %bb.co ], [ %i.lt, %bb.cq ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtB4_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB43_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1T_12replay_files0s1_0EEB21_(ptr noalias noundef align 8 dereferenceable(80) %i.cw) #44
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.cz, !noalias !17477

bb.db:                                            ; preds = %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter7IterMutNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextEINtNtBc_6option6OptionTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB3M_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEENCNCNvB1C_12replay_files0s1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB64_8for_each4callB3H_NCINvXs1k_NtCs2HSpDNxY7OE_9hashbrown3mapINtB7l_7HashMapB3I_B4k_EINtNtB68_7collect12FromIteratorB3H_E9from_iterBR_E0E0EB1K_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !noalias !17481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.id, ptr noundef nonnull align 8 dereferenceable(40) %i.cv, i64 40, i1 false), !noalias !17495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !17465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !noalias !17465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !17385
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 817
  store i8 0, ptr %i.mh, align 1, !noalias !17385
  %i.mi = getelementptr inbounds nuw i8, ptr %1, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull align 8 dereferenceable(32) %i.mi, i64 32, i1 false), !noalias !17385
  %i.mj = invoke { ptr, ptr } @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot6streamINtB2_21ReceiverStreamBuilderTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1S_yEEE5buildB8_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.dl)
          to label %bb.de unwind label %bb.dc, !noalias !17389 ; 2 uses

bb.dc:                                            ; preds = %bb.db
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !17385
  br label %bb.dh

bb.dd:                                            ; preds = %bb.de
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !17385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !17385
  br label %bb.dg

bb.de:                                            ; preds = %bb.db
  %i.mm = extractvalue { ptr, ptr } %i.mj, 0
  %i.mn = extractvalue { ptr, ptr } %i.mj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !17385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !17385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !17385
  %i.mo = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  store ptr %i.mm, ptr %i.mo, align 16, !alias.scope !17496, !noalias !17499
  %i.mp = getelementptr inbounds nuw i8, ptr %i.di, i64 104
  store ptr %i.mn, ptr %i.mp, align 8, !alias.scope !17496, !noalias !17499
  store i64 -9223372036854775709, ptr %i.di, align 16, !alias.scope !17496, !noalias !17499
  invoke void @_RINvYINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream14try_filter_map12TryFilterMapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB1w_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB1w_6option6OptionINtNtB22_3vec3VecbEEIB4a_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB1w_6marker4SendEL_EEINtNtNtBc_6future5ready5ReadyIB3o_IB4a_TNtNtB22_6string6StringB4w_EEB4Y_EENCNCNvNtNtNtNtB52_16delta_datafusion14table_provider4next4scan12replay_files0s2_0ENtB8_12TryStreamExt11try_collectINtCs3JXekYNd0JR_7dashmap7DashMapB6Y_B4w_EEB52_(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.dj, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.di)
          to label %bb.df unwind label %bb.dd, !noalias !17389

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !17385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.dk, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.dj, i64 160, i1 false), !alias.scope !17501, !noalias !17385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !17385
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.mq, ptr noundef nonnull align 16 dereferenceable(160) %i.dk, i64 160, i1 false), !noalias !17385
  br label %bb.dk

bb.dg:                                            ; preds = %bb.do, %bb.dj, %bb.dd
  %i.mr = phi ptr [ %i.my, %bb.do ], [ %i.my, %bb.dj ], [ %i.ib, %bb.dd ]
  %i.ms = phi ptr [ %i.mz, %bb.do ], [ %i.mz, %bb.dj ], [ %i.ic, %bb.dd ]
  %.sroa.0124.0692 = phi ptr [ %.sroa.0124.0671, %bb.do ], [ %.sroa.0124.0671, %bb.dj ], [ %.sroa.0124.0673, %bb.dd ]
  %.sroa.11.0665 = phi ptr [ %.sroa.11.0644, %bb.do ], [ %.sroa.11.0644, %bb.dj ], [ %.sroa.11.0646, %bb.dd ]
  %.sroa.11.7.i = phi ptr [ %.sroa.11.6.i, %bb.do ], [ %.sroa.11.6.i, %bb.dj ], [ %.sroa.11.3.i, %bb.dd ]
  %.sroa.0.7.i = phi ptr [ %.sroa.0.6.i, %bb.do ], [ %.sroa.0.6.i, %bb.dj ], [ %.sroa.0.3.i, %bb.dd ]
  %.pn70.i = phi { ptr, i32 } [ %i.nd, %bb.do ], [ %i.mx, %bb.dj ], [ %i.ml, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.dg, %bb.dc
  %i.mt = phi ptr [ %i.ib, %bb.dc ], [ %i.my, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.mr, %bb.dg ]
  %i.mu = phi ptr [ %i.ic, %bb.dc ], [ %i.mz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.ms, %bb.dg ]
  %.sroa.0124.0691 = phi ptr [ %.sroa.0124.0673, %bb.dc ], [ %.sroa.0124.0671, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0124.0692, %bb.dg ]
  %.sroa.11.0664 = phi ptr [ %.sroa.11.0646, %bb.dc ], [ %.sroa.11.0644, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.11.0665, %bb.dg ]
  %.sroa.11.8.i = phi ptr [ %.sroa.11.3.i, %bb.dc ], [ %.sroa.11.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.11.7.i, %bb.dg ]
  %.sroa.0.8.i = phi ptr [ %.sroa.0.3.i, %bb.dc ], [ %.sroa.0.6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0.7.i, %bb.dg ]
  %.pn70.pn.pn.i = phi { ptr, i32 } [ %i.mk, %bb.dc ], [ %.pn61.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics23ExecutionPlanMetricsSetECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pn70.i, %bb.dg ]
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 824
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 856
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1h_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEENtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.mv, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mw, i64 noundef 32, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.t, !noalias !17389

bb.di:                                            ; preds = %bb.ac
  store i64 -9223372036854775808, ptr %i.dd, align 8, !alias.scope !17401, !noalias !17505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !17385
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtB1p_4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions10ExpressionEEECs14kWLkQVSKO_14deltalake_core.exit211.i

bb.dj:                                            ; preds = %bb.dk
  %i.mx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !17385
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collect10TryCollectINtNtBL_14try_filter_map12TryFilterMapINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB4_6option6OptionINtNtB2W_3vec3VecbEEIB53_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEINtNtNtBP_6future5ready5ReadyIB4i_IB53_TNtNtB2W_6string6StringB5o_EEB5Q_EENCNCNvNtNtNtNtB5U_16delta_datafusion14table_provider4next4scan12replay_files0s2_0EINtCs3JXekYNd0JR_7dashmap7DashMapB7P_B5o_EEEB5U_(ptr noalias noundef align 16 dereferenceable(160) %i.na) #44
          to label %bb.dg unwind label %bb.t, !noalias !17389

bb.dk:                                            ; preds = %bb.df, %bb.o
  %i.my = phi ptr [ %i.ib, %bb.df ], [ %i.go, %bb.o ] ; 10 uses
  %i.mz = phi ptr [ %i.ic, %bb.df ], [ %i.gn, %bb.o ] ; 9 uses
  %.sroa.0124.0671 = phi ptr [ %.sroa.0124.0673, %bb.df ], [ undef, %bb.o ] ; 9 uses
  %.sroa.11.0644 = phi ptr [ %.sroa.11.0646, %bb.df ], [ undef, %bb.o ] ; 9 uses
  %.sroa.11.6.i = phi ptr [ %.sroa.11.3.i, %bb.df ], [ undef, %bb.o ] ; 8 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.3.i, %bb.df ], [ undef, %bb.o ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !17385
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 864 ; 3 uses
  invoke void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream10try_stream11try_collectINtB5_10TryCollectINtNtB7_14try_filter_map12TryFilterMapINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs7cL0Iqqqcdm_12futures_core6stream6Streamp4ItemINtNtB28_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB28_6option6OptionINtNtB2E_3vec3VecbEEIB4M_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB28_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadyIB40_IB4M_TNtNtB2E_6string6StringB58_EEB5A_EENCNCNvNtNtNtNtB5E_16delta_datafusion14table_provider4next4scan12replay_files0s2_0EINtCs3JXekYNd0JR_7dashmap7DashMapB7A_B58_EENtNtNtB28_6future6future6Future4pollB5E_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.dh, ptr noalias noundef nonnull align 16 dereferenceable(160) %i.na, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dl unwind label %bb.dj, !noalias !17389

bb.dl:                                            ; preds = %bb.dk
  %i.nb = load i64, ptr %i.dh, align 16, !range !16850, !noalias !17385, !noundef !10 ; 3 uses
  %i.nc = icmp eq i64 %i.nb, -9223372036854775710
  br i1 %i.nc, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !17385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread

bb.dn:                                            ; preds = %bb.dl
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.3.sroa.0300.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !17385 ; 5 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.3.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 16, !noalias !17385 ; 4 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan14execution_plan0Bb_:bb.a
  store i8 0, ptr %i.vf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg)
  store i8 0, ptr %i.sc, align 2
  %i.vg = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.sroa.9169.496..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9169, i64 288
  %i.vh = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.8179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 528
  %.sroa.9180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.vi = load <2 x ptr>, ptr %i.ve, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 16 dereferenceable(24) %i.rw, i64 24, i1 false)
  store <4 x i8> zeroinitializer, ptr %i.so, align 2
  %i.vj = load ptr, ptr %i.sg, align 16, !nonnull !10, !align !304, !noundef !10
  %.val54 = load i64, ptr %i.vj, align 8, !range !59, !noundef !10
  %i.vk = icmp ne i64 %.val54, -9223372036854775808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.9169.496..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !alias.scope !17648, !noalias !17652
  %i.vl = zext i1 %i.vk to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(312) %.sroa.11182, ptr noundef nonnull align 16 dereferenceable(312) %.sroa.9169, i64 312, i1 false), !alias.scope !17657
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9169)
  %i.vm = load <2 x i64>, ptr %i.vg, align 16
  store <2 x i64> %i.vm, ptr %i.vh, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.8179.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(176) %i.sp, i64 176, i1 false)
  store <2 x ptr> %i.vi, ptr %.sroa.9180.0..sroa_idx, align 16
  %.sroa.11182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(312) %.sroa.11182.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(312) %.sroa.11182, i64 312, i1 false)
  %.sroa.12183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12183.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.er, i64 40, i1 false)
  %.sroa.13184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1072
  store ptr %.sroa.9157.sroa.0.sroa.6.0.copyload, ptr %.sroa.13184.0..sroa_idx, align 16
  %.sroa.13184.sroa.7.0..sroa.13184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1080
  store i64 %.sroa.9157.sroa.0.sroa.7.0.copyload, ptr %.sroa.13184.sroa.7.0..sroa.13184.0..sroa_idx.sroa_idx, align 8
  %.sroa.13184.sroa.8.0..sroa.13184.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1088
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.13184.sroa.8.0..sroa.13184.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.sroa.7, i64 24, i1 false)
  %.sroa.14185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1112
  store ptr %i.rx, ptr %.sroa.14185.0..sroa_idx, align 8
  %.sroa.15186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1120
  store ptr %i.si, ptr %.sroa.15186.0..sroa_idx, align 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1288
  store i8 %i.vl, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1289
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.vo = getelementptr inbounds nuw i8, ptr %1, i64 1289
  br label %bb.if

bb.hu:                                            ; preds = %bb.tx, %.body116
  %.sroa.0124.4758 = phi ptr [ %.sroa.0124.4768, %bb.tx ], [ %.sroa.0124.4759, %.body116 ]
  %.sroa.11.4739 = phi ptr [ %.sroa.11.4749, %bb.tx ], [ %.sroa.11.4740, %.body116 ]
  %.sroa.0125.1720 = phi ptr [ %.sroa.0125.1730, %bb.tx ], [ %.sroa.0125.1721, %.body116 ]
  %.sroa.10.1701 = phi i64 [ %.sroa.10.1711, %bb.tx ], [ %.sroa.10.1702, %.body116 ]
  %.pn28 = phi { ptr, i32 } [ %i.aqu, %bb.tx ], [ %eh.lpad-body117, %.body116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11182)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.gc, %.body76, %bb.hu
  %.sroa.10.2 = phi i64 [ %.sroa.9157.sroa.0.sroa.7.0.copyload, %.body76 ], [ %.sroa.10.1701, %bb.hu ], [ %.sroa.9157.sroa.0.sroa.7.0.copyload, %bb.gc ] ; 3 uses
  %.sroa.0125.2 = phi ptr [ %.sroa.9157.sroa.0.sroa.6.0.copyload, %.body76 ], [ %.sroa.0125.1720, %bb.hu ], [ %.sroa.9157.sroa.0.sroa.6.0.copyload, %bb.gc ] ; 3 uses
  %.sroa.11.5 = phi ptr [ %.sroa.11.0642, %.body76 ], [ %.sroa.11.4739, %bb.hu ], [ %.sroa.11.0642, %bb.gc ] ; 3 uses
  %.sroa.0124.5 = phi ptr [ %.sroa.0124.0669, %.body76 ], [ %.sroa.0124.4758, %bb.hu ], [ %.sroa.0124.0669, %bb.gc ] ; 3 uses
  %.pn28.pn = phi { ptr, i32 } [ %.pn24, %.body76 ], [ %.pn28, %bb.hu ], [ %i.sr, %bb.gc ] ; 3 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %1, i64 474
  %i.vq = load i8, ptr %i.vp, align 2, !range !349, !noundef !10
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.tz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit119

bb.hw:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0142.sroa.8)
  br label %bb.hm

bb.hx:                                            ; preds = %bb.hy, %bb.hm
  store i8 0, ptr %i.ut, align 1
  br label %bb.ib

bb.hy:                                            ; preds = %bb.hm
  %i.vs = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan14KernelScanPlanEBS_(ptr noalias noundef align 16 dereferenceable(176) %i.vs)
          to label %bb.hx unwind label %bb.ia

bb.hz:                                            ; preds = %bb.uj, %bb.uh, %bb.ia
  %.pn36 = phi { ptr, i32 } [ %i.vu, %bb.ia ], [ %.pn33.pn, %bb.uj ], [ %.pn33.pn, %bb.uh ]
  %i.vt = getelementptr inbounds nuw i8, ptr %1, i64 473
  store i8 0, ptr %i.vt, align 1
  store i8 2, ptr %i.es, align 8
  resume { ptr, i32 } %.pn36

bb.ia:                                            ; preds = %bb.hy
  %i.vu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hz

bb.ib:                                            ; preds = %bb.ty, %bb.hx
  %.sroa.0196.1 = phi i64 [ %.sroa.0196.0, %bb.hx ], [ %.sroa.0191.0340, %bb.ty ]
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.hx ], [ %.sroa.8192.0341, %bb.ty ]
  %.sroa.6200.1 = phi ptr [ %.sroa.6200.0, %bb.hx ], [ %.sroa.9193.0342, %bb.ty ]
  %.sroa.8203.1 = phi i64 [ %.sroa.8203.0, %bb.hx ], [ %.sroa.10194.0343, %bb.ty ]
  %.sroa.9206.1 = phi i64 [ %.sroa.9206.0, %bb.hx ], [ %.sroa.11195.0344, %bb.ty ]
  store i64 %.sroa.0196.1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6200.1, ptr %.sroa.6200.0..sroa_idx, align 8
  %.sroa.8203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8203.1, ptr %.sroa.8203.0..sroa_idx, align 8
  %.sroa.9206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9206.1, ptr %.sroa.9206.0..sroa_idx, align 8
  br label %common.ret

bb.ic:                                            ; preds = %.body81, %bb.j
  %.sroa.11.6 = phi ptr [ %.sroa.11.3, %.body81 ], [ %.sroa.11.1, %bb.j ] ; 2 uses
  %.sroa.0124.6 = phi ptr [ %.sroa.0124.3, %.body81 ], [ %.sroa.0124.1, %bb.j ]
  %.pn33.pn = phi { ptr, i32 } [ %.pn28.pn.pn.pn, %.body81 ], [ %.pn33, %bb.j ] ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %1, i64 479 ; 2 uses
  %i.vw = load i8, ptr %i.vv, align 1, !range !349, !noundef !10
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %bb.ui, label %bb.uh

bb.id:                                            ; preds = %bb.iy, %bb.ix
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %.body116

.body116:                                         ; preds = %bb.ti, %bb.id
  %i.vz = phi ptr [ %i.wa, %bb.id ], [ %i.apz, %bb.ti ]
  %.sroa.0124.4759 = phi ptr [ undef, %bb.id ], [ %.sroa.0124.4760, %bb.ti ]
  %.sroa.11.4740 = phi ptr [ undef, %bb.id ], [ %.sroa.11.4741, %bb.ti ]
  %.sroa.0125.1721 = phi ptr [ undef, %bb.id ], [ %.sroa.0125.1722, %bb.ti ]
  %.sroa.10.1702 = phi i64 [ undef, %bb.id ], [ %.sroa.10.1703, %bb.ti ]
  %eh.lpad-body117 = phi { ptr, i32 } [ %i.vy, %bb.id ], [ %.pn39.i98, %bb.ti ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan18get_data_scan_plan0EBS_(ptr noundef nonnull align 16 %i.vz) #44
          to label %bb.hu unwind label %bb.i

bb.ie:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11182)
  %.phi.trans.insert586 = getelementptr inbounds nuw i8, ptr %1, i64 1289
  %.pre587 = load i8, ptr %.phi.trans.insert586, align 1, !range !294, !noalias !17661
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 1289 ; 4 uses
  switch i8 %.pre587, label %default.unreachable638 [
    i8 0, label %bb.if
    i8 1, label %bb.ix
    i8 2, label %bb.iy
    i8 3, label %bb.ja
  ]

bb.if:                                            ; preds = %.thread696, %bb.ie
  %i.wc = phi ptr [ %i.vo, %.thread696 ], [ %i.wb, %bb.ie ] ; 7 uses
  %i.wd = phi ptr [ %i.vn, %.thread696 ], [ %i.wa, %bb.ie ] ; 8 uses
  %.sroa.0124.4776 = phi ptr [ %.sroa.0124.0669, %.thread696 ], [ undef, %bb.ie ] ; 7 uses
  %.sroa.11.4757 = phi ptr [ %.sroa.11.0642, %.thread696 ], [ undef, %bb.ie ] ; 7 uses
  %.sroa.0125.1738 = phi ptr [ %.sroa.9157.sroa.0.sroa.6.0.copyload, %.thread696 ], [ undef, %bb.ie ] ; 7 uses
  %.sroa.10.1719 = phi i64 [ %.sroa.9157.sroa.0.sroa.7.0.copyload, %.thread696 ], [ undef, %bb.ie ] ; 7 uses
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 1298
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 1297
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 1294
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 1293
  %i.wi = getelementptr inbounds nuw i8, ptr %1, i64 1292 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 1291 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 704
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wj, i8 0, i64 3, i1 false), !noalias !17661
  %i.wl = load ptr, ptr %i.wk, align 16, !noalias !17661, !nonnull !10, !noundef !10 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.wn = load ptr, ptr %i.wm, align 8, !noalias !17661, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  store i8 1, ptr %i.we, align 2, !noalias !17661
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 720 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.wo, ptr noundef nonnull align 16 dereferenceable(176) %i.wp, i64 176, i1 false), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !17661
  %i.wq = getelementptr inbounds nuw i8, ptr %1, i64 1008
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 16 dereferenceable(24) %i.wq, i64 24, i1 false), !noalias !17661
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.wr, ptr noundef nonnull align 8 dereferenceable(40) %i.ws, i64 40, i1 false), !noalias !17661
  %i.wt = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 1072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.wt, ptr noundef nonnull align 16 dereferenceable(40) %i.wu, i64 40, i1 false), !noalias !17661
  store <4 x i8> splat (i8 1), ptr %i.wg, align 2, !noalias !17661
  %i.wv = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.wx = load i64, ptr %i.wd, align 16, !range !343, !noalias !17661, !noundef !10 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.wz = load i64, ptr %i.wy, align 8, !noalias !17661 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 3 uses
  %i.xb = load <2 x ptr>, ptr %i.ww, align 8, !noalias !17661
  store <2 x ptr> %i.xb, ptr %i.wv, align 8, !noalias !17661
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 1290
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.xe = load i8, ptr %i.xd, align 8, !range !349, !noalias !17661, !noundef !10
  store i8 %i.xe, ptr %i.xc, align 2, !noalias !17661
  %i.xf = getelementptr inbounds nuw i8, ptr %1, i64 1224 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17664)
  call void @llvm.experimental.noalias.scope.decl(metadata !17667)
  %i.xg = invoke noundef i64 @_RNvNtCsjTPIcpFZL1T_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc.i108 unwind label %bb.ii, !noalias !17661

.noexc.i108:                                      ; preds = %bb.if
  %i.xh = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsjTPIcpFZL1T_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !noalias !17670
  %i.xi = icmp eq i8 %i.xh, 2
  br i1 %i.xi, label %bb.ij, label %bb.ig, !prof !984

bb.ig:                                            ; preds = %.noexc.i108
  invoke void @_RNvMs_NtNtCsjTPIcpFZL1T_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #48
          to label %bb.ij unwind label %bb.ii, !noalias !17661

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit98.i: ; preds = %bb.tm, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.ii
  %i.xj = phi ptr [ %i.xq, %bb.ii ], [ %i.zj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.zj, %bb.tm ] ; 2 uses
  %i.xk = phi ptr [ %i.xr, %bb.ii ], [ %i.zk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %i.zk, %bb.tm ] ; 2 uses
  %.sroa.0124.4765 = phi ptr [ %.sroa.0124.4766, %bb.ii ], [ %.sroa.0124.4767, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0124.4767, %bb.tm ] ; 2 uses
  %.sroa.11.4746 = phi ptr [ %.sroa.11.4747, %bb.ii ], [ %.sroa.11.4748, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.11.4748, %bb.tm ] ; 2 uses
  %.sroa.0125.1727 = phi ptr [ %.sroa.0125.1728, %bb.ii ], [ %.sroa.0125.1729, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.0125.1729, %bb.tm ] ; 2 uses
  %.sroa.10.1708 = phi i64 [ %.sroa.10.1709, %bb.ii ], [ %.sroa.10.1710, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.sroa.10.1710, %bb.tm ] ; 2 uses
  %.pn29.i = phi { ptr, i32 } [ %i.xs, %bb.ii ], [ %.pn26.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.i ], [ %.pn26.pn.i, %bb.tm ] ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 1293
  store i8 0, ptr %i.xl, align 1, !noalias !17661
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1216 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17671)
  call void @llvm.experimental.noalias.scope.decl(metadata !17674)
  %i.xn = load ptr, ptr %i.xm, align 16, !alias.scope !17677, !noalias !17661, !nonnull !10, !noundef !10
  %i.xo = atomicrmw sub ptr %i.xn, i64 1 release, align 8, !noalias !17678
  %i.xp = icmp eq i64 %i.xo, 1
  br i1 %i.xp, label %bb.ih, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.ih:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit98.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xm) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ss, !noalias !17661

bb.ii:                                            ; preds = %bb.iw, %bb.ig, %bb.if
  %i.xq = phi ptr [ %i.ze, %bb.iw ], [ %i.wc, %bb.ig ], [ %i.wc, %bb.if ]
  %i.xr = phi ptr [ %i.zf, %bb.iw ], [ %i.wd, %bb.ig ], [ %i.wd, %bb.if ]
  %.sroa.0124.4766 = phi ptr [ %.sroa.0124.4770, %bb.iw ], [ %.sroa.0124.4776, %bb.ig ], [ %.sroa.0124.4776, %bb.if ]
  %.sroa.11.4747 = phi ptr [ %.sroa.11.4751, %bb.iw ], [ %.sroa.11.4757, %bb.ig ], [ %.sroa.11.4757, %bb.if ]
  %.sroa.0125.1728 = phi ptr [ %.sroa.0125.1732, %bb.iw ], [ %.sroa.0125.1738, %bb.ig ], [ %.sroa.0125.1738, %bb.if ]
  %.sroa.10.1709 = phi i64 [ %.sroa.10.1713, %bb.iw ], [ %.sroa.10.1719, %bb.ig ], [ %.sroa.10.1719, %bb.if ]
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsjhHCjzi9uUI_17datafusion_common5stats16ColumnStatisticsEECs14kWLkQVSKO_14deltalake_core.exit98.i

bb.ij:                                            ; preds = %bb.ig, %.noexc.i108
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 1256
  store i64 %i.xg, ptr %i.xt, align 8, !alias.scope !17679, !noalias !17661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.xf, ptr noundef nonnull align 8 dereferenceable(32) @56, i64 32, i1 false), !noalias !17661
  store i8 1, ptr %i.wh, align 1, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !17661
  store i8 0, ptr %i.wf, align 1, !noalias !17661
  %.sroa.06.0.copyload.i = load i64, ptr %i.co, align 8, !noalias !17661
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !17661, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %.sroa.68.0.copyload.i = load i64, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !17661 ; 2 uses
  %i.xu = icmp ult i64 %.sroa.68.0.copyload.i, 44343134792571038
  call void @llvm.assume(i1 %i.xu)
  %i.xv = getelementptr inbounds nuw [208 x i8], ptr %.sroa.57.0.copyload.i, i64 %.sroa.68.0.copyload.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17680)
  store ptr %.sroa.57.0.copyload.i, ptr %i.ck, align 8, !alias.scope !17683, !noalias !17685
  %.sroa.5.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %.sroa.57.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i109, align 8, !alias.scope !17683, !noalias !17685
  %.sroa.6.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i64 %.sroa.06.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i110, align 8, !alias.scope !17683, !noalias !17685
  %.sroa.7.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  store ptr %i.xv, ptr %.sroa.7.0..sroa_idx.i111, align 8, !alias.scope !17683, !noalias !17685
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.xf, ptr %i.xw, align 8, !alias.scope !17687, !noalias !17688
  invoke void @_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan6replay15ScanFileContextENCNCNvB1J_18get_data_scan_plan00ENtCscVxtfYSVfE7_9itertools9Itertools11try_collectTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtBc_6option6OptionINtBW_3VecbEEEEIB7d_B4M_ENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB1R_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.cl, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ck)
          to label %bb.il unwind label %bb.ik, !noalias !17661

bb.ik:                                            ; preds = %bb.ij
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !17661
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.il:                                            ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !17661
  call void @llvm.experimental.noalias.scope.decl(metadata !17689)
  %i.xy = load i64, ptr %i.cl, align 8, !range !1072, !alias.scope !17692, !noalias !17694, !noundef !10 ; 2 uses
  %.not.i.i112 = icmp eq i64 %i.xy, 20
  %i.xz = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.8.sroa.0.0.copyload13.i = load i64, ptr %i.xz, align 8, !alias.scope !17695, !noalias !17661 ; 2 uses
  %.sroa.8.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.sroa.8.sroa.8.0.copyload15.i = load ptr, ptr %.sroa.8.sroa.8.0..sroa_idx.i, align 8, !alias.scope !17695, !noalias !17661 ; 4 uses
  %.sroa.8.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %.sroa.8.sroa.9.0.copyload17.i = load i64, ptr %.sroa.8.sroa.9.0..sroa_idx.i, align 8, !alias.scope !17695, !noalias !17661 ; 3 uses
  br i1 %.not.i.i112, label %bb.in, label %bb.iv

bb.im:                                            ; preds = %bb.in
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtB4_6option6OptionIB2K_bEEEEEECs14kWLkQVSKO_14deltalake_core.exit.sink.split.i

bb.in:                                            ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !17661
  %i.yb = icmp ult i64 %.sroa.8.sroa.9.0.copyload17.i, 31160040665049919
  call void @llvm.assume(i1 %i.yb)
  %i.yc = getelementptr inbounds nuw [296 x i8], ptr %.sroa.8.sroa.8.0.copyload15.i, i64 %.sroa.8.sroa.9.0.copyload17.i
  store ptr %.sroa.8.sroa.8.0.copyload15.i, ptr %i.cm, align 8, !alias.scope !17696, !noalias !17699
  %i.yd = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %.sroa.8.sroa.0.0.copyload13.i, ptr %i.yd, align 8, !alias.scope !17696, !noalias !17699
  %i.ye = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %.sroa.8.sroa.8.0.copyload15.i, ptr %i.ye, align 8, !alias.scope !17696, !noalias !17699
  %i.yf = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  store ptr %i.yc, ptr %i.yf, align 8, !alias.scope !17696, !noalias !17699
  invoke void @_RINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionINtBX_3VecbEEEEEB1H_B2P_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cn, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.cm)
          to label %bb.io unwind label %bb.im, !noalias !17661

bb.io:                                            ; preds = %bb.in
  store i8 1, ptr %i.wi, align 4, !noalias !17661
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !17661
  %i.yg = getelementptr i8, ptr %1, i64 856
  %.val44.i = load ptr, ptr %i.yg, align 8, !noalias !17661, !nonnull !10, !noundef !10
  %i.yh = getelementptr inbounds nuw i8, ptr %.val44.i, i64 16
  %i.yi = load ptr, ptr %i.yh, align 8, !noalias !17661, !nonnull !10, !noundef !10
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8, !noalias !17661, !nonnull !10, !noundef !10
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 552
  %i.ym = invoke noundef zeroext i1 @_RNvMNtCs8ulvy0Wg6Ot_12delta_kernel19table_configurationNtB2_18TableConfiguration18is_feature_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %i.yl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207)
          to label %bb.iq unwind label %bb.ip, !noalias !17661

bb.ip:                                            ; preds = %bb.io
  %i.yn = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.iq:                                            ; preds = %bb.io
  br i1 %i.ym, label %bb.it, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.yo = load i64, ptr %i.wo, align 16, !range !4218, !alias.scope !17701, !noalias !17661, !noundef !10
  %.not.i54.i = icmp eq i64 %i.yo, 37
  %..i.i = select i1 %.not.i54.i, ptr null, ptr %i.wo
  br label %bb.it

.body86.i:                                        ; preds = %bb.tk, %bb.ta, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i, %bb.is
  %i.yp = phi ptr [ %i.zu, %bb.ta ], [ %i.ann, %bb.tk ], [ %i.ann, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %i.ys, %bb.is ]
  %i.yq = phi ptr [ %i.zv, %bb.ta ], [ %i.ano, %bb.tk ], [ %i.ano, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %i.yt, %bb.is ]
  %.sroa.0124.4772 = phi ptr [ %.sroa.0124.4775, %bb.ta ], [ %.sroa.0124.4774, %bb.tk ], [ %.sroa.0124.4774, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %.sroa.0124.4773, %bb.is ]
  %.sroa.11.4753 = phi ptr [ %.sroa.11.4756, %bb.ta ], [ %.sroa.11.4755, %bb.tk ], [ %.sroa.11.4755, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %.sroa.11.4754, %bb.is ]
  %.sroa.0125.1734 = phi ptr [ %.sroa.0125.1737, %bb.ta ], [ %.sroa.0125.1736, %bb.tk ], [ %.sroa.0125.1736, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %.sroa.0125.1735, %bb.is ]
  %.sroa.10.1715 = phi i64 [ %.sroa.10.1718, %bb.ta ], [ %.sroa.10.1717, %bb.tk ], [ %.sroa.10.1717, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %.sroa.10.1716, %bb.is ]
  %.pn23.i = phi { ptr, i32 } [ %i.anw, %bb.ta ], [ %.pn20.pn.i, %bb.tk ], [ %.pn20.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlanEL_EECs14kWLkQVSKO_14deltalake_core.exit85.i ], [ %i.yu, %bb.is ]
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 1291
  store i8 0, ptr %i.yr, align 1, !noalias !17661
  br label %bb.iu

bb.is:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101, %bb.it
  %i.ys = phi ptr [ %i.zu, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %i.wc, %bb.it ]
  %i.yt = phi ptr [ %i.zv, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %i.wd, %bb.it ]
  %.sroa.0124.4773 = phi ptr [ %.sroa.0124.4775, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %.sroa.0124.4776, %bb.it ]
  %.sroa.11.4754 = phi ptr [ %.sroa.11.4756, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %.sroa.11.4757, %bb.it ]
  %.sroa.0125.1735 = phi ptr [ %.sroa.0125.1737, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %.sroa.0125.1738, %bb.it ]
  %.sroa.10.1716 = phi i64 [ %.sroa.10.1718, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i101 ], [ %.sroa.10.1719, %bb.it ]
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %.body86.i

bb.it:                                            ; preds = %bb.ir, %bb.iq
  %.sroa.0.0.i113 = phi ptr [ null, %bb.iq ], [ %..i.i, %bb.ir ] ; 2 uses
  %.val45.i = load ptr, ptr %i.xa, align 16, !noalias !17661, !nonnull !10, !noundef !10
  %i.yv = getelementptr inbounds nuw i8, ptr %.val45.i, i64 16
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 1264
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.yw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yv)
          to label %.thread.i unwind label %bb.is, !noalias !17661

.thread.i:                                        ; preds = %bb.it
  store i8 1, ptr %i.wj, align 1, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !17661
  store i8 0, ptr %i.wi, align 4, !noalias !17661
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 880 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 896
  store i64 %i.wx, ptr %i.yy, align 16, !noalias !17661
  %.sroa.834.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 904
  store i64 %i.wz, ptr %.sroa.834.0..sroa_idx.i, align 8, !noalias !17661
  %.sroa.935.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 912
  store ptr %i.wl, ptr %.sroa.935.0..sroa_idx.i, align 16, !noalias !17661
  %.sroa.1036.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 920
  store ptr %i.wn, ptr %.sroa.1036.0..sroa_idx.i, align 8, !noalias !17661
  %.sroa.1137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.1137.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.cn, i64 48, i1 false), !noalias !17661
  %.sroa.1238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 976
  store ptr %i.yx, ptr %.sroa.1238.0..sroa_idx.i, align 16, !noalias !17661
  %.sroa.1339.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 984
  store ptr %i.xa, ptr %.sroa.1339.0..sroa_idx.i, align 8, !noalias !17661
  %.sroa.1440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 992
  store ptr %.sroa.0.0.i113, ptr %.sroa.1440.0..sroa_idx.i, align 16, !noalias !17661
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1000 ; 2 uses
  store i8 0, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !17661
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !17661
  br label %bb.jc

bb.iu:                                            ; preds = %.body86.i, %bb.ip
  %i.yz = phi ptr [ %i.yp, %.body86.i ], [ %i.wc, %bb.ip ] ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast17cast_record_batch:bb.a
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ds = trunc nuw i8 %.sroa.013.2 to i1
  br i1 %i.ds, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit75

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit75: ; preds = %bb.ay, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.dt = trunc nuw i8 %.sroa.016.6 to i1
  br i1 %i.dt, label %bb.ba, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit76

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body66 unwind label %bb.az

bb.ay:                                            ; preds = %bb.aw
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit75 unwind label %bb.f

bb.az:                                            ; preds = %bb.ax
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core.exit75
  call void @llvm.experimental.noalias.scope.decl(metadata !19347)
  call void @llvm.experimental.noalias.scope.decl(metadata !19350)
  %i.dw = load ptr, ptr %i.s, align 8, !alias.scope !19353, !nonnull !10, !noundef !10
  %i.dx = atomicrmw sub ptr %i.dw, i64 1 release, align 8, !noalias !19353
  %i.dy = icmp eq i64 %i.dx, 1
  br i1 %i.dy, label %bb.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit76

bb.bb:                                            ; preds = %bb.ba
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #48
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit76

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcDNtNtCs1N9T06jgEdt_11arrow_array5array5ArrayEL_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.q) #44
          to label %.body66 unwind label %bb.au

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit78: ; preds = %bb.ao, %bb.bd, %bb.be, %.body66
  %.pn4590 = phi { ptr, i32 } [ %.pn45, %.body66 ], [ %.pn45, %bb.bd ], [ %.pn45, %bb.be ], [ %i.dn, %bb.ao ]
  resume { ptr, i32 } %.pn4590

bb.bd:                                            ; preds = %.body66
  call void @llvm.experimental.noalias.scope.decl(metadata !19354)
  call void @llvm.experimental.noalias.scope.decl(metadata !19357)
  %i.dz = load ptr, ptr %i.s, align 8, !alias.scope !19360, !nonnull !10, !noundef !10
  %i.ea = atomicrmw sub ptr %i.dz, i64 1 release, align 8, !noalias !19360
  %i.eb = icmp eq i64 %i.ea, 1
  br i1 %i.eb, label %bb.be, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit78

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s) #48
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core.exit78 unwind label %bb.au
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  store ptr %i.x, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.r, ptr %i.aa, align 8
  call void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB2H_5slice4iter4IterB13_ENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta0EE9from_iterB42_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p)
  %i.ab = load i8, ptr %i.r, align 1, !range !349, !noundef !10
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.af = load ptr, ptr %i.t, align 8, !nonnull !10, !noundef !10
  %i.ag = load i64, ptr %i.v, align 8, !noundef !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1D_6filter6FilterINtNtNtB1H_5slice4iter4IterINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_deltas_0ENCB4d_s0_0EE9from_iterB4l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai)
          to label %bb.j unwind label %.body35.thread42

.body35.thread42:                                 ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.aq, %bb.am, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.e ], [ %i.dd, %bb.am ], [ %.pn2639, %bb.aq ], [ %.pn, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi ptr [ %i.cz, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtBL_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs14kWLkQVSKO_14deltalake_core.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %.body
  br i1 %.sroa.010.2, label %bb.aq, label %common.resume

bb.j:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !10 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 576460752303423488
  call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp eq i64 %i.an, 0
  br i1 %i.ap, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.ab, %bb.ad, %bb.y, %bb.x, %bb.w, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aq)
          to label %bb.ae unwind label %bb.ao

.body:                                            ; preds = %bb.aj, %bb.af, %bb.l, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.af ], [ %i.df, %bb.ao ], [ %i.ar, %bb.l ], [ %i.db, %bb.aj ] ; 2 uses
  %.sroa.010.2 = phi i1 [ false, %bb.af ], [ false, %bb.ao ], [ true, %bb.l ], [ false, %bb.aj ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.o) #44
          to label %bb.i unwind label %bb.ap

bb.l:                                             ; preds = %bb.v, %.noexc28, %bb.u, %bb.s, %bb.ac, %bb.aa, %bb.z, %bb.p, %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.j
  %i.as = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.at = icmp ult i64 %i.as, 4
  br i1 %i.at, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.au = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.au, label %bb.o [
    i8 0, label %bb.x
    i8 1, label %bb.p
    i8 2, label %bb.p
  ], !prof !19361

bb.o:                                             ; preds = %bb.n
  %i.av = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE)
          to label %bb.q unwind label %bb.l       ; 2 uses

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.q
  %.sroa.07.0 = phi i8 [ %i.av, %bb.q ], [ %i.au, %bb.n ], [ %i.au, %bb.n ]
  %i.aw = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10
  %i.ax = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aw, i8 noundef %.sroa.07.0)
          to label %bb.r unwind label %bb.l

bb.q:                                             ; preds = %bb.o
  %i.ay = icmp eq i8 %i.av, 0
  br i1 %i.ay, label %bb.x, label %bb.p

bb.r:                                             ; preds = %bb.p
  br i1 %i.ax, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.az = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @286, ptr %i.l, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 281 to ptr), ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  store ptr %i.l, ptr %i.m, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @185, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.k, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @287, ptr %i.be, align 8
  store i64 1, ptr %i.n, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 2, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.s
  %i.bf = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !19362
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.noexc
  %i.bh = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !19362 ; 2 uses
  %i.bi = icmp ult i64 %i.bh, 6
  call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i64 %i.bh, 1
  br i1 %i.bj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bk = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, align 8, !noalias !19362, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !10, !noundef !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !10
  store i64 2, ptr %i.a, align 8, !noalias !19362
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bm, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !19362
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bo, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !19362
  %i.bp = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc28 unwind label %bb.l   ; 2 uses

.noexc28:                                         ; preds = %bb.u
  %i.bq = extractvalue { ptr, ptr } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { ptr, ptr } %i.bp, 1      ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !10, !nonnull !10
  %i.bu = invoke noundef zeroext i1 %i.bt(ptr noundef %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #47
          to label %.noexc29 unwind label %bb.l, !inline_history !19365

.noexc29:                                         ; preds = %.noexc28
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc29
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bk, ptr noundef nonnull %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.w unwind label %bb.l

bb.w:                                             ; preds = %.noexc29, %bb.t, %.noexc, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.k

bb.x:                                             ; preds = %bb.q, %bb.n, %bb.m, %bb.r
  %i.bv = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %bb.k

bb.y:                                             ; preds = %bb.x
  %i.bx = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 6
  call void @llvm.assume(i1 %i.by)
  %i.bz = icmp samesign ugt i64 %i.bx, 1
  br i1 %i.bz, label %bb.z, label %bb.k

bb.z:                                             ; preds = %bb.y
  %i.ca = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !10, !noundef !10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !10
  store i64 2, ptr %i.j, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.cc, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ce, ptr %.sroa.516.0..sroa_idx, align 8
  %i.cf = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.aa unwind label %bb.l      ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %i.cg = extractvalue { ptr, ptr } %i.cf, 0      ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %i.cf, 1      ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !invariant.load !10, !nonnull !10
  %i.ck = invoke noundef zeroext i1 %i.cj(ptr noundef %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.ab unwind label %bb.l

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ck, label %bb.ac, label %bb.k

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cl = load ptr, ptr @_RNvNvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema4cast19normalize_for_delta10___CALLSITE, align 8, !nonnull !10, !align !304, !noundef !10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @286, ptr %i.g, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 281 to ptr), ptr %i.cn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.o, ptr %i.f, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @185, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.f, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr @287, ptr %i.cq, align 8
  store i64 1, ptr %i.i, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.h, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 2, ptr %.sroa.519.0..sroa_idx, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.cm, ptr %i.cr, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ca, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.i)
          to label %bb.ad unwind label %bb.l

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.ae:                                            ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cs = invoke { ptr, i64 } @_RNvXs4_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB1y_4sync3ArcNtNtB7_5field5FieldEEE4from(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.ah unwind label %bb.af, !noalias !19366 ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.body unwind label %bb.ag, !noalias !19370

bb.ag:                                            ; preds = %bb.af
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !19370
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.cv = extractvalue { ptr, i64 } %i.cs, 0
  %i.cw = extractvalue { ptr, i64 } %i.cs, 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.b, align 8
end_hunk_2
