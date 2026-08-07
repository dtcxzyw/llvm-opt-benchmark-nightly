inline.NumInlined: 839
inline.NumDeleted: 358
begin_hunk_0_@_RNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_command:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !1133
  unreachable

.body425:                                         ; preds = %bb.go, %bb.gg, %bb.gk, %bb.gm
  %.pn = phi { ptr, i32 } [ %i.qa, %bb.gm ], [ %i.ps, %bb.gg ], [ %i.pu, %bb.gk ], [ %i.qe, %bb.go ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %i.ew) #29
          to label %.body436 unwind label %bb.gb

bb.gk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i431
  %i.pu = landingpad { ptr, i32 }
          cleanup
  br label %.body425

bb.gl:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !noalias !1134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1129
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !nonnull !17, !noundef !17
  %i.px = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.py = load i64, ptr %i.px, align 8, !noundef !17
  %i.pz = invoke { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre18trim_start_matchesReECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.pw, i64 noundef %i.py, ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 7)
          to label %bb.gn unwind label %bb.gm     ; 2 uses

bb.gm:                                            ; preds = %bb.gn, %bb.gl
  %i.qa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex) #29
          to label %.body425 unwind label %bb.gb

bb.gn:                                            ; preds = %bb.gl
  %i.qb = extractvalue { ptr, i64 } %i.pz, 0
  %i.qc = extractvalue { ptr, i64 } %i.pz, 1
  store ptr %i.qb, ptr %i.ey, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.qc, ptr %i.qd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ev)
  store ptr %i.ey, ptr %i.ev, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.483.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ez, ptr noundef nonnull @91, ptr noundef nonnull %i.ev)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit429 unwind label %bb.gm

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit429: ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ev)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i431 unwind label %bb.go

bb.go:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit429
  %i.qe = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %.body425 unwind label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.qf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i431: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit429
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ex)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit435 unwind label %bb.gk

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit435: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i431
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i unwind label %bb.gq

bb.gq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit435
  %i.qg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %.body436 unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.qh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit435
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ew)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.gd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ey)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ez)
  %i.qi = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8, !nonnull !17, !noundef !17
  %i.qk = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.ql = load i64, ptr %i.qk, align 8, !noundef !17 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ql)
          to label %.noexc441 unwind label %bb.gt

.noexc441:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECshFZivb7RUAJ_8ruff_dev.exit
  %i.qm = load i64, ptr %i.hb, align 8, !alias.scope !1135, !noundef !17 ; 3 uses
  %i.qn = icmp sgt i64 %i.qm, -1
  call void @llvm.assume(i1 %i.qn)
  %.not.i439 = icmp eq i64 %i.ql, 0
  br i1 %.not.i439, label %bb.gu, label %bb.gs

bb.gs:                                            ; preds = %.noexc441
  %i.qo = load ptr, ptr %i.pl, align 8, !alias.scope !1135, !nonnull !17, !noundef !17
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 %i.qm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qp, ptr nonnull readonly align 1 %i.qj, i64 %i.ql, i1 false)
  %.pre.i440 = load i64, ptr %i.hb, align 8, !alias.scope !1135
  br label %bb.gu

bb.gt:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECshFZivb7RUAJ_8ruff_dev.exit
  %i.qq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa) #29
          to label %.body436 unwind label %bb.gb

bb.gu:                                            ; preds = %bb.gs, %.noexc441
  %i.qr = phi i64 [ %.pre.i440, %bb.gs ], [ %i.qm, %.noexc441 ]
  %i.qs = add i64 %i.qr, %i.ql
  store i64 %i.qs, ptr %i.hb, align 8, !alias.scope !1135
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i444 unwind label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %.body436 unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i444: ; preds = %bb.gu
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit448 unwind label %bb.gd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit448: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fa)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 2)
          to label %bb.gx unwind label %bb.gd

