Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_arrow-40563aeb3a74498c.polars_arrow.5e84758b183e9a03-cgu.03?download=true
inline.NumInlined: 2293
inline.NumDeleted: 1102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array:bb.a
  br label %.loopexit, !dbg !22399

bb.cz:                                            ; preds = %bb.h
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @270) #38, !dbg !22400
  unreachable, !dbg !22400

bb.da:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr), !dbg !21837
  %i.ox = getelementptr inbounds nuw i8, ptr %i.fj, i64 80, !dbg !22401 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !dbg !22401, !noundef !1205
  %.not.i116 = icmp eq ptr %i.oy, null, !dbg !22401
  %..i117 = select i1 %.not.i116, ptr null, ptr %i.ox, !dbg !22402
  %i.oz = getelementptr inbounds nuw i8, ptr %i.fj, i64 32, !dbg !22403
  %i.pa = getelementptr inbounds nuw i8, ptr %i.fj, i64 56, !dbg !22404
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetxEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cr, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i117, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pa), !dbg !21837
  %i.pb = load i64, ptr %i.cr, align 8, !dbg !22405, !range !1489, !noundef !1205
  %.not88 = icmp eq i64 %i.pb, 18, !dbg !22405
  br i1 %.not88, label %bb.dc, label %bb.db, !dbg !22406

bb.db:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cr, i64 72, i1 false), !dbg !22407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !22408
  br label %bb.kd, !dbg !22079

bb.dc:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !22408
  br label %.loopexit, !dbg !22409

bb.dd:                                            ; preds = %bb.i
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @271) #38, !dbg !22410
  unreachable, !dbg !22410

bb.de:                                            ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fs) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq), !dbg !21839
  %i.pc = getelementptr inbounds nuw i8, ptr %i.fs, i64 80, !dbg !22411 ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !dbg !22411, !noundef !1205
  %.not.i118 = icmp eq ptr %i.pd, null, !dbg !22411
  %..i119 = select i1 %.not.i118, ptr null, ptr %i.pc, !dbg !22412
  %i.pe = getelementptr inbounds nuw i8, ptr %i.fs, i64 32, !dbg !22413
  %i.pf = getelementptr inbounds nuw i8, ptr %i.fs, i64 56, !dbg !22414
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetlEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cq, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i119, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pe, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pf), !dbg !21839
  %i.pg = load i64, ptr %i.cq, align 8, !dbg !22415, !range !1489, !noundef !1205
  %.not87 = icmp eq i64 %i.pg, 18, !dbg !22415
  br i1 %.not87, label %bb.dg, label %bb.df, !dbg !22416

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cq, i64 72, i1 false), !dbg !22417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !22418
  br label %bb.kd, !dbg !22079

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq), !dbg !22418
  br label %.loopexit, !dbg !22419

bb.dh:                                            ; preds = %bb.j
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @272) #38, !dbg !22420
  unreachable, !dbg !22420

bb.di:                                            ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gb) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !dbg !21841
  %i.ph = getelementptr inbounds nuw i8, ptr %i.gb, i64 80, !dbg !22421 ; 2 uses
  %i.pi = load ptr, ptr %i.ph, align 8, !dbg !22421, !noundef !1205
  %.not.i120 = icmp eq ptr %i.pi, null, !dbg !22421
  %..i121 = select i1 %.not.i120, ptr null, ptr %i.ph, !dbg !22422
  %i.pj = getelementptr inbounds nuw i8, ptr %i.gb, i64 32, !dbg !22423
  %i.pk = getelementptr inbounds nuw i8, ptr %i.gb, i64 56, !dbg !22424
  call fastcc void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array19write_binary_offsetxEBa_(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.cp, ptr noalias noundef align 8 dereferenceable(136) %1, ptr noundef align 8 %..i121, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pk), !dbg !21841
  %i.pl = load i64, ptr %i.cp, align 8, !dbg !22425, !range !1489, !noundef !1205
  %.not86 = icmp eq i64 %i.pl, 18, !dbg !22425
  br i1 %.not86, label %bb.dk, label %bb.dj, !dbg !22426

bb.dj:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cp, i64 72, i1 false), !dbg !22427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !22428
  br label %bb.kd, !dbg !22079

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !dbg !22428
  br label %.loopexit, !dbg !22429

