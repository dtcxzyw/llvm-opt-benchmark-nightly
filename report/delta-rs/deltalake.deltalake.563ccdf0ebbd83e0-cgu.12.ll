inline.NumInlined: 5547
inline.NumDeleted: 1701
begin_hunk_0_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtB8_3err5PyErrENCNvMsl_B1v_B1t_3new0EB1v_:bb.a
  %i.bw = load i32, ptr %i.c, align 4, !noalias !54, !noundef !4
  %.not.i.i = icmp eq i32 %i.bw, %i.bv
  br i1 %.not.i.i, label %bb.ac, label %bb.ae, !prof !31

bb.ac:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  %i.bx = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, i64 80) acquire, align 8, !noalias !54
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ak, label %bb.ad, !prof !31

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockNtNtNtCskQDtHcQtBkN_5tokio7runtime7runtime7RuntimeE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rts_0E0zEB2l_(ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT)
          to label %bb.ak unwind label %bb.t, !noalias !49

bb.ae:                                            ; preds = %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !54
  store ptr %i.c, ptr %i.a, align 8, !noalias !54
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !54
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.bz, align 8, !noalias !54
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs8_NtNtNtCsbvkFyIu7lgC_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !54
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @193, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
          to label %.noexc126.i unwind label %bb.t, !noalias !49

.noexc126.i:                                      ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !54
  %i.ca = load i64, ptr %i.i, align 16, !range !55, !noalias !54, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4
  br i1 %i.cb, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.698.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.245.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.597.0..sroa_idx.i, i64 104, i1 false), !noalias !54
  store i64 %i.ca, ptr %i.y, align 8, !noalias !54
  %.sroa.346.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.346.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(224) %.sroa.698.0..sroa_idx.i, i64 224, i1 false), !noalias !54
  br label %bb.aa

bb.ah:                                            ; preds = %bb.af
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !54
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.cc)
          to label %bb.ai unwind label %bb.t, !noalias !49

bb.ai:                                            ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !52
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !54
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aw, %bb.ai
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n, !noalias !49

bb.ak:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.p, ptr noundef nonnull align 8 dereferenceable(336) %i.y, i64 336, i1 false), !noalias !54
  %i.ce = getelementptr inbounds nuw i8, ptr %i.p, i64 456
  store i8 0, ptr %i.ce, align 8, !noalias !54
  invoke void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime7runtimeNtB3_7Runtime8block_onNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core5table7builderNtB1b_17DeltaTableBuilder4load0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noundef nonnull align 8 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt8TOKIO_RT, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(1520) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137)
          to label %bb.al unwind label %bb.t, !noalias !49

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !54
  %i.cf = load i64, ptr %i.g, align 16, !range !3, !noalias !54, !noundef !4
  %i.cg = trunc nuw i64 %i.cf to i1
  br i1 %i.cg, label %bb.av, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(120) %i.ch, i64 120, i1 false), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !54
  %i.ci = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTable9table_url(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.q)
          to label %bb.an unwind label %bb.au, !noalias !49 ; 6 uses

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !54
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.ao unwind label %bb.au, !noalias !49

bb.ao:                                            ; preds = %bb.an
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.859.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.cp = load <4 x i32>, ptr %i.cj, align 4, !noalias !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.15.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(17) %i.ck, i64 17, i1 false), !noalias !49
  %i.cq = load i32, ptr %i.cm, align 4, !noalias !49, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !54
  %i.cr = load <2 x i16>, ptr %i.cl, align 8, !noalias !49
  %i.cs = load <4 x i32>, ptr %i.cn, align 8, !noalias !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.co, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false), !noalias !54
  store <4 x i32> %i.cs, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !54
  store <2 x i16> %i.cr, ptr %.sroa.859.0..sroa_idx.i, align 8, !noalias !54
  store <4 x i32> %i.cp, ptr %.sroa.10.0..sroa_idx.i, align 4, !noalias !54
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  store i32 %i.cq, ptr %.sroa.14.0..sroa_idx.i, align 4, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5106.i)
  %.sroa.5106.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5106.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(120) %.sroa.5106.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(120) %i.q, i64 120, i1 false), !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !54
  store i64 1, ptr %i.d, align 8, !noalias !54
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ct, align 8, !noalias !54
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.cu, align 8, !noalias !54
  %.sroa.4105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.4105.0..sroa_idx.i, align 4, !noalias !54
  %.sroa.5106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(123) %.sroa.5106.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(123) %.sroa.5106.i, i64 123, i1 false), !noalias !54
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !59
  %i.cv = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1697) 144, i64 noundef range(i64 8, 17) 8) #41, !noalias !59 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.ap, label %bb.as, !prof !9

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #42
          to label %.noexc128.i unwind label %bb.aq, !noalias !49

.noexc128.i:                                      ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.cy)
          to label %.body.i unwind label %bb.ar, !noalias !49

bb.ar:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !49
  unreachable

.body.i:                                          ; preds = %bb.aq
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7p2uQeJxui2_9deltalake10filesystem8FsConfigEBK_(ptr noalias noundef align 8 dereferenceable(136) %i.o) #43
          to label %bb.c unwind label %bb.at, !noalias !49

bb.as:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.cv, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5106.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 136, i1 false), !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !54
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.cv, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !54
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit5

bb.at:                                            ; preds = %bb.bg, %bb.ba, %bb.az, %bb.ay, %bb.au, %.body.i
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !49
  unreachable

bb.au:                                            ; preds = %bb.an, %bb.am
  %i.db = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(120) %i.q) #43
          to label %bb.ay unwind label %bb.at, !noalias !49

bb.av:                                            ; preds = %bb.al
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !54
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.dc)
          to label %bb.aw unwind label %bb.t, !noalias !49