bb.gx:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit448
  %i.qv = load i64, ptr %i.hb, align 8, !alias.scope !1138, !noundef !17 ; 2 uses
  %i.qw = icmp sgt i64 %i.qv, -1
  call void @llvm.assume(i1 %i.qw)
  %i.qx = load ptr, ptr %i.pl, align 8, !alias.scope !1138, !nonnull !17, !noundef !17
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.qv
  store i16 2570, ptr %i.qy, align 1
  %.pre.i449 = load i64, ptr %i.hb, align 8, !alias.scope !1138
  %i.qz = add i64 %.pre.i449, 2
  store i64 %i.qz, ptr %i.hb, align 8, !alias.scope !1138
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(776) %i.fb)
          to label %bb.gy unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  %.sroa.35.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.35.0 = load i64, ptr %.sroa.35.0.in, align 8, !noundef !17
  %i.ra = icmp eq i64 %.sroa.35.0, 4
  br i1 %i.ra, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %.sroa.04.0 = load ptr, ptr %i.ir, align 8, !nonnull !17, !noundef !17
  %i.rb = load i32, ptr %.sroa.04.0, align 1
  %i.rc = icmp ne i32 %i.rb, 1886152040
  %i.rd = zext i1 %i.rc to i32
  %i.re = icmp eq i32 %i.rd, 0
  br i1 %i.re, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.rg = load ptr, ptr %i.rf, align 8, !nonnull !17, !noundef !17 ; 8 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ri = load i64, ptr %i.rh, align 8, !noundef !17 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ri, 776
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 %.idx ; 2 uses
  %i.rk = icmp eq i64 %i.ri, 0                    ; 2 uses
  br i1 %i.rk, label %bb.hf, label %bb.he

bb.hb:                                            ; preds = %bb.gz
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %.sink.split unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.rl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fm)
          to label %common.resume unwind label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.he:                                            ; preds = %bb.ha
  %i.rn = getelementptr i8, ptr %i.rg, i64 776
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 41)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp

bb.hf:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh)
  %i.ro = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1141
  store i8 32, ptr %i.al, align 1, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1141
  store i8 45, ptr %i.ak, align 1, !noalias !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1141
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rr
  store ptr %i.rp, ptr %i.aj, align 8, !noalias !1141
  %i.rt = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.rs, ptr %i.rt, align 8, !noalias !1141
  %i.ru = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.al, ptr %i.ru, align 8, !noalias !1141
  %i.rv = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ak, ptr %i.rv, align 8, !noalias !1141
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.aj)
          to label %bb.hw unwind label %.loopexit.split-lp.loopexit.split-lp

bb.hg:                                            ; preds = %bb.he
  %i.rw = load i64, ptr %i.hb, align 8, !alias.scope !1145, !noundef !17 ; 2 uses
  %i.rx = icmp sgt i64 %i.rw, -1
  call void @llvm.assume(i1 %i.rx)
  %i.ry = load ptr, ptr %i.pl, align 8, !alias.scope !1145, !nonnull !17, !noundef !17
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.rz, ptr noundef nonnull align 1 dereferenceable(41) @92, i64 41, i1 false)
  %.pre.i455 = load i64, ptr %i.hb, align 8, !alias.scope !1145
  %i.sa = add i64 %.pre.i455, 41
  store i64 %i.sa, ptr %i.hb, align 8, !alias.scope !1145
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 26)
          to label %.backedge1004.peel.begin unwind label %.loopexit.split-lp.loopexit.split-lp

.backedge1004.peel.begin:                         ; preds = %bb.hg
  %i.sb = load i64, ptr %i.hb, align 8, !alias.scope !1148, !noundef !17 ; 2 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  call void @llvm.assume(i1 %i.sc)
  %i.sd = load ptr, ptr %i.pl, align 8, !alias.scope !1148, !nonnull !17, !noundef !17
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 %i.sb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.se, ptr noundef nonnull align 1 dereferenceable(26) @93, i64 26, i1 false)
  %.pre.i459 = load i64, ptr %i.hb, align 8, !alias.scope !1148
  %i.sf = add i64 %.pre.i459, 26
  store i64 %i.sf, ptr %i.hb, align 8, !alias.scope !1148
  %i.sg = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 2 uses
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i838 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i839 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i840 = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %.sroa.5.0..sroa_idx.i841 = getelementptr inbounds nuw i8, ptr %i.b, i64 22 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ej, i64 16 ; 2 uses
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rg, i64 764
  %i.sx = load i32, ptr %i.sw, align 4, !noundef !17
  %i.sy = and i32 %i.sx, 8388608
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.hh, label %.peel.newph