bb.dl:                                            ; preds = %bb.k
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #38, !dbg !22430
  unreachable, !dbg !22430

bb.dm:                                            ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !dbg !21851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !22431, !noalias !21843
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gk, i64 72, !dbg !22432 ; 2 uses
  %i.pn = load ptr, ptr %i.pm, align 8, !dbg !22432, !noalias !21843, !noundef !1205
  %.not.i185 = icmp eq ptr %i.pn, null, !dbg !22432
  %..i186 = select i1 %.not.i185, ptr null, ptr %i.pm, !dbg !22433
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i186), !dbg !22431, !inline_history !21154
  %i.po = load i64, ptr %i.ad, align 8, !dbg !22434, !range !1489, !noalias !21843, !noundef !1205
  %.not.i122 = icmp eq i64 %i.po, 18, !dbg !22434
  br i1 %.not.i122, label %bb.do, label %bb.dn, !dbg !22435

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false), !dbg !22436, !noalias !21844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22437, !noalias !21843
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit, !dbg !22438

bb.do:                                            ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !22437, !noalias !21843
  %i.pp = getelementptr inbounds nuw i8, ptr %i.gk, i64 32, !dbg !22439
  call void @llvm.experimental.noalias.scope.decl(metadata !21846), !dbg !22440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !22441, !noalias !21847
  %i.pq = getelementptr inbounds nuw i8, ptr %i.gk, i64 40, !dbg !22442 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !dbg !22442, !alias.scope !21846, !noundef !1205 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.gk, i64 48, !dbg !22443 ; 2 uses
  %i.pt = load i64, ptr %i.ps, align 8, !dbg !22443, !alias.scope !21846, !noundef !1205 ; 2 uses
  %.not.i181 = icmp eq i64 %i.pt, 0, !dbg !22444
  br i1 %.not.i181, label %bb.dq, label %bb.dp, !dbg !22444

bb.dp:                                            ; preds = %bb.do
  %i.pu = load i32, ptr %i.pr, align 4, !dbg !22444, !noalias !21847, !noundef !1205 ; 2 uses
  store i32 %i.pu, ptr %i.h, align 4, !dbg !22444, !noalias !21847
  %i.pv = icmp eq i32 %i.pu, 0, !dbg !22445
  br i1 %i.pv, label %bb.ds, label %bb.dr, !dbg !22446

bb.dq:                                            ; preds = %bb.do
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !dbg !22444, !noalias !21847
  unreachable, !dbg !22444

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !22447, !noalias !21847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !22448, !noalias !21847
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pt, !dbg !22449
  store ptr %i.pr, ptr %i.e, align 8, !dbg !22450, !noalias !21847
  %i.px = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !22450
  store ptr %i.pw, ptr %i.px, align 8, !dbg !22450, !noalias !21847
  %i.py = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !22450
  store ptr %i.h, ptr %i.py, align 8, !dbg !22450, !noalias !21847
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive22write_native_type_iterlINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterlENCINvB4_13write_offsetslE0EEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e), !dbg !22447, !noalias !21848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !22451, !noalias !21847
  %i.pz = load i64, ptr %i.f, align 8, !dbg !22452, !range !1489, !noalias !21847, !noundef !1205 ; 2 uses
  %.not1.i182 = icmp eq i64 %i.pz, 18, !dbg !22452
  br i1 %.not1.i182, label %bb.du, label %bb.dt, !dbg !22453

bb.ds:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !22454, !noalias !21847
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferlEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pp), !dbg !22454, !noalias !21849
  %i.qa = load i64, ptr %i.g, align 8, !dbg !22455, !range !1489, !noalias !21847, !noundef !1205 ; 2 uses
  %.not2.i183 = icmp eq i64 %i.qa, 18, !dbg !22455
  br i1 %.not2.i183, label %bb.dw, label %bb.dv, !dbg !22456

bb.dt:                                            ; preds = %bb.dr
  %.sroa.8254.0..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !22457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8254, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8254.0..sroa_idx255, i64 64, i1 false), !dbg !22457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22458, !noalias !21847
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, !dbg !22459

bb.du:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !22458, !noalias !21847
  br label %bb.dz, !dbg !22460