bb.aw:                                            ; preds = %bb.av
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dd, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !52
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !54
  br label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !54
  %i.de = load ptr, ptr %i.av, align 8, !alias.scope !52, !noalias !49, !noundef !4
  %i.df = icmp ne ptr %i.de, null
  %i.dg = trunc nuw i8 %.sroa.060.3.i to i1
  %or.cond.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i, label %bb.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit5

bb.ax:                                            ; preds = %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit5 unwind label %bb.bh

bb.ay:                                            ; preds = %bb.au, %bb.t
  %.sroa.060.4.ph.i = phi i8 [ %.sroa.060.3.i, %bb.au ], [ %.sroa.060.5.i, %bb.t ] ; 2 uses
  %.sroa.064.3.ph.i = phi i1 [ false, %bb.au ], [ %.sroa.064.4.i, %bb.t ]
  %.pn117.ph.i = phi { ptr, i32 } [ %i.db, %bb.au ], [ %i.bf, %bb.t ] ; 2 uses
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit131.i unwind label %bb.at, !noalias !49

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit131.i: ; preds = %bb.ay
  br i1 %.sroa.064.3.ph.i, label %bb.az, label %bb.c

bb.az:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit131.i, %.thread140.i
  %.pn119139.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread140.i ], [ %.pn117.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit131.i ]
  %.sroa.060.1138.i = phi i8 [ 1, %.thread140.i ], [ %.sroa.060.4.ph.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit131.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.y) #43
          to label %bb.c unwind label %bb.at, !noalias !49

bb.ba:                                            ; preds = %bb.h
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder17DeltaTableBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(336) %i.x) #43
          to label %bb.c unwind label %bb.at, !noalias !49

bb.bb:                                            ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !54
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.dj)
          to label %bb.bc unwind label %bb.d, !noalias !49

bb.bc:                                            ; preds = %bb.bb
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dk, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !noalias !52
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !54
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !52, !noalias !49, !noundef !4
  %.not123.i = icmp eq ptr %i.dm, null
  br i1 %.not123.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit5, label %bb.ax

bb.be:                                            ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i, i64 88, i1 false), !noalias !54
  store i64 %i.aq, ptr %i.n, align 16, !noalias !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !54
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.n)
          to label %bb.bf unwind label %bb.d, !noalias !49

bb.bf:                                            ; preds = %bb.be
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false), !noalias !52
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !49, !noalias !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !54
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.bd

bb.bg:                                            ; preds = %bb.c
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %.body unwind label %bb.at, !noalias !49

bb.bh:                                            ; preds = %bb.ax
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.bg, %bb.bh
  %eh.lpad-body = phi { ptr, i32 } [ %i.do, %bb.bh ], [ %.pn121.i, %bb.bg ], [ %.pn121.i, %bb.c ]
  invoke void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %.thread unwind label %bb.bi

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgbCypRs12E4_4pyo38internal5state13SuspendAttachECs7p2uQeJxui2_9deltalake.exit5: ; preds = %bb.bd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit.i, %bb.as, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvXs4_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttachNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.bi:                                            ; preds = %bb.bk, %.body
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44
  unreachable

.thread:                                          ; preds = %bb.bj, %bb.bk, %.body
  %.pn9 = phi { ptr, i32 } [ %i.dq, %bb.bj ], [ %eh.lpad-body, %.body ], [ %i.dq, %bb.bk ]
  resume { ptr, i32 } %.pn9

bb.bj:                                            ; preds = %bb.a
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !62, !noundef !4
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dr)
          to label %.thread unwind label %bb.bi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultNtCs7p2uQeJxui2_9deltalake13RawDeltaTableNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNvB1v_18write_to_deltalake0EB1v_(ptr dead_on_unwind noalias noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 6 uses
  %i.d = alloca [144 x i8], align 8               ; 9 uses
  %i.e = alloca [128 x i8], align 16              ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [136 x i8], align 8               ; 5 uses
  %.sroa.520.i = alloca [123 x i8], align 1       ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 10 uses
  %i.j = alloca [1144 x i8], align 8              ; 6 uses
  %i.k = alloca [96 x i8], align 16               ; 5 uses
  %.sroa.6.i = alloca [88 x i8], align 8          ; 6 uses
  %i.l = alloca [88 x i8], align 8                ; 15 uses
  %i.m = alloca [48 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = tail call { i64, ptr } @_RNvMs3_NtNtCsgbCypRs12E4_4pyo38internal5stateNtB5_13SuspendAttach3new() ; 2 uses
  %i.p = extractvalue { i64, ptr } %i.o, 0
  %i.q = extractvalue { i64, ptr } %i.o, 1
  store i64 %i.p, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.q, ptr %i.r, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !72
  %i.s = load ptr, ptr %1, align 8, !alias.scope !70, !noalias !74, !noundef !4
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBK_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc unwind label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.t = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @22)
          to label %.noexc3 unwind label %bb.aa   ; 2 uses

.noexc3:                                          ; preds = %bb.c
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = extractvalue { i64, i64 } %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @24, i64 32, i1 false), !noalias !72
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !72
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 %i.v, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !72
  br label %.noexc

.noexc:                                           ; preds = %bb.b, %.noexc3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !72
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !72
  invoke void @_RINvNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16ensure_table_uriRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(none) dereferenceable(96) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.e unwind label %bb.d, !noalias !67

