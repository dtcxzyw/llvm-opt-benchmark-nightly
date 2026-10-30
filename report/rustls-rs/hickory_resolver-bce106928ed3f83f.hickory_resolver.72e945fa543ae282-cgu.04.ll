Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/hickory_resolver-bce106928ed3f83f.hickory_resolver.72e945fa543ae282-cgu.04?download=true
inline.NumInlined: 458
inline.NumDeleted: 246
begin_hunk_0_@_RNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_6SharedINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1g_6future6future6Futurep6OutputINtNtB1g_6option6OptionINtNtB1g_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1g_6marker4SendEL_EEEB2h_4pollCs9RFwvXNxPyg_16hickory_resolver:bb.a
  store i8 0, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 24 ; 4 uses
  %i.da = load i64, ptr %i.cz, align 8, !range !13, !noundef !6
  %.not36 = icmp eq i64 %i.da, -3
  br i1 %.not36, label %bb.an, label %.invoke135, !prof !10

bb.ai:                                            ; preds = %bb.ag
  %i.db = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.dc = load ptr, ptr %1, align 8, !alias.scope !707, !noundef !6 ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.de = atomicrmw add ptr %i.dc, i64 -1 release, align 8, !noalias !708
  %i.df = icmp eq i64 %i.de, 1
  br i1 %i.df, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6option6OptionINtNtB1N_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %.thread

bb.al:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.dg = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RNvMs7_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputINtNtB1f_6option6OptionINtNtB1f_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.p, ptr noundef nonnull %i.dg)
          to label %bb.cb unwind label %bb.c

bb.am:                                            ; preds = %bb.ag
  br label %.invoke

.invoke:                                          ; preds = %bb.ag, %bb.am
  %i.dh = phi ptr [ @19, %bb.am ], [ @10, %bb.ag ]
  %i.di = phi i64 [ 33, %bb.am ], [ 40, %bb.ag ]
  %i.dj = phi ptr [ @20, %bb.am ], [ @21, %bb.ag ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.di, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dj) #24
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.an:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs_NtNtCsj6eKBz9Db1c_4core6future6futureINtNtB8_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6option6OptionINtNtB8_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB8_6marker4SendEL_EEB1v_4pollCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.dk, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %bb.ap unwind label %bb.ao

.body:                                            ; preds = %bb.ao, %bb.bw, %.body66
  %.pn41 = phi { ptr, i32 } [ %.pn.pn, %bb.bw ], [ %.pn.pn, %.body66 ], [ %i.dm, %bb.ao ] ; 2 uses
  %.sroa.016.2 = phi i8 [ %.sroa.016.3, %bb.bw ], [ %.sroa.016.3, %.body66 ], [ 1, %bb.ao ] ; 2 uses
  %.sroa.015.0 = phi i8 [ %.sroa.015.2, %bb.bw ], [ %.sroa.015.2, %.body66 ], [ %.sroa.015.1, %bb.ao ]
  %i.dl = trunc nuw i8 %.sroa.015.0 to i1
  br i1 %i.dl, label %.body.thread, label %.body50

bb.ao:                                            ; preds = %.invoke135, %bb.by, %bb.ar, %bb.an
  %.sroa.015.1 = phi i8 [ 1, %bb.an ], [ 0, %bb.by ], [ 1, %.invoke135 ], [ 1, %bb.ar ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ap:                                            ; preds = %bb.an
  store i8 1, ptr %i.cy, align 8
  %i.dn = load i64, ptr %i.l, align 8, !range !13, !noundef !6
  %i.do = icmp eq i64 %i.dn, -3
  br i1 %i.do, label %bb.bx, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.j, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(176) %i.cz)
          to label %bb.ar unwind label %.thread83

.thread83:                                        ; preds = %bb.aq
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cz, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  br label %.body.thread

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.cz, ptr noundef nonnull align 8 dereferenceable(176) %i.j, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.dq = load ptr, ptr %i.cq, align 8, !nonnull !6, !noundef !6
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  store atomic i64 2, ptr %i.dr seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ds = load ptr, ptr %i.cq, align 8, !nonnull !6, !noundef !6
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexINtNtCsj6eKBz9Db1c_4core6option6OptionINtCseieIppCIYdI_4slab4SlabIBY_NtNtNtB12_4task4wake5WakerEEEE4lockCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 8 %i.dt)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.du = load i64, ptr %i.i, align 8, !range !12, !alias.scope !709, !noundef !6
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.at, label %bb.ax, !prof !11

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !710
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !709, !nonnull !6, !align !9, !noundef !6
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dz = load i8, ptr %i.dy, align 8, !range !5, !alias.scope !709, !noundef !6
  store ptr %i.dx, ptr %i.c, align 8, !noalias !710
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.dz, ptr %i.ea, align 8, !noalias !710
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #24
          to label %bb.av unwind label %bb.au, !noalias !709