bb.dv:                                            ; preds = %bb.ds
  %.sroa.8254.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !22461
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8254, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8254.0..sroa_idx256, i64 64, i1 false), !dbg !22461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22462, !noalias !21847
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, !dbg !22459

bb.dw:                                            ; preds = %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !22462, !noalias !21847
  br label %bb.dz, !dbg !22460

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread: ; preds = %bb.dt, %bb.dv
  %.sroa.0251.0 = phi i64 [ %i.pz, %bb.dt ], [ %i.qa, %bb.dv ], !dbg !22463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22464, !noalias !21847
  store i64 %.sroa.0251.0, ptr %i.cl, align 8, !dbg !22465, !noalias !21844
  %.sroa.4267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8, !dbg !22465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4267.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8254, i64 64, i1 false), !dbg !22465
  br label %bb.ef, !dbg !22466

bb.dx:                                            ; preds = %bb.eb, %bb.dy
  %.pn.i = phi { ptr, i32 } [ %i.qb, %bb.dy ], [ %i.qt, %bb.eb ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #33
          to label %common.resume unwind label %bb.ee, !dbg !22467, !noalias !21852, !inline_history !21154

bb.dy:                                            ; preds = %bb.ec, %bb.dz
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dz:                                            ; preds = %bb.dw, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !22464, !noalias !21847
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !22468, !noalias !21843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !22468, !noalias !21843
  %i.qc = getelementptr inbounds nuw i8, ptr %i.gk, i64 56, !dbg !22469
  %i.qd = call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qc), !dbg !22470, !inline_history !21154 ; 2 uses
  %i.qe = extractvalue { ptr, ptr } %i.qd, 0, !dbg !22470 ; 2 uses
  %i.qf = extractvalue { ptr, ptr } %i.qd, 1, !dbg !22470 ; 2 uses
  store ptr %i.qe, ptr %i.ab, align 8, !dbg !22470, !noalias !21843
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !22470
  store ptr %i.qf, ptr %i.qg, align 8, !dbg !22470, !noalias !21843
  %.val4.i = load ptr, ptr %i.pq, align 8, !dbg !22471 ; 2 uses
  %.val5.i = load i64, ptr %i.ps, align 8, !dbg !22471, !noundef !1205 ; 2 uses
  %.val3.i = load i32, ptr %.val4.i, align 4, !dbg !22472, !noundef !1205 ; 2 uses
  %i.qh = sext i32 %.val3.i to i64, !dbg !22473
  %.not.i178 = icmp ne i64 %.val5.i, 0, !dbg !22474
  call void @llvm.assume(i1 %.not.i178), !dbg !22474, !noalias !21852
  %i.qi = getelementptr [4 x i8], ptr %.val4.i, i64 %.val5.i, !dbg !22475
  %i.qj = getelementptr i8, ptr %i.qi, i64 -4, !dbg !22475 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.qj) ], !noalias !21852
  %i.qk = load i32, ptr %i.qj, align 4, !dbg !22476, !noalias !21852, !noundef !1205
  %i.ql = sub i32 %i.qk, %.val3.i, !dbg !22477
  %i.qm = sext i32 %i.ql to i64, !dbg !22478
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 160, !dbg !22468
  %i.qo = load ptr, ptr %i.qn, align 8, !dbg !22468, !invariant.load !1205, !noalias !21852, !nonnull !1205
  %i.qp = invoke { ptr, ptr } %i.qo(ptr noundef %i.qe, i64 noundef %i.qh, i64 noundef %i.qm)
          to label %bb.ea unwind label %bb.dy, !dbg !22479, !noalias !21852, !inline_history !21154 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.qq = extractvalue { ptr, ptr } %i.qp, 0, !dbg !22468 ; 2 uses
  %i.qr = extractvalue { ptr, ptr } %i.qp, 1, !dbg !22468 ; 2 uses
  store ptr %i.qq, ptr %i.ac, align 8, !dbg !22468, !noalias !21843
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !22468
  store ptr %i.qr, ptr %i.qs, align 8, !dbg !22468, !noalias !21843
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cl, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.qq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.qr)
          to label %bb.ec unwind label %bb.eb, !dbg !22480, !inline_history !21154