.body34.i:                                        ; preds = %bb.s, %.body.i, %bb.d
  %.pn29.i = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.w, %bb.d ], [ %i.be, %bb.s ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %.body unwind label %bb.z, !noalias !74

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i.i, %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.e:                                             ; preds = %.noexc
  %i.x = load i64, ptr %i.k, align 16, !range !39, !noalias !72, !noundef !4 ; 2 uses
  %.not27.i = icmp eq i64 %i.x, -9223372036854775711
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false), !noalias !72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !72
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.215.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.i, i64 88, i1 false), !noalias !75
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 16, !alias.scope !67, !noalias !75
  store i64 -9223372036854775808, ptr %0, align 16, !alias.scope !67, !noalias !75
end_hunk_0
begin_hunk_1_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB1y_10operations6delete13DeleteMetricsENtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3t_13RawDeltaTable6delete0EB3t_:bb.a
  %.sroa.044.0.i = phi i1 [ true, %bb.c ], [ true, %bb.bs ], [ %.sroa.044.2.ph.i, %bb.m ], [ true, %bb.g ], [ false, %.thread154.i ], [ %.sroa.044.4.ph.i, %bb.q ], [ true, %bb.ad ], [ false, %bb.bo ], [ true, %bb.u ], [ true, %bb.y ], [ false, %bb.be ]
  %.pn88.i = phi { ptr, i32 } [ %i.ar, %bb.c ], [ %lpad.thr_comm.i, %bb.bs ], [ %lpad.thr_comm.split-lp.i, %bb.m ], [ %i.ba, %bb.g ], [ %.pn163.i, %.thread154.i ], [ %lpad.thr_comm.split-lp167.i, %bb.q ], [ %i.ca, %bb.ad ], [ %i.el, %bb.bo ], [ %i.br, %bb.u ], [ %i.bw, %bb.y ], [ %i.ed, %bb.be ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 352 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !133, !alias.scope !677, !noalias !674, !noundef !4
  %i.ap = icmp ne i64 %i.ao, -9223372036854775808
  %i.aq = trunc nuw i8 %.sroa.050.0.i to i1
  %or.cond7.i = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond7.i, label %bb.cf, label %bb.ce

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.as = load i64, ptr %i.aa, align 8, !range !3, !noalias !679, !noundef !4
  %i.at = trunc nuw i64 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !679, !nonnull !4, !align !32, !noundef !4 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !range !5, !noalias !679, !noundef !4 ; 3 uses
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ay = trunc nuw i8 %i.ax to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !679
  invoke void @_RINvNtCs7p2uQeJxui2_9deltalake5error9to_rt_errINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noundef nonnull align 8 %i.av, i1 noundef zeroext %i.ay)
          to label %bb.bt unwind label %bb.c, !noalias !679

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !679
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  invoke fastcc void @_RNvXs3_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.az)
          to label %bb.h unwind label %bb.g, !noalias !679

bb.g:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.av, i8 %i.ax) #43
          to label %.thread.i unwind label %bb.ae, !noalias !679

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bc = trunc nuw i8 %i.ax to i1
  br i1 %i.bc, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !679
  %i.be = and i64 %i.bd, 9223372036854775807
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.bg = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #46
          to label %.noexc.i unwind label %bb.bs, !noalias !679

.noexc.i:                                         ; preds = %bb.j
  br i1 %i.bg, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.bb monotonic, align 4, !noalias !679
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.k, %.noexc.i, %bb.i, %bb.h
  %i.bh = atomicrmw xchg ptr %i.av, i32 0 release, align 4, !noalias !679
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i, !prof !9

bb.l:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.bs, !noalias !679

bb.m:                                             ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.050.2.ph.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.050.3.i, %bb.ak ]
  %.sroa.047.2.ph.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.047.5.i, %bb.ak ]
  %.sroa.044.2.ph.i = phi i1 [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ false, %bb.ak ]
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.y, ptr noundef nonnull align 8 dereferenceable(120) %i.ab, i64 120, i1 false), !noalias !679
  invoke void @_RNvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable6delete(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(address) dereferenceable(544) %i.z, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.y)
          to label %bb.n unwind label %bb.m, !noalias !679

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !679
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 352 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !range !133, !alias.scope !677, !noalias !674, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.bk, -9223372036854775808
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.v, ptr noundef nonnull align 16 dereferenceable(544) %i.z, i64 544, i1 false), !noalias !679
  invoke void @_RINvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB6_13DeleteBuilder14with_predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.w, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(544) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %bb.r unwind label %bb.q, !noalias !679

bb.p:                                             ; preds = %bb.r, %bb.n
  %.sroa.050.3.i = phi i8 [ 0, %bb.r ], [ 1, %bb.n ] ; 13 uses
  %i.bl = load i64, ptr %i.ac, align 8, !range !165, !alias.scope !677, !noalias !674, !noundef !4
  %.not84.i = icmp eq i64 %i.bl, 2
  br i1 %.not84.i, label %bb.t, label %bb.s

.thread168.i:                                     ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.ay, %bb.ax, %bb.aw, %bb.ai, %bb.t
  %lpad.thr_comm166.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread154.i

bb.q:                                             ; preds = %bb.bk, %bb.bi, %bb.bh, %bb.ag, %bb.aa, %bb.o
  %.sroa.050.5.ph.i = phi i8 [ 0, %bb.o ], [ %.sroa.050.3.i, %bb.ag ], [ %.sroa.050.3.i, %bb.bh ], [ %.sroa.050.3.i, %bb.bi ], [ %.sroa.050.3.i, %bb.bk ], [ %.sroa.050.3.i, %bb.aa ]
  %.sroa.047.4.ph.i = phi i8 [ 1, %bb.o ], [ %.sroa.047.5.i, %bb.ag ], [ %.sroa.047.5.i, %bb.bh ], [ %.sroa.047.5.i, %bb.bi ], [ %.sroa.047.5.i, %bb.bk ], [ 0, %bb.aa ]
  %.sroa.044.4.ph.i = phi i1 [ true, %bb.o ], [ false, %bb.ag ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.aa ]
  %lpad.thr_comm.split-lp167.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.z, ptr noundef nonnull align 16 dereferenceable(544) %i.w, i64 544, i1 false), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !679
  br label %bb.p

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.u, ptr noundef nonnull align 8 dereferenceable(392) %i.ac, i64 264, i1 false), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.s, ptr noundef nonnull align 16 dereferenceable(544) %i.z, i64 544, i1 false), !noalias !679
  invoke void @_RNvCs7p2uQeJxui2_9deltalake21set_writer_properties(ptr noalias noundef nonnull sret([256 x i8]) align 16 captures(none) dereferenceable(256) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.u)
          to label %bb.v unwind label %bb.u, !noalias !679