bb.au:                                            ; preds = %bb.at
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1Q_NtNtNtB4_4task4wake5WakerEEEEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #18
          to label %.body.thread unwind label %bb.aw, !noalias !709

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19, !noalias !709
  unreachable

bb.ax:                                            ; preds = %bb.as
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !709, !nonnull !6, !align !9, !noundef !6 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.eg = load i8, ptr %i.ef, align 8, !range !5, !alias.scope !709, !noundef !6 ; 2 uses
  %i.eh = trunc nuw i8 %i.eg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.ei, align 8 ; 2 uses
  store i64 -1, ptr %i.ei, align 8
  %.not37 = icmp eq i64 %.sroa.06.0.copyload, -1
  br i1 %.not37, label %bb.az, label %bb.ay, !prof !11

bb.ay:                                            ; preds = %bb.ax
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store i64 %.sroa.06.0.copyload, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i64 32, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !6 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtCseieIppCIYdI_4slab5EntryINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtB1c_4task4wake5WakerEEE5drainNtNtNtB1c_3ops5range9RangeFullECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.be unwind label %bb.bd

bb.az:                                            ; preds = %bb.ax
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.bb unwind label %bb.ba

.body66:                                          ; preds = %bb.ba, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bc ], [ %i.em, %bb.ba ] ; 2 uses
  %.sroa.016.3 = phi i8 [ %.sroa.016.5, %bb.bc ], [ %.sroa.014.1, %bb.ba ] ; 2 uses
  %.sroa.015.2 = phi i8 [ %.sroa.015.4, %bb.bc ], [ %.sroa.014.1, %bb.ba ] ; 2 uses
  %.sroa.014.0 = phi i8 [ %.sroa.014.2, %bb.bc ], [ %.sroa.014.1, %bb.ba ]
  %i.el = trunc nuw i8 %.sroa.014.0 to i1
  br i1 %i.el, label %bb.bw, label %.body

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtCseieIppCIYdI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver.exit.i, %bb.az
  %.sroa.014.1 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtCseieIppCIYdI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver.exit.i ], [ 1, %bb.az ] ; 3 uses
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body66

bb.bb:                                            ; preds = %bb.az
  unreachable

bb.bc:                                            ; preds = %bb.bk, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.ew, %bb.bk ], [ %i.en, %bb.bd ]
  %.sroa.016.5 = phi i8 [ 1, %bb.bk ], [ %.sroa.016.6, %bb.bd ]
  %.sroa.015.4 = phi i8 [ 1, %bb.bk ], [ %.sroa.015.5, %bb.bd ]
  %.sroa.014.2 = phi i8 [ 1, %bb.bk ], [ %.sroa.014.3, %bb.bd ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCseieIppCIYdI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h) #18
          to label %.body66 unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bq, %bb.bo, %bb.bm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit, %.loopexit, %bb.ay
  %.sroa.016.6 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit ], [ 1, %bb.bq ], [ 1, %bb.bm ], [ 1, %.loopexit ], [ 1, %bb.ay ], [ 1, %bb.bo ]
  %.sroa.015.5 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit ], [ 0, %bb.bq ], [ 0, %bb.bm ], [ 1, %.loopexit ], [ 1, %bb.ay ], [ 0, %bb.bo ]
  %.sroa.014.3 = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit ], [ 0, %bb.bq ], [ 1, %bb.bm ], [ 1, %.loopexit ], [ 1, %bb.ay ], [ 0, %bb.bo ]
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.be:                                            ; preds = %bb.ay
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.530.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.530.sroa.2.0..sroa.530.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  store i64 %i.ek, ptr %.sroa.530.sroa.2.0..sroa.530.0..sroa_idx.sroa_idx, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !711, !nonnull !6
  %.sroa.530.0..sroa_idx.promoted = load ptr, ptr %.sroa.530.0..sroa_idx, align 8, !alias.scope !712 ; 2 uses
  %3 = icmp eq ptr %.sroa.530.0..sroa_idx.promoted, null
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bl, %bb.be
  %.promoted19.i121 = phi i64 [ %i.ev, %bb.bl ], [ %i.ek, %bb.be ]
  %.promoted.i120 = phi i1 [ false, %bb.bl ], [ %3, %bb.be ]
  %.promoted.i120.a = phi ptr [ %i.et, %bb.bl ], [ %.sroa.530.0..sroa_idx.promoted, %bb.be ]
  call void @llvm.experimental.noalias.scope.decl(metadata !711)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtB4_4task4wake5WakerEECs9RFwvXNxPyg_16hickory_resolver.exit11.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtB4_4task4wake5WakerEECs9RFwvXNxPyg_16hickory_resolver.exit11.i: ; preds = %bb.bj, %bb.bf
  %i.eq = phi i64 [ %i.ev, %bb.bj ], [ %.promoted19.i121, %bb.bf ]
  %.not.i.i = phi i1 [ false, %bb.bj ], [ %.promoted.i120, %bb.bf ]
  %4 = phi ptr [ %i.et, %bb.bj ], [ %.promoted.i120.a, %bb.bf ]
  call void @llvm.experimental.noalias.scope.decl(metadata !713)
  br i1 %.not.i.i, label %.loopexit, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtB4_4task4wake5WakerEECs9RFwvXNxPyg_16hickory_resolver.exit11.i
  call void @llvm.experimental.noalias.scope.decl(metadata !714)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.er = phi ptr [ %i.et, %bb.bi ], [ %4, %bb.bg ] ; 5 uses
  %i.es = icmp eq ptr %i.er, %i.ep
  br i1 %i.es, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 4 uses
  store ptr %i.et, ptr %.sroa.530.0..sroa_idx, align 8, !alias.scope !715
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.er, align 8, !noalias !716
  %i.eu = trunc nuw i64 %.sroa.03.0.copyload.i.i.i to i1
  br i1 %i.eu, label %bb.bj, label %bb.bh