bb.hh:                                            ; preds = %.backedge1004.peel.begin
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rg, i64 768
  %i.tb = load i32, ptr %i.ta, align 8, !noundef !17
  %i.tc = and i32 %i.tb, 8388608
  %.not339.peel = icmp eq i32 %i.tc, 0
  br i1 %.not339.peel, label %bb.hi, label %.peel.newph

bb.hi:                                            ; preds = %bb.hh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.es)
  %i.td = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.te = load i64, ptr %i.td, align 8, !noundef !17
  %storemerge1280.in.peel = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %storemerge1280.peel = load ptr, ptr %storemerge1280.in.peel, align 8, !nonnull !17, !noundef !17
  store ptr %storemerge1280.peel, ptr %i.es, align 8
  store i64 %i.te, ptr %i.sg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er)
  store ptr %i.fm, ptr %i.er, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  store ptr %i.es, ptr %i.sh, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.498.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.et, ptr noundef nonnull @86, ptr noundef nonnull %i.er)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit817.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit817.peel: ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.es)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.et)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eo)
  %i.tf = load ptr, ptr %i.si, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.tg = load i64, ptr %i.sj, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1151
  store i8 32, ptr %i.f, align 1, !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1151
  store i8 45, ptr %i.e, align 1, !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1151
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tg
  store ptr %i.tf, ptr %i.d, align 8, !noalias !1151
  store ptr %i.th, ptr %i.sk, align 8, !noalias !1151
  store ptr %i.f, ptr %i.sl, align 8, !noalias !1151
  store ptr %i.e, ptr %i.sm, align 8, !noalias !1151
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.hj unwind label %.loopexit.split-lp1336

bb.hj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit817.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.en)
  store ptr %i.eo, ptr %i.en, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4104.0..sroa_idx, align 8
  store ptr %i.eu, ptr %i.sn, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4108.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ep, ptr noundef nonnull @108, ptr noundef nonnull %i.en)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit821.peel unwind label %.loopexit.split-lp1341

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit821.peel: ; preds = %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.en)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i823.peel unwind label %.loopexit.split-lp1346

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i823.peel: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit821.peel
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit827.peel unwind label %.loopexit.split-lp1336

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit827.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i823.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, ptr noundef nonnull align 8 dereferenceable(24) %i.ep, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep)
  %i.ti = load ptr, ptr %i.so, align 8, !nonnull !17, !noundef !17
  %i.tj = load i64, ptr %i.sp, align 8, !noundef !17 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.tj)
          to label %.noexc830.peel unwind label %.loopexit.split-lp1351

.noexc830.peel:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit827.peel
  %i.tk = load i64, ptr %i.hb, align 8, !alias.scope !1155, !noundef !17 ; 3 uses
  %i.tl = icmp sgt i64 %i.tk, -1
  call void @llvm.assume(i1 %i.tl)
  %.not.i828.peel = icmp eq i64 %i.tj, 0
  br i1 %.not.i828.peel, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %.noexc830.peel
  %i.tm = load ptr, ptr %i.pl, align 8, !alias.scope !1155, !nonnull !17, !noundef !17
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 %i.tk
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tn, ptr nonnull readonly align 1 %i.ti, i64 %i.tj, i1 false)
  %.pre.i829.peel = load i64, ptr %i.hb, align 8, !alias.scope !1155
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %.noexc830.peel
  %i.to = phi i64 [ %.pre.i829.peel, %bb.hk ], [ %i.tk, %.noexc830.peel ]
  %i.tp = add i64 %i.to, %i.tj
  store i64 %i.tp, ptr %i.hb, align 8, !alias.scope !1155
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i833.peel unwind label %.loopexit.split-lp1356

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i833.peel: ; preds = %bb.hl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit837.peel unwind label %.loopexit.split-lp1336

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit837.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i833.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq)
  %i.tq = getelementptr inbounds nuw i8, ptr %i.rg, i64 512 ; 2 uses
  %i.tr = load i64, ptr %i.tq, align 8, !range !23, !noundef !17
  %.not340.peel = icmp eq i64 %i.tr, -1
  br i1 %.not340.peel, label %bb.hs, label %bb.hm