bb.t:                                             ; preds = %bb.z, %bb.p
  %.sroa.047.5.i = phi i8 [ 0, %bb.z ], [ 1, %bb.p ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !679
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.bm, i64 88, i1 false), !noalias !674
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.bo = load i8, ptr %i.bn, align 8, !range !137, !alias.scope !677, !noalias !674, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ac, i64 385
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !677, !noalias !674
  invoke void @_RNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.r, i8 noundef %i.bo, i8 %i.bq)
          to label %bb.af unwind label %.thread168.i, !noalias !679

bb.u:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(544) %i.s) #43
          to label %.thread.i unwind label %bb.ae, !noalias !679

bb.v:                                             ; preds = %bb.s
  %i.bs = load i64, ptr %i.g, align 16, !range !3, !noalias !679, !noundef !4
  %i.bt = trunc nuw i64 %i.bs to i1
  br i1 %i.bt, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !679
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.bu)
          to label %bb.aa unwind label %bb.ad, !noalias !679

bb.x:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder22with_writer_properties(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.t, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(544) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(248) %i.bv)
          to label %bb.z unwind label %bb.y, !noalias !679

bb.y:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.z, ptr noundef nonnull align 16 dereferenceable(544) %i.t, i64 544, i1 false), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !679
  br label %bb.t

bb.aa:                                            ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !677
  store i64 4, ptr %0, align 8, !alias.scope !674, !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !679
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(544) %i.s)
          to label %bb.ab unwind label %bb.q, !noalias !679

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !679
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ak, %bb.ab
  %.sroa.047.6.i = phi i8 [ 0, %bb.ab ], [ %.sroa.047.5.i, %bb.ak ] ; 2 uses
  %.sroa.044.5.i = phi i8 [ 1, %bb.ab ], [ 0, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !679
  %i.by = icmp ne i64 %i.bk, -9223372036854775808
  %i.bz = trunc nuw i8 %.sroa.050.3.i to i1
  %or.cond.i = and i1 %i.by, %i.bz
  br i1 %or.cond.i, label %bb.bp, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit120.i

bb.ad:                                            ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(544) %i.s) #43
          to label %.thread.i unwind label %bb.ae, !noalias !679

bb.ae:                                            ; preds = %bb.cj, %bb.ch, %bb.cf, %bb.cb, %bb.bw, %bb.bs, %.thread154.i, %bb.bo, %bb.an, %bb.ad, %bb.u, %bb.g
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !674
  unreachable

bb.af:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !679
  %i.cc = load i64, ptr %i.q, align 8, !range !133, !noalias !679, !noundef !4
  %.not85.i = icmp eq i64 %i.cc, -9223372036854775808
  br i1 %.not85.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.o, ptr noundef nonnull align 16 dereferenceable(544) %i.z, i64 544, i1 false), !noalias !679
  invoke void @_RNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6deleteNtB5_13DeleteBuilder22with_commit_properties(ptr noalias noundef nonnull sret([544 x i8]) align 16 captures(none) dereferenceable(544) %i.p, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(544) %i.o, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.q)
          to label %bb.ah unwind label %bb.q, !noalias !679

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.z, ptr noundef nonnull align 16 dereferenceable(544) %i.p, i64 544, i1 false), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !679
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !679
  %i.cd = load ptr, ptr %i.ai, align 8, !alias.scope !677, !noalias !674, !nonnull !4, !align !32, !noundef !4
  invoke void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable9log_store(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cd)
          to label %bb.aj unwind label %.thread168.i, !noalias !679

bb.aj:                                            ; preds = %bb.ai
  %i.ce = load i64, ptr %i.l, align 8, !range !3, !noalias !679, !noundef !4
  %i.cf = trunc nuw i64 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.068.0.copyload.i = load ptr, ptr %i.cg, align 8, !noalias !679 ; 3 uses
  %.sroa.569.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.569.0.copyload.i = load ptr, ptr %.sroa.569.0..sroa_idx.i, align 8, !noalias !679 ; 4 uses
  br i1 %i.cf, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.sroa.670.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.373.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.373.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.670.0..sroa_idx.i, i64 40, i1 false), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !679
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.068.0.copyload.i, ptr %i.ch, align 8, !alias.scope !674, !noalias !677
  %.sroa.272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.569.0.copyload.i, ptr %.sroa.272.0..sroa_idx.i, align 8, !alias.scope !674, !noalias !677
  store i64 4, ptr %0, align 8, !alias.scope !674, !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !679
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6delete13DeleteBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(544) %i.z)
          to label %bb.ac unwind label %bb.m, !noalias !679

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !679
  store ptr %.sroa.068.0.copyload.i, ptr %i.m, align 8, !noalias !679
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.569.0.copyload.i, ptr %i.ci, align 8, !noalias !679
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.569.0.copyload.i, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !range !90, !invariant.load !4, !noalias !679
  %i.cl = add nsw i64 %i.ck, -1
  %i.cm = and i64 %i.cl, -16
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.068.0.copyload.i, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.569.0.copyload.i, i64 64
  %i.cq = load ptr, ptr %i.cp, align 8, !invariant.load !4, !noalias !679, !nonnull !4
  invoke void %i.cq(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noundef nonnull %i.co)
          to label %bb.ao unwind label %bb.am, !noalias !679