bb.bj:                                            ; preds = %bb.bi
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %.sroa.54.0.copyload.i.i.i = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !noalias !716
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !716 ; 2 uses
  %i.ev = add i64 %i.eq, -1                       ; 3 uses
  store i64 %i.ev, ptr %.sroa.530.sroa.2.0..sroa.530.0..sroa_idx.sroa_idx, align 8, !alias.scope !715
  %.not.i62 = icmp eq ptr %.sroa.4.0.copyload.i.i.i, null
  br i1 %.not.i62, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtB4_4task4wake5WakerEECs9RFwvXNxPyg_16hickory_resolver.exit11.i, label %bb.bl

bb.bk:                                            ; preds = %bb.bl
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtCseieIppCIYdI_4slab5DrainINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g) #18
          to label %bb.bc unwind label %bb.bv

bb.bl:                                            ; preds = %bb.bj
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i.i.i, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !6, !noundef !6
  invoke void %i.ey(ptr noundef %.sroa.54.0.copyload.i.i.i)
          to label %bb.bf unwind label %bb.bk

.loopexit:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtNtB4_4task4wake5WakerEECs9RFwvXNxPyg_16hickory_resolver.exit11.i, %bb.bh
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtCseieIppCIYdI_4slab5DrainINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 dereferenceable(96) %i.g)
          to label %bb.bm unwind label %bb.bd

bb.bm:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.cx, ptr %i.f, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.ez, align 8
  invoke void @_RNvXNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB8_6SharedpENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollNtB2_5ResetNtNtNtB1m_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.bd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  br i1 %i.eh, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.fb = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fc = and i64 %i.fb, 9223372036854775807
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bo, !prof !10

bb.bo:                                            ; preds = %bb.bn
  %i.fe = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc64 unwind label %bb.bd

.noexc64:                                         ; preds = %bb.bo
  br i1 %i.fe, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %.noexc64
  store atomic i8 1, ptr %i.fa monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.bp, %.noexc64, %bb.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit
  %i.ff = atomicrmw xchg ptr %i.ee, i32 0 release, align 4
  %i.fg = icmp eq i32 %i.ff, 2
  br i1 %i.fg, label %bb.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit, !prof !11

bb.bq:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ee)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.bd

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.fh = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6
  invoke fastcc void @_RNvMs7_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB5_5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtB1f_6future6future6Futurep6OutputINtNtB1f_6option6OptionINtNtB1f_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1f_6marker4SendEL_EEE20take_or_clone_outputCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.e, ptr noundef nonnull %i.fh)
          to label %bb.br unwind label %bb.bd