bb.hm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit837.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.el)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1158
  store i64 0, ptr %i.c, align 8, !noalias !1158
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i838, align 8, !noalias !1158
  store i64 0, ptr %.sroa.53.0..sroa_idx.i839, align 8, !noalias !1158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1158
  store i32 1610612768, ptr %i.sq, align 8, !noalias !1158
  store i16 0, ptr %.sroa.4.0..sroa_idx.i840, align 4, !noalias !1158
  store i16 0, ptr %.sroa.5.0..sroa_idx.i841, align 2, !noalias !1158
  store ptr %i.c, ptr %i.b, align 8, !noalias !1158
  store ptr @32, ptr %i.sr, align 8, !noalias !1158
  %i.ts = invoke noundef zeroext i1 @_RNvXs6_NtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_strNtB5_9StyledStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tq, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.hn unwind label %.loopexit1000.loopexit.split-lp, !noalias !1162

bb.hn:                                            ; preds = %bb.hm
  br i1 %i.ts, label %.loopexit1363, label %bb.ho, !prof !19

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1158
  %i.tt = load ptr, ptr %i.ss, align 8, !nonnull !17, !noundef !17
  %i.tu = load i64, ptr %i.st, align 8, !noundef !17
  invoke void @_RNvCs2KzzoC5ewhj_8markdown7to_html(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ek, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.tt, i64 noundef %i.tu)
          to label %bb.hp unwind label %.loopexit.split-lp1365

bb.hp:                                            ; preds = %bb.ho
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store ptr %i.ek, ptr %i.ei, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.el, ptr noundef nonnull @109, ptr noundef nonnull %i.ei)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit853.peel unwind label %.loopexit.split-lp1370

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit853.peel: ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i855.peel unwind label %.loopexit.split-lp1375

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i855.peel: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECshFZivb7RUAJ_8ruff_dev.exit853.peel
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ek)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit859.peel unwind label %.loopexit.split-lp1365

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit859.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i855.peel
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i861.peel unwind label %.loopexit.split-lp1380

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i861.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit859.peel
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit865.peel unwind label %.loopexit.split-lp1336

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit865.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i861.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ek)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.el, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.el)
  %i.tv = load ptr, ptr %i.su, align 8, !nonnull !17, !noundef !17
  %i.tw = load i64, ptr %i.sv, align 8, !noundef !17 ; 4 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.tw)
          to label %.noexc868.peel unwind label %.loopexit.split-lp1385

.noexc868.peel:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit865.peel
  %i.tx = load i64, ptr %i.hb, align 8, !alias.scope !1164, !noundef !17 ; 3 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  call void @llvm.assume(i1 %i.ty)
  %.not.i866.peel = icmp eq i64 %i.tw, 0
  br i1 %.not.i866.peel, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %.noexc868.peel
  %i.tz = load ptr, ptr %i.pl, align 8, !alias.scope !1164, !nonnull !17, !noundef !17
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.tx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ua, ptr nonnull readonly align 1 %i.tv, i64 %i.tw, i1 false)
  %.pre.i867.peel = load i64, ptr %i.hb, align 8, !alias.scope !1164
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %.noexc868.peel
  %i.ub = phi i64 [ %.pre.i867.peel, %bb.hq ], [ %i.tx, %.noexc868.peel ]
  %i.uc = add i64 %i.ub, %i.tw
  store i64 %i.uc, ptr %i.hb, align 8, !alias.scope !1164
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i871.peel unwind label %.loopexit.split-lp1390

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i871.peel: ; preds = %bb.hr
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit875.peel unwind label %.loopexit.split-lp1336

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit875.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i871.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %bb.hs

