inline.NumInlined: 769
inline.NumDeleted: 291
begin_hunk_0_@_RNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEEB2h_4pollCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a

bb.bx:                                            ; preds = %bb.bw
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCskItxkTFUcJI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bv
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCskItxkTFUcJI_4slab5EntryINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtB1j_4task4wake5WakerEEENtNtNtB1j_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.be

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCskItxkTFUcJI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.by

bb.by:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %.invoke172, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.01.1 = phi i1 [ false, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtCskItxkTFUcJI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ false, %.invoke172 ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78 ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret i1 %.sroa.01.1

bb.bz:                                            ; preds = %bb.cf, %.body.thread, %bb.ca, %bb.bn, %bb.bg
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.ca:                                            ; preds = %.body72
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.ek, i8 %i.em) #29
          to label %.body unwind label %bb.bz

bb.cb:                                            ; preds = %bb.an
  %i.ft = load ptr, ptr %i.ck, align 8, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %i.fv = cmpxchg ptr %i.fu, i64 1, i64 0 seq_cst seq_cst, align 8
  %.sroa.18.0.in.i61 = extractvalue { i64, i1 } %i.fv, 1
  br i1 %.sroa.18.0.in.i61, label %bb.cc, label %.invoke173, !prof !28

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.fw = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.fx = load i8, ptr %i.cs, align 8, !range !4, !noundef !3
  store ptr %i.fw, ptr %i.i, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i8 %i.fx, ptr %i.fy, align 8
  invoke void @_RNvXNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB8_6SharedpENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollNtB2_5ResetNtNtNtB1m_3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtBO_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit76 unwind label %bb.am

.invoke173:                                       ; preds = %bb.af, %bb.cb
  %i.fz = phi ptr [ @72, %bb.cb ], [ @73, %bb.af ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fz) #31
          to label %.cont174 unwind label %bb.am

.cont174:                                         ; preds = %.invoke173
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtBO_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit76: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ga = load ptr, ptr %i.m, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.gb = load ptr, ptr %0, align 8, !alias.scope !1391, !noundef !3 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78, label %bb.cd

bb.cd:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtBO_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit76
  %i.gd = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !1394
  %i.ge = icmp eq i64 %i.gd, 1
  br i1 %i.ge, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %0) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78 unwind label %.body53.thread106

.body53.thread106:                                ; preds = %bb.ce
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit78: ; preds = %bb.cd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtBO_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECsgO8S5jLFugx_23deltalake_catalog_unity.exit76, %bb.ce
  store ptr %i.ga, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.by

.body.thread:                                     ; preds = %bb.ay, %.thread89, %.body
  %.pn4294 = phi { ptr, i32 } [ %i.dq, %.thread89 ], [ %.pn42, %.body ], [ %i.eh, %bb.ay ]
  %.sroa.018.293 = phi i8 [ 1, %.thread89 ], [ %.sroa.018.2, %.body ], [ 1, %bb.ay ]
  invoke void @_RNvXNvXs9_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB8_6SharedpENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollNtB2_5ResetNtNtNtB1m_3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body53 unwind label %bb.bz

.thread:                                          ; preds = %bb.ai
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB17_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  store ptr %i.cw, ptr %0, align 8
  br label %bb.by

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split: ; preds = %.thread, %.body53.thread106
  %.sink = phi ptr [ %i.ga, %.body53.thread106 ], [ %i.cw, %.thread ]
  %.pn4488.ph = phi { ptr, i32 } [ %i.gf, %.body53.thread106 ], [ %i.gg, %.thread ]
  store ptr %.sink, ptr %0, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split, %bb.bw, %.body53.thread, %bb.cf, %.body53
  %.pn4488 = phi { ptr, i32 } [ %i.fq, %bb.bw ], [ %.pn44, %.body53 ], [ %.pn44105, %bb.cf ], [ %.pn44105, %.body53.thread ], [ %.pn4488.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.sink.split ]
  resume { ptr, i32 } %.pn4488