bb.br:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtCseieIppCIYdI_4slab5EntryINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtB1c_4task4wake5WakerEEENtNtNtB1c_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtCseieIppCIYdI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver.exit.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtCseieIppCIYdI_4slab5EntryINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtB1j_4task4wake5WakerEEENtNtNtB1j_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtCseieIppCIYdI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver.exit.i: ; preds = %bb.br
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtCseieIppCIYdI_4slab5EntryINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtB1j_4task4wake5WakerEEENtNtNtB1j_3ops4drop4Drop4dropCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCseieIppCIYdI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9RFwvXNxPyg_16hickory_resolver.exit unwind label %bb.ba

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCseieIppCIYdI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtCseieIppCIYdI_4slab5EntryINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEEECs9RFwvXNxPyg_16hickory_resolver.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit72, %bb.cb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCseieIppCIYdI_4slab4SlabINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs9RFwvXNxPyg_16hickory_resolver.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.bv:                                            ; preds = %bb.cc, %.body.thread, %bb.bw, %bb.bk, %bb.bc
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bw:                                            ; preds = %.body66
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtCseieIppCIYdI_4slab4SlabIB1x_NtNtNtB4_4task4wake5WakerEEEEECs9RFwvXNxPyg_16hickory_resolver(ptr nonnull %i.ee, i8 %i.eg) #18
          to label %.body unwind label %bb.bv

bb.bx:                                            ; preds = %bb.ap
  %i.fl = load ptr, ptr %i.cq, align 8, !nonnull !6, !noundef !6
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 64
  %i.fn = cmpxchg ptr %i.fm, i64 1, i64 0 seq_cst seq_cst, align 8
  %.sroa.18.0.in.i58 = extractvalue { i64, i1 } %i.fn, 1
  br i1 %.sroa.18.0.in.i58, label %bb.by, label %.invoke135, !prof !10

.invoke135:                                       ; preds = %bb.ah, %bb.bx
  %i.fo = phi ptr [ @17, %bb.bx ], [ @18, %bb.ah ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fo) #24
          to label %.cont136 unwind label %bb.ao

.cont136:                                         ; preds = %.invoke135
  unreachable

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.fp = load ptr, ptr %i.m, align 8, !nonnull !6, !align !9, !noundef !6
  %i.fq = load i8, ptr %i.cy, align 8, !range !5, !noundef !6
  store ptr %i.fp, ptr %i.k, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i8 %i.fq, ptr %i.fr, align 8
  invoke void @_RNvXNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB8_6SharedpENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollNtB2_5ResetNtNtNtB1m_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit70 unwind label %bb.ao

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit70: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fs = load ptr, ptr %i.r, align 8, !nonnull !6, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %i.ft = load ptr, ptr %1, align 8, !alias.scope !717, !noundef !6 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit72, label %bb.bz

bb.bz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit70
  %i.fv = atomicrmw add ptr %i.ft, i64 -1 release, align 8, !noalias !718
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %bb.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit72

bb.ca:                                            ; preds = %bb.bz
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtCsj6eKBz9Db1c_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputINtNtB1N_6option6OptionINtNtB1N_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB1N_6marker4SendEL_EEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) #21
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit72 unwind label %.body50.thread100

.body50.thread100:                                ; preds = %bb.ca
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEECs9RFwvXNxPyg_16hickory_resolver.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit72: ; preds = %bb.bz, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtBJ_6SharedpENtNtNtB4_6future6future6Future4poll5ResetECs9RFwvXNxPyg_16hickory_resolver.exit70, %bb.ca
  store ptr %i.fs, ptr %1, align 8
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bu

.body.thread:                                     ; preds = %bb.au, %.thread83, %.body
  %.sroa.016.288 = phi i8 [ 1, %.thread83 ], [ %.sroa.016.2, %.body ], [ 1, %bb.au ]
  %.pn4187 = phi { ptr, i32 } [ %i.dp, %.thread83 ], [ %.pn41, %.body ], [ %i.eb, %bb.au ]
  invoke void @_RNvXNvXs9_NtNtNtCsgO2xhGITpH9_12futures_util6future6future6sharedINtB8_6SharedpENtNtNtCsj6eKBz9Db1c_4core6future6future6Future4pollNtB2_5ResetNtNtNtB1m_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.body50 unwind label %bb.bv

.thread:                                          ; preds = %bb.ak
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEECs9RFwvXNxPyg_16hickory_resolver.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsgO2xhGITpH9_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtB12_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputIBC_INtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB4_6marker4SendEL_EEEEEECs9RFwvXNxPyg_16hickory_resolver.exit: ; preds = %bb.aj, %bb.ai, %bb.ak
  store ptr %i.db, ptr %1, align 8
  store i64 -3, ptr %0, align 8
  br label %bb.bu

bb.cb:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false)
end_hunk_0
