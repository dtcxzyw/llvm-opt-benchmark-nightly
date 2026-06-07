inline.NumInlined: 413
inline.NumDeleted: 186
begin_hunk_0_@_RNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB4_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i unwind label %bb.bm, !noalias !492

bb.bm:                                            ; preds = %bb.bl
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body46.i unwind label %bb.bn, !noalias !492

bb.bn:                                            ; preds = %bb.bm
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i: ; preds = %bb.bl
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit49.i unwind label %.loopexit19.i, !noalias !492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit49.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i45.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !488
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtB18_5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.x)
          to label %bb.bo unwind label %bb.aq, !noalias !492

bb.bo:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit49.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.bp, !noalias !492

bb.bp:                                            ; preds = %bb.bo
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body50.i unwind label %bb.bq, !noalias !492

bb.bq:                                            ; preds = %bb.bp
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %.loopexit14.i, !noalias !492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !488
  br label %bb.br

bb.br:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.am, %bb.al
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.bs, !noalias !492

bb.bs:                                            ; preds = %bb.br
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %.body54.i unwind label %bb.bt, !noalias !492

bb.bt:                                            ; preds = %bb.bs
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.by, !noalias !492

.loopexit24.i:                                    ; preds = %bb.bc
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

.loopexit.split-lp25.i:                           ; preds = %bb.bg
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit.split-lp25.i, %.loopexit24.i
  %lpad.phi28.i = phi { ptr, i32 } [ %lpad.loopexit26.i, %.loopexit24.i ], [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp25.i ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #25
          to label %.body46.i unwind label %bb.ai, !noalias !492

bb.bv:                                            ; preds = %bb.as
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58.i unwind label %bb.bw, !noalias !492

bb.bw:                                            ; preds = %bb.bv
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body50.i unwind label %bb.bx, !noalias !492

bb.bx:                                            ; preds = %bb.bw
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62.i unwind label %.loopexit14.i, !noalias !492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit62.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsj34PGqTgg0L_16deltalake_lakefs.exit.i58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !488
  br label %bb.br

.body54.i:                                        ; preds = %bb.by, %bb.bs, %.body50.i
  %.pn30.i = phi { ptr, i32 } [ %.pn28.i, %.body50.i ], [ %i.he, %bb.by ], [ %i.ha, %bb.bs ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.z) #25
          to label %.body65.i unwind label %bb.ai, !noalias !492

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %.body54.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !488
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i64.i unwind label %bb.bz, !noalias !492

bb.bz:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %.body65.i unwind label %bb.ca, !noalias !492

bb.ca:                                            ; preds = %bb.bz
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !492
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i64.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit68.i unwind label %bb.f, !noalias !492

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit68.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !488
  br label %bb.e

bb.cb:                                            ; preds = %.noexc35, %.noexc, %bb.c, %bb.cc
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.cb
  %eh.lpad-body = phi { ptr, i32 } [ %i.hh, %bb.cb ], [ %.pn32.pn.i, %.body.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %.thread unwind label %bb.db

bb.cc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RINvMs2_NtNtCs14kWLkQVSKO_14deltalake_core8logstore6configNtB6_13StorageConfig13parse_optionsNtNtCs6Po7BT7Nknu_5alloc6string6StringB1t_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1t_B1t_EECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([224 x i8]) align 16 captures(none) dereferenceable(224) %i.af, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ap)
          to label %bb.cd unwind label %bb.cb

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.hi = load i64, ptr %i.af, align 16, !range !17, !noundef !3 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 3
  br i1 %i.hj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.hk, i64 96, i1 false)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsj34PGqTgg0L_16deltalake_lakefs.exit39 unwind label %.thread113

bb.cf:                                            ; preds = %bb.cd
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 112
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.519.0..sroa_idx, i64 104, i1 false)
  store i64 %i.hi, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.620.0..sroa_idx, i64 112, i1 false)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ao)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cq, %.noexc43, %bb.cp, %bb.cn, %bb.cf, %bb.cy, %bb.cw, %bb.cv, %bb.cs, %bb.ck, %bb.cj
  %.sroa.016.2 = phi i1 [ false, %bb.cs ], [ true, %bb.cy ], [ true, %bb.cw ], [ true, %bb.cv ], [ true, %bb.cp ], [ true, %.noexc43 ], [ true, %bb.cq ], [ true, %bb.ck ], [ true, %bb.cj ], [ true, %bb.cf ], [ true, %bb.cn ]
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(224) %i.aq) #25
          to label %bb.b unwind label %bb.db

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.hm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.hn = icmp ult i64 %i.hm, 2
  br i1 %i.hn, label %bb.ci, label %bb.ct