bb.am:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i101.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.al
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.au, %bb.ar, %bb.am
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dj, %bb.ar ], [ %i.cr, %bb.am ], [ %i.dl, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.cs = load ptr, ptr %i.m, align 8, !alias.scope !686, !noalias !679, !nonnull !4, !noundef !4
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !687
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.an, label %.thread154.i

bb.an:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #46
          to label %.thread154.i unwind label %bb.ae, !noalias !679

bb.ao:                                            ; preds = %bb.al
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !679, !noundef !4
  %i.cx = icmp eq i64 %i.cw, 14
  br i1 %i.cx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !679, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 1
  %i.db = xor i64 %i.da, 8019876598254362956
  %i.dc = getelementptr i8, ptr %i.cz, i64 6
  %i.dd = load i64, ptr %i.dc, align 1
  %i.de = xor i64 %i.dd, 7310027690581913420
  %i.df = or i64 %i.db, %i.de
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i unwind label %bb.ar, !noalias !679

bb.ar:                                            ; preds = %bb.aq
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.as, !noalias !679

bb.as:                                            ; preds = %bb.ar
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !679
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.am, !noalias !679

bb.at:                                            ; preds = %bb.ap
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i101.i unwind label %bb.au, !noalias !679

bb.au:                                            ; preds = %bb.at
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body.i unwind label %bb.av, !noalias !679

bb.av:                                            ; preds = %bb.au
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !679
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i101.i: ; preds = %bb.at
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit105.i unwind label %bb.am, !noalias !679

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !688)
  call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.dn = load ptr, ptr %i.m, align 8, !alias.scope !694, !noalias !679, !nonnull !4, !noundef !4
  %i.do = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !695
  %i.dp = icmp eq i64 %i.do, 1
  br i1 %i.dp, label %bb.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit107.i

bb.aw:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m) #46
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit107.i unwind label %.thread168.i, !noalias !679

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit107.i: ; preds = %bb.aw, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !679
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_EECs7p2uQeJxui2_9deltalake.exit107.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !679
  %i.dq = invoke noundef i32 @_RNvNtCs2pqxYH9ZEk8_3std7process2id()
          to label %.noexc108.i unwind label %.thread168.i, !noalias !679

.noexc108.i:                                      ; preds = %bb.ax
  store i32 %i.dq, ptr %i.c, align 4, !noalias !679
  %i.dr = load atomic i32, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID acquire, align 4, !noalias !696
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i, label %bb.ay, !prof !31

bb.ay:                                            ; preds = %.noexc108.i
  invoke void @_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE10initializeNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1y_(ptr noundef nonnull align 4 @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
          to label %_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i unwind label %.thread168.i, !noalias !679

_RINvMNtNtCs2pqxYH9ZEk8_3std4sync9once_lockINtB3_8OnceLockmE15get_or_try_initNCINvB2_11get_or_initNCNvNtCs7p2uQeJxui2_9deltalake5utils2rt0E0zEB1D_.exit.i.i: ; preds = %bb.ay, %.noexc108.i
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs7p2uQeJxui2_9deltalake5utils2rt3PID, i64 4), align 4, !noalias !679, !noundef !4 ; 2 uses
  store i32 %i.dt, ptr %i.b, align 4, !noalias !679
  %i.du = load i32, ptr %i.c, align 4, !noalias !679, !noundef !4
  %.not.i.i = icmp eq i32 %i.du, %i.dt
  br i1 %.not.i.i, label %bb.az, label %bb.bb, !prof !31
end_hunk_1
begin_hunk_2_@_RINvMs0_NtCsgbCypRs12E4_4pyo36markerNtB6_6Python6detachINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableNtNtNtB1y_10operations6update13UpdateMetricsENtNtB8_3err5PyErrENCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB3t_13RawDeltaTable6update0EB3t_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 376 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !719, !noalias !716, !nonnull !4, !align !32, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !721, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  invoke void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableE4lockCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull align 8 %i.ax)
          to label %bb.d unwind label %bb.c, !noalias !721

