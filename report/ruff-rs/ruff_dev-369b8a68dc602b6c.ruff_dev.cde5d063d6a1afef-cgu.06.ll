Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.06?download=true
inline.NumInlined: 1153
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev18format_dev_project0INtB6_5FnMutTINtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEEE8call_mutBT_:bb.a
  %i.ev = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1550
  %i.ew = icmp eq i8 %i.ev, 0
  br i1 %i.ew, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1550
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1550
  store ptr %i.dn, ptr %i.ah, align 8, !noalias !1550
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.dp, ptr %i.ey, align 8, !noalias !1550
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !1550
  store ptr %i.ai, ptr %i.aj, align 8, !noalias !1550
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @48, ptr %i.ez, align 8, !noalias !1550
  store i64 1, ptr %i.ak, align 8, !noalias !1550
  %.sroa.488.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.aj, ptr %.sroa.488.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %.sroa.589.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 1, ptr %.sroa.589.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %i.ex, ptr %i.fa, align 8, !noalias !1550
  %i.fb = invoke noundef nonnull align 8 ptr @_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span10record_all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ak)
          to label %bb.v unwind label %bb.s, !noalias !1551 ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1550
  br label %bb.r

bb.w:                                             ; preds = %bb.ab, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(40) %i.aq, i64 40, i1 false), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !1550
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.fc = load i64, ptr %i.ar, align 8, !range !7, !alias.scope !1552, !noalias !1550, !noundef !4
  %.not.i.i.i.i.i.i = icmp eq i64 %i.fc, 2
  br i1 %.not.i.i.i.i.i.i, label %.noexc149.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  invoke void @_RNvMs2_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fd)
          to label %.noexc149.i.i.i.i.i unwind label %bb.h, !noalias !1551

.noexc149.i.i.i.i.i:                              ; preds = %bb.x, %bb.w
  %i.fe = load atomic i8, ptr @_RNvNtCs3pBv9WGWlWf_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1550
  %i.ff = icmp eq i8 %i.fe, 0
  br i1 %i.ff, label %bb.y, label %_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i.i.i

bb.y:                                             ; preds = %.noexc149.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !1552, !noalias !1550, !align !11, !noundef !4 ; 3 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not4.i.i.i.i.i.i, label %_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1553
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !1551, !nonnull !4, !noundef !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fl = load i64, ptr %i.fk, align 8, !noalias !1551, !noundef !4
  store ptr %i.fj, ptr %i.n, align 8, !noalias !1553
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.fl, ptr %i.fm, align 8, !noalias !1553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1553
  store ptr %i.n, ptr %i.m, align 8, !noalias !1553
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1553
  invoke fastcc void @_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 21, ptr noundef nonnull @34, ptr noundef nonnull %i.m)
          to label %.noexc150.i.i.i.i.i unwind label %bb.h

.noexc150.i.i.i.i.i:                              ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1553
  br label %_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i.i.i

bb.aa:                                            ; preds = %bb.ee, %bb.ed, %bb.dr, %bb.di, %bb.de, %bb.db, %.body.i.i.i.i.i, %bb.af, %bb.s
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24, !noalias !1551
  unreachable

bb.ab:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !1550
  br label %bb.w

bb.ac:                                            ; preds = %_RNvMNtCsdbMkb98Dhky_7tracing4spanNtB2_4Span8do_enter.exit.i.i.i.i.i
  %i.fo = load i64, ptr %i.af, align 8, !range !6, !noalias !1550, !noundef !4 ; 2 uses
  %i.fp = icmp eq i64 %i.fo, -1
  %i.fq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !1550 ; 2 uses
  br i1 %i.fp, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1550
  %i.fs = ptrtoint ptr %i.fr to i64
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev.exit174.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %.sroa.592.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.592.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.592.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1550
  store i64 %i.fo, ptr %i.ag, align 8, !noalias !1550
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  store ptr %i.fr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 4 uses
  store i64 %.sroa.592.0.copyload.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %i.ft = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.ah unwind label %bb.ag, !noalias !1551 ; 2 uses