.body53.thread:                                   ; preds = %.body53..body53.thread_crit_edge, %bb.g, %bb.q
  %i.gh = phi ptr [ %.pre, %.body53..body53.thread_crit_edge ], [ %i.v, %bb.q ], [ %i.v, %bb.g ]
  %.pn44105 = phi { ptr, i32 } [ %.pn44, %.body53..body53.thread_crit_edge ], [ %.pn.i, %bb.q ], [ %i.ag, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.gi = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !1349
  %i.gj = icmp eq i64 %i.gi, 1
  br i1 %i.gj, label %bb.cf, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.cf:                                            ; preds = %.body53.thread
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #27
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bz
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !841, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors5array7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4y_8ReceiverB1y_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0EB34_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4x_8ReceiverB1x_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0EB33_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors4zero7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6ReadOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4x_8ReceiverB1x_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops0_0EB33_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCshhQzAC5dGUF_17crossbeam_channel7channelINtB5_8ReceiverINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2y_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !841, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.e
    i64 5, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors5array7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4z_8ReceiverB1y_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop0EB35_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors4list7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4y_8ReceiverB1x_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops_0EB34_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RINvMs1_NtCshhQzAC5dGUF_17crossbeam_channel7counterINtB6_8ReceiverINtNtNtB8_7flavors4zero7ChannelINtNtNtCs95DO3lnzZ3L_4moka6common10concurrent7WriteOpNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE7releaseNCNvXsb_NtB8_7channelINtB4y_8ReceiverB1x_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drops0_0EB34_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.a, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputbNtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.a = icmp eq i64 %i.c, -1
  br i1 %.not.a, label %bb.b, label %1

1:                                                ; preds = %bb.a
  %2 = load ptr, ptr %0, align 8, !noundef !3     ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc9, %1
  ret void

bb.c:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !151, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !27, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !4, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !5, !noundef !3
  %.not2 = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke { ptr, ptr } @_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
          to label %bb.i unwind label %bb.h       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = trunc nuw i8 %i.l to i1
  br i1 %i.q, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.r = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !28

.noexc:                                           ; preds = %bb.f
  %i.u = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.u, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.p monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.g, %.noexc, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.v = atomicrmw xchg ptr %i.j, i32 0 release, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %.noexc9.sink.split, label %.noexc9, !prof !29

bb.h:                                             ; preds = %bb.j, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.j, i8 %i.l) #29
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = extractvalue { ptr, ptr } %i.o, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  invoke void %i.ac(ptr noundef %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h, !inline_history !1310

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.x

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1407, !nonnull !3, !align !27, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load i8, ptr %i.af, align 8, !range !4, !alias.scope !1407, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.ah = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.ah, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1407
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.al = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !1407
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.ag monotonic, align 4, !noalias !1407
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.am = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4, !noalias !1407
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %.noexc9.sink.split, label %.noexc9, !prof !29

.noexc9.sink.split:                               ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sink = phi ptr [ %i.j, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.val.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sink)
  br label %.noexc9

.noexc9:                                          ; preds = %.noexc9.sink.split, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedINtB5_6SharedINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputuNtNtB1g_6marker4SendEL_EEENtNtNtB1g_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not.a = icmp eq i64 %i.c, -1
  br i1 %.not.a, label %bb.b, label %1

1:                                                ; preds = %bb.a
  %2 = load ptr, ptr %0, align 8, !noundef !3     ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %.noexc9, %1
  ret void

bb.c:                                             ; preds = %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @_RNvMs5_NtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutexINtB5_5MutexINtNtCsbvkFyIu7lgC_4core6option6OptionINtCskItxkTFUcJI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.f)
  %i.g = load i64, ptr %i.a, align 8, !range !151, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !27, !noundef !3 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i8, ptr %i.k, align 8, !range !4, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !5, !noundef !3
  %.not2 = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = invoke { ptr, ptr } @_RNvMs3_CskItxkTFUcJI_4slabINtB5_4SlabINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtBE_4task4wake5WakerEE6removeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77)
          to label %bb.i unwind label %bb.h       ; 2 uses

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.j, %bb.i, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = trunc nuw i8 %i.l to i1
  br i1 %i.q, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.r = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.s = and i64 %i.r, 9223372036854775807
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc, !prof !28