.thread.i:                                        ; preds = %bb.ck, %.thread184.i, %bb.bu, %bb.bk, %bb.y, %bb.x, %bb.m, %bb.g, %bb.c
  %.sroa.050.0.i = phi i8 [ 1, %bb.c ], [ 1, %bb.ck ], [ %.sroa.050.2.ph.i, %bb.m ], [ 1, %bb.g ], [ %.sroa.050.5.ph.i, %bb.y ], [ %.sroa.050.3.i, %bb.x ], [ %.sroa.050.3.i, %.thread184.i ], [ %.sroa.050.3.i, %bb.bu ], [ %.sroa.050.3.i, %bb.bk ]
  %.sroa.047.0.i = phi i8 [ 1, %bb.c ], [ 1, %bb.ck ], [ %.sroa.041.2.ph.i, %bb.m ], [ 1, %bb.g ], [ %.sroa.047.4.ph.i, %bb.y ], [ 0, %bb.x ], [ 0, %.thread184.i ], [ 0, %bb.bu ], [ 0, %bb.bk ]
  %.sroa.044.0.i = phi i8 [ 1, %bb.c ], [ 1, %bb.ck ], [ %.sroa.044.2.ph.i, %bb.m ], [ 1, %bb.g ], [ %.sroa.044.4.ph198.i, %bb.y ], [ 1, %bb.x ], [ %.sroa.044.3193.i, %.thread184.i ], [ %.sroa.044.6.i, %bb.bu ], [ %.sroa.044.6.i, %bb.bk ] ; 2 uses
  %.sroa.041.0.i = phi i8 [ 1, %bb.c ], [ 1, %bb.ck ], [ %.sroa.041.2.ph.i, %bb.m ], [ 1, %bb.g ], [ %.sroa.041.4.ph199.i, %bb.y ], [ 1, %bb.x ], [ %.sroa.041.3194.i, %.thread184.i ], [ 0, %bb.bu ], [ 0, %bb.bk ] ; 2 uses
  %.pn91.i = phi { ptr, i32 } [ %i.bb, %bb.c ], [ %lpad.thr_comm.i, %bb.ck ], [ %lpad.thr_comm.split-lp.i, %bb.m ], [ %i.bk, %bb.g ], [ %lpad.thr_comm.split-lp201.i, %bb.y ], [ %.pn86.i, %bb.x ], [ %.pn88195.i, %.thread184.i ], [ %i.fe, %bb.bu ], [ %i.ev, %bb.bk ] ; 2 uses
  %i.ay = load i64, ptr %i.an, align 8, !range !165, !alias.scope !719, !noalias !716, !noundef !4
  %i.az = icmp ne i64 %i.ay, 2
  %i.ba = trunc nuw i8 %.sroa.050.0.i to i1
  %or.cond7.i = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond7.i, label %bb.cz, label %bb.cy

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.d:                                             ; preds = %bb.b
  %i.bc = load i64, ptr %i.al, align 8, !range !3, !noalias !721, !noundef !4
  %i.bd = trunc nuw i64 %i.bc to i1               ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !721, !nonnull !4, !align !32, !noundef !4 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bh = load i8, ptr %i.bg, align 8, !range !5, !noalias !721, !noundef !4 ; 3 uses
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = trunc nuw i8 %i.bh to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !721
  invoke void @_RINvNtCs7p2uQeJxui2_9deltalake5error9to_rt_errINtNtNtCs2pqxYH9ZEk8_3std4sync6poison11PoisonErrorINtNtBL_5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEEEB4_(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noundef nonnull align 8 %i.bf, i1 noundef zeroext %i.bi)
          to label %bb.cl unwind label %bb.c, !noalias !721

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !721
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke fastcc void @_RNvXs3_NtCs14kWLkQVSKO_14deltalake_core5tableNtB5_10DeltaTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bj)
          to label %bb.h unwind label %bb.g, !noalias !721

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake(ptr nonnull %i.bf, i8 %i.bh) #43
          to label %.thread.i unwind label %bb.ab, !noalias !721

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bm = trunc nuw i8 %i.bh to i1
  br i1 %i.bm, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !721
  %i.bo = and i64 %i.bn, 9223372036854775807
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.bq = invoke noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #46
          to label %.noexc.i unwind label %bb.ck, !noalias !721

.noexc.i:                                         ; preds = %bb.j
  br i1 %i.bq, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc.i
  store atomic i8 1, ptr %i.bl monotonic, align 4, !noalias !721
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.k, %.noexc.i, %bb.i, %bb.h
  %i.br = atomicrmw xchg ptr %i.bf, i32 0 release, align 4, !noalias !721
  %i.bs = icmp eq i32 %i.br, 2
  br i1 %i.bs, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i, !prof !9

bb.l:                                             ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.ck, !noalias !721

bb.m:                                             ; preds = %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  %.sroa.050.2.ph.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.050.3.i, %bb.aq ]
  %.sroa.044.2.ph.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ %.sroa.044.6.i, %bb.aq ]
  %.sroa.041.2.ph.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i ], [ 0, %bb.aq ] ; 2 uses
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.l, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %i.am, i64 120, i1 false), !noalias !721
  invoke void @_RNvMs_NtCs14kWLkQVSKO_14deltalake_core10operationsNtNtB6_5table10DeltaTable6update(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(address) dereferenceable(592) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.ai)
          to label %bb.n unwind label %bb.m, !noalias !721

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardNtNtCs14kWLkQVSKO_14deltalake_core5table10DeltaTableEECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !721
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !719, !noalias !716, !nonnull !4, !noundef !4
  %i.bv = load i8, ptr %i.bu, align 1, !range !5, !noalias !721, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aj, i64 576
  store i8 %i.bv, ptr %i.bw, align 16, !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.ak, ptr noundef nonnull align 16 dereferenceable(592) %i.aj, i64 592, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !721
  %i.bx = load i64, ptr %i.an, align 8, !range !165, !alias.scope !719, !noalias !716, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.bx, 2
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ah, ptr noundef nonnull align 8 dereferenceable(448) %i.an, i64 264, i1 false), !noalias !716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.af, ptr noundef nonnull align 16 dereferenceable(592) %i.ak, i64 592, i1 false), !noalias !721
  invoke void @_RNvCs7p2uQeJxui2_9deltalake21set_writer_properties(ptr noalias noundef nonnull sret([256 x i8]) align 16 captures(none) dereferenceable(256) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(264) %i.ah)
          to label %bb.r unwind label %bb.q, !noalias !721

bb.p:                                             ; preds = %bb.v, %bb.n
  %.sroa.050.3.i = phi i8 [ 0, %bb.v ], [ 1, %bb.n ] ; 11 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.by, i64 48, i1 false), !noalias !716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !721
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBN_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.ac unwind label %.thread202.i, !noalias !721

bb.q:                                             ; preds = %bb.o
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6update13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(592) %i.af) #43
          to label %.thread245.i unwind label %bb.ab, !noalias !721