bb.hs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit875.peel, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit837.peel
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i847.peel unwind label %.loopexit.split-lp1395

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i847.peel: ; preds = %bb.hs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit851.peel unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit851.peel: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i847.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  br label %.peel.newph

.peel.newph:                                      ; preds = %.backedge1004.peel.begin, %bb.hh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit851.peel
  br label %.backedge1004

.backedge1004:                                    ; preds = %.backedge1004.backedge, %.peel.newph
  %.sroa.5.0 = phi ptr [ %i.rn, %.peel.newph ], [ %i.ue, %.backedge1004.backedge ] ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0) ]
  %i.ud = icmp eq ptr %.sroa.5.0, %i.rj
  br i1 %i.ud, label %.loopexit1331, label %bb.ht

bb.ht:                                            ; preds = %.backedge1004
  %i.ue = getelementptr i8, ptr %.sroa.5.0, i64 776
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 764
  %i.ug = load i32, ptr %i.uf, align 4, !noundef !17
  %i.uh = and i32 %i.ug, 8388608
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %bb.qn, label %.backedge1004.backedge

.loopexit1331:                                    ; preds = %.backedge1004
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 7)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit464 unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit464: ; preds = %.loopexit1331
  %i.uj = load i64, ptr %i.hb, align 8, !alias.scope !1167, !noundef !17 ; 2 uses
  %i.uk = icmp sgt i64 %i.uj, -1
  call void @llvm.assume(i1 %i.uk)
  %i.ul = load ptr, ptr %i.pl, align 8, !alias.scope !1167, !nonnull !17, !noundef !17
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 %i.uj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.um, ptr noundef nonnull align 1 dereferenceable(7) @94, i64 7, i1 false)
  %.pre.i462 = load i64, ptr %i.hb, align 8, !alias.scope !1167
  %i.un = add i64 %.pre.i462, 7
  store i64 %i.un, ptr %i.hb, align 8, !alias.scope !1167
  br label %bb.hu

bb.hu:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit464, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit501
  %i.uo = load i64, ptr %i.fv, align 8, !alias.scope !1170, !noalias !1173, !noundef !17 ; 3 uses
  %i.up = load i64, ptr %2, align 8, !range !165, !alias.scope !1170, !noalias !1173, !noundef !17
  %i.uq = icmp eq i64 %i.uo, %i.up
  br i1 %i.uq, label %bb.hv, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE8push_mutCshFZivb7RUAJ_8ruff_dev.exit

bb.hv:                                            ; preds = %bb.hu
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE8push_mutCshFZivb7RUAJ_8ruff_dev.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE8push_mutCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.hv, %bb.hu
  %i.ur = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.us = load ptr, ptr %i.ur, align 8, !alias.scope !1170, !noalias !1173, !nonnull !17, !noundef !17
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.uo
  store ptr %1, ptr %i.ut, align 8, !noalias !1173
  %i.uu = add i64 %i.uo, 1                        ; 2 uses
  store i64 %i.uu, ptr %i.fv, align 8, !alias.scope !1170, !noalias !1173
  br i1 %i.rk, label %._crit_edge, label %.lr.ph1198

bb.hw:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1141
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.uw = load ptr, ptr %i.uv, align 8, !nonnull !17, !noundef !17 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.uy = load i64, ptr %i.ux, align 8, !noundef !17 ; 2 uses
  %.idx1316 = mul nuw nsw i64 %i.uy, 672
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uw, i64 %.idx1316 ; 3 uses
  %i.va = icmp eq i64 %i.uy, 0
  br i1 %i.va, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit.thread, label %.lr.ph1308

bb.hx:                                            ; preds = %.lr.ph1308
  %i.vb = icmp eq ptr %i.vd, %i.uz
  br i1 %i.vb, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit.thread, label %.lr.ph1308