bb.eb:                                            ; preds = %bb.ea
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac) #33
          to label %bb.dx unwind label %bb.ee, !dbg !22467, !noalias !21852, !inline_history !21154

bb.ec:                                            ; preds = %bb.ea
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac)
          to label %bb.ed unwind label %bb.dy, !dbg !22467, !noalias !21852, !inline_history !21154

bb.ed:                                            ; preds = %bb.ec
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab), !dbg !22467, !noalias !21852, !inline_history !21154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !22467, !noalias !21843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !22467, !noalias !21843
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit, !dbg !22481

bb.ee:                                            ; preds = %bb.eb, %bb.dx
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !22482, !noalias !21852, !inline_history !21154
  unreachable, !dbg !22482

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i159.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.gm, %bb.ez, %bb.dx
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i, %bb.dx ], [ %.pn.i127, %bb.ez ], [ %.pn, %bb.gm ], [ %lpad.loopexit.split-lp375, %.loopexit.split-lp.loopexit.split-lp.i159.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op, !dbg !22483

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit: ; preds = %bb.dn, %bb.ed
  %.pr = load i64, ptr %i.cl, align 8, !dbg !22484
  %.not85 = icmp eq i64 %.pr, 18, !dbg !22484
  br i1 %.not85, label %bb.eg, label %bb.ef, !dbg !22466

bb.ef:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit.thread, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i64 72, i1 false), !dbg !22485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !22486
  br label %bb.kd, !dbg !22079

bb.eg:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listlEBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !dbg !22486
  br label %.loopexit, !dbg !22487

bb.eh:                                            ; preds = %bb.l
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #38, !dbg !22488
  unreachable, !dbg !22488

bb.ei:                                            ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gt) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !dbg !21854
  %i.qv = getelementptr inbounds nuw i8, ptr %i.gt, i64 64, !dbg !22489 ; 2 uses
  %i.qw = load ptr, ptr %i.qv, align 8, !dbg !22489, !noundef !1205
  %.not.i123 = icmp eq ptr %i.qw, null, !dbg !22489
  %..i124 = select i1 %.not.i123, ptr null, ptr %i.qv, !dbg !22490
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cj, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i124), !dbg !21854
  %i.qx = load i64, ptr %i.cj, align 8, !dbg !22491, !range !1489, !noundef !1205
  %.not83 = icmp eq i64 %i.qx, 18, !dbg !22491
  br i1 %.not83, label %bb.ek, label %bb.ej, !dbg !22492

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, i64 72, i1 false), !dbg !22493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !22494
  br label %bb.kd, !dbg !22495

bb.ek:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj), !dbg !22494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !dbg !21857
  %i.qy = getelementptr inbounds nuw i8, ptr %i.gt, i64 32, !dbg !22496
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !22497, !nonnull !1205, !noundef !1205
  %i.ra = getelementptr inbounds nuw i8, ptr %i.gt, i64 40, !dbg !22497
  %i.rb = load ptr, ptr %i.ra, align 8, !dbg !22497, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ci, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.qz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.rb), !dbg !21857
  %i.rc = load i64, ptr %i.ci, align 8, !dbg !22498, !range !1489, !noundef !1205
  %.not84 = icmp eq i64 %i.rc, 18, !dbg !22498
  br i1 %.not84, label %bb.em, label %bb.el, !dbg !22499

bb.el:                                            ; preds = %bb.ek
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ci, i64 72, i1 false), !dbg !22500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !22501
  br label %bb.kd, !dbg !22495

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !dbg !22501
  br label %.loopexit, !dbg !22502

bb.en:                                            ; preds = %bb.m
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @275) #38, !dbg !22503
  unreachable, !dbg !22503

bb.eo:                                            ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hc) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !21867
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !22504, !noalias !21859
  %i.rd = getelementptr inbounds nuw i8, ptr %i.hc, i64 72, !dbg !22505 ; 2 uses
  %i.re = load ptr, ptr %i.rd, align 8, !dbg !22505, !noalias !21859, !noundef !1205
  %.not.i193 = icmp eq ptr %i.re, null, !dbg !22505
  %..i194 = select i1 %.not.i193, ptr null, ptr %i.rd, !dbg !22506
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i194), !dbg !22504, !inline_history !21201
  %i.rf = load i64, ptr %i.aa, align 8, !dbg !22507, !range !1489, !noalias !21859, !noundef !1205
  %.not.i125 = icmp eq i64 %i.rf, 18, !dbg !22507
  br i1 %.not.i125, label %bb.eq, label %bb.ep, !dbg !22508

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ck, ptr noundef nonnull align 8 dereferenceable(72) %i.aa, i64 72, i1 false), !dbg !22509, !noalias !21860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22510, !noalias !21859
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit, !dbg !22511