bb.ci:                                            ; preds = %bb.ch
  %i.ho = load atomic i8, ptr getelementptr inbounds (i8, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ho, label %bb.cj [
    i8 0, label %bb.ct
    i8 1, label %bb.ck
    i8 2, label %bb.ck
  ], !prof !541

bb.cj:                                            ; preds = %bb.ci
  %i.hp = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE)
          to label %bb.cl unwind label %bb.cg     ; 2 uses

bb.ck:                                            ; preds = %bb.ci, %bb.ci, %bb.cl
  %.sroa.012.0 = phi i8 [ %i.hp, %bb.cl ], [ %i.ho, %bb.ci ], [ %i.ho, %bb.ci ]
  %i.hq = load ptr, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !3, !align !26, !noundef !3
  %i.hr = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.hq, i8 noundef %.sroa.012.0)
          to label %bb.cm unwind label %bb.cg

bb.cl:                                            ; preds = %bb.cj
  %i.hs = icmp eq i8 %i.hp, 0
  br i1 %i.hs, label %bb.ct, label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.hr, label %bb.cn, label %bb.ct

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.ht = load ptr, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !3, !align !26, !noundef !3 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @84, ptr %i.al, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 115 to ptr), ptr %i.hv, align 8
  store ptr %i.al, ptr %i.am, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @85, ptr %i.hw, align 8
  store i64 1, ptr %i.an, align 8
  %.sroa.014.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.014.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 1, ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.hu, ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCs2y6mmZ7bjoM_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ht, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %.noexc42 unwind label %bb.cg

.noexc42:                                         ; preds = %bb.cn
  %i.hx = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !542
  %i.hy = icmp eq i8 %i.hx, 0
  br i1 %i.hy, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %.noexc42
  %i.hz = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !542 ; 2 uses
  %i.ia = icmp ult i64 %i.hz, 6
  call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp samesign ugt i64 %i.hz, 3
  br i1 %i.ib, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ic = load ptr, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !noalias !542, !nonnull !3, !align !26, !noundef !3 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 32
  %i.ie = load ptr, ptr %i.id, align 8, !nonnull !3, !noundef !3
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ig = load i64, ptr %i.if, align 8, !noundef !3
  store i64 4, ptr %i.a, align 8, !noalias !542
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ie, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !542
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ig, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !542
  %i.ih = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %.noexc43 unwind label %bb.cg  ; 2 uses

.noexc43:                                         ; preds = %bb.cp
  %i.ii = extractvalue { ptr, ptr } %i.ih, 0      ; 2 uses
  %i.ij = extractvalue { ptr, ptr } %i.ih, 1      ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !invariant.load !3, !nonnull !3
  %i.im = invoke noundef zeroext i1 %i.il(ptr noundef %i.ii, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) #29
          to label %.noexc44 unwind label %bb.cg, !inline_history !545

.noexc44:                                         ; preds = %.noexc43
  br i1 %i.im, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.noexc44
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ic, ptr noundef nonnull %i.ii, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ij, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an)
          to label %bb.cr unwind label %bb.cg

bb.cr:                                            ; preds = %.noexc44, %bb.co, %.noexc42, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cx, %bb.cz, %bb.cu, %bb.ct, %bb.cr
  %i.in = load ptr, ptr %i.as, align 8, !nonnull !3, !noundef !3
  %i.io = load ptr, ptr %i.at, align 8, !nonnull !3, !align !26, !noundef !3
  %i.ip = load ptr, ptr %i.ar, align 8, !nonnull !3, !noundef !3
  %i.iq = load ptr, ptr %i.au, align 8, !nonnull !3, !align !26, !noundef !3
  invoke void @_RNvNtCsj34PGqTgg0L_16deltalake_lakefs8logstore15lakefs_logstore(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull %i.in, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.io, ptr noundef nonnull %i.ip, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.iq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.aq)
          to label %bb.da unwind label %bb.cg