.noexc:                                           ; preds = %bb.f
  %i.u = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27
  br i1 %i.u, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.p monotonic, align 4
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.g, %.noexc, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.v = atomicrmw xchg ptr %i.j, i32 0 release, align 4
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %.noexc9.sink.split, label %.noexc9, !prof !29

bb.h:                                             ; preds = %bb.j, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCskItxkTFUcJI_4slab4SlabIB1C_NtNtNtB4_4task4wake5WakerEEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.j, i8 %i.l) #29
          to label %bb.l unwind label %bb.k

bb.i:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = extractvalue { ptr, ptr } %i.o, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !3, !noundef !3
  invoke void %i.ac(ptr noundef %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h, !inline_history !1310

bb.k:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.l:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.x

bb.m:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1414, !nonnull !3, !align !27, !noundef !3 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val1.i.i = load i8, ptr %i.af, align 8, !range !4, !alias.scope !1414, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.ah = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.ah, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load atomic i64, ptr @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1414
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.o, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.al = call noundef zeroext i1 @_RNvNtNtCs2pqxYH9ZEk8_3std9panicking11panic_count17is_zero_slow_path() #27, !noalias !1414
  br i1 %i.al, label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.ag monotonic, align 4, !noalias !1414
  br label %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.am = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4, !noalias !1414
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %.noexc9.sink.split, label %.noexc9, !prof !29

.noexc9.sink.split:                               ; preds = %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  %.sink = phi ptr [ %i.j, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i ], [ %.val.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i ]
  call void @_RNvMNtNtNtNtCs2pqxYH9ZEk8_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sink)
  br label %.noexc9

.noexc9:                                          ; preds = %.noexc9.sink.split, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %_RNvMNtNtCs2pqxYH9ZEk8_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtCseKAYRfgxGTE_14event_listener6notifyNCNvMs0_NtB7_3sysINtBQ_5InneruE6remove0NtB5_11TagProducer8next_tagCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef captures(none) dereferenceable(1) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.a = load i8, ptr %0, align 1, !range !4, !alias.scope !1415, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1
  store i8 0, ptr %0, align 1, !alias.scope !1415
  br i1 %i.b, label %_RNCNvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6remove0CsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #30, !noalias !1415
  unreachable

_RNCNvMs0_NtCseKAYRfgxGTE_14event_listener3sysINtB7_5InneruE6remove0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1I_6string6StringEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtB2D_10ValueEntryB2b_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtB5_9Pointable4dropB3G_(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1I_6string6StringEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEENtB5_9Pointable4dropCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1P_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3e_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBS_6future11invalidator9PredicateB1D_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtB5_9Pointable4dropB31_(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1V_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2P_3ops4drop4Drop4dropB5D_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1J_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBS_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtB5_9Pointable4dropB5p_(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1C_6string6StringEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtB2x_10ValueEntryB25_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtB5_9Pointable4dropB3A_(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1C_6string6StringEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEENtB5_9Pointable4dropCsgO8S5jLFugx_23deltalake_catalog_unity(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB38_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtBS_6future11invalidator9PredicateB1x_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtB5_9Pointable4dropB2V_(i64 noundef %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2J_3ops4drop4Drop4dropB5x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !3
  %i.b = and i64 %i.a, -8
  tail call void @_RNvXs1_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1D_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtBS_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBS_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtB5_9Pointable4dropB5j_(i64 noundef %i.b)
end_hunk_0