bb.af:                                            ; preds = %.body.i.i.i.i.i, %bb.ag
  %.pn143.i.i.i.i.i = phi { ptr, i32 } [ %i.fu, %bb.ag ], [ %.pn141.i.i.i.i.i, %.body.i.i.i.i.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag) #23
          to label %.body162.i.i.i.i.i unwind label %bb.aa, !noalias !1551

bb.ag:                                            ; preds = %bb.cv, %_RNvMNtCshFZivb7RUAJ_8ruff_dev10format_devNtB2_10Statistics13from_versions.exit.i.i.i.i.i, %bb.ah, %bb.ae
  %i.fu = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  %i.fv = extractvalue { i64, i32 } %i.ft, 0
  %i.fw = extractvalue { i64, i32 } %i.ft, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1550
  %i.fx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !nonnull !4, !noundef !4
  %i.fy = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1550
  store i64 %.sroa.732.sroa.0.0.copyload.i.i, ptr %i.o, align 8, !noalias !1554
  %.sroa.6.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %.sroa.732.sroa.5.0.copyload.i.i, ptr %.sroa.6.i.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1554
  invoke void @_RNvCs8CpBcHC8tKo_21ruff_python_formatter20format_module_source(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.ad, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fx, i64 noundef %i.fy, ptr noalias noundef nonnull align 2 captures(address) dereferenceable(16) %i.o)
          to label %bb.ai unwind label %bb.ag, !noalias !1551

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1550
  %i.fz = load i64, ptr %i.ad, align 8, !range !6, !noalias !1550, !noundef !4
  %i.ga = icmp eq i64 %i.fz, -1
  br i1 %i.ga, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 8, !range !1555, !noalias !1550, !noundef !4 ; 2 uses
  %i.gd = icmp samesign ugt i8 %i.gc, 43
  %i.ge = zext nneg i8 %i.gc to i64
  %i.gf = add nsw i64 %i.ge, -43
  %i.gg = select i1 %i.gd, i64 %i.gf, i64 0
  switch i64 %i.gg, label %bb.i [
    i64 0, label %bb.dv
    i64 1, label %bb.dw
    i64 2, label %bb.dx
  ]

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ae, ptr noundef nonnull align 8 dereferenceable(88) %i.ad, i64 88, i1 false), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1550
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1550, !nonnull !4, !noundef !4 ; 8 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !1550, !noundef !4 ; 28 uses
  %i.gl = invoke { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now()
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551 ; 2 uses

.body.i.i.i.i.i:                                  ; preds = %bb.dr, %bb.di, %bb.de, %bb.db, %bb.cb, %bb.be, %.thread188.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i
  %.pn141.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i, %bb.cb ], [ %lpad.thr_comm.split-lp.i.i.i.i.i, %bb.dr ], [ %lpad.thr_comm.i.i.i.i.i, %.thread188.i.i.i.i.i ], [ %i.lu, %bb.di ], [ %i.lq, %bb.de ], [ %i.hj, %bb.be ], [ %i.lm, %bb.db ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit204.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp205.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7Ma6rQP8bRy_14ruff_formatter7PrintedECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(88) %i.ae) #23
          to label %bb.af unwind label %bb.aa, !noalias !1551

