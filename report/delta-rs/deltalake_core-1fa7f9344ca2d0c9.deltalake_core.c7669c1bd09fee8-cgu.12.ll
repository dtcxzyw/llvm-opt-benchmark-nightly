inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checkerNtB2_15TransactionInfo7try_new:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18330
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am)
          to label %bb.w unwind label %.loopexit.i, !noalias !18338

bb.u:                                             ; preds = %bb.x, %.lr.ph.i
  %i.an = icmp eq ptr %i.ai, %i.x
  br i1 %i.an, label %._crit_edge.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.w, %bb.t
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp.i:                             ; preds = %bb.z, %._crit_edge.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.ab, !noalias !18338

bb.w:                                             ; preds = %bb.t
  %i.ao = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.x unwind label %.loopexit.i, !noalias !18338 ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18330
  br label %bb.u

bb.y:                                             ; preds = %._crit_edge.i
  %i.ap = load i64, ptr %i.a, align 8, !range !343, !noalias !18330, !noundef !10
  %i.aq = trunc nuw i64 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !59, !noalias !18330, !noundef !10 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aq, label %bb.z, label %bb.ah, !prof !49

bb.z:                                             ; preds = %bb.y
  %i.au = load i64, ptr %i.at, align 8, !noalias !18330
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.as, i64 %i.au) #46
          to label %bb.aa unwind label %.loopexit.split-lp.i, !noalias !18338

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.v, %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45, !noalias !18337
  unreachable

bb.ac:                                            ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.019.064, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ag, %.lr.ph
  %.not60 = icmp eq ptr %i.y, %i.x
  br i1 %.not60, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %bb.af, %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.q, %bb.ae
  %.not6062 = phi i1 [ false, %bb.ae ], [ true, %bb.q ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ]
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.ax, %bb.ae ], [ %.pn.i, %bb.q ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.n unwind label %bb.aj

bb.af:                                            ; preds = %bb.ac
  %i.ay = invoke noundef zeroext i1 @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.ag unwind label %bb.ae     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ad

bb.ah:                                            ; preds = %bb.y
  %i.az = load ptr, ptr %i.at, align 8, !noalias !18330, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(112) %i.j, i64 112, i1 false)
  %.sroa.0.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !18339
  %i.ba = zext i1 %5 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %0, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.0, i64 160, i1 false)
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %3, ptr %.sroa.546.0..sroa_idx, align 16
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %4, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.as, ptr %.sroa.748.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.az, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 16
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 %i.ba, ptr %.sroa.11.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit45 unwind label %bb.o

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit45: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core.exit45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8Hz2sPNgbCO_10datafusion9execution7context14SessionContextECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.aj:                                            ; preds = %bb.al, %.body43, %bb.am, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.ak:                                            ; preds = %.thread58, %bb.n
  %.pn57 = phi { ptr, i32 } [ %i.q, %.thread58 ], [ %eh.lpad-body44, %bb.n ] ; 2 uses
  %i.bc = icmp eq i64 %i.o, 37
  br i1 %i.bc, label %.body, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.j)
          to label %.body unwind label %bb.aj

.thread:                                          ; preds = %.body, %bb.am
  %.pn4153 = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %lpad.thr_comm.split-lp, %bb.am ]
  resume { ptr, i32 } %.pn4153