bb.ct:                                            ; preds = %bb.cl, %bb.ci, %bb.ch, %bb.cm
  %i.ir = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.is = icmp eq i8 %i.ir, 0
  br i1 %i.is, label %bb.cu, label %bb.cs

bb.cu:                                            ; preds = %bb.ct
  %i.it = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.iu = icmp ult i64 %i.it, 6
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp samesign ugt i64 %i.it, 3
  br i1 %i.iv, label %bb.cv, label %bb.cs

bb.cv:                                            ; preds = %bb.cu
  %i.iw = load ptr, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !3, !align !26, !noundef !3 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  %i.iy = load ptr, ptr %i.ix, align 8, !nonnull !3, !noundef !3
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.ja = load i64, ptr %i.iz, align 8, !noundef !3
  store i64 4, ptr %i.ak, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.iy, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.ja, ptr %.sroa.526.0..sroa_idx, align 8
  %i.jb = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.cw unwind label %bb.cg     ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.jc = extractvalue { ptr, ptr } %i.jb, 0      ; 2 uses
  %i.jd = extractvalue { ptr, ptr } %i.jb, 1      ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !invariant.load !3, !nonnull !3
  %i.jg = invoke noundef zeroext i1 %i.jf(ptr noundef %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
          to label %bb.cx unwind label %bb.cg

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.jg, label %bb.cy, label %bb.cs

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.jh = load ptr, ptr @_RNvNvXs_Csj34PGqTgg0L_16deltalake_lakefsNtB6_21LakeFSLogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options10___CALLSITE, align 8, !nonnull !3, !align !26, !noundef !3
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr @84, ptr %i.ah, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr inttoptr (i64 115 to ptr), ptr %i.jj, align 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr @85, ptr %i.jk, align 8
  store i64 1, ptr %i.aj, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ai, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 1, ptr %.sroa.529.0..sroa_idx, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ji, ptr %i.jl, align 8
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.iw, ptr noundef nonnull %i.jc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jd, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj)
          to label %bb.cz unwind label %bb.cg

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cs

bb.da:                                            ; preds = %bb.cs
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore6config13StorageConfigECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(224) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit47: ; preds = %bb.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.da
  ret void

bb.db:                                            ; preds = %bb.dh, %bb.df, %.body, %bb.cg
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsj34PGqTgg0L_16deltalake_lakefs.exit39: ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.experimental.noalias.scope.decl(metadata !546)
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.jn = load ptr, ptr %i.ar, align 8, !alias.scope !552, !nonnull !3, !noundef !3
  %i.jo = atomicrmw sub ptr %i.jn, i64 1 release, align 8, !noalias !552
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.dc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.dc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECsj34PGqTgg0L_16deltalake_lakefs.exit39
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtCsjyY8HP3IvQ6_12object_store11ObjectStoreEL_EECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsj34PGqTgg0L_16deltalake_lakefs7storageNtB4_24LakeFSObjectStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_opts:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !599
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i64.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit68.i unwind label %bb.aj, !noalias !599

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsj34PGqTgg0L_16deltalake_lakefs.exit68.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std3sys6os_str5bytes3BufECsj34PGqTgg0L_16deltalake_lakefs.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !595
  br label %bb.ai

.body166:                                         ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.df
  %.sroa.048.0 = phi i8 [ %.sroa.048.3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %.sroa.048.1, %bb.df ]
  %.pn131 = phi { ptr, i32 } [ %.pn129, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit ], [ %i.lh, %bb.df ] ; 2 uses
  %i.lg = trunc nuw i8 %.sroa.048.0 to i1
  br i1 %i.lg, label %.body166.thread, label %bb.z

bb.df:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit209, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit196, %.noexc164, %.noexc163, %bb.ag
  %.sroa.048.1 = phi i8 [ %.sroa.048.11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit209 ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit196 ], [ 1, %.noexc164 ], [ 1, %bb.ag ], [ 1, %.noexc163 ]
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body166