bb.eq:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !22510, !noalias !21859
  %i.rg = getelementptr inbounds nuw i8, ptr %i.hc, i64 32, !dbg !22512
  call void @llvm.experimental.noalias.scope.decl(metadata !21862), !dbg !22513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !22514, !noalias !21863
  %i.rh = getelementptr inbounds nuw i8, ptr %i.hc, i64 40, !dbg !22515 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !dbg !22515, !alias.scope !21862, !noundef !1205 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.hc, i64 48, !dbg !22516 ; 2 uses
  %i.rk = load i64, ptr %i.rj, align 8, !dbg !22516, !alias.scope !21862, !noundef !1205 ; 2 uses
  %.not.i190 = icmp eq i64 %i.rk, 0, !dbg !22517
  br i1 %.not.i190, label %bb.es, label %bb.er, !dbg !22517

bb.er:                                            ; preds = %bb.eq
  %i.rl = load i64, ptr %i.ri, align 8, !dbg !22517, !noalias !21863, !noundef !1205 ; 2 uses
  store i64 %i.rl, ptr %i.d, align 8, !dbg !22517, !noalias !21863
  %i.rm = icmp eq i64 %i.rl, 0, !dbg !22518
  br i1 %i.rm, label %bb.eu, label %bb.et, !dbg !22519

bb.es:                                            ; preds = %bb.eq
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #38, !dbg !22517, !noalias !21863
  unreachable, !dbg !22517

bb.et:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22520, !noalias !21863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22521, !noalias !21863
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %i.rk, !dbg !22522
  store ptr %i.ri, ptr %i.a, align 8, !dbg !22523, !noalias !21863
  %i.ro = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22523
  store ptr %i.rn, ptr %i.ro, align 8, !dbg !22523, !noalias !21863
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22523
  store ptr %i.d, ptr %i.rp, align 8, !dbg !22523, !noalias !21863
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive22write_native_type_iterxINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1G_5slice4iter4IterxENCINvB4_13write_offsetsxE0EEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !22520, !noalias !21864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22524, !noalias !21863
  %i.rq = load i64, ptr %i.b, align 8, !dbg !22525, !range !1489, !noalias !21863, !noundef !1205 ; 2 uses
  %.not1.i191 = icmp eq i64 %i.rq, 18, !dbg !22525
  br i1 %.not1.i191, label %bb.ew, label %bb.ev, !dbg !22526

bb.eu:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22527, !noalias !21863
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferxEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.rg), !dbg !22527, !noalias !21865
  %i.rr = load i64, ptr %i.c, align 8, !dbg !22528, !range !1489, !noalias !21863, !noundef !1205 ; 2 uses
  %.not2.i192 = icmp eq i64 %i.rr, 18, !dbg !22528
  br i1 %.not2.i192, label %bb.ey, label %bb.ex, !dbg !22529

bb.ev:                                            ; preds = %bb.et
  %.sroa.8271.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8271, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8271.0..sroa_idx272, i64 64, i1 false), !dbg !22530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22531, !noalias !21863
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, !dbg !22532

bb.ew:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22531, !noalias !21863
  br label %bb.fb, !dbg !22533

bb.ex:                                            ; preds = %bb.eu
  %.sroa.8271.0..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8271, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8271.0..sroa_idx273, i64 64, i1 false), !dbg !22534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22535, !noalias !21863
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, !dbg !22532

bb.ey:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22535, !noalias !21863
  br label %bb.fb, !dbg !22533

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread: ; preds = %bb.ev, %bb.ex
  %.sroa.0268.0 = phi i64 [ %i.rq, %bb.ev ], [ %i.rr, %bb.ex ], !dbg !22536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22537, !noalias !21863
  store i64 %.sroa.0268.0, ptr %i.ck, align 8, !dbg !22538, !noalias !21860
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !22538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4284.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8271, i64 64, i1 false), !dbg !22538
  br label %bb.fh, !dbg !22539