.lr.ph1308:                                       ; preds = %bb.hw, %bb.hx
  %i.vc = phi ptr [ %i.vd, %bb.hx ], [ %i.uw, %bb.hw ] ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 672 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 80
  %i.vf = load i64, ptr %i.ve, align 8, !range !135, !alias.scope !1175, !noalias !1178, !noundef !17
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.vf, 2
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vc, i64 656
  %i.vh = load i32, ptr %i.vg, align 8, !range !1058, !alias.scope !1175, !noalias !1178
  %.not1.i.i.i.i.i.i.i.i = icmp ne i32 %i.vh, -1
  %or.cond.i.not11.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i.i.i.i
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 664
  %i.vj = load i32, ptr %i.vi, align 8, !alias.scope !1175, !noalias !1178
  %i.vk = and i32 %i.vj, 4
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.vk, 0
  %.not.i.i.i.i.i.i = select i1 %or.cond.i.not11.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.hx, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit

.body809:                                         ; preds = %.loopexit982, %.loopexit.split-lp983, %bb.qg, %bb.oo, %.body693, %.thread937, %.body727, %bb.ie
  %.pn336 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp936, %bb.ie ], [ %.pn334, %.body727 ], [ %.pn323.pn.pn, %.body693 ], [ %i.aot, %bb.qg ], [ %lpad.phi932, %bb.oo ], [ %lpad.thr_comm935, %.thread937 ], [ %lpad.loopexit984, %.loopexit982 ], [ %lpad.loopexit.split-lp985, %.loopexit.split-lp983 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eh) #29
          to label %.body unwind label %bb.gb

.loopexit982:                                     ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0E0E0B3c_EB5k_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECshFZivb7RUAJ_8ruff_dev.exit.i808
  %lpad.loopexit984 = landingpad { ptr, i32 }
          cleanup
  br label %.body809

.loopexit.split-lp983:                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit.thread, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit, %bb.hy, %bb.ic, %bb.ip
  %lpad.loopexit.split-lp985 = landingpad { ptr, i32 }
          cleanup
  br label %.body809

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit: ; preds = %.lr.ph1308
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 42)
          to label %bb.hy unwind label %.loopexit.split-lp983

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit.thread: ; preds = %bb.hx, %bb.hw, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  invoke void @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter6FilterIB4_INtNtNtBc_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands1_0ENCB2i_s2_0ENtCs6Wt4yPw39th_9itertools9Itertools13sorted_by_keyRNtNtNtB1x_4util2id2IdNCB2i_s3_0EB2m_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.do, ptr noundef nonnull %i.uw, ptr noundef nonnull %i.uz)
          to label %bb.id unwind label %.loopexit.split-lp983

bb.hy:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit
  %i.vl = load i64, ptr %i.hb, align 8, !alias.scope !1192, !noundef !17 ; 2 uses
  %i.vm = icmp sgt i64 %i.vl, -1
  call void @llvm.assume(i1 %i.vm)
  %i.vn = load ptr, ptr %i.pl, align 8, !alias.scope !1192, !nonnull !17, !noundef !17
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.vo, ptr noundef nonnull align 1 dereferenceable(42) @95, i64 42, i1 false)
  %.pre.i466 = load i64, ptr %i.hb, align 8, !alias.scope !1192
  %i.vp = add i64 %.pre.i466, 42
  store i64 %i.vp, ptr %i.hb, align 8, !alias.scope !1192
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 26)
          to label %bb.hz unwind label %.loopexit.split-lp983

