Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_server-9f9a063b6d2572a4.ruff_server.250241f5eb4d154d-cgu.12?download=true
inline.NumInlined: 1686
inline.NumDeleted: 620
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvMs0_NtCs3aZOKTqqjPR_11ruff_server6formatNtB5_15UvFormatCommand6format:bb.a
  %i.dj = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.x unwind label %bb.d, !noalias !2194 ; 0 uses

bb.x:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit81.i
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dk = invoke { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj, i32 noundef %i.bk, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.aa unwind label %bb.d, !noalias !2194 ; 2 uses

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i, %bb.x
  %i.dl = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 16)
          to label %bb.ai unwind label %bb.d, !noalias !2194 ; 0 uses

bb.aa:                                            ; preds = %bb.y
  %i.dm = invoke { i64, i64 } @_RNvMNtCs9BeaGo73rC4_16ruff_source_file10line_indexNtB2_9LineIndex11line_column(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj, i32 noundef %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ab unwind label %bb.d, !noalias !2194 ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dn = extractvalue { i64, i64 } %i.dk, 1
  %i.do = extractvalue { i64, i64 } %i.dk, 0
  %i.dp = extractvalue { i64, i64 } %i.dm, 0
  %i.dq = extractvalue { i64, i64 } %i.dm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2194
  store i64 %i.do, ptr %i.k, align 8, !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2194
  store i64 %i.dn, ptr %i.j, align 8, !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2194
  store i64 %i.dp, ptr %i.i, align 8, !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2194
  store i64 %i.dq, ptr %i.h, align 8, !noalias !2194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2194
  store ptr %i.k, ptr %i.g, align 8, !noalias !2194
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.444.0..sroa_idx.i, align 8, !noalias !2194
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.j, ptr %i.dr, align 8, !noalias !2194
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !2194
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.i, ptr %i.ds, align 8, !noalias !2194
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.452.0..sroa_idx.i, align 8, !noalias !2194
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.dt, align 8, !noalias !2194
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.456.0..sroa_idx.i, align 8, !noalias !2194
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @158, ptr noundef nonnull %i.g)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit82.i unwind label %bb.d, !noalias !2194

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit82.i: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2194
  %i.du = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 7)
          to label %bb.ad unwind label %bb.ac, !noalias !2194 ; 0 uses

bb.ac:                                            ; preds = %bb.ad, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit82.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #36
          to label %.body.i unwind label %bb.ah, !noalias !2194

bb.ad:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3aZOKTqqjPR_11ruff_server.exit82.i
  %i.dw = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argRNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.ae unwind label %bb.ac, !noalias !2194 ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3aZOKTqqjPR_11ruff_server.exit.i.i unwind label %bb.af, !noalias !2194

bb.af:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body.i unwind label %bb.ag, !noalias !2194

bb.ag:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2194
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.d, !noalias !2194

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3aZOKTqqjPR_11ruff_server.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2194
  br label %bb.z

bb.ah:                                            ; preds = %.thread.i, %bb.ak, %bb.ac, %.body.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2196
  unreachable

bb.ai:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2194
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5)
          to label %bb.aj unwind label %bb.d, !noalias !2196

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !2194, !nonnull !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !noalias !2194
  %i.ee = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command3argReECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ed)
          to label %bb.al unwind label %bb.ak, !noalias !2196 ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(24) %i.f) #36
          to label %.body.i unwind label %bb.ah, !noalias !2196

bb.al:                                            ; preds = %bb.aj
  %i.eg = load i64, ptr %i.f, align 8, !range !8, !alias.scope !2200, !noalias !2194, !noundef !4
  %i.eh = icmp eq i64 %i.eg, -1
  br i1 %i.eh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs3aZOKTqqjPR_11ruff_server.exit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i unwind label %bb.an, !noalias !2196

bb.an:                                            ; preds = %bb.am
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.ao, !noalias !2196