.loopexit.i.i.i.i.i:                              ; preds = %bb.bv
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i:            ; preds = %bb.ca, %select.unfold.i.i.i.i.i.i.i.i.i
  %lpad.loopexit204.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i:   ; preds = %bb.cm, %.thread.i.i.i.i.i.i, %bb.bu, %bb.bq, %bb.bk, %bb.at, %bb.as, %bb.aq, %bb.al, %bb.ak
  %lpad.loopexit.split-lp205.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.gm = extractvalue { i64, i32 } %i.gl, 0
  %i.gn = extractvalue { i64, i32 } %i.gl, 1
  %i.go = invoke { i64, i32 } @_RNvXs3_NtCs2AWtUsOyxgP_3std4timeNtB5_7InstantNtNtNtCs4NRVxsYgnAr_4core3ops5arith3Sub3sub(i64 noundef %i.gm, i32 noundef %i.gn, i64 noundef %i.fv, i32 noundef %i.fw)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.gp = extractvalue { i64, i32 } %i.go, 0      ; 2 uses
  %i.gq = extractvalue { i64, i32 } %i.go, 1      ; 2 uses
  br i1 %i.bk, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.bi, %bb.ap, %bb.am
  br i1 %i.bg, label %bb.bk, label %bb.bj

bb.ao:                                            ; preds = %bb.am
  %i.gr = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !noundef !4
  %i.gs = icmp eq i64 %i.gr, %i.gk
  br i1 %i.gs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.gt, ptr nonnull %i.gi, i64 %i.gk), !noalias !1551
  %.not132.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not132.i.i.i.i.i, label %bb.an, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1550
  %i.gu = invoke { ptr, i64 } @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path6parent(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551 ; 2 uses

bb.ar:                                            ; preds = %bb.aq
  %i.gv = extractvalue { ptr, i64 } %i.gu, 0      ; 2 uses
  %.not133.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not133.i.i.i.i.i, label %bb.at, label %bb.as, !prof !18

bb.as:                                            ; preds = %bb.ar
  %i.gw = extractvalue { ptr, i64 } %i.gu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1550
  %i.gx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 6, ptr %i.gx, align 8, !noalias !1550
  %i.gy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @50, ptr %i.gy, align 8, !noalias !1550
  %i.gz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4, ptr %i.gz, align 8, !noalias !1550
  %i.ha = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.ha, align 8, !noalias !1550
  %i.hb = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 0, ptr %i.hb, align 8, !noalias !1550
  %i.hc = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i8 0, ptr %i.hc, align 8, !noalias !1550
  store i32 0, ptr %i.s, align 8, !noalias !1550
  %i.hd = getelementptr inbounds nuw i8, ptr %i.s, i64 49
  store i8 0, ptr %i.hd, align 1, !noalias !1550
  invoke void @_RINvMs_CsfvFeDaCgI3J_8tempfileNtB5_7Builder11tempfile_inRNtNtCs2AWtUsOyxgP_3std4path4PathECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gv, i64 noundef %i.gw)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551

bb.au:                                            ; preds = %bb.dk, %bb.cx, %bb.at
  unreachable

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1550
  %i.he = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.hf = load i8, ptr %i.he, align 8, !range !23, !noalias !1550, !noundef !4 ; 2 uses
  %i.hg = icmp eq i8 %i.hf, 2
  %i.hh = load ptr, ptr %i.ab, align 8, !noalias !1550 ; 2 uses
  br i1 %i.hg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1550
  br label %bb.dq

bb.ax:                                            ; preds = %bb.av
  %.sroa.497.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.497.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.497.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %.sroa.699.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %.sroa.646.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.646.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.699.0..sroa_idx.i.i.i.i.i, i64 15, i1 false), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1550
  store ptr %i.hh, ptr %i.ac, align 8, !noalias !1550
  %.sroa.444.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store i64 %.sroa.497.0.copyload.i.i.i.i.i, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %.sroa.545.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i8 %i.hf, ptr %.sroa.545.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550
  %i.hi = invoke noundef ptr @_RNvXsk_NtCsfvFeDaCgI3J_8tempfile4fileNtB5_13NamedTempFileNtNtCs2AWtUsOyxgP_3std2io5Write9write_allCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gk)
          to label %bb.ay unwind label %bb.dr, !noalias !1551 ; 2 uses

.thread188.i.i.i.i.i:                             ; preds = %bb.bh, %bb.bf
  %lpad.thr_comm.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  br label %.body.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %.not134.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not134.i.i.i.i.i, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvXs4_NtCsfvFeDaCgI3J_8tempfile4fileNtB5_8TempPathNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.bc unwind label %bb.ba, !noalias !1551