bb.r:                                             ; preds = %bb.o
  %i.ca = load i64, ptr %i.i, align 16, !range !3, !noalias !721, !noundef !4
  %i.cb = trunc nuw i64 %i.ca to i1
  br i1 %i.cb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !721
  invoke void @_RNvXs0_NtCs7p2uQeJxui2_9deltalake5errorNtNtCsgbCypRs12E4_4pyo33err5PyErrINtNtCsbvkFyIu7lgC_4core7convert4FromNtB5_11PythonErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.h, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(96) %i.cc)
          to label %bb.w unwind label %bb.aa, !noalias !721

bb.t:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB4_13UpdateBuilder22with_writer_properties(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(none) dereferenceable(592) %i.ag, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(592) %i.af, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(248) %i.cd)
          to label %bb.v unwind label %bb.u, !noalias !721

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.thread245.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.ak, ptr noundef nonnull align 16 dereferenceable(592) %i.ag, i64 592, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !721
  br label %bb.p

bb.w:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cf, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !noalias !719
  store i64 4, ptr %0, align 8, !alias.scope !716, !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !721
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6update13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(592) %i.af)
          to label %.thread209.i unwind label %bb.y, !noalias !721

bb.x:                                             ; preds = %.body131.i
  br i1 %.sroa.039.4.i, label %.thread184.i, label %.thread.i

.thread202.i:                                     ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.ao, %bb.aj, %bb.ah, %bb.p
  %.sroa.044.4.ph.i = phi i8 [ %.sroa.044.6.i, %bb.bg ], [ %.sroa.044.6.i, %bb.be ], [ %.sroa.044.6.i, %bb.bd ], [ 1, %bb.p ], [ 1, %bb.ah ], [ %.sroa.044.6.i, %bb.aj ], [ %.sroa.044.6.i, %bb.ao ], [ %.sroa.044.6.i, %bb.bc ], [ %.sroa.044.6.i, %bb.bi ], [ %.sroa.044.6.i, %bb.bh ]
  %.sroa.041.4.ph.i = phi i8 [ 0, %bb.bg ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 1, %bb.p ], [ 1, %bb.ah ], [ 0, %bb.aj ], [ 0, %bb.ao ], [ 0, %bb.bc ], [ 0, %bb.bi ], [ 0, %bb.bh ]
  %lpad.thr_comm200.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread184.i

bb.y:                                             ; preds = %bb.bq, %bb.bo, %bb.bn, %bb.am, %bb.ai, %bb.w
  %.sroa.050.5.ph.i = phi i8 [ %.sroa.050.3.i, %bb.ai ], [ %.sroa.050.3.i, %bb.am ], [ %.sroa.050.3.i, %bb.bn ], [ %.sroa.050.3.i, %bb.bo ], [ %.sroa.050.3.i, %bb.bq ], [ 0, %bb.w ]
  %.sroa.047.4.ph.i = phi i8 [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %bb.bn ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 1, %bb.w ]
  %.sroa.044.4.ph198.i = phi i8 [ 0, %bb.ai ], [ %.sroa.044.6.i, %bb.am ], [ %.sroa.044.6.i, %bb.bn ], [ %.sroa.044.6.i, %bb.bo ], [ %.sroa.044.6.i, %bb.bq ], [ 1, %bb.w ]
  %.sroa.041.4.ph199.i = phi i8 [ 1, %bb.ai ], [ 0, %bb.am ], [ 0, %bb.bn ], [ 0, %bb.bo ], [ 0, %bb.bq ], [ 1, %bb.w ]
  %lpad.thr_comm.split-lp201.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread209.i:                                     ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !721
  br label %.thread217.i

bb.z:                                             ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !721
  %i.cg = icmp ne i64 %i.bx, 2
  %i.ch = trunc nuw i8 %.sroa.050.3.i to i1
  %or.cond.i = and i1 %i.cg, %i.ch
  br i1 %or.cond.i, label %bb.bw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs7p2uQeJxui2_9deltalake.exit137.i

bb.aa:                                            ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6update13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(592) %i.af) #43
          to label %.thread245.i unwind label %bb.ab, !noalias !721

bb.ab:                                            ; preds = %bb.dd, %bb.db, %.thread245.i, %bb.cz, %bb.cx, %bb.cv, %bb.cn, %bb.ck, %.thread184.i, %bb.cj, %bb.ci, %bb.ch, %.body125.i, %bb.bu, %bb.at, %.body131.i, %bb.aa, %bb.q, %bb.g
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #44, !noalias !716
  unreachable

bb.ac:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !721
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  br label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit134.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !721
  invoke void @_RNvXsE_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %bb.af unwind label %bb.ae, !noalias !721

.body131.i:                                       ; preds = %bb.cf, %.body125.i, %bb.ae
  %.sroa.039.4.i = phi i1 [ %.sroa.039.9.i, %.body125.i ], [ true, %bb.ae ], [ true, %bb.cf ]
  %.pn86.i = phi { ptr, i32 } [ %.pn84.i, %.body125.i ], [ %i.cl, %bb.ae ], [ %i.fk, %bb.cf ] ; 2 uses
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %bb.x unwind label %bb.ab, !noalias !721

bb.ae:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i130.i, %bb.ad
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body131.i