bb.ez:                                            ; preds = %bb.fd, %bb.fa
  %.pn.i127 = phi { ptr, i32 } [ %i.rs, %bb.fa ], [ %i.si, %bb.fd ]
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y) #33
          to label %common.resume unwind label %bb.fg, !dbg !22540, !noalias !21868, !inline_history !21201

bb.fa:                                            ; preds = %bb.fe, %bb.fb
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey, %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22537, !noalias !21863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !22541, !noalias !21859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !22541, !noalias !21859
  %i.rt = getelementptr inbounds nuw i8, ptr %i.hc, i64 56, !dbg !22542
  %i.ru = call { ptr, ptr } @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow5arrayINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtB5_5ArrayEL_ENtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.rt), !dbg !22543, !inline_history !21201 ; 2 uses
  %i.rv = extractvalue { ptr, ptr } %i.ru, 0, !dbg !22543 ; 2 uses
  %i.rw = extractvalue { ptr, ptr } %i.ru, 1, !dbg !22543 ; 2 uses
  store ptr %i.rv, ptr %i.y, align 8, !dbg !22543, !noalias !21859
  %i.rx = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !22543
  store ptr %i.rw, ptr %i.rx, align 8, !dbg !22543, !noalias !21859
  %.val4.i128 = load ptr, ptr %i.rh, align 8, !dbg !22544 ; 2 uses
  %.val5.i129 = load i64, ptr %i.rj, align 8, !dbg !22544, !noundef !1205 ; 2 uses
  %.val3.i130 = load i64, ptr %.val4.i128, align 8, !dbg !22545, !noundef !1205 ; 2 uses
  %.not.i187 = icmp ne i64 %.val5.i129, 0, !dbg !22546
  call void @llvm.assume(i1 %.not.i187), !dbg !22546, !noalias !21868
  %i.ry = getelementptr [8 x i8], ptr %.val4.i128, i64 %.val5.i129, !dbg !22547
  %i.rz = getelementptr i8, ptr %i.ry, i64 -8, !dbg !22547 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rz) ], !noalias !21868
  %i.sa = load i64, ptr %i.rz, align 8, !dbg !22548, !noalias !21868, !noundef !1205
  %i.sb = sub i64 %i.sa, %.val3.i130, !dbg !22549
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rw, i64 160, !dbg !22541
  %i.sd = load ptr, ptr %i.sc, align 8, !dbg !22541, !invariant.load !1205, !noalias !21868, !nonnull !1205
  %i.se = invoke { ptr, ptr } %i.sd(ptr noundef %i.rv, i64 noundef %.val3.i130, i64 noundef %i.sb)
          to label %bb.fc unwind label %bb.fa, !dbg !22550, !noalias !21868, !inline_history !21201 ; 2 uses

bb.fc:                                            ; preds = %bb.fb
  %i.sf = extractvalue { ptr, ptr } %i.se, 0, !dbg !22541 ; 2 uses
  %i.sg = extractvalue { ptr, ptr } %i.se, 1, !dbg !22541 ; 2 uses
  store ptr %i.sf, ptr %i.z, align 8, !dbg !22541, !noalias !21859
  %i.sh = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !22541
  store ptr %i.sg, ptr %i.sh, align 8, !dbg !22541, !noalias !21859
  invoke void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ck, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.sf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.sg)
          to label %bb.fe unwind label %bb.fd, !dbg !22551, !inline_history !21201

bb.fd:                                            ; preds = %bb.fc
  %i.si = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z) #33
          to label %bb.ez unwind label %bb.fg, !dbg !22540, !noalias !21868, !inline_history !21201

bb.fe:                                            ; preds = %bb.fc
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.ff unwind label %bb.fa, !dbg !22540, !noalias !21868, !inline_history !21201

bb.ff:                                            ; preds = %bb.fe
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EEB1k_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y), !dbg !22540, !noalias !21868, !inline_history !21201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !22540, !noalias !21859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !22540, !noalias !21859
  br label %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit, !dbg !22552