bb.ao:                                            ; preds = %bb.an
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2196
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i: ; preds = %bb.am
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs3aZOKTqqjPR_11ruff_server.exit.i unwind label %bb.d, !noalias !2196

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs3aZOKTqqjPR_11ruff_server.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs3aZOKTqqjPR_11ruff_server.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2194
  %i.ek = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command5stdinNtB6_5StdioECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, i32 noundef 2, i32 undef)
          to label %bb.ap unwind label %bb.d, !noalias !2196 ; 0 uses

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs3aZOKTqqjPR_11ruff_server.exit.i
  %i.el = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stdoutNtB6_5StdioECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, i32 noundef 2, i32 undef)
          to label %bb.aq unwind label %bb.d, !noalias !2196 ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.em = invoke noundef nonnull align 8 ptr @_RINvMsk_NtCs2AWtUsOyxgP_3std7processNtB6_7Command6stderrNtB6_5StdioECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.aj, i32 noundef 2, i32 undef)
          to label %bb.ar unwind label %bb.d, !noalias !2196 ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.bh, ptr noundef nonnull align 8 dereferenceable(200) %i.aj, i64 200, i1 false), !noalias !2201
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RNvMs0_NtCs3aZOKTqqjPR_11ruff_server6formatNtB5_15UvFormatCommand13build_command.exit unwind label %bb.as, !noalias !2196

bb.as:                                            ; preds = %bb.ar
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.at, !noalias !2196

bb.at:                                            ; preds = %bb.as
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !2196
  unreachable

common.resume:                                    ; preds = %.thread121, %bb.as, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %i.en, %bb.as ], [ %.pn62107.i, %.thread.i ], [ %.pn89.pn, %.thread121 ]
  resume { ptr, i32 } %common.resume.op

.thread.i:                                        ; preds = %.body.i, %.thread111.i
  %.pn62107.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.thread111.i ], [ %.pn.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(200) %i.aj) #36
          to label %common.resume unwind label %bb.ah, !noalias !2196

_RNvMs0_NtCs3aZOKTqqjPR_11ruff_server6formatNtB5_15UvFormatCommand13build_command.exit: ; preds = %bb.ar
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai), !noalias !2196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMsk_NtCs2AWtUsOyxgP_3std7processNtB5_7Command5spawn(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bf, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.bh)
          to label %bb.av unwind label %bb.au

.thread121:                                       ; preds = %bb.ds, %bb.dt, %bb.du, %.thread135, %.body106, %.thread126, %bb.ce, %bb.au
  %.pn89.pn = phi { ptr, i32 } [ %.pn87116, %bb.ds ], [ %eh.lpad-body107, %.body106 ], [ %i.ep, %bb.au ], [ %lpad.thr_comm, %.thread126 ], [ %i.gz, %bb.ce ], [ %.pn133, %.thread135 ], [ %i.jn, %bb.dt ], [ %i.jr, %bb.du ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std7process7CommandECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef align 8 dereferenceable(200) %i.bh) #36
          to label %common.resume unwind label %bb.dn

bb.au:                                            ; preds = %_RNvMs0_NtCs3aZOKTqqjPR_11ruff_server6formatNtB5_15UvFormatCommand13build_command.exit
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.av:                                            ; preds = %_RNvMs0_NtCs3aZOKTqqjPR_11ruff_server6formatNtB5_15UvFormatCommand13build_command.exit
  %i.eq = load i32, ptr %i.bf, align 8, !range !36, !noundef !4
  %i.er = trunc nuw i32 %i.eq to i1
  br i1 %i.er, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.es = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val = load ptr, ptr %i.es, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.et = ptrtoint ptr %.val to i64               ; 3 uses
  %i.eu = and i64 %i.et, 3
  switch i64 %i.eu, label %default.unreachable [
    i64 2, label %bb.ax
    i64 3, label %bb.ay
    i64 0, label %bb.az
    i64 1, label %bb.ba
  ], !prof !20

bb.ax:                                            ; preds = %bb.aw
  %.mask = and i64 %i.et, -4294967296
  %cond = icmp eq i64 %.mask, 8589934592
  br i1 %cond, label %_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind.exit.thread146, label %_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind.exit.thread

bb.ay:                                            ; preds = %bb.aw
  %i.ev = lshr i64 %i.et, 32
  %i.ew = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ev to i8  ; 2 uses
  %i.ex = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.ew)
  call void @llvm.assume(i1 %i.ex)
  br label %_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind.exit

bb.az:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ez = load i8, ptr %i.ey, align 8, !range !2202, !noundef !4
  br label %_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind.exit

bb.ba:                                            ; preds = %bb.aw
  %i.fa = getelementptr i8, ptr %.val, i64 15
  %i.fb = load i8, ptr %i.fa, align 8, !range !2202, !noundef !4
  br label %_RNvMs3_NtNtCs2AWtUsOyxgP_3std2io5errorNtB5_5Error4kind.exit