bb.af:                                            ; preds = %bb.ad
  %i.cm = load i64, ptr %i.ad, align 8, !range !133, !noalias !721, !noundef !4
  %.not80.i = icmp eq i64 %i.cm, -9223372036854775808
  br i1 %.not80.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.z, ptr noundef nonnull align 16 dereferenceable(592) %i.ak, i64 592, i1 false), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !721
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %bb.by unwind label %bb.bx, !noalias !721

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !721
  invoke void @_RNvXsC_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_11RawIntoIterTNtNtCs6Po7BT7Nknu_5alloc6string6StringBT_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit105.i unwind label %.thread202.i, !noalias !721

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit105.i: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !721
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 352 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !133, !alias.scope !719, !noalias !716, !noundef !4
  %.not81.i = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not81.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit105.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false), !noalias !716
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.u, ptr noundef nonnull align 16 dereferenceable(592) %i.ak, i64 592, i1 false), !noalias !721
  invoke void @_RINvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB5_13UpdateBuilder14with_predicateNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(none) dereferenceable(592) %i.v, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(592) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %bb.ak unwind label %bb.y, !noalias !721

bb.aj:                                            ; preds = %bb.ak, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit105.i
  %.sroa.044.6.i = phi i8 [ 0, %bb.ak ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterNtNtCs6Po7BT7Nknu_5alloc6string6StringB1C_EECs7p2uQeJxui2_9deltalake.exit105.i ] ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !721
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.t, ptr noundef nonnull align 8 dereferenceable(88) %i.cp, i64 88, i1 false), !noalias !716
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 440
  %i.cr = load i8, ptr %i.cq, align 8, !range !137, !alias.scope !719, !noalias !716, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 441
  %i.ct = load i8, ptr %i.cs, align 1, !alias.scope !719, !noalias !716
  invoke void @_RNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.t, i8 noundef %i.cr, i8 %i.ct)
          to label %bb.al unwind label %.thread202.i, !noalias !721

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.ak, ptr noundef nonnull align 16 dereferenceable(592) %i.v, i64 592, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !721
  br label %bb.aj

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !721
  %i.cu = load i64, ptr %i.s, align 8, !range !133, !noalias !721, !noundef !4
  %.not82.i = icmp eq i64 %i.cu, -9223372036854775808
  br i1 %.not82.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.q, ptr noundef nonnull align 16 dereferenceable(592) %i.ak, i64 592, i1 false), !noalias !721
  invoke void @_RNvMs_NtNtCs14kWLkQVSKO_14deltalake_core10operations6updateNtB4_13UpdateBuilder22with_commit_properties(ptr noalias noundef nonnull sret([592 x i8]) align 16 captures(none) dereferenceable(592) %i.r, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(592) %i.q, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.s)
          to label %bb.an unwind label %bb.y, !noalias !721

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.ak, ptr noundef nonnull align 16 dereferenceable(592) %i.r, i64 592, i1 false), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !721
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !721
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !721
  %i.cv = load ptr, ptr %i.at, align 8, !alias.scope !719, !noalias !716, !nonnull !4, !align !32, !noundef !4
  invoke void @_RNvMCs7p2uQeJxui2_9deltalakeNtB2_13RawDeltaTable9log_store(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.cv)
          to label %bb.ap unwind label %.thread202.i, !noalias !721

bb.ap:                                            ; preds = %bb.ao
  %i.cw = load i64, ptr %i.n, align 8, !range !3, !noalias !721, !noundef !4
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.070.0.copyload.i = load ptr, ptr %i.cy, align 8, !noalias !721 ; 3 uses
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.571.0.copyload.i = load ptr, ptr %.sroa.571.0..sroa_idx.i, align 8, !noalias !721 ; 4 uses
  br i1 %i.cx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.672.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.375.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.375.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.672.0..sroa_idx.i, i64 40, i1 false), !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.070.0.copyload.i, ptr %i.cz, align 8, !alias.scope !716, !noalias !719
  %.sroa.274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.571.0.copyload.i, ptr %.sroa.274.0..sroa_idx.i, align 8, !alias.scope !716, !noalias !719
  store i64 4, ptr %0, align 8, !alias.scope !716, !noalias !719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !721
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !721
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core10operations6update13UpdateBuilderECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(592) %i.ak)
          to label %bb.z unwind label %bb.m, !noalias !721

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  store ptr %.sroa.070.0.copyload.i, ptr %i.o, align 8, !noalias !721
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.571.0.copyload.i, ptr %i.da, align 8, !noalias !721
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.571.0.copyload.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !90, !invariant.load !4, !noalias !721
  %i.dd = add nsw i64 %i.dc, -1
  %i.de = and i64 %i.dd, -16
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.070.0.copyload.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.571.0.copyload.i, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !4, !noalias !721, !nonnull !4
  invoke void %i.di(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull %i.dg)
          to label %bb.au unwind label %bb.as, !noalias !721

bb.as:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i109.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.ar
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ba, %bb.ax, %bb.as
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eb, %bb.ax ], [ %i.dj, %bb.as ], [ %i.ed, %bb.ba ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.dk = load ptr, ptr %i.o, align 8, !alias.scope !728, !noalias !721, !nonnull !4, !noundef !4
  %i.dl = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !729
  %i.dm = icmp eq i64 %i.dl, 1
  br i1 %i.dm, label %bb.at, label %.thread184.i

bb.at:                                            ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcDNtNtCs14kWLkQVSKO_14deltalake_core8logstore8LogStoreEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o) #46
          to label %.thread184.i unwind label %bb.ab, !noalias !721

bb.au:                                            ; preds = %bb.ar
  %i.dn = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noalias !721, !noundef !4
  %i.dp = icmp eq i64 %i.do, 14
  br i1 %i.dp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dq = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !noalias !721, !nonnull !4, !noundef !4 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 1
  %i.dt = xor i64 %i.ds, 8019876598254362956
  %i.du = getelementptr i8, ptr %i.dr, i64 6
  %i.dv = load i64, ptr %i.du, align 1
  %i.dw = xor i64 %i.dv, 7310027690581913420
  %i.dx = or i64 %i.dt, %i.dw
  %i.dy = icmp ne i64 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
end_hunk_2