bb.fg:                                            ; preds = %bb.fd, %bb.ez
  %i.sj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !22553, !noalias !21868, !inline_history !21201
  unreachable, !dbg !22553

_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit: ; preds = %bb.ep, %bb.ff
  %.pr301 = load i64, ptr %i.ck, align 8, !dbg !22554
  %.not82 = icmp eq i64 %.pr301, 18, !dbg !22554
  br i1 %.not82, label %bb.fi, label %bb.fh, !dbg !22539

bb.fh:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit.thread, %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !dbg !22555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !22556
  br label %bb.kd, !dbg !22079

bb.fi:                                            ; preds = %_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array10write_listxEBa_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !22556
  br label %.loopexit, !dbg !22557

bb.fj:                                            ; preds = %bb.n
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #38, !dbg !22558
  unreachable, !dbg !22558

bb.fk:                                            ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hl) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !21870
  %i.sk = getelementptr inbounds nuw i8, ptr %i.hl, i64 64, !dbg !22559 ; 2 uses
  %i.sl = load ptr, ptr %i.sk, align 8, !dbg !22559, !noundef !1205
  %.not.i134 = icmp eq ptr %i.sl, null, !dbg !22559
  %..i135 = select i1 %.not.i134, ptr null, ptr %i.sk, !dbg !22560
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i135), !dbg !21870
  %i.sm = load i64, ptr %i.ch, align 8, !dbg !22561, !range !1489, !noundef !1205
  %.not80 = icmp eq i64 %i.sm, 18, !dbg !22561
  br i1 %.not80, label %bb.fm, label %bb.fl, !dbg !22562

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ch, i64 72, i1 false), !dbg !22563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !22564
  br label %bb.kd, !dbg !22565

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !22564
  %i.sn = getelementptr i8, ptr %i.hl, i64 8, !dbg !22566
  %.val = load ptr, ptr %i.sn, align 8, !dbg !22566, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.so = getelementptr i8, ptr %i.hl, i64 16, !dbg !22566
  %.val107 = load i64, ptr %i.so, align 8, !dbg !22566, !noundef !1205 ; 2 uses
  %.idx323 = shl nuw nsw i64 %.val107, 4, !dbg !22567
  %i.sp = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx323, !dbg !22567
  %i.sq = icmp eq i64 %.val107, 0, !dbg !22568
  br i1 %i.sq, label %.loopexit, label %.lr.ph322, !dbg !21878

.lr.ph322:                                        ; preds = %bb.fm, %bb.fo
  %.sroa.028.0321 = phi ptr [ %i.sv, %bb.fo ], [ %.val, %bb.fm ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !dbg !21880
  %i.sr = load ptr, ptr %.sroa.028.0321, align 8, !dbg !22569, !nonnull !1205, !noundef !1205
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.028.0321, i64 8, !dbg !22569
  %i.st = load ptr, ptr %i.ss, align 8, !dbg !22569, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cg, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.sr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.st), !dbg !21880
  %i.su = load i64, ptr %i.cg, align 8, !dbg !22570, !range !1489, !noundef !1205
  %.not81 = icmp eq i64 %i.su, 18, !dbg !22570
  br i1 %.not81, label %bb.fo, label %bb.fn, !dbg !22571

bb.fn:                                            ; preds = %.lr.ph322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.cg, i64 72, i1 false), !dbg !22572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !22573
  br label %bb.kd, !dbg !22565

bb.fo:                                            ; preds = %.lr.ph322
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.028.0321, i64 16, !dbg !22574 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !22573
  %i.sw = icmp eq ptr %i.sv, %i.sp, !dbg !22568
  br i1 %i.sw, label %.loopexit, label %.lr.ph322, !dbg !21878

bb.fp:                                            ; preds = %bb.o
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #38, !dbg !22575
  unreachable, !dbg !22575

bb.fq:                                            ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hu) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !21883
  %i.sx = getelementptr inbounds nuw i8, ptr %i.hu, i64 1088, !dbg !22576
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferaEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sx), !dbg !21883
  %i.sy = load i64, ptr %i.br, align 8, !dbg !22577, !range !1489, !noundef !1205
  %.not76 = icmp eq i64 %i.sy, 18, !dbg !22577
  br i1 %.not76, label %bb.fs, label %bb.fr, !dbg !22578

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 72, i1 false), !dbg !22579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !22580
  br label %bb.kd, !dbg !22581