bb.am:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %2) #44
          to label %.thread unwind label %bb.aj
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE4growCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 544, i64 noundef 8) #41 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #46
  unreachable

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 512 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 520
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 0         ; 4 uses
  %i.j = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.j, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE3newCs14kWLkQVSKO_14deltalake_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %i.l = load i64, ptr %i.k, align 8, !noundef !10
  %i.m = add i64 %i.l, 32
  store i64 %i.m, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  %i.o = cmpxchg ptr %i.n, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.not11 = extractvalue { ptr, i1 } %i.o, 1
  br i1 %.not11, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE3newCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputuNtNtBZ_6marker4SendEL_EEE3newCs14kWLkQVSKO_14deltalake_core.exit ], [ %i.i, %.preheader ], [ %i.i, %.lr.ph ]
  ret ptr %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.p = phi { ptr, i1 } [ %i.v, %.lr.ph ], [ %i.o, %.preheader ]
  %i.q = extractvalue { ptr, i1 } %i.p, 0         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 512
  %i.s = load i64, ptr %i.r, align 8, !noundef !10
  %i.t = add i64 %i.s, 32
  store i64 %i.t, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 520
  %i.v = cmpxchg ptr %i.u, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.v, 1
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE22observed_tail_positionB2w_(ptr noundef nonnull readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 16 dereferenceable_or_null(3104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3104, i64 noundef 16) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3104) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  store i64 %0, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4growB2w_(ptr noundef nonnull align 16 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 16 dereferenceable_or_null(3104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3104, i64 noundef 16) #41 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3104) #46
  unreachable

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3072 ; 3 uses
  store i64 %i.e, ptr %i.f, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 3072
  %i.k = load i64, ptr %i.j, align 16, !noalias !18340, !noundef !10
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 16, !noalias !18340
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 3080
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18340 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2w_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 3072
  %i.q = load i64, ptr %i.p, align 16, !noalias !18340, !noundef !10
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 16, !noalias !18340
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 3080
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18340 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4readB2w_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noundef nonnull readonly align 16 captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.c = load atomic i64, ptr %i.b acquire, align 16 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775710, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -9223372036854775709, ptr %0, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5writeB2w_(ptr noundef nonnull align 16 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE8try_pushB2w_(ptr noundef nonnull align 16 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3072
  store i64 %i.c, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.g = tail call fastcc ptr @_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5block5BlockINtNtB6_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3c_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #47
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE22observed_tail_positionB2p_(ptr noundef nonnull readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 16 dereferenceable_or_null(3104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3104, i64 noundef 16) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3104) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  store i64 %0, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4growB2p_(ptr noundef nonnull align 16 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 16 dereferenceable_or_null(3104) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 3104, i64 noundef 16) #41 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 3104) #46
  unreachable

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 3072 ; 3 uses
  store i64 %i.e, ptr %i.f, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3080
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 3072
  %i.k = load i64, ptr %i.j, align 16, !noalias !18343, !noundef !10
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 16, !noalias !18343
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 3080
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18343 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB2p_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 3072
  %i.q = load i64, ptr %i.p, align 16, !noalias !18343, !noundef !10
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 16, !noalias !18343
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 3080
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18343 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4readB2p_(ptr dead_on_unwind noalias noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) initializes((0, 8)) %0, ptr noundef nonnull readonly align 16 captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 3088
  %i.c = load atomic i64, ptr %i.b acquire, align 16 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.g, i64 96, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775710, ptr %0, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -9223372036854775709, ptr %0, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5writeB2p_(ptr noundef nonnull align 16 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(96) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.b, ptr noundef nonnull align 16 dereferenceable(96) %2, i64 96, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE8try_pushB2p_(ptr noundef nonnull align 16 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3072
  store i64 %i.c, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3080
  %i.g = tail call fastcc ptr @_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5block5BlockINtNtB6_6result6ResultNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan12ScanMetadataNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB35_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #47
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE22observed_tail_positionB33_(ptr noundef nonnull readonly align 16 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.b = load atomic i64, ptr %i.a acquire, align 16
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4120
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 16 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 16 dereferenceable_or_null(4128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 4128, i64 noundef 16) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4128) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4096
  store i64 %0, ptr %i.c, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4growB33_(ptr noundef nonnull align 16 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 16 dereferenceable_or_null(4128) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 4128, i64 noundef 16) #41 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 4128) #46
  unreachable

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4096 ; 3 uses
  store i64 %i.e, ptr %i.f, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4096
  %i.k = load i64, ptr %i.j, align 16, !noalias !18346, !noundef !10
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 16, !noalias !18346
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4104
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18346 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE3newB33_.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 4096
  %i.q = load i64, ptr %i.p, align 16, !noalias !18346, !noundef !10
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 16, !noalias !18346
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 4104
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18346 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE4readB33_(ptr dead_on_unwind noalias noundef writable writeonly sret([128 x i8]) align 16 captures(none) dereferenceable(128) initializes((112, 120)) %0, ptr noundef nonnull readonly align 16 captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4112
  %i.c = load atomic i64, ptr %i.b acquire, align 16 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %i.h, i64 128, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 3, ptr %i.g, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 4, ptr %i.g, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE5writeB33_(ptr noundef nonnull align 16 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 16 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [128 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.b, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4112
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockINtNtCsbvkFyIu7lgC_4core6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtBZ_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB1W_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEE8try_pushB33_(ptr noundef nonnull align 16 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.b = load i64, ptr %i.a, align 16, !noundef !10
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4096
  store i64 %i.c, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.g = tail call fastcc ptr @_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5block5BlockINtNtB6_6result6ResultTNtCseo6ZV82fEK1_3url3UrlINtNtB6_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecbEEIB2C_yEENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB3J_(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #47
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE22observed_tail_positionCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.b = load atomic i64, ptr %i.a acquire, align 8
  %i.c = and i64 %i.b, 4294967296
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core(i64 noundef %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.a = tail call noundef align 8 dereferenceable_or_null(1312) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 1312, i64 noundef 8) #41 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1312) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  store i64 %0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4growCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41
  %i.c = tail call noundef align 8 dereferenceable_or_null(1312) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef 1312, i64 noundef 8) #41 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core.exit, !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1312) #46
  unreachable

_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.a
  %i.e = add i64 %i.b, 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1280 ; 3 uses
  store i64 %i.e, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.h = cmpxchg ptr %i.g, ptr null, ptr %i.c acq_rel acquire, align 8 ; 2 uses
  %.sroa.01.0.i = extractvalue { ptr, i1 } %i.h, 0 ; 4 uses
  %i.i = extractvalue { ptr, i1 } %i.h, 1
  br i1 %i.i, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 1280
  %i.k = load i64, ptr %i.j, align 8, !noalias !18349, !noundef !10
  %i.l = add i64 %i.k, 32
  store i64 %i.l, ptr %i.f, align 8, !noalias !18349
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 1288
  %i.n = cmpxchg ptr %i.m, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18349 ; 2 uses
  %.not16 = extractvalue { ptr, i1 } %i.n, 1
  br i1 %.not16, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core.exit
  %.sroa.0.0 = phi ptr [ %i.c, %_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE3newCs14kWLkQVSKO_14deltalake_core.exit ], [ %.sroa.01.0.i, %.preheader ], [ %.sroa.01.0.i, %.lr.ph ]
  ret ptr %.sroa.0.0

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi { ptr, i1 } [ %i.t, %.lr.ph ], [ %i.n, %.preheader ]
  %.sroa.01.0.i14 = extractvalue { ptr, i1 } %i.o, 0 ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 1280
  %i.q = load i64, ptr %i.p, align 8, !noalias !18349, !noundef !10
  %i.r = add i64 %i.q, 32
  store i64 %i.r, ptr %i.f, align 8, !noalias !18349
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i14, i64 1288
  %i.t = cmpxchg ptr %i.s, ptr null, ptr %i.c acq_rel acquire, align 8, !noalias !18349 ; 2 uses
  %.not = extractvalue { ptr, i1 } %i.t, 1
  br i1 %.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE4readCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = and i64 %2, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = shl nuw nsw i64 1, %i.a
  %i.e = and i64 %i.c, %i.d
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %i.c, 8589934592
  %.not1 = icmp eq i64 %i.f, 0
  br i1 %.not1, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE5writeCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, 31                           ; 2 uses
  %i.b = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.c = shl nuw nsw i64 1, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.e = atomicrmw or ptr %i.d, i64 %i.c release, align 8 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5blockINtB2_5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE8try_pushCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull align 8 captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 5) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = add i64 %i.b, 32
  %i.d = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1280
  store i64 %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.g = tail call fastcc ptr @_RINvNtNtCsbvkFyIu7lgC_4core4sync6atomic23atomic_compare_exchangeOINtNtNtNtCskQDtHcQtBkN_5tokio4sync4mpsc5block5BlockNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEECs14kWLkQVSKO_14deltalake_core(ptr noundef %i.f, ptr noundef %i.d, i8 noundef %2, i8 noundef %3) #47
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCs8ulvy0Wg6Ot_12delta_kernel4pathINtB5_13ParsedLogPathNtCseo6ZV82fEK1_3url3UrlE8try_fromCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable writeonly sret([160 x i8]) align 16 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.063 = alloca [136 x i8], align 8         ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [72 x i8], align 8                ; 12 uses
  %i.j = alloca [24 x i8], align 8                ; 13 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [72 x i8], align 8                ; 6 uses
  %i.m = alloca [72 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs_Cseo6ZV82fEK1_3urlNtB4_3Url13path_segments(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i, %bb.k, %bb.h, %bb.g, %bb.d, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.p = load i32, ptr %i.o, align 4, !range !13551, !noundef !10
  %.not = icmp eq i32 %i.p, 1114112
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.q = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.m)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.ct

bb.f:                                             ; preds = %bb.d
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 5 uses
  %.not121 = icmp eq ptr %i.r, null
  br i1 %.not121, label %bb.h, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.s, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.b

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #46
          to label %bb.i unwind label %bb.b

bb.i:                                             ; preds = %bb.an, %bb.k, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.t = load i64, ptr %i.b, align 8, !range !343, !noundef !10
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !59, !noundef !10 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.u, label %bb.k, label %bb.l, !prof !49

bb.k:                                             ; preds = %bb.j
  %i.y = load i64, ptr %i.x, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #46
          to label %bb.i unwind label %bb.b

bb.l:                                             ; preds = %bb.j
  %i.z = load ptr, ptr %i.x, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.aa = icmp ule i64 %i.s, %i.w
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not122 = icmp eq i64 %i.s, 0
  br i1 %.not122, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.w, ptr %i.k, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.z, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %i.s, ptr %.sroa.675.0..sroa_idx, align 8
  %i.ab = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE9next_backCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.m)
          to label %bb.o unwind label %.thread181.loopexit.split-lp ; 2 uses

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.r, i64 %i.s, i1 false)
  br label %bb.m

.thread181.loopexit:                              ; preds = %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread174

.thread181.loopexit.split-lp:                     ; preds = %bb.m, %bb.ac, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread174

bb.o:                                             ; preds = %bb.m
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 5 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1
  %i.ae = load i64, ptr %.sroa.675.0..sroa_idx, align 8, !noundef !10 ; 11 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %bb.p, label %.lr.ph.split.preheader.i.i

bb.p:                                             ; preds = %bb.o
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecReEECs14kWLkQVSKO_14deltalake_core.exit, %.loopexit, %bb.p
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #45
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %bb.q
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.b

.lr.ph.split.preheader.i.i:                       ; preds = %bb.o
  %i.aj = load ptr, ptr %.sroa.474.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 6 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.w, %.lr.ph.split.preheader.i.i
  %i.ak = phi i64 [ %i.az, %bb.w ], [ 0, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.al = sub nuw nsw i64 %i.ae, %i.ak            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ak ; 2 uses
  %i.an = icmp samesign ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i, label %bb.t

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.t:                                             ; preds = %.lr.ph.split.i.i
  %i.ao = invoke { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.al)
          to label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i unwind label %.thread181.loopexit

._crit_edge.i.i.i:                                ; preds = %bb.u, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.al, %bb.u ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.u ], [ 1, %.lr.ph.i.i.i ]
  %i.ap = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.aq = insertvalue { i64, i64 } %i.ap, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.u
  %.sroa.01.05.i.i.i = phi i64 [ %i.au, %bb.u ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !18352, !noalias !18355, !noundef !10
  %i.at = icmp eq i8 %i.as, 46
  br i1 %i.at, label %._crit_edge.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionyENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12BinaryLengthENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type15ExactNumberInfoNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type12TimezoneInfoNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type16ArrayElemTypeDefNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsn_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsq_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17StructBracketKindNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type17GeometricTypeKindNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot13EagerSnapshotENtB6_5Debug3fmtB1a_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast19FunctionArgOperatorNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast15FunctionArgExprNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type10EnumMemberENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast10UnionFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query18XmlPassingArgumentENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs4lawaffTVVK_9sqlparser3ast4ExprNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast22FunctionArgumentClauseENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtCslfDARg5dRCJ_8lock_api5mutex5MutexNtNtCs8fBJGmGoRiY_11parking_lot9raw_mutex8RawMutexNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common7metrics10MetricsSetEENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtNtCs4lawaffTVVK_9sqlparser3ast5value18DollarQuotedStringNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast16HiveRowDelimiterENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream7flattenINtB5_7FlattenINtNtB7_3map3MapINtNtB9_4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapB2H_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtB2L_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEEEENCNCNCNvMs7_B5n_NtB5n_9MergePlan7execute000EIB1e_IB1u_INtNtB57_9into_iter8IntoIterB5l_EENCNCB6v_00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB5r_(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef align 8 dereferenceable(168), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan4plan25supports_filters_pushdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(688), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast18CreateServerOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtCs14kWLkQVSKO_14deltalake_core16delta_datafusionNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB4_6errors15DeltaTableErrorE4from(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCsbpG6u9KFjWn_8indexmap3mapINtB4_8IndexMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_EjENtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCshCk07IZuEAL_24datafusion_physical_expr11equivalence5class16EquivalenceClassENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtB8_6option6OptionNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common9sort_expr11LexOrderingENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast3dcl10RoleOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCshmPyUV8PP35_6chrono6offset3utcNtB5_3UtcNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureNtB6_5Debug3fmtCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtCs2xb0BKvnu80_21datafusion_datasource15PartitionedFileINtNtCsbvkFyIu7lgC_4core6option6OptionIB1W_bEEEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtB3s_4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBN_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEINtNtBR_3vec3VecNtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinEENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterB3v_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringTINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBN_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize8MergeBinENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterB3f_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCsjyY8HP3IvQ6_12object_store4path4PathNtNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer15PartitionWriterNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterB1B_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultIB1e_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2s_5error5ErrorENtNtBe_6marker4SendEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDB6_p4ItemINtNtBe_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEEL_ENtB4_13SpecAdvanceBy15spec_advance_byCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtNtNtCs8CRAYtH5WmW_12futures_util6stream6stream8bufferedINtB4_8BufferedINtNtB8_4iter4IterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCs8ulvy0Wg6Ot_12delta_kernel8FileMetaENCNCNvNtNtNtB3a_6engine7default4json20read_json_files_impl00EEE3newCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([144 x i8]) align 8 captures(none) dereferenceable(144), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_NvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtNtBe_3ops5range5RangejENCNCNvXs2_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataNtB2g_14LogDataHandlerNtNtBa_7collect12IntoIterator9into_iter00ENtB4_13SpecAdvanceBy15spec_advance_byB2m_(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCs2xb0BKvnu80_21datafusion_datasource11file_groupsNtB4_20FileGroupPartitioner23repartition_file_groups(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 288230376151711744)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs3LITIwzqf1g_4uuid2v4NtB4_4Uuid6new_v4(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 1 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsh_NtCsjhHCjzi9uUI_17datafusion_common6configNtB5_12TableOptions27combine_with_session_config(ptr dead_on_unwind noalias noundef writable sret([960 x i8]) align 8 captures(none) dereferenceable(960), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(960), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(880)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCskQDtHcQtBkN_5tokio7runtime8blocking8scheduleNtB4_16BlockingScheduleNtNtB8_4task8Schedule8schedule(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs8VI8w5SIoU4_15datafusion_expr7expr_fn3and(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 16 captures(none) dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_4nextCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc5boxed4iterINtB4_3BoxDNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iteratorp4ItemINtNtBU_6result6ResultIBC_DNtNtCs8ulvy0Wg6Ot_12delta_kernel11engine_data10EngineDataEL_ENtNtB2i_5error5ErrorENtNtBU_6marker4SendEL_EBM_9size_hintCs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core10operations16convert_to_deltaNtNtB6_6errors15DeltaTableErrorINtNtCsbvkFyIu7lgC_4core7convert4FromNtB2_5ErrorE4from(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(none) dereferenceable(96), ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 1114113) i32 @_RNvXsu_NtCsbvkFyIu7lgC_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #33

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #33

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #31 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #34 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #37 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #39 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs8mYq7K4qqSA_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nounwind }
attributes #42 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #44 = { cold }
attributes #45 = { cold noreturn nounwind }
attributes #46 = { noreturn }
attributes #47 = { inlinehint }
attributes #48 = { noinline }
attributes #49 = { noinline noreturn }
attributes #50 = { "function-inline-cost-multiplier"="2" }
attributes #51 = { cold "function-inline-cost-multiplier"="2" }
attributes #52 = { inlinehint "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.96.0-nightly (1d8897a4e 2026-03-13)"}
!3 = !{!4, !6, !7, !9}
!4 = distinct !{!4, !5, !"_RNvXs2_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4FromBy_E4fromCs14kWLkQVSKO_14deltalake_core: argument 0"}
!5 = distinct !{!5, !"_RNvXs2_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4FromBy_E4fromCs14kWLkQVSKO_14deltalake_core"}
!6 = distinct !{!6, !5, !"_RNvXs2_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4FromBy_E4fromCs14kWLkQVSKO_14deltalake_core: argument 1"}
!7 = distinct !{!7, !8, !"_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4IntoBy_E4intoCs14kWLkQVSKO_14deltalake_core: argument 0"}
!8 = distinct !{!8, !"_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4IntoBy_E4intoCs14kWLkQVSKO_14deltalake_core"}
!9 = distinct !{!9, !8, !"_RNvXs1_NtCsbvkFyIu7lgC_4core7convertNtNtCs2xb0BKvnu80_21datafusion_datasource12table_schema11TableSchemaINtB5_4IntoBy_E4intoCs14kWLkQVSKO_14deltalake_core: argument 1"}
!10 = !{}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1P_11ObjectStoreEL_EEB4I_10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtB4e_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5o_ENtNtB5_6marker4SendEL_EEE000E0EB2T_: argument 0"}
!13 = distinct !{!13, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1P_11ObjectStoreEL_EEB4I_10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtB4e_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5o_ENtNtB5_6marker4SendEL_EEE000E0EB2T_"}
!14 = !{!12, !15}
!15 = distinct !{!15, !13, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYINtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime21DeltaIOStorageBackendINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB1P_11ObjectStoreEL_EEB4I_10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtB4e_5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB5o_ENtNtB5_6marker4SendEL_EEE000E0EB2T_: argument 1"}
!16 = !{!15}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3aws8AmazonS3NtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3C_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!19 = distinct !{!19, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3aws8AmazonS3NtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3C_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core"}
!20 = !{!18, !21}
!21 = distinct !{!21, !19, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3aws8AmazonS3NtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3C_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!22 = !{!21}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!25 = distinct !{!25, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core"}
!26 = !{!24, !27}
!27 = distinct !{!27, !25, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_3gcp18GoogleCloudStorageNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3N_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!28 = !{!27}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_4http9HttpStoreNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3E_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!31 = distinct !{!31, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_4http9HttpStoreNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3E_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core"}
!32 = !{!30, !33}
!33 = distinct !{!33, !31, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_4http9HttpStoreNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3E_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!34 = !{!33}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_5azure14MicrosoftAzureNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3L_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 0"}
!37 = distinct !{!37, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_5azure14MicrosoftAzureNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3L_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core"}
!38 = !{!36, !39}
!39 = distinct !{!39, !37, !"_RINvMNtCsbvkFyIu7lgC_4core5sliceSINtNtNtB5_3ops5range5RangeyE16binary_search_byNCINvB2_15partition_pointNCNCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtB1P_5azure14MicrosoftAzureNtB1P_11ObjectStore10get_ranges00NtB1P_5ErrorINtNtB5_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB5_6future6future6Futurep6OutputINtNtB5_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB3L_ENtNtB5_6marker4SendEL_EEE000E0ECs14kWLkQVSKO_14deltalake_core: argument 1"}
!40 = !{!39}
!41 = !{!42, !44, !45, !47}
!42 = distinct !{!42, !43, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core: argument 0"}
!43 = distinct !{!43, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core"}
!44 = distinct !{!44, !43, !"_RNvXsC_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_12SpecToString14spec_to_stringCs14kWLkQVSKO_14deltalake_core: argument 1"}
!45 = distinct !{!45, !46, !"_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core: argument 0"}
!46 = distinct !{!46, !"_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core"}
!47 = distinct !{!47, !46, !"_RNvXsB_NtCs6Po7BT7Nknu_5alloc6stringNtNtNtCshmPyUV8PP35_6chrono6offset3utc3UtcNtB5_8ToString9to_stringCs14kWLkQVSKO_14deltalake_core: argument 1"}
!48 = !{!42, !45}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1B_5types14StringViewTypeEEINtNtB7_3map3MapINtB5_7FlattenINtNtB1B_8iterator9ArrayIterRB1u_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENCB4o_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB4w_: argument 1"}
!52 = distinct !{!52, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1B_5types14StringViewTypeEEINtNtB7_3map3MapINtB5_7FlattenINtNtB1B_8iterator9ArrayIterRB1u_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENCB4o_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB4w_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1Y_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EIB1c_INtB5_7FlattenINtNtB1Y_8iterator9ArrayIterRB1R_EENCNCB3G_s1_00EENtNtNtB9_6traits8iterator8Iterator4nextB3O_: argument 1"}
!55 = distinct !{!55, !"_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1Y_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EIB1c_INtB5_7FlattenINtNtB1Y_8iterator9ArrayIterRB1R_EENCNCB3G_s1_00EENtNtNtB9_6traits8iterator8Iterator4nextB3O_"}
!56 = !{!57, !54, !58, !51}
!57 = distinct !{!57, !55, !"_RNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1Y_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EIB1c_INtB5_7FlattenINtNtB1Y_8iterator9ArrayIterRB1R_EENCNCB3G_s1_00EENtNtNtB9_6traits8iterator8Iterator4nextB3O_: argument 0"}
!58 = distinct !{!58, !52, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1B_5types14StringViewTypeEEINtNtB7_3map3MapINtB5_7FlattenINtNtB1B_8iterator9ArrayIterRB1u_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENCB4o_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB4w_: argument 0"}
!59 = !{i64 0, i64 -9223372036854775807}
!60 = !{!54, !51}
!61 = !{!62}
!62 = distinct !{!62, !63, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1L_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EEINtB5_8FuseImplBY_E4nextB3B_: argument 1"}
!63 = distinct !{!63, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1L_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EEINtB5_8FuseImplBY_E4nextB3B_"}
!64 = !{!62, !54, !51}
!65 = !{!66, !57, !58}
!66 = distinct !{!66, !63, !"_RNvXs9_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1L_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EEINtB5_8FuseImplBY_E4nextB3B_: argument 0"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1t_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_: argument 1"}
!69 = distinct !{!69, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1t_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_"}
!70 = !{!71, !68, !62, !54, !51}
!71 = distinct !{!71, !72, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBW_5types14StringViewTypeEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core: argument 0"}
!72 = distinct !{!72, !"_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtBW_5types14StringViewTypeEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core"}
!73 = !{!74, !66, !57, !58}
!74 = distinct !{!74, !69, !"_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1t_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_: argument 0"}
!75 = !{!74, !68, !66, !62, !57, !54, !58, !51}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0B9_: argument 0"}
!78 = distinct !{!78, !"_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0B9_"}
!79 = !{!80, !74, !68, !66, !62, !57, !54, !58, !51}
!80 = distinct !{!80, !78, !"_RNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0B9_: argument 1"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEEB4s_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEEB4s_"}
!84 = !{i64 0, i64 3}
!85 = !{!82, !54, !51}
!86 = !{!57, !58}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEB45_: argument 0"}
!89 = distinct !{!89, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEB45_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1r_5array15byte_view_array20GenericByteViewArrayNtNtB1r_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!92 = distinct !{!92, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1r_5array15byte_view_array20GenericByteViewArrayNtNtB1r_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1y_5array15byte_view_array20GenericByteViewArrayNtNtB1y_5types14StringViewTypeEEINtNtB4_6option8IntoIterReEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!95 = distinct !{!95, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1y_5array15byte_view_array20GenericByteViewArrayNtNtB1y_5types14StringViewTypeEEINtNtB4_6option8IntoIterReEEECs14kWLkQVSKO_14deltalake_core"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1l_5array15byte_view_array20GenericByteViewArrayNtNtB1l_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!98 = distinct !{!98, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1l_5array15byte_view_array20GenericByteViewArrayNtNtB1l_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB17_5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!101 = distinct !{!101, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB17_5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!102 = !{!100, !97, !94, !91, !88, !82, !54, !51}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!105 = distinct !{!105, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!108 = distinct !{!108, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core"}
!109 = !{!107, !104, !100, !97, !94, !91, !88, !82, !54, !51}
!110 = !{!111, !113, !115, !117, !119, !107, !104, !100, !97, !94, !91, !88, !82, !57, !58}
!111 = distinct !{!111, !112, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!112 = distinct !{!112, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!113 = distinct !{!113, !114, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!114 = distinct !{!114, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesEECs14kWLkQVSKO_14deltalake_core"}
!115 = distinct !{!115, !116, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!116 = distinct !{!116, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs14kWLkQVSKO_14deltalake_core"}
!117 = distinct !{!117, !118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!118 = distinct !{!118, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer7boolean13BooleanBufferECs14kWLkQVSKO_14deltalake_core"}
!119 = distinct !{!119, !120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core: argument 0"}
!120 = distinct !{!120, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferECs14kWLkQVSKO_14deltalake_core"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1T_5types14StringViewTypeEEINtNtBL_3map3MapINtBJ_7FlattenINtNtB1T_8iterator9ArrayIterRB1M_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENCB4G_s1_0EEB4O_: argument 0"}
!123 = distinct !{!123, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB1T_5types14StringViewTypeEEINtNtBL_3map3MapINtBJ_7FlattenINtNtB1T_8iterator9ArrayIterRB1M_EENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENCB4G_s1_0EEB4O_"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_s1_00EEEB46_: argument 0"}
!126 = distinct !{!126, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBL_3map3MapINtNtNtB4_5slice4iter4IterINtNtNtCs1N9T06jgEdt_11arrow_array5array15byte_view_array20GenericByteViewArrayNtNtB2g_5types14StringViewTypeEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_0EIB1u_INtBJ_7FlattenINtNtB2g_8iterator9ArrayIterRB29_EENCNCB3Y_s1_00EEEB46_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEEB4s_: argument 0"}
!129 = distinct !{!129, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtB17_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB24_5array15byte_view_array20GenericByteViewArrayNtNtB24_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEEB4s_"}
!130 = !{!128, !125, !122}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEB45_: argument 0"}
!133 = distinct !{!133, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1H_5array15byte_view_array20GenericByteViewArrayNtNtB1H_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00EEB45_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1r_5array15byte_view_array20GenericByteViewArrayNtNtB1r_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!136 = distinct !{!136, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1r_5array15byte_view_array20GenericByteViewArrayNtNtB1r_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1y_5array15byte_view_array20GenericByteViewArrayNtNtB1y_5types14StringViewTypeEEINtNtB4_6option8IntoIterReEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!139 = distinct !{!139, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1y_5array15byte_view_array20GenericByteViewArrayNtNtB1y_5types14StringViewTypeEEINtNtB4_6option8IntoIterReEEECs14kWLkQVSKO_14deltalake_core"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1l_5array15byte_view_array20GenericByteViewArrayNtNtB1l_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!142 = distinct !{!142, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1l_5array15byte_view_array20GenericByteViewArrayNtNtB1l_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB17_5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!145 = distinct !{!145, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB17_5array15byte_view_array20GenericByteViewArrayNtNtB17_5types14StringViewTypeEEEECs14kWLkQVSKO_14deltalake_core"}
!146 = !{!144, !141, !138, !135, !132, !128, !125, !122}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!149 = distinct !{!149, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtBL_5array15byte_view_array20GenericByteViewArrayNtNtBL_5types14StringViewTypeEEECs14kWLkQVSKO_14deltalake_core"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!152 = distinct !{!152, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer4null10NullBufferEECs14kWLkQVSKO_14deltalake_core"}
!153 = !{!151, !148, !144, !141, !138, !135, !132, !128, !125, !122}
end_hunk_1