bb.hz:                                            ; preds = %bb.hy
  %i.vq = load i64, ptr %i.hb, align 8, !alias.scope !1195, !noundef !17 ; 2 uses
  %i.vr = icmp sgt i64 %i.vq, -1
  call void @llvm.assume(i1 %i.vr)
  %i.vs = load ptr, ptr %i.pl, align 8, !alias.scope !1195, !nonnull !17, !noundef !17
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.vq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.vt, ptr noundef nonnull align 1 dereferenceable(26) @93, i64 26, i1 false)
  %.pre.i469 = load i64, ptr %i.hb, align 8, !alias.scope !1195
  %i.vu = add i64 %.pre.i469, 26
  store i64 %i.vu, ptr %i.hb, align 8, !alias.scope !1195
  %.sroa.4125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 24
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.42.0..sroa_idx.i731 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.53.0..sroa_idx.i732 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.vy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i733 = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %.sroa.5.0..sroa_idx.i734 = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %i.vz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wa = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.wb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.sroa.4145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.wd = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.we = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.42.0..sroa_idx.i772 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.53.0..sroa_idx.i773 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.wf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0..sroa_idx.i774 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.5.0..sroa_idx.i775 = getelementptr inbounds nuw i8, ptr %i.g, i64 22
  %i.wg = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.wi = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %.sroa.4151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.wk = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  br label %bb.ia

bb.ia:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit812, %bb.hz
  %.sroa.0893.0 = phi i1 [ true, %bb.hz ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit812 ]
  %.sroa.7.0 = phi ptr [ %i.vd, %bb.hz ], [ %.sroa.7.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit812 ] ; 2 uses
  br i1 %.sroa.0893.0, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0E0E0B3c_EB5k_.exit, label %.preheader

.preheader:                                       ; preds = %bb.ia, %bb.ib
  %i.wl = phi ptr [ %i.wn, %bb.ib ], [ %.sroa.7.0, %bb.ia ] ; 6 uses
  %i.wm = icmp eq ptr %i.wl, %i.uz
  br i1 %i.wm, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %.preheader
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wl, i64 672 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wl, i64 80
  %i.wp = load i64, ptr %i.wo, align 8, !range !135, !alias.scope !1198, !noalias !1201, !noundef !17
  %.not.i.i.i = icmp ne i64 %i.wp, 2
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wl, i64 656
  %i.wr = load i32, ptr %i.wq, align 8, !range !1058, !alias.scope !1198, !noalias !1201
  %.not1.i.i.i = icmp ne i32 %i.wr, -1
  %or.cond.i.not11.i = select i1 %.not.i.i.i, i1 true, i1 %.not1.i.i.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wl, i64 664
  %i.wt = load i32, ptr %i.ws, align 8, !alias.scope !1198, !noalias !1201
  %i.wu = and i32 %i.wt, 4
  %.not.i.i.i.i.i = icmp ne i32 %i.wu, 0
  %.not.i472 = select i1 %or.cond.i.not11.i, i1 true, i1 %.not.i.i.i.i.i
  br i1 %.not.i472, label %.preheader, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0E0E0B3c_EB5k_.exit

bb.ic:                                            ; preds = %.preheader
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 7)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit476 unwind label %.loopexit.split-lp983

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCshFZivb7RUAJ_8ruff_dev.exit476: ; preds = %bb.ic
  %i.wv = load i64, ptr %i.hb, align 8, !alias.scope !1204, !noundef !17 ; 2 uses
  %i.ww = icmp sgt i64 %i.wv, -1
  call void @llvm.assume(i1 %i.ww)
  %i.wx = load ptr, ptr %i.pl, align 8, !alias.scope !1204, !nonnull !17, !noundef !17
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 %i.wv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.wy, ptr noundef nonnull align 1 dereferenceable(7) @94, i64 7, i1 false)
  %.pre.i474 = load i64, ptr %i.hb, align 8, !alias.scope !1204
  %i.wz = add i64 %.pre.i474, 7
  store i64 %i.wz, ptr %i.hb, align 8, !alias.scope !1204
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_6filter6FilterIB2S_INtNtNtB5_5slice4iter4IterBN_ENCNvMs2_NtBR_7commandNtB3V_7Command15get_positionals0ENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0EE4peek0EB4L_.exit.thread

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference16generate_commands_0E0E0B3c_EB5k_.exit: ; preds = %bb.ib, %bb.ia
  %.sroa.7.1 = phi ptr [ %.sroa.7.0, %bb.ia ], [ %i.wn, %bb.ib ]
  %.sroa.017.0 = phi ptr [ %i.vc, %bb.ia ], [ %i.wl, %bb.ib ] ; 5 uses
end_hunk_0