bb.ba:                                            ; preds = %bb.az
  %i.hj = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %.val3.i.i.i.i.i.i.i = load i64, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1556, !noalias !1550, !noundef !4 ; 2 uses
  %i.hk = icmp eq i64 %.val3.i.i.i.i.i.i.i, 0
  br i1 %i.hk, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1556, !noalias !1550, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i.i.i.i, i64 noundef 1) #25, !noalias !1551
  br label %bb.be

bb.bc:                                            ; preds = %bb.az
  %.val1.i.i.i.i.i.i.i = load i64, ptr %.sroa.444.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !1556, !noalias !1550, !noundef !4 ; 2 uses
  %i.hl = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.hl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfvFeDaCgI3J_8tempfile4file13NamedTempFileECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !1556, !noalias !1550, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i.i, i64 noundef 1) #25, !noalias !1551
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfvFeDaCgI3J_8tempfile4file13NamedTempFileECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i

bb.be:                                            ; preds = %bb.bb, %bb.ba
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val1.i.i.i.i.i.i = load i32, ptr %i.hm, align 8, !range !15, !alias.scope !1557, !noalias !1550, !noundef !4
  %i.hn = call noundef i32 @close(i32 noundef %.val1.i.i.i.i.i.i) #25, !noalias !1551 ; 0 uses
  br label %.body.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfvFeDaCgI3J_8tempfile4file13NamedTempFileECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val.i.i.i.i.i.i = load i32, ptr %i.ho, align 8, !range !15, !alias.scope !1557, !noalias !1550, !noundef !4
  %i.hp = call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #25, !noalias !1551 ; 0 uses
  br label %bb.dq

bb.bf:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !1550
  invoke void @_RINvMsg_NtCsfvFeDaCgI3J_8tempfile4fileNtB6_13NamedTempFile7persistRNtNtCs2AWtUsOyxgP_3std4path4PathECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dp)
          to label %bb.bg unwind label %.thread188.i.i.i.i.i, !noalias !1551

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1550
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.hr = load i8, ptr %i.hq, align 8, !range !23, !noalias !1550, !noundef !4
  %.not135.i.i.i.i.i = icmp eq i8 %i.hr, 2
  br i1 %.not135.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.aa, i64 40, i1 false), !noalias !1550
  %i.hs = load ptr, ptr %i.r, align 8, !noalias !1550, !nonnull !4, !noundef !4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsfvFeDaCgI3J_8tempfile4file13NamedTempFileECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(32) %i.ht)
          to label %bb.dp unwind label %.thread188.i.i.i.i.i, !noalias !1551

bb.bi:                                            ; preds = %bb.bg
  %i.hu = load i32, ptr %i.aa, align 8, !range !15, !noalias !1550, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1550
  %i.hv = call noundef i32 @close(i32 noundef %i.hu) #25, !noalias !1551 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1550
  br label %bb.an

bb.bj:                                            ; preds = %bb.br, %bb.an
  %i.hw = icmp ne i64 %i.gp, 0
  %i.hx = icmp samesign ugt i32 %i.gq, 50000000
  %spec.select.i.i.i.i.i = select i1 %i.hw, i1 true, i1 %i.hx
  br i1 %spec.select.i.i.i.i.i, label %bb.cv, label %bb.bs

bb.bk:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1550
  invoke void @_RNvCs8CpBcHC8tKo_21ruff_python_formatter20format_module_source(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.x, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gk, ptr noalias noundef nonnull align 2 captures(address) dereferenceable(16) %i.as)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1558