bb.dg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %i.bw, ptr noundef nonnull align 8 dereferenceable(1504) %i.ca, i64 1504, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bw, i64 1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.lj, ptr noundef nonnull align 8 dereferenceable(64) %i.li, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %i.ca, ptr noundef nonnull align 8 dereferenceable(1504) %i.bw, i64 1504, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !range !17, !noundef !3
  %.not = icmp eq i64 %i.ll, 3
  br i1 %.not, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %i.bu, ptr noundef nonnull align 8 dereferenceable(1504) %i.bw, i64 1504, i1 false)
  %i.lm = invoke { i64, ptr } @_RNvMs_NtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtimeNtB4_9IORuntime10get_handle(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lk)
          to label %bb.dk unwind label %bb.dm     ; 2 uses

bb.di:                                            ; preds = %bb.dl, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bx)
          to label %bb.dp unwind label %bb.do

bb.dj:                                            ; preds = %bb.dk
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.dk:                                            ; preds = %bb.dh
  %i.lo = extractvalue { i64, ptr } %i.lm, 0
  %i.lp = extractvalue { i64, ptr } %i.lm, 1
  invoke void @_RINvMs1_NtNtCsjyY8HP3IvQ6_12object_store3aws7builderNtB6_15AmazonS3Builder19with_http_connectorNtNtNtNtBa_6client4http10connection23SpawnedReqwestConnectorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([1504 x i8]) align 8 captures(none) dereferenceable(1504) %i.bv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1504) %i.bu, i64 noundef %i.lo, ptr noundef %i.lp)
          to label %bb.dl unwind label %bb.dj

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %i.ca, ptr noundef nonnull align 8 dereferenceable(1504) %i.bv, i64 1504, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  br label %bb.di

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %.body138, %bb.dj, %bb.do, %bb.dm
  %.sroa.048.3 = phi i8 [ %.sroa.048.4, %bb.do ], [ 0, %bb.dj ], [ 0, %bb.dm ], [ %.sroa.048.5, %.body138 ]
  %.pn129 = phi { ptr, i32 } [ %i.ls, %bb.do ], [ %i.ln, %bb.dj ], [ %i.lq, %bb.dm ], [ %.pn127, %.body138 ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bx)
          to label %.body166 unwind label %bb.dn

bb.dm:                                            ; preds = %bb.dh
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder15AmazonS3BuilderECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(1504) %i.bu) #25
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.dn

bb.dn:                                            ; preds = %bb.gp, %.body138, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit, %bb.hd, %.body166.thread, %bb.gt, %.body, %bb.dm, %bb.z, %.body148, %.body146
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.do:                                            ; preds = %bb.gv, %bb.gj, %bb.dq, %bb.dp, %bb.di
  %.sroa.048.4 = phi i8 [ %.sroa.048.11, %bb.gv ], [ 0, %bb.gj ], [ 1, %bb.dq ], [ 1, %bb.dp ], [ 1, %bb.di ]
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.dp:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.bd)
          to label %bb.dq unwind label %bb.do

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RINvXs1e_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB7_7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12FromIteratorTB15_B28_EE9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtB7_8IntoIterB28_B28_ENCNvXs_NtCsj34PGqTgg0L_16deltalake_lakefs7storageNtB5h_24LakeFSObjectStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactory14parse_url_optss_0EEB5j_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.bs)
          to label %bb.dr unwind label %bb.do

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  invoke void @_RNvMs_NtCsjyY8HP3IvQ6_12object_store5parseNtB4_17ObjectStoreScheme5parse(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.br, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.cc)
          to label %bb.dt unwind label %bb.ds