bb.fs:                                            ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !dbg !22580
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hu, i64 1112, !dbg !22582 ; 2 uses
  %i.ta = load ptr, ptr %i.sz, align 8, !dbg !22582, !alias.scope !21885, !noundef !1205
  %.not.i136 = icmp eq ptr %i.ta, null, !dbg !22582
  br i1 %.not.i136, label %bb.fw, label %bb.ft, !dbg !22583

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !21886
  call void @_RINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array9primitive24write_native_type_bufferlEBc_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sz), !dbg !21886
  %i.tb = load i64, ptr %i.bq, align 8, !dbg !22584, !range !1489, !noundef !1205
  %.not78 = icmp eq i64 %i.tb, 18, !dbg !22584
  br i1 %.not78, label %bb.fv, label %bb.fu, !dbg !22585

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bq, i64 72, i1 false), !dbg !22586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !22587
  br label %bb.kd, !dbg !22581

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !22587
  br label %bb.fw, !dbg !22588

bb.fw:                                            ; preds = %bb.fs, %bb.fv
  %i.tc = getelementptr inbounds nuw i8, ptr %i.hu, i64 1040, !dbg !22589
  %i.td = load ptr, ptr %i.tc, align 8, !dbg !22589, !nonnull !1205, !noundef !1205 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.hu, i64 1048, !dbg !22590
  %i.tf = load i64, ptr %i.te, align 8, !dbg !22590, !noundef !1205 ; 2 uses
  %.idx = shl nuw nsw i64 %i.tf, 4, !dbg !22591
  %i.tg = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx, !dbg !22591
  %i.th = icmp eq i64 %i.tf, 0, !dbg !22592
  br i1 %i.th, label %.loopexit, label %.lr.ph, !dbg !22593

.lr.ph:                                           ; preds = %bb.fw, %bb.fy
  %.sroa.054.0320 = phi ptr [ %i.tm, %bb.fy ], [ %i.td, %bb.fw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !21905
  %i.ti = load ptr, ptr %.sroa.054.0320, align 8, !dbg !22594, !nonnull !1205, !noundef !1205
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.054.0320, i64 8, !dbg !22594
  %i.tk = load ptr, ptr %i.tj, align 8, !dbg !22594, !nonnull !1205, !align !1282, !noundef !1205
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array11write_array(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bp, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.ti, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.tk), !dbg !21905
  %i.tl = load i64, ptr %i.bp, align 8, !dbg !22595, !range !1489, !noundef !1205
  %.not79 = icmp eq i64 %i.tl, 18, !dbg !22595
  br i1 %.not79, label %bb.fy, label %bb.fx, !dbg !22596

bb.fx:                                            ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.bp, i64 72, i1 false), !dbg !22597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !22598
  br label %bb.kd, !dbg !22581

bb.fy:                                            ; preds = %.lr.ph
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.054.0320, i64 16, !dbg !22599 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !dbg !22598
  %i.tn = icmp eq ptr %i.tm, %i.tg, !dbg !22592
  br i1 %i.tn, label %.loopexit, label %.lr.ph, !dbg !22593

bb.fz:                                            ; preds = %bb.p
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #38, !dbg !22600
  unreachable, !dbg !22600

bb.ga:                                            ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.id) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !21908
  %i.to = getelementptr inbounds nuw i8, ptr %i.id, i64 72, !dbg !22601 ; 2 uses
  %i.tp = load ptr, ptr %i.to, align 8, !dbg !22601, !noundef !1205
  %.not.i138 = icmp eq ptr %i.tp, null, !dbg !22601
  %..i139 = select i1 %.not.i138, ptr null, ptr %i.to, !dbg !22602
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc6write25array12write_bitmap(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bv, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, ptr noundef align 8 %..i139), !dbg !21908
  %i.tq = load i64, ptr %i.bv, align 8, !dbg !22603, !range !1489, !noundef !1205
  %.not72 = icmp eq i64 %i.tq, 18, !dbg !22603
  br i1 %.not72, label %bb.gc, label %bb.gb, !dbg !22604

end_hunk_0