bb.bl:                                            ; preds = %bb.bk
  %i.hy = load i64, ptr %i.x, align 8, !range !6, !noalias !1550, !noundef !4
  %i.hz = icmp eq i64 %i.hy, -1
  br i1 %i.hz, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ia = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.ib = load i8, ptr %i.ia, align 8, !range !1555, !noalias !1550, !noundef !4 ; 2 uses
  %i.ic = icmp samesign ugt i8 %i.ib, 43
  %i.id = zext nneg i8 %i.ib to i64
  %i.ie = add nsw i64 %i.id, -43
  %i.if = select i1 %i.ic, i64 %i.ie, i64 0
  switch i64 %i.if, label %bb.i [
    i64 0, label %bb.df
    i64 1, label %bb.dg
    i64 2, label %bb.dh
  ]

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false), !noalias !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1550
  %i.ig = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !1550, !noundef !4
  %i.ii = icmp eq i64 %i.ih, %i.gk
  br i1 %i.ii, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ij = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !1550, !nonnull !4, !noundef !4
  %bcmp136.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ik, ptr nonnull %i.gi, i64 %i.gk), !noalias !1551
  %.not137.i.i.i.i.i = icmp eq i32 %bcmp136.i.i.i.i.i, 0
  br i1 %.not137.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1550
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, i64 noundef %i.gk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.cw unwind label %bb.de, !noalias !1551

bb.bq:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7Ma6rQP8bRy_14ruff_formatter7PrintedECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(88) %i.y)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1550
  br label %bb.bj

bb.bs:                                            ; preds = %bb.bj
  %i.il = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !nonnull !4, !noundef !4 ; 4 uses
  %i.im = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1550, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.in = icmp eq i64 %i.im, %i.gk
  br i1 %i.in, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.il, ptr nonnull readonly %i.gi, i64 %i.gk), !alias.scope !1561, !noalias !1562
  %i.io = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.io, label %.lr.ph.split.i.i.i.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1563
  invoke void @_RINvMs1_NtCsikBMbUdt2EH_10imara_diff6internINtB6_13InternedInputReE3newB10_ECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.il, i64 noundef %i.im, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gk)
          to label %.noexc154.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551