.body138:                                         ; preds = %bb.fz, %.body.i173, %bb.ec, %bb.eq, %bb.dw, %bb.ds, %.body
  %.sroa.048.5 = phi i8 [ %.sroa.048.7, %.body ], [ 1, %.body.i173 ], [ 1, %bb.dw ], [ %.sroa.048.6, %bb.ds ], [ 1, %bb.eq ], [ 1, %bb.ec ], [ 0, %bb.fz ]
  %.pn127 = phi { ptr, i32 } [ %.pn, %.body ], [ %eh.lpad-body.i, %.body.i173 ], [ %i.lx, %bb.dw ], [ %i.lt, %bb.ds ], [ %i.no, %bb.eq ], [ %i.me, %bb.ec ], [ %i.pb, %bb.fz ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCsjyY8HP3IvQ6_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.dn

bb.ds:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i187, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.fq, %bb.dr
  %.sroa.048.6 = phi i8 [ 1, %bb.dr ], [ 1, %bb.fq ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i187 ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %.body138

bb.dt:                                            ; preds = %bb.dr
  %i.lu = load i64, ptr %i.br, align 8, !range !7, !noundef !3
  %.not122 = icmp eq i64 %i.lu, -9223372036854775807
  br i1 %.not122, label %bb.dy, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bb, ptr noundef nonnull align 8 dereferenceable(88) %i.br, i64 88, i1 false)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !644
  %i.lv = call noundef align 8 dereferenceable_or_null(88) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 89) 88, i64 noundef 8) #26, !noalias !644 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.dv, label %bb.gw, !prof !281

bb.dv:                                            ; preds = %bb.du
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #28
          to label %.noexc170 unwind label %bb.dw

.noexc170:                                        ; preds = %bb.dv
  unreachable

bb.dw:                                            ; preds = %bb.dv
  %i.lx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store5parse5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.bb) #25
          to label %.body138 unwind label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ly = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.dy:                                            ; preds = %bb.dt
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.572.0.copyload = load ptr, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.8.sroa.8.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.8.7..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.673.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  store ptr %.sroa.572.0.copyload, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %.val.i = load ptr, ptr %.sroa.8.sroa.8.7..sroa_idx, align 8, !alias.scope !647, !noalias !650, !nonnull !3, !noundef !3 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.val79.i = load i64, ptr %i.lz, align 8, !alias.scope !647, !noalias !650, !noundef !3 ; 12 uses
  %i.ma = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh11starts_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val79.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
          to label %bb.dz unwind label %.loopexit.split-lp.i171, !noalias !652 ; 2 uses

.loopexit.i176:                                   ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, %bb.eu, %bb.ef
  %lpad.loopexit.i177 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i173

.loopexit.split-lp.i171:                          ; preds = %bb.et, %.invoke.i181, %.thread.i, %bb.ee, %bb.ea, %bb.dy
  %lpad.loopexit.split-lp.i172 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i173

.body.i173:                                       ; preds = %bb.fm, %bb.fd, %.loopexit.split-lp.i171, %.loopexit.i176
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.oa, %bb.fd ], [ %i.om, %bb.fm ], [ %lpad.loopexit.i177, %.loopexit.i176 ], [ %lpad.loopexit.split-lp.i172, %.loopexit.split-lp.i171 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax) #25
          to label %.body138 unwind label %bb.fp, !noalias !650

bb.dz:                                            ; preds = %bb.dy
  %i.mb = sext i1 %i.ma to i64
  %.sroa.7.0.i = add i64 %.val79.i, %i.mb         ; 3 uses
  %.sroa.0.0.idx.i = zext i1 %i.ma to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.idx.i ; 3 uses
  %i.mc = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.mc, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.md = invoke noundef zeroext i1 @_RNvMNtCsbvkFyIu7lgC_4core5sliceSh9ends_withCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.7.0.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
          to label %bb.ee unwind label %.loopexit.split-lp.i171, !noalias !652