bb.bb:                                            ; preds = %bb.av
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.bg, ptr noundef nonnull align 4 dereferenceable(28) %i.fc, i64 28, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !noundef !4
  store i32 -1, ptr %i.fd, align 4
  invoke void @_RINvXs_NtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCs2AWtUsOyxgP_3std7process10ChildStdinEINtB7_7ContextB1c_NtNtBF_7convert10InfallibleE7contextReECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bc, i32 noundef %i.fe, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 42)
          to label %bb.bc unwind label %.thread

.thread:                                          ; preds = %bb.bb
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.bc:                                            ; preds = %bb.bb
  %i.fg = load i32, ptr %i.bc, align 8, !range !36, !noundef !4
  %i.fh = trunc nuw i32 %i.fg to i1
  br i1 %i.fh, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fj, ptr %i.fk, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.do

bb.be:                                            ; preds = %bb.bc
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !range !2203, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  store i32 %i.fm, ptr %i.bd, align 4
  %i.fn = invoke noundef ptr @_RNvYNtNtCs2AWtUsOyxgP_3std7process10ChildStdinNtNtB6_2io5Write9write_allCs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.bf unwind label %.split

.thread126:                                       ; preds = %bb.cf, %bb.cc, %bb.bj, %bb.bi
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread121

bb.bf:                                            ; preds = %bb.be
  %i.fo = invoke noundef ptr @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEINtB5_7ContextuB1b_E7contextReECs3aZOKTqqjPR_11ruff_server(ptr noundef %i.fn, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 24)
          to label %bb.bg unwind label %.split    ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %.not80 = icmp eq ptr %i.fo, null
  br i1 %.not80, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fo, ptr %i.fp, align 8
  store i64 -2, ptr %0, align 8
  %.val94 = load i32, ptr %i.bd, align 4, !range !2203, !noundef !4
  %i.fq = call noundef i32 @close(i32 noundef %.val94) #37 ; 0 uses
  br label %bb.do

bb.bi:                                            ; preds = %bb.bg
  %i.fr = load i32, ptr %i.bd, align 4, !range !2203, !noundef !4
  %i.fs = call noundef i32 @close(i32 noundef %i.fr) #37 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ay, ptr noundef nonnull align 4 dereferenceable(28) %i.bg, i64 28, i1 false)
  invoke void @_RNvMsY_NtCs2AWtUsOyxgP_3std7processNtB5_5Child16wait_with_output(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.az, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(28) %i.ay)
          to label %bb.bj unwind label %.thread126

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  invoke void @_RINvXNtCsiXichZnxgbf_6anyhow7contextINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs2AWtUsOyxgP_3std7process6OutputNtNtNtB1e_2io5error5ErrorEINtB5_7ContextB1a_B1L_E7contextReECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 43)
          to label %bb.bk unwind label %.thread126

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.ft = load i64, ptr %i.ba, align 8, !range !8, !noundef !4 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, -1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  br i1 %i.fu, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fw, ptr %i.fx, align 8
  store i64 -2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3aZOKTqqjPR_11ruff_server.exit

bb.bm:                                            ; preds = %bb.bk
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.551.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 %i.ft, ptr %i.bb, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.fw, ptr %.sroa.4.0..sroa_idx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.fz = load i32, ptr %i.fy, align 8, !noundef !4
  %.not81.not = icmp eq i32 %i.fz, 0
  br i1 %.not81.not, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.ge = load i64, ptr %i.gd, align 8, !noundef !4
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gc, i64 noundef %i.ge)
          to label %bb.ch unwind label %.thread143

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2205
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !2204, !noalias !2206, !nonnull !4, !noundef !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !2204, !noalias !2206, !noundef !4
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef %i.gi)
          to label %bb.bq unwind label %bb.bp, !noalias !2205

bb.bp:                                            ; preds = %bb.bo
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs3aZOKTqqjPR_11ruff_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak) #36
          to label %.thread135 unwind label %bb.bt, !noalias !2206

bb.bq:                                            ; preds = %bb.bo
  %i.gk = load i64, ptr %i.c, align 8, !range !5, !noalias !2205, !noundef !4
  %i.gl = trunc nuw i64 %i.gk to i1
  br i1 %i.gl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  br label %bb.bv

bb.bs:                                            ; preds = %bb.bq
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.go, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  store i64 -1, ptr %i.b, align 8
end_hunk_0