.noexc154.i.i.i.i.i:                              ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1563
  invoke void @_RINvMs0_CsikBMbUdt2EH_10imara_diffNtB6_4Diff7computeReECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.l)
          to label %bb.cd unwind label %bb.cc, !noalias !1562

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.bt, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i
  %i.ip = phi i64 [ %i.jl, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i ], [ 0, %bb.bt ] ; 3 uses
  %.sroa.0.019.i.i.i.i.i.i.i = phi i64 [ %i.jq, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i ], [ 0, %bb.bt ] ; 2 uses
  %.lcssa1718.i.i.i.i.i.i.i = phi i64 [ %.lcssa16.i.i.i.i.i.i.i, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i ], [ 0, %bb.bt ] ; 4 uses
  %i.iq = icmp ult i64 %i.gk, %i.ip
  br i1 %i.iq, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %bb.by
  %i.ir = phi i64 [ %i.jg, %bb.by ], [ %i.ip, %.lr.ph.split.i.i.i.i.i.i.i ] ; 4 uses
  %i.is = sub nuw i64 %i.gk, %i.ir                ; 5 uses
  %i.it = getelementptr i8, ptr %i.il, i64 %i.ir  ; 3 uses
  %i.iu = icmp samesign ult i64 %i.is, 16
  br i1 %i.iu, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.is, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iv = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef range(i64 0, -9223372036854775808) %i.is)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !1551

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.bw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %bb.bw ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bw ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.iw = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ix = insertvalue { i64, i64 } %i.iw, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bw
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jb, %bb.bw ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !1564, !noalias !1565, !noundef !4
  %i.ja = icmp eq i8 %i.iz, 10
  br i1 %i.ja, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jb = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jb, %i.is
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bv
  %.merged.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ix, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.iv, %bb.bv ] ; 2 uses
  %i.jc = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.jd = trunc nuw i64 %i.jc to i1
  br i1 %i.jd, label %bb.bx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bx:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.je = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.jf = add i64 %i.ir, 1
  %i.jg = add i64 %i.jf, %i.je                    ; 6 uses
  %.not13.i.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.jg, %i.gk
  %i.jh = add i64 %i.je, %i.ir
  %or.cond.i.i.i.i.i.i.not.i.i.i.i.i.i = icmp ult i64 %i.jh, %i.gk
  br i1 %or.cond.i.i.i.i.i.i.not.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bz, %bb.bx
  br i1 %.not13.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.ji = getelementptr i8, ptr %i.it, i64 %i.je
  %lhsc.i.i.i.i.i.i = load i8, ptr %i.ji, align 1, !alias.scope !1559, !noalias !1566
  %i.jj = icmp eq i8 %lhsc.i.i.i.i.i.i, 10
  br i1 %i.jj, label %select.unfold.i.i.i.i.i.i.i.i.i, label %bb.by

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.by, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i
  %i.jk = phi i64 [ %i.ip, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.jg, %bb.by ], [ %i.gk, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.not.i3.i.i.i.i.i.not.i.i.i.i.i.i = icmp eq i64 %i.gk, %.lcssa1718.i.i.i.i.i.i.i
  br i1 %.not.i3.i.i.i.i.i.not.i.i.i.i.i.i, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bz, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = phi i64 [ %i.jk, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jg, %bb.bz ]
  %.lcssa16.i.i.i.i.i.i.i = phi i64 [ %.lcssa1718.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jg, %bb.bz ]
  %i.jm = phi i1 [ true, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ false, %bb.bz ]
  %.pn.i.i.i.i.i.i.i = phi i64 [ %i.gk, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jg, %bb.bz ]
  %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i.i.i.i, %.lcssa1718.i.i.i.i.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.il, i64 %.lcssa1718.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1567
  store i32 10, ptr %i.f, align 4, !noalias !1567
  %i.jn = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %.noexc156.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !1551

.noexc156.i.i.i.i.i:                              ; preds = %select.unfold.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1567
  br i1 %i.jn, label %bb.ca, label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %.noexc156.i.i.i.i.i
  %i.jo = add i64 %.sroa.4.1.i.i.i.i.i.i.i.i.i.i.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1567
  store i32 13, ptr %i.e, align 4, !noalias !1567
  %i.jp = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.jo, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc157.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !1551 ; 0 uses

.noexc157.i.i.i.i.i:                              ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1567
  br label %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i

_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i: ; preds = %.noexc157.i.i.i.i.i, %.noexc156.i.i.i.i.i
  %i.jq = add i64 %.sroa.0.019.i.i.i.i.i.i.i, 1   ; 2 uses
  br i1 %i.jm, label %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i: ; preds = %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.jq, %_RNvXss_NtNtCs4NRVxsYgnAr_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.i.i.i.i.i.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.lcssa.i.fr.i.i.i.i.i.i = freeze i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.jr = icmp ugt i64 %.sroa.0.0.lcssa.i.fr.i.i.i.i.i.i, 4294967295
  br i1 %i.jr, label %.thread.i.i.i.i.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1568
  store i8 2, ptr %i.h, align 1, !noalias !1568
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #26
          to label %.noexc158.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !1551

.noexc158.i.i.i.i.i:                              ; preds = %.thread.i.i.i.i.i.i
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i: ; preds = %_RINvYNtNtNtCs4NRVxsYgnAr_4core3str4iter5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4foldjNCNvYB3_BH_5count0ECshFZivb7RUAJ_8ruff_dev.exit.i.i.i.i.i.i
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.0.0.lcssa.i.fr.i.i.i.i.i.i to i32
  br label %_RNvMNtCshFZivb7RUAJ_8ruff_dev10format_devNtB2_10Statistics13from_versions.exit.i.i.i.i.i

bb.cb:                                            ; preds = %bb.ce, %bb.cc
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.js, %bb.cc ], [ %i.ju, %bb.ce ]
end_hunk_0