bb.eb:                                            ; preds = %bb.dz, %bb.fa
  %.sroa.18.1 = phi i64 [ %.sroa.18.0, %bb.fa ], [ 0, %bb.dz ]
  %.sroa.14.1 = phi i64 [ %.sroa.14.0, %bb.fa ], [ ptrtoint (ptr inttoptr (i64 1 to ptr) to i64), %bb.dz ]
  %.sroa.8221.1 = phi i64 [ %.sroa.8221.0, %bb.fa ], [ 0, %bb.dz ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.fa ], [ -9223372036854775802, %bb.dz ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.ec, !noalias !650

bb.ec:                                            ; preds = %bb.eb
  %i.me = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body138 unwind label %bb.ed, !noalias !650

bb.ed:                                            ; preds = %bb.ec
  %i.mf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !650
  unreachable

bb.ee:                                            ; preds = %bb.ea
  %i.mg = sext i1 %i.md to i64
  %spec.select.i = add i64 %.sroa.7.0.i, %i.mg    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !652
  invoke void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %spec.select.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.i171, !noalias !652

.lr.ph.i:                                         ; preds = %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !652
  %.sroa.243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 104 ; 5 uses
  store i64 0, ptr %.sroa.243.0..sroa_idx.i, align 8, !noalias !652
  %.sroa.344.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 3 uses
  store i64 %spec.select.i, ptr %.sroa.344.0..sroa_idx.i, align 8, !noalias !652
  %.sroa.445.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 2 uses
  store i8 1, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !652
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 121 ; 4 uses
  store i8 0, ptr %.sroa.546.0..sroa_idx.i, align 1, !noalias !652
  %i.mh = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.mk = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %bb.ef

bb.ef:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %.val.i.i175 = load ptr, ptr %i.mh, align 8, !alias.scope !653, !noalias !652, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !656
  invoke fastcc void @_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.j) #29
          to label %.noexc.i178 unwind label %.loopexit.i176, !noalias !652

.noexc.i178:                                      ; preds = %bb.ef
  %i.ml = load i64, ptr %i.c, align 8, !range !10, !noalias !656, !noundef !3
  %i.mm = trunc nuw i64 %i.ml to i1
  br i1 %i.mm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %.noexc.i178
  %i.mn = load i64, ptr %i.mi, align 8, !noalias !656, !noundef !3
  %i.mo = load i64, ptr %i.mj, align 8, !noalias !656, !noundef !3
  %i.mp = load i64, ptr %.sroa.243.0..sroa_idx.i, align 8, !alias.scope !653, !noalias !652, !noundef !3 ; 2 uses
  %i.mq = sub nuw i64 %i.mn, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %.val.i.i175, i64 %i.mp
  store i64 %i.mo, ptr %.sroa.243.0..sroa_idx.i, align 8, !alias.scope !653, !noalias !652
  br label %bb.el

bb.eh:                                            ; preds = %.noexc.i178
  %i.ms = load i8, ptr %.sroa.546.0..sroa_idx.i, align 1, !range !657, !alias.scope !658, !noalias !652, !noundef !3
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %.thread110.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i8 1, ptr %.sroa.546.0..sroa_idx.i, align 1, !alias.scope !658, !noalias !652
  %i.mu = load i8, ptr %.sroa.445.0..sroa_idx.i, align 8, !range !657, !alias.scope !658, !noalias !652, !noundef !3
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %._crit_edge.i.i.i, label %bb.ej

._crit_edge.i.i.i:                                ; preds = %bb.ei
  %.pre.i.i.i = load i64, ptr %.sroa.243.0..sroa_idx.i, align 8, !alias.scope !658, !noalias !652
  %.pre3.i.i.i = load i64, ptr %.sroa.344.0..sroa_idx.i, align 8, !alias.scope !658, !noalias !652
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.mw = load i64, ptr %.sroa.344.0..sroa_idx.i, align 8, !alias.scope !658, !noalias !652, !noundef !3 ; 2 uses
  %i.mx = load i64, ptr %.sroa.243.0..sroa_idx.i, align 8, !alias.scope !658, !noalias !652, !noundef !3 ; 2 uses
  %.not.i.i.i179 = icmp eq i64 %i.mw, %i.mx
  br i1 %.not.i.i.i179, label %.thread110.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %._crit_edge.i.i.i
  %i.my = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.mw, %bb.ej ]
  %i.mz = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.mx, %bb.ej ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.mh, align 8, !alias.scope !658, !noalias !652, !nonnull !3, !noundef !3
  %i.na = sub nuw i64 %i.my, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.mz
  br label %bb.el

.thread110.i:                                     ; preds = %bb.ej, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !656
  br label %.thread.i

bb.el:                                            ; preds = %bb.ek, %bb.eg
  %.sroa.4.0.i.i = phi i64 [ %i.mq, %bb.eg ], [ %i.na, %bb.ek ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.mr, %bb.eg ], [ %i.nb, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !656
  %i.nc = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.nc, label %bb.et, label %bb.eu

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts8PathPartECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %.thread110.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !652
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %spec.select.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.em unwind label %.loopexit.split-lp.i171, !noalias !652

bb.em:                                            ; preds = %.thread.i
  %i.nd = load i64, ptr %i.f, align 8, !range !10, !noalias !652, !noundef !3
  %i.ne = trunc nuw i64 %i.nd to i1
  %i.nf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ng = load i64, ptr %i.nf, align 8, !range !9, !noalias !652, !noundef !3 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ne, label %bb.en, label %bb.eo, !prof !281

bb.en:                                            ; preds = %bb.em
  %i.ni = load i64, ptr %i.nh, align 8, !noalias !652
  br label %.invoke.i181

.invoke.i181:                                     ; preds = %bb.ew, %bb.en
  %i.nj = phi i64 [ %i.ng, %bb.en ], [ %i.nt, %bb.ew ]
  %i.nk = phi i64 [ %i.ni, %bb.en ], [ %i.nv, %bb.ew ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.nj, i64 %i.nk) #28
          to label %.cont.i182 unwind label %.loopexit.split-lp.i171, !noalias !652

.cont.i182:                                       ; preds = %.invoke.i181
  unreachable

bb.eo:                                            ; preds = %bb.em
  %i.nl = load ptr, ptr %i.nh, align 8, !noalias !652, !nonnull !3, !noundef !3 ; 2 uses
  %i.nm = icmp ule i64 %spec.select.i, %i.ng
  call void @llvm.assume(i1 %i.nm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !652
  %.not76.i = icmp eq i64 %spec.select.i, 0
  br i1 %.not76.i, label %bb.ep, label %bb.es

bb.ep:                                            ; preds = %bb.es, %bb.eo
  %i.nn = ptrtoint ptr %i.nl to i64
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.eq, !noalias !650

bb.eq:                                            ; preds = %bb.ep
  %i.no = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %.body138 unwind label %bb.er, !noalias !650

bb.er:                                            ; preds = %bb.eq
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #24, !noalias !650
  unreachable

bb.es:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nl, ptr nonnull align 1 %.sroa.0.0.i, i64 %spec.select.i, i1 false), !noalias !652
  br label %bb.ep

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.ep, %bb.eb
  %.sroa.18.2 = phi i64 [ %.sroa.18.1, %bb.eb ], [ %spec.select.i, %bb.ep ] ; 2 uses
  %.sroa.14.2 = phi i64 [ %.sroa.14.1, %bb.eb ], [ %i.nn, %bb.ep ] ; 2 uses
  %.sroa.8221.2 = phi i64 [ %.sroa.8221.1, %bb.eb ], [ %i.ng, %bb.ep ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %bb.eb ], [ -9223372036854775802, %bb.ep ] ; 2 uses
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax)
          to label %_RINvMNtCsjyY8HP3IvQ6_12object_store4pathNtB3_4Path5parseBC_ECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.ds

bb.et:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !652
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val79.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ev unwind label %.loopexit.split-lp.i171, !noalias !652

bb.eu:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !652
  invoke void @_RNvMNtNtCsjyY8HP3IvQ6_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i)
          to label %bb.fb unwind label %.loopexit.i176, !noalias !652

bb.ev:                                            ; preds = %bb.et
  %i.nq = load i64, ptr %i.e, align 8, !range !10, !noalias !652, !noundef !3
  %i.nr = trunc nuw i64 %i.nq to i1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.nt = load i64, ptr %i.ns, align 8, !range !9, !noalias !652, !noundef !3 ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.nr, label %bb.ew, label %bb.ex, !prof !281

bb.ew:                                            ; preds = %bb.ev
  %i.nv = load i64, ptr %i.nu, align 8, !noalias !652
  br label %.invoke.i181

bb.ex:                                            ; preds = %bb.ev
  %i.nw = load ptr, ptr %i.nu, align 8, !noalias !652, !nonnull !3, !noundef !3 ; 2 uses
  %i.nx = icmp ule i64 %.val79.i, %i.nt
  call void @llvm.assume(i1 %i.nx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !652
  %.not78.i = icmp eq i64 %.val79.i, 0
  br i1 %.not78.i, label %bb.ey, label %bb.ez
end_hunk_1
